
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

void EventMeassurement::process(std::vector<float> &sensor_output)
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

void EventMeassurement::saveHistory(const float time)
{
    history.push_back(std::make_pair(round, time));
}

void EventMeassurement::update_opengl_print(const Visualisation &okno)
{
  Visualisation okenko;

  float roll = 0.0;
  float pitch = 0.0;
  float yaw = 0.0;
  float d_angle = 0.3;

  //while (getch() != 'q')
  {okenko.print(-1.0, 0.0, -3.0, "Mantak David");okenko.finish();
//    okenko.start();

/*      okenko.set_color(0.0, 1.0, 0.0);
      okenko.print(-1.0, 0.0, -3.0, "Mantak David");

      okenko.push();
        okenko.set_color(1.0, 0.0, 0.0);
        okenko.translate(0.0, 0.0, -3.0);
        okenko.rotate(roll, pitch, yaw);

        okenko.draw_cube(0.2);
      okenko.pop();

      roll+= d_angle;
      pitch+= d_angle;
      yaw+= d_angle;
*/
//    okenko.finish();
  }
}
