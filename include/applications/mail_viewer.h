#ifndef POKEPLATINUM_APPLICATIONS_MAIL_VIEWER_H
#define POKEPLATINUM_APPLICATIONS_MAIL_VIEWER_H

#include "overlay_manager.h"

enum MailViewerResult {
    MAIL_VIEWER_RESULT_EDIT_SENTENCE_1 = 0,
    MAIL_VIEWER_RESULT_EDIT_SENTENCE_2,
    MAIL_VIEWER_RESULT_EDIT_SENTENCE_3,
    MAIL_VIEWER_RESULT_CONFIRM,
    MAIL_VIEWER_RESULT_CANCEL = 0xFFFF,
};

BOOL MailViewer_Init(ApplicationManager *appMan, int *state);
BOOL MailViewer_Main(ApplicationManager *appMan, int *state);
BOOL MailViewer_Exit(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_APPLICATIONS_MAIL_VIEWER_H
