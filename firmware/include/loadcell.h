#ifndef LOADCELL_H
#define LOADCELL_H

#include <vector>

class LoadCell {
public:
    LoadCell();
    void begin();
    float readRaw();
    float readFiltered();
    void tare();

private:
    std::vector<float> buffer;
    int windowSize;
};

#endif
