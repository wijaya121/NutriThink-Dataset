#ifndef WIFI_POST_H
#define WIFI_POST_H

#include <string>

class WiFiPost {
public:
    WiFiPost();
    void begin(const std::string& ssid, const std::string& password);
    bool postData(float weight);

private:
    std::string _ssid;
    std::string _password;
};

#endif
