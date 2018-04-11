#include <stdio.h>
#include <vector>
#include <unistd.h>
#include <signal.h>
#include <iostream>

#include <serial_port.h>
#include <numbers_parser.h>
#include <EventMeassurement.h>
#include <json_parse.h>

//EventMeassurment whole_lap(1, 2), top_speed(3, 4);

void process_result(std::vector<float> &result)
{
  /*
  whole_lap.process(result);
  top_speed.process(result);
  */
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

int main()
{
  auto event_m = read_configuration();//dat do cyklu

  for (unsigned int i = 0; i < event_m.size(); i++)
    delete event_m[i];
  return 0;

  EventMeassurement event(1,4);
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

  while (1)
  {
    /*
    if (get_char() == ' ')
    {
      whole_lap.reset();
      top_speed.reset();
    }
    */
    if (serial_port.is_char())
    {
      parser.add(serial_port.get_char());

      if (parser.updated())
      {
        auto parser_result = parser.get();  //cez for prechadzat

        process_result(parser_result);
        event.process(parser_result);//dat do cyklu, kazdy bude dostavat parser result

        if(event.is_done())
        {
          cycleCounter++;
          printf("%d. Cycle time  : %6.1f ms",cycleCounter, event.get_time());
          printf("\n");
          history.push_back(std::make_pair(cycleCounter,event.get_time()));
          event.reset();
        }
      }

    }
    else
    {
      /*
      if (whole_lap.is_done())
      {
        printf("lap time %f[s]\n", whole_lap.get());
      }

      if (top_speed.is_done())
      {
        printf("top speed  %f[s]\n", top_speed.get());
      }
      */
      usleep(100*1000);
      if(cycleCounter > 3)
      {
        for(unsigned int i = 0; i < history.size(); i++)
        {
          printf("%d Cycle time: %f", history[i].first, history[i].second);
          printf("\n");
        }
        exit(0);
      }
    }
  }

  printf("program done\n");
  return 0;
}
