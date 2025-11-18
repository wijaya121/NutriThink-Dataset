#include "loadcell.h"
#include <numeric>

LoadCell::LoadCell() {
    windowSize = 15;    // moving average 10–20 samples
}

void LoadCell::begin() {
    buffer.clear();
}

float LoadCell::readRaw() {
    // Dummy synthetic raw ADC value
    return 8500 + (rand() % 100);  // Fake ADC reading
}

float LoadCell::readFiltered() {
    float raw = readRaw();
    buffer.push_back(raw);

    if (buffer.size() > windowSize)
        buffer.erase(buffer.begin());

    float sum = std::accumulate(buffer.begin(), buffer.end(), 0.0);
    return sum / buffer.size();
}

void LoadCell::tare() {
    buffer.clear();
}
