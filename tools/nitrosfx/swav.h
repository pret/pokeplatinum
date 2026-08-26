#ifndef SWAV_H
#define SWAV_H

#include <stdint.h>
#include <stdbool.h>

enum SWAV_ENCODE
{
    SWAV_SIGNED_PCM8 = 0,
    SWAV_SIGNED_PCM16,
    SWAV_IMA_ADPCM,
};

struct WavChunk_RIFF
{
    uint32_t chunkID;
    uint32_t fileSize;
    uint32_t formType;
};

struct WavChunk_fmt
{
    uint32_t chunkID;
    uint32_t size;              // Does not include chunkID, size, or any padding
    uint16_t wFormatTag;        // Format category
    uint16_t wChannels;         // Number of channels
    uint32_t dwSamplesPerSec;   // Sampling rate
    uint32_t dwAvgBytesPerSec;  // For buffer estimation
    uint16_t wBlockAlign;       // Data block size
    uint16_t wBitsPerSample;    // Sample size
};

struct WavChunk_data
{
    uint32_t chunkID;
    uint32_t size;              // Does not include chunkID, size, or any padding
    //uint8_t *audio;
};

struct SwavChunk_DATA
{
    uint32_t chunkID;
    uint32_t size;
    uint8_t encodeType;
    uint8_t loop;
    uint16_t samplingRate;
    uint16_t clockTime;
    uint16_t loopStart;
    uint32_t loopSize;
    //uint8_t *audio;
};

uint8_t *WavToSwav(uint8_t *wav, uint32_t wavSize, uint32_t *swavSize, uint8_t encodeType);
uint8_t *SwavToWav(uint8_t *swav, uint32_t swavSize, uint32_t *wavSize, bool pcm16);
void ConvertWavToSwav(int argc, char **argv);
void ConvertSwavToWav(int argc, char **argv);

#endif //SWAV_H
