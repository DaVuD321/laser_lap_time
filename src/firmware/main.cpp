#include <gpio.h>
#include <rt_timer.h>
#include <terminal.h>
#include <math.h>
#include <i2c.h>
#include <vl53l0x.h>
/*
class CBlinkTask: public CTaskInterface
{
  private:
    TGpio<TGPIOB, 5, GPIO_MODE_OUT> led;
    unsigned int state;

  public:
    CBlinkTask()
    {
      state = 0;

    }

    ~CBlinkTask()
    {

    }

    void operator ()()
    {
      switch (state)
      {
        case 0: led = 1; state = 1; break;
        case 1: led = 0; state = 0; break;
      }

      terminal << "uptime : " << timer.get_time() << " [ms]\n";
    }
};


class CBlinkTask blink_task;
*/

class CMeasurementTask: public CTaskInterface
{
  private:
  TI2C<TGPIOC,0,5> i2c_a;
  CVL53L0X laser_a;

  public:
    CMeasurementTask()
    {
      int init_res;
      init_res = laser_a.init(&i2c_a);
      terminal << "LASER_init: " << init_res << "\n";
    }

    ~CMeasurementTask()
    {

    }

    void operator ()()
    {
      int distance = laser_a.read();
      terminal << "LASER_distance: " << distance << "\n";
    }
};


int main()
{
  CMeasurementTask measurement_task;

  timer.add_task(&measurement_task, 100);

  terminal << "\nterminal ready\n\n";


  while (1)
  {
    timer.main();
  }

  return 0;
}
