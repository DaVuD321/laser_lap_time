#ifndef _VL53L0X_H_
#define _VL53L0X_H_

#include "i2c.h"

class CVL53L0X
{
  private:
    int distance_result;

    unsigned char range_data[14];

  private:
    class CI2C_Interface *i2c;

  public:
    CVL53L0X();
    ~CVL53L0X();
//pomocou i2c začne posielať do senzoru údaje
    int init(class CI2C_Interface *i2c_);

    int read();
    int get();

  private:
    bool getSPADinfo(unsigned char *count, bool * type_is_aperture);
    bool performSingleRefCalibration(unsigned char vhv_init_byte);

};


#endif
