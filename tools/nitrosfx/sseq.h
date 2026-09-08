#ifndef SSEQ_H
#define SSEQ_H

#include <stdint.h>

uint8_t *MidiToSseq(uint8_t *midi, uint32_t midiSize, uint32_t *sseqSize);
uint8_t *SseqToMidi(uint8_t *sseq, uint32_t sseqSize, uint32_t *midiSize);
void ConvertMidiToSseq(int argc, char **argv);
void ConvertSseqToMidi(int argc, char **argv);

#endif //SSEQ_H