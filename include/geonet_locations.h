#ifndef POKEPLATINUM_GEONET_STATES_H
#define POKEPLATINUM_GEONET_STATES_H

u32 GeonetLocations_GetLocationListCount(void);
u32 GeonetLocations_GetIndexFromCountry(u32 country);
u32 GeonetLocations_GetLocationCountFromCountry(u32 country);
u32 GeonetLocations_GetBankIDFromCountry(u32 country);
u32 GeonetLocations_GetBankID(u32 index);
u32 GeonetLocations_GetCountry(u32 index);
u32 GeonetLocations_GetNarcMemberIndex(u32 index);
const u8 *GeonetLocations_GetLocationList(u32 index);
u32 GeonetLocations_GetLocationCount(u32 index);

#endif // POKEPLATINUM_GEONET_STATES_H
