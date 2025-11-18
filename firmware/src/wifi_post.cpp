#include "wifi_post.h"
#include <iostream>

WiFiPost::WiFiPost() {}

void WiFiPost::begin(const std::string& ssid, const std::string& password) {
    _ssid = ssid;
    _password = password;

    // Pseudocode
    std::cout << "Connecting to WiFi: " << ssid << std::endl;
}

bool WiFiPost::postData(float weight) {
    // Pseudocode (no real network)
    std::cout << "[POST] /api/weight { weight: " << weight << " }\n";
    return true;
}
