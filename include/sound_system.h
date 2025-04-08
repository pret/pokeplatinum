#ifndef POKEPLATINUM_SOUND_SYSTEM_H
#define POKEPLATINUM_SOUND_SYSTEM_H

#include <nnsys.h>

#include "struct_defs/chatot_cry.h"

#include "game_options.h"
#include "sys_task.h"

#define SOUND_SYSTEM_HEAP_SIZE           0xBBC00 // ~750kB
#define SOUND_SYSTEM_CAPTURE_BUFFER_SIZE 0x1000
#define SOUND_HEAP_STATE_INVALID         -1
#define SOUND_FILTER_MAX_SIZE            8
#define SOUND_FILTER_SAMPLE_RATE         22000
#define SOUND_FILTER_INTERVAL            2
#define SOUND_PLAYER_INVALID             0xFF

enum SoundHeapState {
    SOUND_HEAP_STATE_EMPTY = 0,
    SOUND_HEAP_STATE_PERSISTENT,
    SOUND_HEAP_STATE_BGM_BANK,
    SOUND_HEAP_STATE_SFX,
    SOUND_HEAP_STATE_BGM,
    SOUND_HEAP_STATE_SUB_SFX,
    SOUND_HEAP_STATE_FANFARE,

    SOUND_HEAP_STATE_COUNT
};

// clang-format off
enum SoundSystemState {
    SOUND_SYSTEM_STATE_IDLE = 0,
    SOUND_SYSTEM_STATE_PLAY,                            // Start playing a sound
    SOUND_SYSTEM_STATE_PLAYING,                         // Sound is playing
    SOUND_SYSTEM_STATE_FADE_IN,                         // Fade in sound
    SOUND_SYSTEM_STATE_FADE_OUT,                        // Fade out sound
    SOUND_SYSTEM_STATE_FADE_OUT_PLAY,                   // Fade out sound then play another sound
    SOUND_SYSTEM_STATE_FADE_OUT_FADE_IN,                // Fade out sound then fade in another sound
};

enum SoundHandleType {
    SOUND_HANDLE_TYPE_FIELD_BGM = 0,                    // All field BGM
    SOUND_HANDLE_TYPE_POKEMON_CRY,                      // Pokemon cries
    SOUND_HANDLE_TYPE_FANFARE,                          // Fanfares
    SOUND_HANDLE_TYPE_SFX_1,                            // Sound Effects 1
    SOUND_HANDLE_TYPE_SFX_2,                            // Sound Effects 2
    SOUND_HANDLE_TYPE_SFX_3,                            // Sound Effects 3
    SOUND_HANDLE_TYPE_SFX_4,                            // Sound Effects 4
    SOUND_HANDLE_TYPE_BGM,                              // Non-field BGM
    SOUND_HANDLE_TYPE_ECHO,                             // Pokemon cry echo/reverb/chorus

    SOUND_HANDLE_TYPE_COUNT,

    NUM_SFX_HANDLES = SOUND_HANDLE_TYPE_SFX_4 - SOUND_HANDLE_TYPE_SFX_1 + 1,
};

enum SoundSystemParam {
    SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_HANDLE = 0,     // Primary waveform playback handle
    SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_HANDLE,       // Secondary waveform playback handle
    SOUND_SYSTEM_PARAM_CURRENT_BANK_INFO,               // Currently active BGM bank info (only used when fading BGM)
    SOUND_SYSTEM_PARAM_CAPTURE_BUFFER,                  // Buffer used for applying effects such as reverb, filtering, etc
    SOUND_SYSTEM_PARAM_FILTER_CALLBACK_PARAM,           // Parameters for the filter callback
    SOUND_SYSTEM_PARAM_BGM_FIXED,                       // Determines if the BGM can be changed right now
    SOUND_SYSTEM_PARAM_ACTIVE_CRY,                      // Whether CRY_A or CRY_B params should be used for new cries
    SOUND_SYSTEM_PARAM_FADE_COUNTER,                    // A counter used to track how many frames are left in a fade operation
    SOUND_SYSTEM_PARAM_FOLLOW_UP_WAIT_FRAMES,           // Keeps track of how many frames are let until the next BGM is played
    SOUND_SYSTEM_PARAM_FOLLOW_UP_FADE_FRAMES,           // Keeps track of how many frames the next BGM should be faded in for
    SOUND_SYSTEM_PARAM_CURRENT_BGM,                     // The current BGM ID
    SOUND_SYSTEM_PARAM_NEXT_BGM,                        // The next BGM ID
    SOUND_SYSTEM_PARAM_FIELD_BGM_PAUSED,                // Whether field BGM is paused
    SOUND_SYSTEM_PARAM_BGM_PAUSED,                      // Whether non-field BGM is paused
    SOUND_SYSTEM_PARAM_FANFARE_DELAY,                   // While > 0, other sound processing is disabled
    SOUND_SYSTEM_PARAM_WAVE_OUT_REVERSED_PLAYBACK,      // Whether reversed waveform playback is enabled
    SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_ALLOCATED,      // Whether the primary waveform channel is currently allocated
    SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_ALLOCATED,    // Whether the secondary waveform channel is currently allocated
    SOUND_SYSTEM_PARAM_ECHO_ENABLED,                    // Whether pokemon cry echo is enabled
    SOUND_SYSTEM_PARAM_FIELD_BGM_BANK_STATE,            // Whether the field BGM bank needs to be swapped or not. See FIELD_BGM_BANK_STATE_*
    SOUND_SYSTEM_PARAM_FILTER_SIZE,                     // The specified filter size, must be in the range [0, SOUND_FILTER_MAX_SIZE)

    // A sound scene refers to a specific set of sound data and
    // parameters. They're an easy way to switch the sound system
    // to a specific state. See SoundScene enum.
    SOUND_SYSTEM_PARAM_MAIN_SCENE,                      // The main screen sound scene
    SOUND_SYSTEM_PARAM_SUB_SCENE,                       // The sub screen sound scene

    // The following parameters are used to save and restore specific states
    // of the sound heap. EMPTY and PERSISTENT should not be modified. Each heap
    // state contains all of the data of the previous states as well.
    SOUND_SYSTEM_PARAM_HEAP_STATE_EMPTY,                // Empty sound heap state
    SOUND_SYSTEM_PARAM_HEAP_STATE_PERSISTENT,           // Only persistent sound data (GROUP_GLOBAL)
    SOUND_SYSTEM_PARAM_HEAP_STATE_BGM_BANK,             // BGM *bank* data
    SOUND_SYSTEM_PARAM_HEAP_STATE_SFX,                  // Sound Effect data
    SOUND_SYSTEM_PARAM_HEAP_STATE_BGM,                  // Actual BGM data
    SOUND_SYSTEM_PARAM_HEAP_STATE_SUB_SFX,              // Sub screen SFX
    SOUND_SYSTEM_PARAM_HEAP_STATE_FANFARE,              // Fanfare data

    SOUND_SYSTEM_PARAM_CHATOT_CRY_PLAYING,              // Whether the chatot cry is currently playing
    SOUND_SYSTEM_PARAM_DEFAULT_CHATOT_CRY,              // Whether the default chatot cry is being used
    SOUND_SYSTEM_PARAM_FIELD_BGM,                       // Currently active field BGM
    SOUND_SYSTEM_PARAM_CURRENT_WAVE_DATA,               // Wave data currently in use (for pokedex)
    SOUND_SYSTEM_PARAM_WAVE_OUT_REVERSE_BUFFER,         // The buffer used for reversed waveform playback
    SOUND_SYSTEM_PARAM_CRY_DURATION_TASK,               // SysTask used to limit the duration of pokemon cries
    SOUND_SYSTEM_PARAM_CHATOT_CRY,                      // The users ChatotCry structure

    // Unused parameters
    SOUND_SYSTEM_PARAM_UNUSED_37,
    SOUND_SYSTEM_PARAM_UNUSED_38,
    SOUND_SYSTEM_PARAM_UNUSED_39,
    SOUND_SYSTEM_PARAM_UNUSED_40,

    // The following are parameters for delayed pokemon cries.
    // CRY_B is only used if SOUND_SYSTEM_PARAM_ALLOW_2_POKEMON_CRIES
    // is enabled, and two pokemon cries are scheduled
    SOUND_SYSTEM_PARAM_CRY_A_MOD,                       // Cry 1 Mod
    SOUND_SYSTEM_PARAM_CRY_A_PAN,                       // Cry 1 Pan
    SOUND_SYSTEM_PARAM_CRY_A_VOLUME,                    // Cry 1 Volume
    SOUND_SYSTEM_PARAM_CRY_A_HEAP_ID,                   // Cry 1 Heap (used to allocate the duration param structure, if needed)
    SOUND_SYSTEM_PARAM_CRY_A_WAVE_ID,                   // Cry 1 Wave ID
    SOUND_SYSTEM_PARAM_CRY_A_DELAY,                     // Cry 1 Delay (in frames)

    SOUND_SYSTEM_PARAM_CRY_B_MOD,                       // Cry 2 Mod
    SOUND_SYSTEM_PARAM_CRY_B_PAN,                       // Cry 2 Pan
    SOUND_SYSTEM_PARAM_CRY_B_VOLUME,                    // Cry 2 Volume
    SOUND_SYSTEM_PARAM_CRY_B_HEAP_ID,                   // Cry 2 Heap (used to allocate the duration param structure, if needed)
    SOUND_SYSTEM_PARAM_CRY_B_WAVE_ID,                   // Cry 2 Wave ID
    SOUND_SYSTEM_PARAM_CRY_B_DELAY,                     // Cry 2 Delay (in frames)

    SOUND_SYSTEM_PARAM_ALLOW_2_POKEMON_CRIES,           // Whether to allow 2 simultaneous pokemon cries playing

    SOUND_SYSTEM_PARAM_54,
};
// clang-format on

typedef struct SoundFilterCallbackParam {
    s16 samples[SOUND_FILTER_MAX_SIZE - 1][2]; // 2 for L and R mixer components
} SoundFilterCallbackParam;

typedef struct SoundSystem {
    NNSSndArc arc; // Only used for storage, NNS manages the arc
    NNSSndHeapHandle heap;
    u8 heapBuffer[SOUND_SYSTEM_HEAP_SIZE]; // Main sound heap where sound data is loaded into
    NNSSndHandle soundHandles[SOUND_HANDLE_TYPE_COUNT];
    NNSSndWaveOutHandle waveOutHandles[2];
    const NNSSndArcBankInfo *currentBankInfo;
    u8 captureBuffer[SOUND_SYSTEM_CAPTURE_BUFFER_SIZE] ATTRIBUTE_ALIGN(32);
    SoundFilterCallbackParam filterCallbackParam;
    u16 unused1;
    u8 bgmFixed; // BGM can't change if this is set
    u8 activePokemonCry;
    int fadeCounter;
    int followUpWaitFrames;
    int followUpFadeFrames;
    u16 currentBGM;
    u16 nextBGM;
    u8 fieldBGMPaused;
    u8 bgmPaused;
    u16 fanfareDelay;
    u8 waveOutReversedPlayback;
    u8 waveOutPrimaryAllocated;
    u8 waveOutSecondaryAllocated;
    u8 echoEnabled;
    u8 fieldBGMBankState;
    u8 filterSize;
    u8 mainScene;
    u8 subScene;
    int heapStates[SOUND_HEAP_STATE_COUNT];
    u8 chatotCryPlaying;
    u8 usingDefaultChatotCry;
    u16 currentFieldBGM;
    const SNDWaveData *currentWaveData;
    void *waveOutReverseBuffer;
    int unused2;
    SysTask *pokemonCryDurationTask;
    ChatotCry *chatotCry;
    ChatotCry *chatotCryUnused[4];
    int pokemonCryMod[2];
    int pokemonCryPan[2];
    int pokemonCryVolume[2];
    int pokemonCryHeapID[2];
    u16 pokemonCryWaveID[2];
    u8 pokemonCryDelay[2];
    u8 allowTwoPokemonCries;
    u8 unk_BCDD3;
} SoundSystem;

void SoundSystem_Init(ChatotCry *chatotCry, Options *options);
void SoundSystem_Tick();
void SoundSystem_SetState(enum SoundSystemState status);
SoundSystem *SoundSystem_Get();
void *SoundSystem_GetParam(enum SoundSystemParam param);
int SoundSystem_SaveHeapState(int *state);
void SoundSystem_LoadHeapState(int state);
BOOL SoundSystem_LoadSoundGroup(u16 group);
BOOL SoundSystem_LoadSequence(u16 id);
BOOL SoundSystem_LoadSequenceEx(u16 id, u32 flags); // See NNS_SND_ARC_LOAD_* in nnsys/snd/sndarc.h for flags
BOOL SoundSystem_LoadWaveArc(u16 id);
BOOL SoundSystem_LoadBank(u16 id);
NNSSndHandle *SoundSystem_GetSoundHandle(enum SoundHandleType type);
enum SoundHandleType SoundSystem_GetSoundHandleTypeFromPlayerID(int playerID);

#endif // POKEPLATINUM_SOUND_SYSTEM_H
