
#include "EventMeassurement.h"
#include <stdio.h>


EventMeassurement::EventMeassurement(int start_sensor_IDX, int stop_sensor_IDX)//konstruktor
:start_sensor (start_sensor_IDX),
stop_sensor (stop_sensor_IDX)
{
  reset();
}

EventMeassurement::EventMeassurement(Json::Value &json_config)
{
  name = json_config["name"].asString();
  start_sensor = json_config["start_sensor"].asInt();
  stop_sensor = json_config["stop_sensor"].asInt();
  distance = json_config["distance"].asFloat();

  printf("%s %u %u %f\n", name.c_str(), start_sensor, stop_sensor, distance);

  reset();
}

void EventMeassurement::reset()
{
  start_time = 0;
  stop_time = 0;
}

bool EventMeassurement::is_done()
{
  if((start_time != 0) && (stop_time != 0))
  return true;

  return false;
}

float EventMeassurement::get_time()
{
  float time = stop_time - start_time;
  return time;
}

void EventMeassurement::process(std::vector<float> &sensor_output)
{
  if(sensor_output[start_sensor] == 1)
  {
    start_time = sensor_output[0];
  }

  if((sensor_output[stop_sensor] == 1)&&(start_time != 0))
  {
    stop_time = sensor_output[0];
  }

}
