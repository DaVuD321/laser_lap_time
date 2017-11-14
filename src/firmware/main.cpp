#include <gpio.h>
#include <rt_timer.h>
#include <terminal.h>
#include <math.h>

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


int main()
{
  timer.add_task(&blink_task, 100, true);

  terminal << "\nterminal ready\n\n";


  while (1)
  {
    timer.main();
  }

  return 0;
}
