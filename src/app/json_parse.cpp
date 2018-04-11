#include "json_parse.h"

#include <sstream>
#include <fstream>

JSONParse::JSONParse()
{

}

JSONParse::JSONParse(std::string json_file_name)
{
  load(json_file_name);
}

JSONParse::~JSONParse()
{

}

void JSONParse::load(std::string json_file_name)
{
  //load json file
  FILE *f = fopen(json_file_name.c_str(),"r");

  if (f == NULL)
  {
    printf("JSONParse file opening error %s\n", json_file_name.c_str());
    return;
  }


  fseek(f, 0L , SEEK_END);
  unsigned int file_size = ftell(f);
  rewind(f);

  char *str = (char*)malloc(file_size*sizeof(char));
  for (unsigned int i = 0; i < file_size; i++)
    str[i] = fgetc(f);
  fclose(f);

  //parse file
  Json::Reader json_reader;
  json_reader.parse(str, result);

  free(str);
}


void JSONParse::save(std::string file_name)
{
  std::ofstream json_file;
  json_file.open(file_name);
  json_file << result;
  json_file.close();
}
