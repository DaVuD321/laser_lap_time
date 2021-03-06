#include <gpio.h>
#include <rt_timer.h>
#include <terminal.h>
#include <math.h>
#include <i2c.h>
#include <vl53l0x.h>
#include <mag3110.h>
#include <object_detection.h>
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

#define SENSORS_COUNT   (unsigned int)4
#define TRESHOLD   (unsigned int)10
#define TIME_BETWEEN_DETECTIONS (float) 2000.0

class MagMeasurement: public CTaskInterface
{
  private:
    TI2C<TGPIOC,0,5, 100> i2c_a;
    TI2C<TGPIOC,1,5, 100> i2c_b;
    TI2C<TGPIOC,2,5, 100> i2c_c;
    TI2C<TGPIOC,3,5, 100> i2c_d;

    Mag3110 mag[4];
    float last_detection_time = 0.0;

  public:
    MagMeasurement()
    {
      terminal << "starting\n";

      int init_res;

      init_res = mag[0].init(&i2c_a);
      terminal << "MAGNETOMETER_init: " <<  init_res << "\n";

      init_res = mag[1].init(&i2c_b);
      terminal << "MAGNETOMETER_init: " <<  init_res << "\n";

      init_res = mag[2].init(&i2c_c);
      terminal << "MAGNETOMETER_init: " <<  init_res << "\n";

      init_res = mag[3].init(&i2c_d);
      terminal << "MAGNETOMETER_init: " <<  init_res << "\n";

     terminal << "init done\n";

    }

    ~MagMeasurement()
    {

    }

    void operator ()()
    {
      sMagResult values;
      bool send = false;
      int index = 0;
      for (unsigned int i = 0; i < SENSORS_COUNT; i++)
      {
        values = mag[i].read();
        if (mag[i].difference > TRESHOLD)
        {
          send = true;
          index = i;
        }
      }


      if((send) && (timer.get_time() - last_detection_time > TIME_BETWEEN_DETECTIONS))
      {
      last_detection_time = timer.get_time();
      terminal << last_detection_time << " ";
      for (unsigned int i = 0; i < SENSORS_COUNT; i++)
      {
        bool event = false;
        if (i == index)
        {
          terminal << 1 << " ";
        }
        else{
        terminal << 0 << " ";
      }
      }
      terminal << "\n";
    }
/*
    }

    void run()
    {
    while(1) {
      for(int i=0;i<4;i++)
      {
        mag[i].read();


        terminal.puti( (int32_t)mag[i].dif.x );
        terminal << " ";
        terminal.puti( (int32_t)mag[i].dif.y);
        terminal << " ";
        terminal.puti( (int32_t)mag[i].dif.z);
        terminal << " ";

        terminal << mag[i].difference << " ";
      }
      terminal << "\n";

      //timer.delay_ms(20);
      */
//    }
  }
};

//#define SENSORS_COUNT   (unsigned int)4

class CMeasurementTask: public CTaskInterface
{
  private:
    TI2C<TGPIOC,0,5> i2c_a;
    TI2C<TGPIOC,1,5> i2c_b;
    TI2C<TGPIOC,2,5> i2c_c;
    TI2C<TGPIOC,3,5> i2c_d;

    CObjectDetection laser[SENSORS_COUNT];

  public:
    CMeasurementTask()
    {
      int init_res;

      init_res = laser[0].init(&i2c_a);     //konštruktor má paramater i2c, ktorú bude využívať konkrétny laser
      terminal << "LASER_init: " <<  init_res << "\n";

      init_res = laser[1].init(&i2c_b);
      terminal << "LASER_init: " <<  init_res << "\n";

      init_res = laser[2].init(&i2c_c);
      terminal << "LASER_init: " <<  init_res << "\n";

      init_res = laser[3].init(&i2c_d);
      terminal << "LASER_init: " <<  init_res << "\n";

    }

    ~CMeasurementTask()
    {

    }

    void operator ()()
    {
      for (unsigned int i = 0; i < SENSORS_COUNT; i++)
      {
        laser[i].process();

      }

      bool event = false;

      for (unsigned int i = 0; i < SENSORS_COUNT; i++)
      {
        if (laser[i].result.event) {
          event = true;
        }
      }

      if (event)
      {
          terminal << timer.get_time() << " ";
          for (unsigned int i = 0; i < SENSORS_COUNT; i++)
          {
            terminal << laser[i].result.event << " ";
          }
          terminal << "\n";
      }
    }
};




int main()
{
  terminal << "\nterminal ready\n\n";


  MagMeasurement measurement_task;
  //CMeasurementTask measurement_task;


  //timer.add_task(&measurement_task, 18);

  terminal << "\nterminal ready\n\n";


  while (1)
  {
    measurement_task();
    //timer.main();
  }

  return 0;
}
