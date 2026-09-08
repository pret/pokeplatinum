#ifndef SBNK_H
#define SBNK_H

#include <stdint.h>
#include <stdio.h>

uint8_t *TxtToSbnk(FILE *txt, uint32_t *sbnkSize);
void SbnkToTxt(uint8_t *sbnk, uint32_t sbnkSize, FILE *txt);
void ConvertTxtToSbnk(int argc, char **argv);
void ConvertSbnkToTxt(int argc, char **argv);

#endif //SBNK_H