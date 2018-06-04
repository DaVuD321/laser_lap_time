#ifndef _MAG3110_H_
#define _MAG3110_H_

#include "i2c.h"

struct sMagResult
{
  int16_t x, y, z;
};

class Mag3110
{
  public:
    sMagResult result;

  private:
    class CI2C_Interface *i2c;

  public:
    Mag3110();
    ~Mag3110();

    int init(class CI2C_Interface *i2c_);

    sMagResult read();
    int32_t get_intensity();

};


#endif
