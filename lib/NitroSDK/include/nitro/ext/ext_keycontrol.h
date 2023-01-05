#ifndef EXT_KEYCONTROL_H_
#define EXT_KEYCONTROL_H_

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    u16 key;
    u16 count;
} EXTKeys;

void EXT_AutoKeys(const EXTKeys * sequence, u16 * cont, u16 * trig);

#ifdef __cplusplus
}
#endif

#endif
