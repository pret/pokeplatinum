#ifndef POKEPLATINUM_JOURNAL_PRINTER_H
#define POKEPLATINUM_JOURNAL_PRINTER_H

#include "applications/journal_display/journal_controller.h"

void JournalPrinter_AddWindows(JournalManager *param0);
void JournalPrinter_RemoveWindows(JournalManager *param0);
void JournalPrinter_PrintEntry(JournalManager *param0, u32 param1);

#endif // POKEPLATINUM_JOURNAL_PRINTER_H
