#ifndef _JSON_PARSE_H_
#define _JSON_PARSE_H_

#include <string>

#include <json/json.h>
#include <json/value.h>

#include <json/reader.h>
#include <json/writer.h>

class JSONParse
{
  public:
    Json::Value result;

    JSONParse();
    JSONParse(std::string json_file_name);
    ~JSONParse();

    void load(std::string json_file_name);
    void save(std::string file_name);
};


#endif
