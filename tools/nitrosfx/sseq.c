#include "sseq.h"

#include <stdio.h>

#include "util.h"

enum SseqCommands
{
    // command < 0x80 = note
    SSEQ_COMMAND_WAIT = 0x80,
    SSEQ_COMMAND_INSTRUMENT = 0x81,
    SSEQ_COMMAND_TRACK_ADDRESS = 0x93,
    SSEQ_COMMAND_JUMP = 0x94, // TODO: detection
    SSEQ_COMMAND_CALL = 0x95, // TODO: detection
    SSEQ_COMMAND_RANDOM = 0xA0, // TODO
    SSEQ_COMMAND_VARIABLE = 0xA1, // TODO
    SSEQ_COMMAND_IF = 0xA2, // TODO
    SSEQ_COMMAND_SET = 0xB0, // TODO
    SSEQ_COMMAND_ADD = 0xB1, // TODO
    SSEQ_COMMAND_SUBTRACT = 0xB2, // TODO
    SSEQ_COMMAND_MULTIPLY = 0xB3, // TODO
    SSEQ_COMMAND_DIVIDE = 0xB4, // TODO
    SSEQ_COMMAND_SHIFT = 0xB5, // TODO
    SSEQ_COMMAND_RANDOM_NOTE = 0xB6, // TODO
    SSEQ_COMMAND_COMPARE_EQUAL = 0xB8, // TODO
    SSEQ_COMMAND_COMPARE_GEQUAL = 0xB9, // TODO
    SSEQ_COMMAND_COMPARE_GREATER = 0xBA, // TODO
    SSEQ_COMMAND_COMPARE_LEQUAL = 0xBB, // TODO
    SSEQ_COMMAND_COMPARE_LESS = 0xBC, // TODO
    SSEQ_COMMAND_COMPARE_NEQUAL = 0xBD, // TODO
    SSEQ_COMMAND_PAN = 0xC0,
    SSEQ_COMMAND_VOLUME = 0xC1,
    SSEQ_COMMAND_MASTER_VOLUME = 0xC2,
    SSEQ_COMMAND_TRANSPOSE = 0xC3,
    SSEQ_COMMAND_PITCH_BEND = 0xC4,
    SSEQ_COMMAND_PITCH_BEND_RANGE = 0xC5,
    SSEQ_COMMAND_PRIORITY = 0xC6,
    SSEQ_COMMAND_POLY = 0xC7,
    SSEQ_COMMAND_TIE = 0xC8, // TODO
    SSEQ_COMMAND_PORTAMENTO_CONTROL = 0xC9,
    SSEQ_COMMAND_MODULATION_DEPTH = 0xCA,
    SSEQ_COMMAND_MODULATION_SPEED = 0xCB,
    SSEQ_COMMAND_MODULATION_TYPE = 0xCC,
    SSEQ_COMMAND_MODULATION_RANGE = 0xCD,
    SSEQ_COMMAND_PORTAMENTO_ON_OFF = 0xCE,
    SSEQ_COMMAND_PORTAMENTO_TIME = 0xCF,
    SSEQ_COMMAND_ATTACK_RATE = 0xD0,
    SSEQ_COMMAND_DECAY_RATE = 0xD1,
    SSEQ_COMMAND_SUSTAIN_RATE = 0xD2,
    SSEQ_COMMAND_RELEASE_RATE = 0xD3,
    SSEQ_COMMAND_LOOP_START = 0xD4,
    SSEQ_COMMAND_VOLUME_2 = 0xD5,
    SSEQ_COMMAND_PRINT_VARIABLE = 0xD6, // TODO
    SSEQ_COMMAND_MODULATION_DELAY = 0xE0,
    SSEQ_COMMAND_TEMPO = 0xE1,
    SSEQ_COMMAND_SWEEP_PITCH = 0xE3,
    SSEQ_COMMAND_LOOP_END = 0xFC,
    SSEQ_COMMAND_RETURN = 0xFD, // TODO: detection (used in CALL)
    SSEQ_COMMAND_TRACKS_USED = 0xFE,
    SSEQ_COMMAND_END = 0xFF,
};

enum MidiFormat
{
    SINGLE_MULIT_CHANNEL = 0,
    SIMULTANEOUS_TRACKS,
    SINGLE_TRACK_PATTERNS,
};

enum MidiEvents // upper nibble, with 4th bit = 1
{
    MIDI_EVENT_NOTE_OFF = 8,
    MIDI_EVENT_NOTE_ON,
    MIDI_EVENT_POLYPHONIC_PRESSURE,
    MIDI_EVENT_CONTROLLER,
    MIDI_EVENT_PROGRAM_CHANGE,
    MIDI_EVENT_CHANNEL_PRESSURE,
    MIDI_EVENT_PITCH_BEND,
    MIDI_EVENT_META_SYSEX,
};

// after MIDI_EVENT_CONTROLLER
enum MidiControllers // 8th bit always 0 (0 - 127)
{
    // High resolution continuous controllers (MSB)
    MIDI_CONTROLLER_BANK_SELECT = 0,
    MIDI_CONTROLLER_MODULATION_WHEEL = 1, // Modulation Depth
    MIDI_CONTROLLER_BREATH_CONTROLLER = 2,
    MIDI_CONTROLLER_FOOT_CONTROLLER = 4,
    MIDI_CONTROLLER_PORTAMENTO_TIME = 5, // porta time
    MIDI_CONTROLLER_DATA_ENTRY = 6, // data entry
    MIDI_CONTROLLER_CHANNEL_VOLUME = 7, // volume
    MIDI_CONTROLLER_BALANCE = 8,
    MIDI_CONTROLLER_PAN = 10, // pan
    MIDI_CONTROLLER_EXPRESSION_CONTROLLER = 11, // volume 2
    MIDI_CONTROLLER_EFFECT_CONTROL_1 = 12, // main volume
    MIDI_CONTROLLER_EFFECT_CONTROL_2 = 13, // transpose
    MIDI_CONTROLLER_PRIORITY = 14, // priority (custom)
    MIDI_CONTROLLER_GEN_PURPOSE_CONTROLLER_1 = 16, // setvar 0
    MIDI_CONTROLLER_GEN_PURPOSE_CONTROLLER_2 = 17, // setvar 1
    MIDI_CONTROLLER_GEN_PURPOSE_CONTROLLER_3 = 18, // setvar 2
    MIDI_CONTROLLER_GEN_PURPOSE_CONTROLLER_4 = 19, // setvar 3
    MIDI_CONTROLLER_BEND_RANGE = 20, // bendrange; custom
    MIDI_CONTROLLER_MODULATION_SPEED = 21, // mod_speed; custom
    MIDI_CONTROLLER_MODULATION_TYPE = 22, // mod_type; custom
    MIDI_CONTROLLER_MODULATION_RANGE = 23, // mod_range; custom
    MIDI_CONTROLLER_MODULATION_DELAY = 26, // mod_delay; custom
    MIDI_CONTROLLER_MODULATION_DELAY_10 = 27, // mod_delay x 10; custom
    MIDI_CONTROLLER_SWEEP_PITCH = 28, // sweep_pitch; custom
    MIDI_CONTROLLER_SWEEP_PITCH_24 = 29, // sweep_pitch x 24; custom
    // High resolution continuous controllers (LSB)
    MIDI_CONTROLLER_BANK_SELECT_LSB = 32,
    MIDI_CONTROLLER_MODULATION_WHEEL_LSB = 33,
    MIDI_CONTROLLER_BREATH_CONTROLLER_LSB = 34,
    MIDI_CONTROLLER_FOOT_CONTROLLER_LSB = 36,
    MIDI_CONTROLLER_PORTAMENTO_TIME_LSB = 37,
    MIDI_CONTROLLER_DATA_ENTRY_LSB = 38,
    MIDI_CONTROLLER_CHANNEL_VOLUME_LSB = 39,
    MIDI_CONTROLLER_BALANCE_LSB = 40,
    MIDI_CONTROLLER_PAN_LSB = 42,
    MIDI_CONTROLLER_EXPRESSION_CONTROLLER_LSB = 43,
    MIDI_CONTROLLER_EFFECT_CONTROL_1_LSB = 44,
    MIDI_CONTROLLER_EFFECT_CONTROL_2_LSB = 45,
    MIDI_CONTROLLER_GEN_PURPOSE_CONTROLLER_1_LSB = 48,
    MIDI_CONTROLLER_GEN_PURPOSE_CONTROLLER_2_LSB = 49,
    MIDI_CONTROLLER_GEN_PURPOSE_CONTROLLER_3_LSB = 50,
    MIDI_CONTROLLER_GEN_PURPOSE_CONTROLLER_4_LSB = 51,
    // Switches
    MIDI_CONTROLLER_SUSTAIN_ON_OFF = 64,
    MIDI_CONTROLLER_PORTAMENTO_ON_OFF = 65, // porta_on / porta_off
    MIDI_CONTROLLER_SUSTENUTO_ON_OFF = 66,
    MIDI_CONTROLLER_SOFT_PEDAL_ON_OFF = 67,
    MIDI_CONTROLLER_LEGATO_ON_OFF = 68,
    MIDI_CONTROLLER_HOLD_2_ON_OFF = 69,
    // Low resolution continuous controllers
    MIDI_CONTROLLER_SOUND_CONTROLLER_1 = 70,
    MIDI_CONTROLLER_SOUND_CONTROLLER_2 = 71,
    MIDI_CONTROLLER_SOUND_CONTROLLER_3 = 72,
    MIDI_CONTROLLER_SOUND_CONTROLLER_4 = 73,
    MIDI_CONTROLLER_SOUND_CONTROLLER_5 = 74,
    MIDI_CONTROLLER_SOUND_CONTROLLER_6 = 75,
    MIDI_CONTROLLER_SOUND_CONTROLLER_7 = 76,
    MIDI_CONTROLLER_SOUND_CONTROLLER_8 = 77,
    MIDI_CONTROLLER_SOUND_CONTROLLER_9 = 78,
    MIDI_CONTROLLER_SOUND_CONTROLLER_10 = 79,
    MIDI_CONTROLLER_GEN_PURPOSE_CONTROLLER_5 = 80,
    MIDI_CONTROLLER_GEN_PURPOSE_CONTROLLER_6 = 81,
    MIDI_CONTROLLER_GEN_PURPOSE_CONTROLLER_7 = 82,
    MIDI_CONTROLLER_GEN_PURPOSE_CONTROLLER_8 = 83,
    MIDI_CONTROLLER_PORTAMENTO_CONTROL = 84, // porta
    MIDI_CONTROLLER_ATTACK = 85, // attack; custom
    MIDI_CONTROLLER_DECAY = 86, // decay; custom
    MIDI_CONTROLLER_SUSTAIN = 87, // sustain; custom
    MIDI_CONTROLLER_VELOCITY = 88, // release
    MIDI_CONTROLLER_LOOP_START = 89, // loop_start; custom
    MIDI_CONTROLLER_LOOP_END = 90, // loop_end; custom
    MIDI_CONTROLLER_REVERB_SEND_LEVEL = 91,
    MIDI_CONTROLLER_TREMELO_DEPTH = 92,
    MIDI_CONTROLLER_CHORUS_SEND_LEVEL = 93,
    MIDI_CONTROLLER_CELESTE_DEPTH = 94,
    MIDI_CONTROLLER_PHASER_DEPTH = 95,
    // RPNs / NRPNs
    MIDI_CONTROLLER_DATA_INCREMENT = 96,
    MIDI_CONTROLLER_DATA_DECREMENT = 97,
    MIDI_CONTROLLER_NRPN_LSB = 98, // Non-Registered Parameter Number
    MIDI_CONTROLLER_NRPN_MSB = 99, // Non-Registered Parameter Number
    MIDI_CONTROLLER_RPN_LSB = 100, // Registered Parameter Number
    MIDI_CONTROLLER_RPN_MSB = 101, // Registered Parameter Number
    // Channel Mode messages
    MIDI_CONTROLLER_ALL_SOUND_OFF = 120,
    MIDI_CONTROLLER_RESET_ALL_CONTROLLERS = 121,
    MIDI_CONTROLLER_LOCAL_CONTROL_ON_OFF = 122,
    MIDI_CONTROLLER_ALL_NOTES_OFF = 123,
    MIDI_CONTROLLER_OMNI_OFF = 124, // causes ANO
    MIDI_CONTROLLER_OMNI_ON = 125, // causes ANO
    MIDI_CONTROLLER_MONO = 126, // Poly off; causes ANO
    MIDI_CONTROLLER_POLY = 127, // Mono Off; causes ANO
    // MAX = 127 (0X7f)
};

#define MIDI_SYSEX_EVENT 0xF0
#define MIDI_SYSEX_ESCAPE 0xF7
#define MIDI_META_EVENT 0xFF

// after MIDI_META_EVENT
enum MidiMetaEvents // 8th bit always 0 (0 - 127)
{
    MIDI_META_SEQUENCE_NUMBER = 0X00, // size = 2
    MIDI_META_TEXT = 0X01,
    MIDI_META_COPYRIGHT = 0X02,
    MIDI_META_TRACK_NAME = 0X03,
    MIDI_META_INSTRUMENT_NAME = 0X04,
    MIDI_META_LYRIC = 0X05,
    MIDI_META_MARKER = 0X06,
    MIDI_META_CUE_POINT = 0X07,
    MIDI_META_PROGRAM_NAME = 0X08,
    MIDI_META_DEVICE_NAME = 0X09,
    MIDI_META_CHANNEL_PREFIX = 0X20,
    MIDI_META_PORT = 0X21, // size = 1
    MIDI_META_TRACK_END = 0X2F, // size = 0
    MIDI_META_TEMPO = 0X51, // size = 3
    MIDI_META_SMPTE_OFFSET = 0X54, // size = 5
    MIDI_META_TIME_SIGNATURE = 0X58, // size = 4
    MIDI_META_KEY_SIGNATURE = 0X59, // size = 2
    MIDI_META_SEQUENCER_SPECIFIC_EVENT = 0X7f,
};

struct Event
{
    struct Event *next;
    uint32_t time;
    uint32_t address;
    uint8_t *data;
    uint8_t size;
};

struct EventPackage
{
    struct Event *head;
    struct Event *tail;
    uint32_t count;
    uint32_t size;
};

static void PackEvent(struct EventPackage *eventTracks, uint32_t time, uint32_t address, uint8_t *data, uint8_t size)
{
    if (eventTracks == NULL) FATAL_ERROR("Error packing event\n");
    
    struct Event *event = malloc(sizeof(struct Event));
    if (event == NULL) FATAL_ERROR("Error allocating event\n");
    event->next = NULL;
    event->time = time;
    event->address = address;
    event->data = data;
    event->size = size;

    eventTracks->size += 4 + size;

    if (eventTracks->count == 0)
    {
        eventTracks->head = event;
        eventTracks->tail = event;
        eventTracks->count = 1;
        return;
    }

    eventTracks->tail->next = event;
    eventTracks->tail = event;
    eventTracks->count++;
}

static uint32_t Sseq_To_Midi_NULL(struct EventPackage *UNUSED, uint32_t UNUSED, uint32_t UNUSED, uint8_t UNUSED, uint8_t *UNUSED)
{
    FATAL_ERROR("Unknown SSEQ Event\n");

    return 0;
}

static uint32_t Sseq_To_Midi_Instrument(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_PROGRAM_CHANGE << 4) | track;
    eventData[1] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 2);

    return 1;
}

static uint32_t Sseq_To_Midi_Jump(struct EventPackage *UNUSED, uint32_t UNUSED, uint32_t UNUSED, uint8_t UNUSED, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    return 3;
}

static uint32_t Sseq_To_Midi_Call(struct EventPackage *UNUSED, uint32_t UNUSED, uint32_t UNUSED, uint8_t UNUSED, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    return 3;
}

static uint32_t Sseq_To_Midi_Random(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t UNUSED, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t commandLength = 6;
    if (((*sseqPos < 0xC0) && (*sseqPos >= 0xB0)) || (*sseqPos < 0x80)) commandLength++; // Skips last variable; these have a byte that is also kept
    uint8_t *eventData = malloc(commandLength + 3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = MIDI_META_EVENT;
    eventData[1] = MIDI_META_MARKER;
    eventData[2] = commandLength;
    eventData[3] = SSEQ_COMMAND_RANDOM;
    eventData[4] = *sseqPos++;
    eventData[5] = *sseqPos++;
    eventData[6] = *sseqPos++;
    eventData[7] = *sseqPos++;
    eventData[8] = *sseqPos++;
    if (commandLength == 6) eventData[9] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, commandLength + 3);

    return commandLength - 1;
}

static uint32_t Sseq_To_Midi_Variable(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t UNUSED, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t commandLength = 3;
    if (((*sseqPos < 0xC0) && (*sseqPos >= 0xB0)) || (*sseqPos < 0x80)) commandLength++; // Skips last variable; these have a byte that is also kept
    uint8_t *eventData = malloc(commandLength + 3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = MIDI_META_EVENT;
    eventData[1] = MIDI_META_MARKER;
    eventData[2] = commandLength;
    eventData[3] = SSEQ_COMMAND_VARIABLE;
    eventData[4] = *sseqPos++;
    eventData[5] = *sseqPos++;
    if (commandLength == 4) eventData[6] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, commandLength + 3);

    return commandLength - 1;
}

static uint32_t Sseq_To_Midi_Pan(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_PAN;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Volume(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_CHANNEL_VOLUME;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Master_Volume(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_EFFECT_CONTROL_1;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Transpose(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_EFFECT_CONTROL_2;
    eventData[2] = (char)(*sseqPos) + 64;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Pitch_Bend(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_PITCH_BEND << 4) | track;
    eventData[1] = 0;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Pitch_Bend_Range(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_BEND_RANGE;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Priority(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_PRIORITY;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Poly(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = *sseqPos ? MIDI_CONTROLLER_MONO : MIDI_CONTROLLER_POLY;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Portamento_Control(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_PORTAMENTO_CONTROL;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Modulation_Depth(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_MODULATION_WHEEL;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Modulation_Speed(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_MODULATION_SPEED;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Modulation_Type(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_MODULATION_TYPE;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Modulation_Range(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_MODULATION_RANGE;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Portamento_On_Off(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_PORTAMENTO_ON_OFF;
    eventData[2] = *sseqPos * 64;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Portamento_Time(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_PORTAMENTO_TIME;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Attack(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_ATTACK;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Decay(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_DECAY;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Sustain(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_SUSTAIN;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Release_Rate(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_VELOCITY;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Loop_Start(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_LOOP_START;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Volume_2(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_EXPRESSION_CONTROLLER;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Modulation_Delay(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    short modDelay = ReadU16_LE(sseqPos);
    bool compress = (modDelay < -128) || (modDelay > 127);
    if (compress) modDelay /= 10;
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = compress ? MIDI_CONTROLLER_MODULATION_DELAY_10 : MIDI_CONTROLLER_MODULATION_DELAY;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Tempo(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t UNUSED, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(6);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    uint16_t tempo = ReadU16_LE(sseqPos);
    if (tempo == 0) FATAL_ERROR("Tempo must be non-zero\n");
    eventData[0] = MIDI_META_EVENT;
    eventData[1] = MIDI_META_TEMPO;
    eventData[2] = 3;
    WriteU24_BE(eventData + 3, 60000000 / tempo);
    PackEvent(eventPackage, time, address, eventData, 6);

    return 2;
}

static uint32_t Sseq_To_Midi_Sweep_Pitch(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    short sweepPitch = ReadU16_LE(sseqPos);
    bool compress = ((sweepPitch + 64) < 0) || ((sweepPitch + 64) > 127);
    if (compress) sweepPitch /= 24;
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = compress ? MIDI_CONTROLLER_SWEEP_PITCH_24 : MIDI_CONTROLLER_SWEEP_PITCH;
    eventData[2] = sweepPitch + 64;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 2;
}

static uint32_t Sseq_To_Midi_Loop_End(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos)
{
    if (sseqPos == NULL) FATAL_ERROR("error reading sseq\n");

    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = (MIDI_EVENT_CONTROLLER << 4) | track;
    eventData[1] = MIDI_CONTROLLER_LOOP_END;
    eventData[2] = *sseqPos;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 1;
}

static uint32_t Sseq_To_Midi_Return(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t UNUSED, uint8_t *UNUSED)
{
    uint8_t *eventData = malloc(4);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = MIDI_META_EVENT;
    eventData[1] = MIDI_META_MARKER;
    eventData[2] = 1;
    eventData[3] = SSEQ_COMMAND_RETURN;
    PackEvent(eventPackage, time, address, eventData, 4);

    return 0;
}

static uint32_t Sseq_To_Midi_Track_End(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t UNUSED, uint8_t *UNUSED)
{
    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = MIDI_META_EVENT;
    eventData[1] = MIDI_META_TRACK_END;
    eventData[2] = 0;
    PackEvent(eventPackage, time, address, eventData, 3);

    return 0;
}

static uint32_t(*SSEQ_COMMAND_TO_MIDI[])(struct EventPackage *eventPackage, uint32_t time, uint32_t address, uint8_t track, uint8_t *sseqPos) = {
    Sseq_To_Midi_Instrument, // 0x81
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL, // 0x93
    Sseq_To_Midi_Jump, // 0x94
    Sseq_To_Midi_Call, // 0x95
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_Random, // 0xA0
    Sseq_To_Midi_Variable, // 0xA1
    Sseq_To_Midi_NULL, // 0xA2
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_Pan, // 0xC0
    Sseq_To_Midi_Volume, // 0xC1
    Sseq_To_Midi_Master_Volume, // 0xC2
    Sseq_To_Midi_Transpose, // 0xC3
    Sseq_To_Midi_Pitch_Bend, // 0xC4
    Sseq_To_Midi_Pitch_Bend_Range, // 0xC5
    Sseq_To_Midi_Priority, // 0xC6
    Sseq_To_Midi_Poly, // 0xC7
    Sseq_To_Midi_NULL, // 0xC8
    Sseq_To_Midi_Portamento_Control, // 0xC9
    Sseq_To_Midi_Modulation_Depth, // 0xCA
    Sseq_To_Midi_Modulation_Speed, // 0xCB
    Sseq_To_Midi_Modulation_Type, // 0xCC
    Sseq_To_Midi_Modulation_Range, // 0xCD
    Sseq_To_Midi_Portamento_On_Off, // 0xCE
    Sseq_To_Midi_Portamento_Time, // 0xCF
    Sseq_To_Midi_Attack, // 0xD0
    Sseq_To_Midi_Decay, // 0xD1
    Sseq_To_Midi_Sustain, // 0xD2
    Sseq_To_Midi_Release_Rate, // 0xD3
    Sseq_To_Midi_Loop_Start, // 0xD4
    Sseq_To_Midi_Volume_2, // 0xD5
    Sseq_To_Midi_NULL, // 0xD6
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_Modulation_Delay, // 0xE0
    Sseq_To_Midi_Tempo, // 0xE1
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_Sweep_Pitch, // 0xE3
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_NULL,
    Sseq_To_Midi_Loop_End, // 0xFC
    Sseq_To_Midi_Return, // 0xFD
    Sseq_To_Midi_NULL, // 0xFE
    Sseq_To_Midi_Track_End, // 0xFF
};

static void Midi_Controller_To_Sseq_NULL(struct EventPackage *UNUSED, uint8_t UNUSED)
{
    return;
}

static void Midi_Controller_To_Sseq_Modulation_Depth(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_MODULATION_DEPTH;
    eventData[1] = value;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Portamento_Time(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_PORTAMENTO_TIME;
    eventData[1] = value;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Volume(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_VOLUME;
    eventData[1] = value & 0x7F;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Pan(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_PAN;
    eventData[1] = value & 0x7F;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Volume_2(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_VOLUME_2;
    eventData[1] = value;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Master_Volume(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_MASTER_VOLUME;
    eventData[1] = value & 0x7F;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Transpose(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_TRANSPOSE;
    eventData[1] = (char)(value & 0x7F) - 64;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Priority(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_PRIORITY;
    eventData[1] = value;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Pitch_Bend_Range(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_PITCH_BEND_RANGE;
    eventData[1] = value;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Modulation_Speed(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_MODULATION_SPEED;
    eventData[1] = value;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Modulation_Type(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_MODULATION_TYPE;
    eventData[1] = value & 0x03;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Modulation_Range(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_MODULATION_RANGE;
    eventData[1] = value;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Modulation_Delay(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_MODULATION_DELAY;
    eventData[1] = value;
    eventData[2] = (value & 0x80) ? 0xFF : 0x00; // signed
    PackEvent(eventPackage, 0, 0, eventData, 3);
}

static void Midi_Controller_To_Sseq_Modulation_Delay_10(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_MODULATION_DELAY;
    short modDelay = (short)value * 10;
    WriteU16_LE(eventData + 1, modDelay);
    PackEvent(eventPackage, 0, 0, eventData, 3);
}

static void Midi_Controller_To_Sseq_Sweep_Pitch(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    short sweepPitch = (short)value - 64;
    eventData[0] = SSEQ_COMMAND_SWEEP_PITCH;
    WriteU16_LE(eventData + 1, sweepPitch);
    PackEvent(eventPackage, 0, 0, eventData, 3);
}

static void Midi_Controller_To_Sseq_Sweep_Pitch_24(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(3);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    short sweepPitch = ((short)value - 64) * 24;
    eventData[0] = SSEQ_COMMAND_SWEEP_PITCH;
    WriteU16_LE(eventData + 1, sweepPitch);
    PackEvent(eventPackage, 0, 0, eventData, 3);
}

static void Midi_Controller_To_Sseq_Portamento_On_Off(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_PORTAMENTO_ON_OFF;
    eventData[1] = value >= 64;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Portamento_Control(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_PORTAMENTO_CONTROL;
    eventData[1] = value;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Attack_Rate(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_ATTACK_RATE;
    eventData[1] = value;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Decay_Rate(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_DECAY_RATE;
    eventData[1] = value;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Sustain_Rate(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_SUSTAIN_RATE;
    eventData[1] = value;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Release_Rate(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_RELEASE_RATE;
    eventData[1] = value;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Loop_Start(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_LOOP_START;
    eventData[1] = value;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Loop_End(struct EventPackage *eventPackage, uint8_t value)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_LOOP_END;
    eventData[1] = value;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Mono(struct EventPackage *eventPackage, uint8_t UNUSED)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_POLY;
    eventData[1] = 1;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void Midi_Controller_To_Sseq_Poly(struct EventPackage *eventPackage, uint8_t UNUSED)
{
    uint8_t *eventData = malloc(2);
    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
    eventData[0] = SSEQ_COMMAND_POLY;
    eventData[1] = 0;
    PackEvent(eventPackage, 0, 0, eventData, 2);
}

static void(*MIDI_CONTROLLER_TO_SSEQ[])(struct EventPackage *eventPackage, uint8_t value) = {
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_Modulation_Depth,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_Portamento_Time,
    Midi_Controller_To_Sseq_NULL, // (DATA ENTRY)
    Midi_Controller_To_Sseq_Volume,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_Pan,
    Midi_Controller_To_Sseq_Volume_2,
    Midi_Controller_To_Sseq_Master_Volume,
    Midi_Controller_To_Sseq_Transpose,
    Midi_Controller_To_Sseq_Priority,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL, // SETVAR 0
    Midi_Controller_To_Sseq_NULL, // SETVAR 1
    Midi_Controller_To_Sseq_NULL, // SETVAR 2
    Midi_Controller_To_Sseq_NULL, // SETVAR 3
    Midi_Controller_To_Sseq_Pitch_Bend_Range,
    Midi_Controller_To_Sseq_Modulation_Speed,
    Midi_Controller_To_Sseq_Modulation_Type,
    Midi_Controller_To_Sseq_Modulation_Range,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_Modulation_Delay,
    Midi_Controller_To_Sseq_Modulation_Delay_10,
    Midi_Controller_To_Sseq_Sweep_Pitch,
    Midi_Controller_To_Sseq_Sweep_Pitch_24,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_Portamento_On_Off,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_Portamento_Control,
    Midi_Controller_To_Sseq_Attack_Rate,
    Midi_Controller_To_Sseq_Decay_Rate,
    Midi_Controller_To_Sseq_Sustain_Rate,
    Midi_Controller_To_Sseq_Release_Rate,
    Midi_Controller_To_Sseq_Loop_Start,
    Midi_Controller_To_Sseq_Loop_End,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL, // RPN LSB
    Midi_Controller_To_Sseq_NULL, // RPN MSB
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_NULL,
    Midi_Controller_To_Sseq_Mono,
    Midi_Controller_To_Sseq_Poly,
};

#define MAX_TRACKS 0x10
#define NUM_NOTES 0x80

struct MidiChunk_MThd // Header Chunk
{
    uint32_t chunkID;
    uint32_t size; // does not include chunkID and size
    uint16_t format;
    uint16_t nTracks;
    uint16_t tickDiv;
};

struct MidiChunk_MTrk // Track Chunk
{
    uint32_t chunkID;
    uint32_t size; // does not include chunkID and size
    //uint8_t *data
};

struct SseqChunk_DATA
{
    uint32_t chunkID;
    uint32_t size;
    uint32_t dataOffset; // Absolute offset from the start of the SSEQ file to the sequence data
    //uint8_t *data;
};

#define SSEQ_SEQUENCE_OFFSET (sizeof(struct NitroChunk) + sizeof(struct SseqChunk_DATA))

struct ActiveNotes {
    uint32_t note;
    uint32_t onTime;
    uint32_t offTime;
};

static int ANotecmp_q(const void *s1, const void *s2)
{
    const struct ActiveNotes *a = s1;
    const struct ActiveNotes *b = s2;
    return (a->offTime > b->offTime) - (a->offTime < b->offTime);
}

static bool IsCommand(struct Event *event, uint8_t command)
{
    if (event == NULL) FATAL_ERROR("error reading event\n");

    if (event->size == 0) return false;
    if (event->data == NULL) return false;
    return event->data[0] == command;
}

uint8_t *MidiToSseq(uint8_t *midi, uint32_t midiSize, uint32_t *sseqSize)
{
    *sseqSize = sizeof(struct NitroChunk) + sizeof(struct SseqChunk_DATA);

    struct MidiChunk_MThd *mthd = (struct MidiChunk_MThd*)midi;
    uint16_t midiFormat = ReadU16_BE(&mthd->format);
    uint16_t nTracks = ReadU16_BE(&mthd->nTracks);

    if (midiFormat > SIMULTANEOUS_TRACKS) FATAL_ERROR("Incompatible MIDI format %d\n", midiFormat);
    uint8_t *midiPos = midi + ReadU32_BE(&mthd->size) + 0x08;
    uint8_t *midiEnd = midi + midiSize;

    uint8_t variableLength;
    struct EventPackage **eventTracks = calloc(MAX_TRACKS, sizeof(struct EventPackage*));
    if (eventTracks == NULL) FATAL_ERROR("Error allocating eventTracks\n");
    uint8_t *trackIDs = malloc(nTracks * sizeof(uint8_t));
    if (trackIDs == NULL) FATAL_ERROR("Error allocating trackIDs\n");
    for (int track = 0; track < nTracks; track++)
    {
        struct MidiChunk_MTrk *mtrk = (struct MidiChunk_MTrk*)midiPos;
        if (memcmp(&mtrk->chunkID, "MTrk", 4) != 0) FATAL_ERROR("Error reading track.\n");
        uint8_t *trackPos = midiPos + sizeof(struct MidiChunk_MTrk);
        midiPos += ReadU32_BE(&mtrk->size) + 8;
        if (midiPos > midiEnd) FATAL_ERROR("Error reading track size\n");
        trackIDs[track] = track;

        eventTracks[track] = calloc(1, sizeof(struct EventPackage));
        if (eventTracks[track] == NULL) FATAL_ERROR("Error allocating event track\n");
        struct EventPackage *activeNotes = calloc(1, sizeof(struct EventPackage));
        if (activeNotes == NULL) FATAL_ERROR("Error allocating activeNotes\n");
        uint32_t time = 0;
        bool trackOngoing = true;
        uint8_t noteSkip = 0;

        while (trackPos < midiPos)
        {
            uint8_t *eventData;
            uint32_t deltaTime = ReadVariableLength(trackPos, &variableLength);
            trackPos += variableLength;
            time += deltaTime;
            if (deltaTime)
            {
                if (trackOngoing)
                {
                    struct Event *waitEvent = eventTracks[track]->tail;
                    if (IsCommand(waitEvent, SSEQ_COMMAND_WAIT)) // combine sequential waits
                    {
                        deltaTime += ReadVariableLength(waitEvent->data + 1, &variableLength);
                        free(waitEvent->data);
                        variableLength = VariableLength(deltaTime);
                        waitEvent->data = malloc(1 + variableLength);
                        if (waitEvent->data== NULL) FATAL_ERROR("Error allocating waitEvent data\n");
                        waitEvent->data[0] = SSEQ_COMMAND_WAIT;
                        WriteVariableLength(waitEvent->data + 1, deltaTime);
                        waitEvent->size = 1 + variableLength;
                    }
                    else
                    {
                        eventData = malloc(1 + variableLength);
                        if (eventData == NULL) FATAL_ERROR("Error allocating wait eventData\n");
                        eventData[0] = SSEQ_COMMAND_WAIT;
                        WriteVariableLength(eventData + 1, deltaTime);
                        PackEvent(eventTracks[track], time, 0, eventData, 1 + variableLength);
                    }
                }
                else trackOngoing = true;
            }

            uint8_t identifier = *trackPos++;
            if (identifier < 0xF0) trackIDs[track] = identifier & 0x0F;
            if (identifier < NUM_NOTES) FATAL_ERROR("Error reading event identifier %x, %lx\n", identifier, trackPos - 1 - midi);
            else
            {
                switch (identifier >> 4)
                {
                    case MIDI_EVENT_NOTE_OFF:
                        struct Event *noteOff = NULL;
                        struct Event *prevNote = NULL;
                        for(struct Event *a = activeNotes->head; a != NULL; a = a->next)
                        {
                            struct Event *aNote = (struct Event*)(a->data);
                            if (IsCommand(aNote, *trackPos))
                            {
                                if (noteSkip) noteSkip--;
                                else
                                {
                                    noteOff = aNote;
                                    if (prevNote == NULL) activeNotes->head = a->next;
                                    else prevNote->next = a->next;
                                    if (activeNotes->tail == a) activeNotes->tail = prevNote;
                                    free(a);
                                    activeNotes->count--;
                                    break;
                                }
                            }
                            prevNote = a;
                        }
                        if (noteOff != NULL)
                        {
                            uint32_t noteDuration = time - noteOff->time;
                            variableLength = VariableLength(noteDuration);
                            eventData = malloc(noteOff->size + variableLength);
                            if (eventData == NULL) FATAL_ERROR("Error allocating note off eventData\n");
                            memcpy(eventData, noteOff->data, noteOff->size);
                            free(noteOff->data);
                            WriteVariableLength(eventData + noteOff->size, noteDuration);
                            noteOff->data = eventData;
                            noteOff->size += variableLength;
                        }
                        trackPos += 2;
                        break;
                    case MIDI_EVENT_NOTE_ON:
                        eventData= malloc(2);
                        if (eventData == NULL) FATAL_ERROR("Error allocating note on eventData\n");
                        eventData[0] = *trackPos++; // note
                        eventData[1] = *trackPos++; // velocity
                        PackEvent(eventTracks[track], time, 0, eventData, 2);
                        PackEvent(activeNotes, 0, 0, (uint8_t*)(eventTracks[track]->tail), 0);
                        break;
                    case MIDI_EVENT_CONTROLLER:
                        MIDI_CONTROLLER_TO_SSEQ[*trackPos](eventTracks[track], *(trackPos + 1));
                        trackPos += 2;
                        break;
                    case MIDI_EVENT_PROGRAM_CHANGE:
                        eventData = malloc(2);
                        if (eventData == NULL) FATAL_ERROR("Error allocating program change eventData\n");
                        eventData[0] = SSEQ_COMMAND_INSTRUMENT;
                        eventData[1] = *trackPos++;
                        PackEvent(eventTracks[track], time, 0, eventData, 2);
                        break;
                    case MIDI_EVENT_PITCH_BEND:
                        eventData = malloc(2);
                        if (eventData == NULL) FATAL_ERROR("Error allocating pitch bend eventData\n");
                        trackPos++; // truncate
                        eventData[0] = SSEQ_COMMAND_PITCH_BEND;
                        eventData[1] = *trackPos++;
                        PackEvent(eventTracks[track], time, 0, eventData, 2);
                        break;
                    case MIDI_EVENT_META_SYSEX:
                        if (identifier == MIDI_META_EVENT)
                        {
                            uint8_t metaID = *trackPos++;
                            uint8_t metaSize = *trackPos++;
                            if (metaID == MIDI_META_TEMPO)
                            {
                                uint32_t tempo = ReadU24_BE(trackPos);
                                eventData = malloc(3);
                                if (eventData == NULL) FATAL_ERROR("Error allocating tempo eventData\n");
                                eventData[0] = SSEQ_COMMAND_TEMPO;
                                WriteU16_LE(eventData + 1, 60000000 / tempo);
                                PackEvent(eventTracks[track], time, 0, eventData, 3);
                            }
                            else if (metaID == MIDI_META_TEXT)
                            {
                                if ((metaSize > 5) && (memcmp(trackPos, "LABEL", 5) == 0))
                                {
                                    uint8_t labelIndex = (*(trackPos + 5) - 0x30) * 10 + *(trackPos + 6) - 0x30;
                                    PackEvent(eventTracks[track], time, 0, NULL, labelIndex + 100); // note labels
                                    // use size to store label number
                                }
                                else if ((metaSize == 6) && (memcmp(trackPos, "JUMP", 4) == 0))
                                {
                                    uint8_t labelIndex = (*(trackPos + 4) - 0x30) * 10 + *(trackPos + 5) - 0x30;
                                    eventData = malloc(4);
                                    eventData[0] = SSEQ_COMMAND_JUMP;
                                    eventData[1] = labelIndex;
                                    eventData[2] = 0;
                                    eventData[3] = 0;
                                    PackEvent(eventTracks[track], time, 0, eventData, 4);
                                }
                                else if ((metaSize == 6) && (memcmp(trackPos, "CALL", 4) == 0))
                                {
                                    uint8_t labelIndex = (*(trackPos + 4) - 0x30) * 10 + *(trackPos + 5) - 0x30;
                                    eventData = malloc(4);
                                    eventData[0] = SSEQ_COMMAND_CALL;
                                    eventData[1] = labelIndex;
                                    eventData[2] = 0;
                                    eventData[3] = 0;
                                    PackEvent(eventTracks[track], time, 0, eventData, 4);
                                }
                                else if ((metaSize == 4) && (memcmp(trackPos, "WAIT", 4) == 0))
                                {
                                    PackEvent(eventTracks[track], time, 0, NULL, 0); // note sequential waits
                                }
                                else if ((metaSize > 8) && (memcmp(trackPos, "NoteSkip", 8) == 0))
                                {
                                    noteSkip = *(trackPos + 8);
                                }
                            }
                            else if (metaID == MIDI_META_MARKER)
                            {
                                if ((metaSize == 1) && (*trackPos == SSEQ_COMMAND_RETURN))
                                {
                                    eventData = malloc(1);
                                    if (eventData == NULL) FATAL_ERROR("Error allocating return eventData\n");
                                    eventData[0] = SSEQ_COMMAND_RETURN;
                                    PackEvent(eventTracks[track], time, 0, eventData, 1);

                                    if (activeNotes->count) trackOngoing = false;
                                }
                                else if ((*trackPos == SSEQ_COMMAND_RANDOM) || (*trackPos == SSEQ_COMMAND_VARIABLE))
                                {
                                    eventData = malloc(metaSize);
                                    if (eventData == NULL) FATAL_ERROR("Error allocating random/variable eventData\n");
                                    memcpy(eventData, trackPos, metaSize);
                                    PackEvent(eventTracks[track], time, 0, eventData, metaSize);
                                }
                            }
                            else if (metaID == MIDI_META_TRACK_END)
                            {
                                eventData = malloc(1);
                                if (eventData == NULL) FATAL_ERROR("Error allocating end eventData\n");
                                eventData[0] = SSEQ_COMMAND_END;
                                PackEvent(eventTracks[track], time, 0, eventData, 1);

                                if (activeNotes->count) trackOngoing = false;
                            }
                            trackPos += metaSize;
                        }
                        else if ((identifier == MIDI_SYSEX_EVENT) || (identifier == MIDI_SYSEX_ESCAPE))
                        {
                            trackPos += *trackPos + 1;
                        }
                        else FATAL_ERROR("Unknown Conversion for event %x\n", identifier); // TODO: Just skip in the future
                        break;
                    default:
                        FATAL_ERROR("Unknown Conversion for event %x\n", identifier); //  TODO: Just skip in the future
                        break;
                }
            }
        }
        free(activeNotes);
        *sseqSize += eventTracks[track]->size;
    }

    uint8_t *sseq = malloc(*sseqSize);
    if (sseq == NULL) FATAL_ERROR("error allocating sseq\n");

    WriteNitroChunk(sseq, "SSEQ", 0); // set true size later
    struct SseqChunk_DATA *data = (struct SseqChunk_DATA*)(sseq + sizeof(struct NitroChunk));
    memcpy(&data->chunkID, "DATA", 4);
    WriteU32_LE(&data->dataOffset, SSEQ_SEQUENCE_OFFSET);
    *sseqSize = sizeof(struct NitroChunk) + sizeof(struct SseqChunk_DATA);
    uint8_t *sseqPos = sseq + *sseqSize;

    uint8_t *trackAddresses[MAX_TRACKS] = {0};
    if (nTracks > 1)
    {
        *sseqPos++ = SSEQ_COMMAND_TRACKS_USED;
        uint16_t tracksUsed = 1;
        uint8_t *trackUsedAddress = sseqPos;
        sseqPos += 2;
        *sseqSize += 3;
        for (int track = 1; track < nTracks; track++)
        {
            tracksUsed |= 1 << trackIDs[track];

            *sseqPos++ = SSEQ_COMMAND_TRACK_ADDRESS;
            *sseqPos++ = trackIDs[track];
            trackAddresses[track] = sseqPos; // set true address later
            sseqPos += 3;
            *sseqSize += 5;
        }
        WriteU16_LE(trackUsedAddress, tracksUsed);
    }

    uint32_t *labelPointers = malloc(100 * sizeof(uint32_t));
    struct EventPackage **labelUses = calloc(100, sizeof(struct EventPackage*));
    if (labelUses == NULL) FATAL_ERROR("Error allocating memory for label uses package\n");
    for (int track = 0; track < nTracks; track++)
    {
        if (track > 0) WriteU24_LE(trackAddresses[track], *sseqSize - SSEQ_SEQUENCE_OFFSET);

        struct Event *event = eventTracks[track]->head;
        while (event != NULL)
        {
            if (event->data == NULL)
            {
                uint8_t labelIndex = event->size;
                if (labelIndex >= 100)
                {
                    labelPointers[labelIndex - 100] = *sseqSize - 0x1C;
                }
            }
            else
            {
                if ((event->data[0] == SSEQ_COMMAND_JUMP) || (event->data[0] == SSEQ_COMMAND_CALL))
                {
                    uint8_t labelIndex = event->data[1];
                    if (labelUses[labelIndex] == NULL) labelUses[labelIndex] = calloc(1, sizeof(struct EventPackage));
                    if (labelUses[labelIndex] == NULL) FATAL_ERROR("Error allocating memory for label %d\n", labelIndex);
                    PackEvent(labelUses[labelIndex], 0, 0, sseqPos + 1, 3);
                }
                memcpy(sseqPos, event->data, event->size);
                sseqPos += event->size;
                *sseqSize += event->size;
                free(event->data);
            }
            struct Event *eventF = event;
            event = event->next;
            free(eventF);
        }
        free(eventTracks[track]);
    }
    free(eventTracks);
    *sseqPos++ = SSEQ_COMMAND_END;
    *sseqSize += 1;

    while (*sseqSize % 4 != 0) // pad to 4 byte alignment
    {
        *sseqPos++ = 0;
        *sseqSize += 1;
    }

    for (int l = 0; l < 100; l++) // add label addresses
    {
        if (labelUses[l] != NULL)
        {
            struct Event *event = labelUses[l]->head;
            while (event != NULL)
            {
                WriteU24_LE(event->data, labelPointers[l]);
                struct Event *eventF = event;
                event = event->next;
                free(eventF);
            }
            free(labelUses[l]);
        }
    }
    free(labelPointers);
    free(labelUses);

    struct NitroChunk *header = (struct NitroChunk*)sseq;
    WriteU32_LE(&header->fileSize, *sseqSize);
    WriteU32_LE(&data->size, *sseqSize - sizeof(struct NitroChunk));

    return sseq;
}

uint8_t *SseqToMidi(uint8_t *sseq, uint32_t sseqSize, uint32_t *midiSize)
{
    if (sseq == NULL) FATAL_ERROR("Error reading sseq\n");
    if (midiSize == NULL) FATAL_ERROR("Error reading midiSize\n");

    struct NitroChunk *header = (struct NitroChunk*)sseq;
    if (memcmp(&header->chunkID, "SSEQ", 4) != 0) FATAL_ERROR("Not a valid SSEQ file\n");
    uint8_t *sseqEnd = sseq + sseqSize;
    uint8_t *sseqPos = sseq + ReadU16_LE(&header->size);

    struct SseqChunk_DATA *data = (struct SseqChunk_DATA*)sseqPos;
    if (memcmp(&data->chunkID, "DATA", 4) != 0) FATAL_ERROR("Error reading DATA chunk\n");
    uint32_t sequenceOffset = ReadU32_LE(&data->dataOffset);
    sseqPos = sseq + sequenceOffset; // go to data

    uint16_t tracksUsed = 1; // bitmask for 16 tracks
    if (*sseqPos == SSEQ_COMMAND_TRACKS_USED)
    {
        tracksUsed = ReadU16_LE(++sseqPos);
        sseqPos += 2;
    }
    struct EventPackage **eventTracks = calloc(MAX_TRACKS, sizeof(struct EventPackage*));
    if (eventTracks == NULL) FATAL_ERROR("Error allocating eventTracks\n");
    *midiSize = sizeof(struct MidiChunk_MThd);
    uint16_t numTracks = 0;
    uint8_t *trackAddresses[MAX_TRACKS] = {0};
    for (int track = 0; track < MAX_TRACKS; track++)
    {
        if (((tracksUsed >> track) & 1) == 0) continue;

        if (numTracks > 0)
        {
            if (*sseqPos != SSEQ_COMMAND_TRACK_ADDRESS) FATAL_ERROR("Missing address for track %d\n", track);
            sseqPos += 2;
            trackAddresses[numTracks] = sseq + ReadU24_LE(sseqPos) + sequenceOffset;
            sseqPos += 3;
        }
        numTracks++;
    }
    trackAddresses[0] = sseqPos;

    uint8_t variableLength;
    int tracksRead = 0;
    uint32_t *labels = malloc(100 * sizeof(uint32_t)); // arbitrary allocation
    if (labels == NULL) FATAL_ERROR("Error allocating labels\n");
    uint8_t numLabels = 0;
    int trackIdx = 0;
    for (uint8_t track = 0; track < MAX_TRACKS; track++)
    {
        if (((tracksUsed >> track) & 1) == 0) continue;

        *midiSize += sizeof(struct MidiChunk_MTrk) + 3;
        eventTracks[trackIdx] = calloc(1, sizeof(struct EventPackage));
        if (eventTracks[trackIdx] == NULL) FATAL_ERROR("Error allocating event Track\n");
        uint8_t *eventData;
        uint32_t time = 0;

        struct ActiveNotes *activeNotes = malloc(0x30 * sizeof(struct ActiveNotes));
        uint8_t numActiveNotes = 0;

        sseqPos = trackAddresses[trackIdx];
        uint8_t *trackEnd;
        bool trackOver = false;
        if (tracksRead++ == numTracks - 1) trackEnd = sseqEnd - 1;// last track
        else trackEnd = trackAddresses[trackIdx + 1];
        while (sseqPos < trackEnd)
        {
            uint32_t address = (uint32_t)(sseqPos - sseq) - sequenceOffset;
            uint8_t identifier = *sseqPos++;
            if (identifier < NUM_NOTES) // note
            {
                if ((identifier == 0) && ((sseqEnd - sseqPos) < 4)) break; // don't read padding
                eventData = malloc(3);
                if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
                eventData[0] = (MIDI_EVENT_NOTE_ON << 4) | track;
                eventData[1] = identifier; // note
                eventData[2] = *sseqPos++; // velocity
                PackEvent(eventTracks[trackIdx], time, address, eventData, 3);
                int a;
                for (a = 0; a < numActiveNotes; a++)
                {
                    if (activeNotes[a].offTime == 0) break;
                }
                if (a == numActiveNotes)
                {
                    if (++numActiveNotes > 0x30) FATAL_ERROR("Exceeded alloted notes\n");
                }
                activeNotes[a].note = identifier;
                activeNotes[a].onTime = time;
                activeNotes[a].offTime = ReadVariableLength(sseqPos, &variableLength) + time;
                sseqPos += variableLength;
                if (activeNotes[a].offTime == 0)
                {
                    eventData = malloc(3);
                    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
                    eventData[0] = (MIDI_EVENT_NOTE_OFF << 4) | track;
                    eventData[1] = identifier;
                    eventData[2] = 0; // velocity
                    PackEvent(eventTracks[trackIdx], 0, address, eventData, 3);
                }
            }
            else if (identifier == SSEQ_COMMAND_WAIT)
            {
                PackEvent(eventTracks[trackIdx], time, address, NULL, 0);
                uint32_t deltaTime = ReadVariableLength(sseqPos, &variableLength);
                sseqPos += variableLength;
                time += deltaTime;

                struct ActiveNotes *endingNotes = malloc(numActiveNotes * sizeof(struct ActiveNotes));
                if (endingNotes == NULL) FATAL_ERROR("Error allocating endingNotes\n");
                uint8_t numEndingNotes = 0;
                struct ActiveNotes *unendingNotes = malloc(numActiveNotes * sizeof(struct ActiveNotes));
                if (unendingNotes == NULL) FATAL_ERROR("Error allocating endingNotes\n");
                uint8_t numUnendingNotes = 0;
                for (int a = 0; a < numActiveNotes; a++)
                {
                    if (activeNotes[a].offTime != 0)
                    {
                        if (activeNotes[a].offTime <= time)
                        {
                            endingNotes[numEndingNotes].note = activeNotes[a].note;
                            endingNotes[numEndingNotes].onTime = activeNotes[a].onTime;
                            endingNotes[numEndingNotes++].offTime = activeNotes[a].offTime;
                            activeNotes[a].offTime = 0; // only do this once per note
                        }
                        else
                        {
                            unendingNotes[numUnendingNotes].note = activeNotes[a].note;
                            unendingNotes[numUnendingNotes++].onTime = activeNotes[a].onTime;
                        }
                    }
                }
                qsort(endingNotes, numEndingNotes, sizeof(struct ActiveNotes), ANotecmp_q); // need to pack sequentially by time
                for (int e = 0; e < numEndingNotes; e++)
                {
                    uint8_t noteSkip = 0;
                    for (int u = 0; u < numUnendingNotes; u++)
                    {
                        if ((endingNotes[e].note == unendingNotes[u].note) && (endingNotes[e].onTime > unendingNotes[u].onTime)) noteSkip++;
                    }
                    if (noteSkip)
                    {
                        eventData = malloc(12);
                        if (eventData == NULL) FATAL_ERROR("Error allocating note skip eventData\n");
                        eventData[0] = MIDI_META_EVENT;
                        eventData[1] = MIDI_META_TEXT;
                        eventData[2] = 9;
                        memcpy(eventData + 3, "NoteSkip", 8);
                        eventData[11] = noteSkip;
                        PackEvent(eventTracks[trackIdx], endingNotes[e].offTime, address, eventData, 12);
                    }

                    eventData = malloc(3);
                    if (eventData == NULL) FATAL_ERROR("Error allocating note off eventData\n");
                    eventData[0] = (MIDI_EVENT_NOTE_OFF << 4) | track;
                    eventData[1] = endingNotes[e].note;
                    eventData[2] = 0; // velocity
                    PackEvent(eventTracks[trackIdx], endingNotes[e].offTime, address, eventData, 3);
                }
                free(endingNotes);
            }
            else if ((identifier == SSEQ_COMMAND_END) || (identifier == SSEQ_COMMAND_RETURN))
            {
                if (identifier == SSEQ_COMMAND_END)
                {
                    if (trackOver) continue;
                    else trackOver = true;
                }
                
                sseqPos += SSEQ_COMMAND_TO_MIDI[identifier - 0x81](eventTracks[trackIdx], time, address, track, sseqPos);

                struct ActiveNotes *endingNotes = malloc(numActiveNotes * sizeof(struct ActiveNotes)); // end any lingering notes
                if (endingNotes == NULL) FATAL_ERROR("Error allocating endingNotes\n");
                uint8_t numEndingNotes = 0;
                for (int a = 0; a < numActiveNotes; a++)
                {
                    if (activeNotes[a].offTime != 0)
                    {
                        endingNotes[numEndingNotes].note = activeNotes[a].note;
                        endingNotes[numEndingNotes++].offTime = activeNotes[a].offTime;
                        activeNotes[a].offTime = 0;
                    }
                }
                qsort(endingNotes, numEndingNotes, sizeof(struct ActiveNotes), ANotecmp_q); // need to pack sequentially by time
                for (int e = 0; e < numEndingNotes; e++)
                {
                    eventData = malloc(3);
                    if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
                    eventData[0] = (MIDI_EVENT_NOTE_OFF << 4) | track;
                    eventData[1] = endingNotes[e].note;
                    eventData[2] = 0; // velocity
                    PackEvent(eventTracks[trackIdx], endingNotes[e].offTime, address, eventData, 3);
                    time = endingNotes[e].offTime;
                }
                free(endingNotes);
            }
            else if ((identifier == SSEQ_COMMAND_JUMP) || (identifier == SSEQ_COMMAND_CALL))
            {
                uint32_t newAddress = ReadU24_LE(sseqPos);
                sseqPos += 3;
                int labelIndex;
                for (labelIndex = 0; labelIndex < numLabels; labelIndex++)
                {
                    if (labels[labelIndex] == newAddress)
                    {
                        break;
                    }
                }
                if (labelIndex == numLabels)
                {
                    if (++numLabels >= 100) FATAL_ERROR("Allocate more memory for labels in this code\n");
                    labels[labelIndex] = newAddress;
                    *midiSize += 10;
                }

                eventData = malloc(9);
                if (eventData == NULL) FATAL_ERROR("Error allocating eventData\n");
                eventData[0] = MIDI_META_EVENT;
                eventData[1] = MIDI_META_TEXT;
                eventData[2] = 6;
                identifier == SSEQ_COMMAND_JUMP ? memcpy(eventData + 3, "JUMP", 4) : memcpy(eventData + 3, "CALL", 4);
                eventData[7] = (labelIndex / 10) + 0x30;
                eventData[8] = (labelIndex % 10) + 0x30;
                PackEvent(eventTracks[trackIdx], time, address, eventData, 9);
            }
            else
            {
                sseqPos += SSEQ_COMMAND_TO_MIDI[identifier - 0x81](eventTracks[trackIdx], time, address, track, sseqPos);
            }
        }
        free(activeNotes);
        *midiSize += eventTracks[trackIdx++]->size;
    }
    uint32_t *sortedLabels = malloc(numLabels * sizeof(uint32_t)); // arbitrary allocation
    if (labels == NULL) FATAL_ERROR("Error allocating labels\n");
    for (int labelIndex = 0; labelIndex < numLabels; labelIndex++)
    {
        sortedLabels[labelIndex] = labels[labelIndex];
    }
    qsort(sortedLabels, numLabels, sizeof(uint32_t), U32cmp_q); // sort labels by order for convenience

    uint8_t *midi = malloc(*midiSize);
    if (midi == NULL) FATAL_ERROR("Error allocating midi\n");
    struct MidiChunk_MThd *mthd = (struct MidiChunk_MThd*)midi;
    memcpy(&mthd->chunkID, "MThd", 4);
    WriteU32_BE(&mthd->size, 6);
    WriteU16_BE(&mthd->format, SIMULTANEOUS_TRACKS);
    WriteU16_BE(&mthd->nTracks, numTracks);
    WriteU16_BE(&mthd->tickDiv, 0x0030);
    *midiSize = 0x0E;
    uint8_t *midiPos = midi + *midiSize;
    uint8_t currentLabel = 0;

    for (int track = 0; track < numTracks; track++)
    {
        struct MidiChunk_MTrk *mtrk = (struct MidiChunk_MTrk*)midiPos;
        memcpy(&mtrk->chunkID, "MTrk", 4);
        midiPos += sizeof(struct MidiChunk_MTrk);
        uint32_t trackSize = sizeof(struct MidiChunk_MTrk);

        struct Event *event = eventTracks[track]->head;
        uint32_t time = 0;
        bool sequentialWait = false;
        while (event != NULL)
        {
            if ((currentLabel < numLabels) && (event->address == sortedLabels[currentLabel]))
            {
                for (int labelIndex = 0; labelIndex < numLabels; labelIndex++)
                {
                    if (event->address == labels[labelIndex])
                    {
                        variableLength = WriteVariableLength(midiPos, event->time - time);
                        time = event->time;
                        midiPos += variableLength;
                        trackSize += variableLength;
                        *midiPos++ = MIDI_META_EVENT;
                        *midiPos++ = MIDI_META_TEXT;
                        *midiPos++ = 7;
                        memcpy(midiPos, "LABEL", 5);
                        midiPos += 5;
                        *midiPos++ = (labelIndex / 10) + 0x30;
                        *midiPos++ = (labelIndex % 10) + 0x30;
                        trackSize += 10;

                        currentLabel++;
                        break;
                    }
                }
            }

            if (event->data == NULL)
            {
                if (sequentialWait)
                {
                    variableLength = WriteVariableLength(midiPos, event->time - time);
                    time = event->time;
                    midiPos += variableLength;
                    trackSize += variableLength;
                    *midiPos++ = MIDI_META_EVENT;
                    *midiPos++ = MIDI_META_TEXT;
                    *midiPos++ = 4;
                    memcpy(midiPos, "WAIT", 4);
                    midiPos += 4;
                    trackSize += 7;
                }
                sequentialWait = true;
            }
            else
            {
                variableLength = WriteVariableLength(midiPos, event->time - time);
                time = event->time;
                midiPos += variableLength;
                trackSize += variableLength;
                memcpy(midiPos, event->data, event->size);
                midiPos += event->size;
                trackSize += event->size;

                free(event->data);
                sequentialWait = false;
            }
            struct Event *eventF = event;
            event = event->next;
            free(eventF);
        }
        free(eventTracks[track]);

        WriteU32_BE(&mtrk->size, trackSize - sizeof(struct MidiChunk_MTrk));
        *midiSize += trackSize;
    }
    free(eventTracks);
    free(labels);

    return midi;
}

void ConvertMidiToSseq(int argc, char **argv)
{
    if (argc < 3) FATAL_ERROR("Insufficient arguments\n");
    char *inputPath = argv[1];
    char *outputPath = argv[2];

    // optional args
    for (int i = 3; i < argc; i++)
    {
        FATAL_ERROR("Unrecognized argument: \"%s\"\n", argv[i]);
    }

    uint32_t midiSize;
    uint8_t *midi = ReadWholeFile(inputPath, &midiSize);
    if (midiSize < sizeof(struct MidiChunk_MThd)) FATAL_ERROR("File %s is not a valid MIDI file\n", inputPath);
    struct MidiChunk_MThd *mthd = (struct MidiChunk_MThd*)midi;
    if (memcmp(&mthd->chunkID, "MThd", 4) != 0) FATAL_ERROR("File %s is not a valid MIDI file\n", inputPath);

    uint32_t sseqSize;
    uint8_t *sseq = MidiToSseq(midi, midiSize, &sseqSize);
    free(midi);
    
    FILE *outFile = fopen(outputPath, "wb");
    if (outFile == NULL) FATAL_ERROR("Failed to open \"%s\" for writing.\n", outputPath);
    fwrite(sseq, 1, sseqSize, outFile);
    fclose(outFile);
    free(sseq);
}

void ConvertSseqToMidi(int argc, char **argv)
{
    if (argc < 3) FATAL_ERROR("Insufficient arguments\n");
    char *inputPath = argv[1];
    char *outputPath = argv[2];

    // optional args
    for (int i = 3; i < argc; i++)
    {
        FATAL_ERROR("Unrecognized argument: \"%s\"\n", argv[i]);
    }

    uint32_t sseqSize;
    uint8_t *sseq = ReadWholeFile(inputPath, &sseqSize);
    if (sseqSize < (sizeof(struct NitroChunk) + sizeof(struct SseqChunk_DATA))) FATAL_ERROR("File %s is not a valid sseq file\n", inputPath);
    if (memcmp(sseq, "SSEQ", 4) != 0) FATAL_ERROR("File %s is not a valid sseq file\n", inputPath);

    uint32_t midiSize;
    uint8_t *midi = SseqToMidi(sseq, sseqSize, &midiSize);
    free(sseq);
    
    FILE *outFile = fopen(outputPath, "wb");
    if (outFile == NULL) FATAL_ERROR("Failed to open \"%s\" for writing.\n", outputPath);
    fwrite(midi, 1, midiSize, outFile);
    fclose(outFile);
    free(midi);
}
