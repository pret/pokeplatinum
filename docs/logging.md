# Logging

The repository includes a basic logger, that works with emulators such as MelonDS and No$GBA

To enable it, compile with `make debug` (or the `logging_enabled` meson option)

## Usage

Wherever you want to log something, just include the `debug.h` file, and call the `EmulatorLog` function.

### Example

```c
#include "debug.h"

void someFunction(){
    EmulatorLog("This will get printed on your emulator's standard output");
    int aNumber = 5;
    EmulatorLog("The function works just like printf, here's an integer : %d",aNumber);
}
```

## List of logging functions

- EmulatorLog : Prints the message with printf formatting but adds `[GAME_LOG] ` to the front and a newline at the end
- EmulatorPrintf : Just prints it's arguments to the emulator's output, with printf formatting.
- EmulatorPrintCharMapBuf : Prints the contents of a buffer, by translating the charmap of the game to utf-8 before
- EmulatorPrintStrBuf : Prints the contents of an Strbuf struct, by translating the charmap of the game to utf-8 before
  printing