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
//do EventMeassurementu
    result.push_back(new EventMeassurement(tmp));
  }

  return result;
}

void opengl_print(Visualisation &okenko,const std::vector<EventMeassurement*> &events)
{
  float y_step = 0.15;
  std::vector<std::pair<int,float>> history;
//  while (getch() != 'q')
  {
    okenko.start();
    int pos = 0;
      for(auto event : events)
      {
        history = event->getHistory();
        okenko.set_color(0.0, 1.0, 0.0);
        okenko.print(-2.2 + (pos*4.4/events.size()), 1.1, -3.0, event->getName());
        int y_stepper = 1;
        for(int i = 0; i < history.size(); i++)
        {
          okenko.print(-2.2 + (pos*4.4/events.size()), 1.1 - (y_step * y_stepper), -3.0, std::to_string(history[i].second));
          y_stepper ++;;
        }
        okenko.push();
        okenko.pop();
        //okenko.print(-2.2, 1.1, -3.0, "Nasrat"); // 1.0 = 300 pixels   2.2X, 1.1Y
        pos++;
      }
      okenko.finish();
  }
}

int main()
{
  Visualisation okenko(1440,804);
  //opengl_print(okenko);
  auto event_m = read_configuration();//dat do cyklu  // event_m.size() velkost vektora
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
      //  okenko.start();
    //    okenko.set_color(0.0, 1.0, 0.0);
        for(auto event : event_m)
         {
             event->process(parser_result);
             if(event->is_done())
             {
               event->incrementRound();
               printf("%s %d. Round time  : %6.1f ms", event->getName().c_str(), event->getRound(), event->get_time());
               printf("\n");
               event->saveHistory(event->get_time());
               event->reset();
               opengl_print(okenko,event_m);
             }
          //   okenko.print(-2.2 + (pos*4.4/event_m.size()), 1.1, -3.0, event->getName());
         }
         //okenko.finish();
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
