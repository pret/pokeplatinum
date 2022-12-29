#ifndef NITRO_MI_DEVICE_H_
#define NITRO_MI_DEVICE_H_

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/platform.h>

#ifdef __cplusplus
extern "C"
{
#endif

typedef int (* MIDeviceReadFunction)(void * userdata, void * buffer, u32 offset, u32 length);
typedef int (* MIDeviceWriteFunction)(void * userdata, const void * buffer, u32 offset, u32 length);

typedef struct MIDevice {
    void * userdata;
    MIDeviceReadFunction Read;
    MIDeviceWriteFunction Write;
} MIDevice;

PLATFORM_ATTRIBUTE_INLINE
void MI_InitDevice (MIDevice * device, void * userdata,
                    MIDeviceReadFunction read,
                    MIDeviceWriteFunction write)
{
    device->userdata = userdata;
    device->Read = read;
    device->Write = write;
}

PLATFORM_ATTRIBUTE_INLINE
int MI_ReadDevice (MIDevice * device, void * buffer, u32 offset, u32 length)
{
    return device->Read(device->userdata, buffer, offset, length);
}

PLATFORM_ATTRIBUTE_INLINE
int MI_WriteDevice (MIDevice * device, const void * buffer, u32 offset, u32 length)
{
    return device->Write(device->userdata, buffer, offset, length);
}

#ifdef __cplusplus
}
#endif

#endif
