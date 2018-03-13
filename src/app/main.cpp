#include <stdio.h>
#include <vector>
#include <unistd.h>

#include <serial_port.h>
#include <numbers_parser.h>

void process_result(std::vector<float> &result)
{
  printf("result : ");
  for (unsigned int i = 0; i < result.size(); i++)
    printf("%6.3f ", result[i]);
  printf("\n");
}

int main()
{
  SerialPort serial_port("/dev/cu.wchusbserialfa130");

  int error = serial_port.get_error();

  if (error < 0)
  {
    printf("port opening error %i\n", error);
    return 0;
  }

  NumbersParser parser;

  while (1)
  {
    if (serial_port.is_char())
    {
      parser.add(serial_port.get_char());

      if (parser.updated())
      {
        auto parser_result = parser.get();

        process_result(parser_result);
      }

    }
    else
      usleep(100*1000);
  }

  printf("program done\n");
  return 0;
}
