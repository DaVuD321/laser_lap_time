
#include "EventMeassurement.h"
#include <stdio.h>
#include <math.h>
static const float TIME_DELAY = 600.0;

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
  std::string output = json_config["output"].asString();

  if(output == "time")
  {
    output_suffix = " ms";
    output_time = true;
  }
  else
  {
    output_suffix = " m/s";
  }

  printf("%s %u %u %f\n", name.c_str(), start_sensor, stop_sensor, distance);

  reset();
}

void EventMeassurement::reset()
{
  start_time = stop_time;
  stop_time = 0;
  one_sensor_memory = false;
  if(start_sensor != stop_sensor)
  {
    start_time = 0;
    stop_time = 0;
    one_sensor_memory = false;
  }
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

float EventMeassurement::get_speed()
{
  float speed = distance/get_time();
  return speed;
}

void EventMeassurement::process(std::vector<float> &sensor_output)
{
  if(sensor_output[0] - previous_time > TIME_DELAY)
  {
  if(start_time != 0)
  {
    one_sensor_memory = true;
  }
  else if(sensor_output[start_sensor] == 1)
  {
    start_time = sensor_output[0];
  }

    if((sensor_output[stop_sensor] == 1)&&(start_time != 0)&&(one_sensor_memory == true))
    {
      stop_time = sensor_output[0];
    }
  }
}

void EventMeassurement::saveHistory(const float speed, const float time)
{
    history.push_back(std::make_pair(speed, time));
}

void EventMeassurement::update_opengl_print(const Visualisation &okno)
{
  Visualisation okenko;

  float roll = 0.0;
  float pitch = 0.0;
  float yaw = 0.0;
  float d_angle = 0.3;


//    okenko.start();
//    okenko.finish();

}
