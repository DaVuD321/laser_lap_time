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
#include <visualisation.h>

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
    float get_speed();
    void saveHistory(const float speed, const float time);
    void update_opengl_print(const Visualisation &okno);

    std::string getName()
    {
      return name;
    }
    void incrementRound()
    {
      round++;
    }
    int getRound()
    {
      return round;
    }
    std::vector<std::pair<float,float>> getHistory()
    {
      return history;
    }
    bool getOutput()
    {
      return output_time;
    }
    std::string getSuffix()
    {
      return output_suffix;
    }


  private:
    float previous_time = 0.0;
    float start_time, stop_time;
    float distance;
    std::string name;
    int start_sensor, stop_sensor;
    std::vector<std::pair<float,float>> history; // first = speed , second = time
    int round = 0;
    bool one_sensor_memory = false;

    std::string output_suffix = "";
    bool output_time = false;


};


#endif
