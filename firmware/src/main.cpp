#include "loadcell.h"
#include "wifi_post.h"
#include <iostream>

LoadCell scale;
WiFiPost wifi;

int main() {
    wifi.begin("DummySSID", "DummyPassword");
    scale.begin();

    scale.tare();

    for (int i = 0; i < 10; i++) {
        float filtered = scale.readFiltered();
        wifi.postData(filtered);
        std::cout << "Weight: " << filtered << " grams" << std::endl;
    }

    return 0;
}
