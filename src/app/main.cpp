#include <stdio.h>
#include <vector>
#include <unistd.h>
#include <signal.h>
#include <iostream>

#include <serial_port.h>
#include <numbers_parser.h>
#include <EventMeassurement.h>
#include <json_parse.h>
#include <getch.h>
#include <visualisation.h>

const int WIDTH_SCREEN = 1440;
const int HEIGHT_SCREEN = 804;

void process_result(std::vector<float> &result)
{
  printf("result : ");
  for (unsigned int i = 0; i < result.size(); i++)
  {
    printf("%6.1f ", result[i]);
    if(i == 0)
      printf("ms");
  }
  printf("\n");
}

std::vector<EventMeassurement*> read_configuration()
{
  JSONParse konfigurak("config.json");

  std::vector<EventMeassurement*> result;

  for (unsigned int i = 0; i < konfigurak.result["meassurements"].size(); i++)
  {
    Json::Value tmp = konfigurak.result["meassurements"][i];
    result.push_back(new EventMeassurement(tmp));
  }

  return result;
}

void opengl_print(Visualisation &okenko,const std::vector<EventMeassurement*> &events)
{
  int max_out = 15;
  float y_step = 0.15;

//  while (getch() != 'q')
  {
    okenko.start();
    int pos = 0;
      for(auto event : events)
      {
        int from_out = 0;
        std::vector<std::pair<float,float>> history = event->getHistory();

        if(history.size() > max_out)
        {
          from_out = history.size() - 15 -1;
        }

        okenko.set_color(1.0, 0.0, 0.0);
        okenko.print(-2.2 + (pos*4.4/events.size()), 1.1, -3.0, event->getName());
        int y_stepper = 1;
        okenko.set_color(0.0, 1.0, 0.0);
        for(from_out; from_out < history.size(); from_out++)
        {
          std::string value;
          if(event->getOutput())
          {
            value = std::to_string(history[from_out].second);
            value.append(event->getSuffix());
          }
          else
          {
            value = std::to_string(history[from_out].first);
            value.append(event->getSuffix());
          }
          okenko.print(-2.2 + (pos*4.4/events.size()), 1.1 - (y_step * y_stepper), -3.0, value);
          y_stepper ++;;
        }
        okenko.push();
        okenko.pop();

        //std::stringstream stringstream
        // stream << std::fixed << std::setprecision(2) << score;
        //str_score+= stream.str()
        pos++;
      }
      okenko.finish();
  }
}

int main()
{
  Visualisation okenko(WIDTH_SCREEN,HEIGHT_SCREEN);
  auto event_m = read_configuration();
  opengl_print(okenko,event_m);
  SerialPort serial_port("/dev/cu.wchusbserialfa130");
  int cycleCounter = 0;
  int error = serial_port.get_error();

  std::vector<std::pair<int,float>> history;

  if (error < 0)
  {
    printf("port opening error %i\n", error);
    return 0;
  }

  NumbersParser parser;

  int key;
  while (1)
  {
    key = getch();

    if (key == 'q')
      break;

    if (key == ' ')
    {
      for(auto event : event_m)
       {
           event->reset();
      }
    }

    if (serial_port.is_char())
    {
      parser.add(serial_port.get_char());

      if (parser.updated())
      {
        auto parser_result = parser.get();

        process_result(parser_result);

        for(auto event : event_m)
         {
             event->process(parser_result);
             if(event->is_done())
             {
               event->incrementRound();
               printf("%s %d. Round time  : %6.1f ms", event->getName().c_str(), event->getRound(), event->get_time());
               printf("\n");
               event->saveHistory(event->get_speed(), event->get_time());
               event->reset();
               opengl_print(okenko,event_m);
             }
         }
      }

    }
    else
    {
      usleep(100*1000);
    }
  }
  for (unsigned int i = 0; i < event_m.size(); i++)
    delete event_m[i];
printf("\n");
  exit(0);

  return 0;
}
