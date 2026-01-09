#ifndef POKEPLATINUM_LINK_CONTEST_RECORD_H
#define POKEPLATINUM_LINK_CONTEST_RECORD_H

#include "bg_window.h"
#include "field_task.h"
#include "message.h"
#include "string_gf.h"
#include "string_template.h"

typedef struct LinkContestRecord {
    Window window;
    MessageLoader *messageLoader;
    StringTemplate *stringTemplate;
} LinkContestRecord;

void FieldTask_LinkContestRecordDisplayInit(FieldTask *fieldTask);
void *LinkContestRecordDisplay_Show(void *fieldSystem);
void LinkContestRecordDisplay_Free(LinkContestRecord *linkContestRecord);

#endif // POKEPLATINUM_LINK_CONTEST_RECORD_H
