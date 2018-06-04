#include "mag3110.h"

#define MAG3110_DR_STATUS            0x00 /**< Data ready status per axis */
#define MAG3110_OUT_X_MSB            0x01 /**< Bits [15:8] of X measurement */
#define MAG3110_OUT_X_LSB            0x02 /**< Bits [7:0] of X measurement */
#define MAG3110_OUT_Y_MSB            0x03 /**< Bits [15:8] of Y measurement */
#define MAG3110_OUT_Y_LSB            0x04 /**< Bits [7:0] of Y measurement */
#define MAG3110_OUT_Z_MSB            0x05 /**< Bits [15:8] of Z measurement */
#define MAG3110_OUT_Z_LSB            0x06 /**< Bits [7:0] of Z measurement */
#define MAG3110_WHO_AM_I             0x07 /**< Device Identification Register */
#define MAG3110_SYSMOD               0x08 /**< FIFO Status Register */
#define MAG3110_OFF_X_MSB            0x09 /**< Bits [15:8] of user X offset */
#define MAG3110_OFF_X_LSB            0x0A /**< Bits [7:0] of user X offset */
#define MAG3110_OFF_Y_MSB            0x0B /**< Bits [15:8] of user Y offset */
#define MAG3110_OFF_Y_LSB            0x0C /**< Bits [7:0] of user Y offset */
#define MAG3110_OFF_Z_MSB            0x0D /**< Bits [15:8] of user Z offset */
#define MAG3110_OFF_Z_LSB            0x0E /**< Bits [7:0] of user Z offset */
#define MAG3110_DIE_TEMP             0x0F /**< Temperature, signed 8 bits */
#define MAG3110_CTRL_REG1            0x10 /**< Operation modes */
#define MAG3110_CTRL_REG2           0x11 /**< Operation modes */

//#define MAG3110_I2C_ADDRESS     0x0E
#define MAG3110_I2C_ADDRESS     (0x0E<<1)

Mag3110::Mag3110()
{
  result.x = 0;
  result.y = 0;
  result.z = 0;
}
//znizit na 40Hz
Mag3110::~Mag3110()
{

}

int Mag3110::init(class CI2C_Interface *i2c_)
{
  this->i2c = i2c_;

  i2c->write_reg(MAG3110_I2C_ADDRESS, MAG3110_CTRL_REG1, (1<<0));
  i2c->write_reg(MAG3110_I2C_ADDRESS, MAG3110_CTRL_REG2, 0);

  return 0;
}

sMagResult Mag3110::read()
{
  uint16_t tmp;

  tmp = ((uint16_t)i2c->read_reg(MAG3110_I2C_ADDRESS, MAG3110_OUT_X_MSB))<<8;
  tmp|= ((uint16_t)i2c->read_reg(MAG3110_I2C_ADDRESS, MAG3110_OUT_X_LSB))<<0;
  result.x = tmp;

  tmp = ((uint16_t)i2c->read_reg(MAG3110_I2C_ADDRESS, MAG3110_OUT_Y_MSB))<<8;
  tmp|= ((uint16_t)i2c->read_reg(MAG3110_I2C_ADDRESS, MAG3110_OUT_Y_LSB))<<0;
  result.y = tmp;

  tmp = ((uint16_t)i2c->read_reg(MAG3110_I2C_ADDRESS, MAG3110_OUT_Z_MSB))<<8;
  tmp|= ((uint16_t)i2c->read_reg(MAG3110_I2C_ADDRESS, MAG3110_OUT_Z_LSB))<<0;
  result.z = tmp;

  return result;
}

int32_t Mag3110::get_intensity()
{
  return result.x*result.x + result.y*result.y + result.z*result.z;
}
