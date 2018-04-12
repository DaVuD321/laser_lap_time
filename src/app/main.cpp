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

void opengl_example()
{
  Visualisation okenko;

  float roll = 0.0;
  float pitch = 0.0;
  float yaw = 0.0;
  float d_angle = 0.3;

  while (getch() != 'q')
  {
    okenko.start();

      okenko.set_color(0.0, 1.0, 0.0);
      okenko.print(0.0, 0.0, -3.0, "some string");

      okenko.push();
        okenko.set_color(1.0, 0.0, 0.0);
        okenko.translate(0.0, 0.0, -3.0);
        okenko.rotate(roll, pitch, yaw);

        okenko.draw_cube(0.2);
      okenko.pop();

      roll+= d_angle;
      pitch+= d_angle;
      yaw+= d_angle;

    okenko.finish();
  }
}

int main()
{
  opengl_example();
  return 0;

  auto event_m = read_configuration();//dat do cyklu

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
               event->saveHistory(event->get_time());
               event->reset();
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
