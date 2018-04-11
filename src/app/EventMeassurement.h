//trieda kde zadam ktory senzor zacina a konci
//reset
//proces
//get time, is_done
//EM vie zmerat cas medzi lubovolnymi 2 senzormi
//vzdy ked mi pridu nove data z arudina tak vola funkciu process
//instancie senzory


#ifndef _EventMeassurement_H_
#define _EventMeassurement_H_

#include <vector>
#include <string>
#include <json_parse.h>

class EventMeassurement
{
  public:
    EventMeassurement(int start_sensor_IDX, int stop_sensor_IDX);
    //~EventMeassurement();
    EventMeassurement(Json::Value &json_config);

    void reset();
    void process(std::vector<float> &sensor_output);
    bool is_done();
    float get_time();

  private:
    float start_time, stop_time;
    float distance;
    std::string name;
    int start_sensor, stop_sensor;


};


#endif
