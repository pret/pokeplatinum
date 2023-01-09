#include <nnsys/snd/fader.h>
#include <nnsys/misc.h>

void NNSi_SndFaderInit (NNSSndFader * fader) {
    NNS_NULL_ASSERT(fader);

    fader->origin = fader->target = 0;
    fader->counter = fader->frame = 0;
}

void NNSi_SndFaderSet (NNSSndFader * fader, int target, int frame) {
    NNS_NULL_ASSERT(fader);

    fader->origin = NNSi_SndFaderGet(fader);
    fader->target = target;
    fader->frame = frame;
    fader->counter = 0;
}

int NNSi_SndFaderGet (const NNSSndFader * fader) {
    s64 value;

    NNS_NULL_ASSERT(fader);

    if (fader->counter >= fader->frame) {
        return fader->target;
    }

    value = (fader->target - fader->origin)
            * fader->counter / fader->frame
            + fader->origin;

    return (int)value;
}

void NNSi_SndFaderUpdate (NNSSndFader * fader) {
    NNS_NULL_ASSERT(fader);

    if (fader->counter < fader->frame) {
        fader->counter++;
    }
}

BOOL NNSi_SndFaderIsFinished (const NNSSndFader * fader) {
    NNS_NULL_ASSERT(fader);

    return fader->counter >= fader->frame ? TRUE : FALSE;
}
