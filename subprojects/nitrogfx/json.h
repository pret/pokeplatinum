// Copyright (c) 2021-2023 red031000

#ifndef JSON_H
#define JSON_H

#include "options.h"

struct JsonToCellOptions *ParseNCERJson(char *path);
char *GetNCERJson(struct JsonToCellOptions *options);
struct JsonToScreenOptions *ParseNSCRJson(char *path);
struct JsonToAnimationOptions *ParseNANRJson(char *path);
char *GetNANRJson(struct JsonToAnimationOptions *options);
void FreeNCERCell(struct JsonToCellOptions *options);
void FreeNSCRScreen(struct JsonToScreenOptions *options);
void FreeNANRAnimation(struct JsonToAnimationOptions *options);

#endif //JSON_H
