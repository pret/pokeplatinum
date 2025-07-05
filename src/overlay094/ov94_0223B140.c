#include "overlay094/ov94_0223B140.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay060/ov60_0221F968.h"
#include "overlay094/struct_ov94_0223BA24.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223BA88_sub3.h"
#include "overlay096/struct_ov96_0223B574.h"
#include "overlay096/struct_ov96_0223B574_1.h"

#include "enums.h"

typedef enum GTSNetworkStatus {
    UnkEnum_ov94_0223B15C_00,
    UnkEnum_ov94_0223B15C_01,
    UnkEnum_ov94_0223B15C_02,
    UnkEnum_ov94_0223B15C_03,
    UnkEnum_ov94_0223B15C_04,
    UnkEnum_ov94_0223B15C_05,
    UnkEnum_ov94_0223B15C_06,
    UnkEnum_ov94_0223B15C_07,
    NETWORK_STATUS_GET_LISTED_POKEMON_PENDING,
    UnkEnum_ov94_0223B15C_09,
    UnkEnum_ov94_0223B15C_10,
    UnkEnum_ov94_0223B15C_11,
    UnkEnum_ov94_0223B15C_12,
    UnkEnum_ov94_0223B15C_13,
    UnkEnum_ov94_0223B15C_14,
    UnkEnum_ov94_0223B15C_15,
    UnkEnum_ov94_0223B15C_16,
    UnkEnum_ov94_0223B15C_17,
    UnkEnum_ov94_0223B15C_18,
    UnkEnum_ov94_0223B15C_19,
    NETWORK_STATUS_INIT_PENDING, // connected?
    UnkEnum_ov94_0223B15C_21,
    NETWORK_STATUS_SET_PROFILE_PENDING,
    UnkEnum_ov94_0223B15C_23,
    NETWORK_STATUS_COMPLETE // connection failed
} GTSNetworkStatus;

typedef struct {
    GTSNetworkStatus unk_00; // network status
    s32 unk_04; // error code?
    s32 unk_08;
    u64 unk_0C;
    u8 unk_14[296];
    u8 unk_13C[4];
    u8 *unk_140;
} UnkStruct_ov94_02246AC0;

static BOOL GTSNetworking_PrepareRequest(const u8 *param0, const void *param1, int param2, void *param3, int param4);
static int GTSNetworking_GetPublicErrorCode(int param0);

static UnkStruct_ov94_02246AC0 Unk_ov94_02246AC0;

void ov94_0223B140(s32 param0, u64 param1)
{
    Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_01;
    Unk_ov94_02246AC0.unk_04 = 0;
    Unk_ov94_02246AC0.unk_08 = param0;
    Unk_ov94_02246AC0.unk_0C = param1;
}

void ov94_0223B15C(void)
{
    switch (Unk_ov94_02246AC0.unk_00) {
    case UnkEnum_ov94_0223B15C_00:
        break;
    case UnkEnum_ov94_0223B15C_01:
        break;
    case UnkEnum_ov94_0223B15C_02:
        switch (HTTP_GetRequestStatus()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
            Unk_ov94_02246AC0.unk_04 = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;

            switch (Unk_ov94_02246AC0.unk_13C[0]) {
            case 1:
                Unk_ov94_02246AC0.unk_04 = 0;
                break;
            case 2:
                Unk_ov94_02246AC0.unk_04 = -5;
                break;
            case 3:
                Unk_ov94_02246AC0.unk_04 = -4;
                break;
            case 7:
                Unk_ov94_02246AC0.unk_04 = -1;
                break;
            case 12:
                Unk_ov94_02246AC0.unk_04 = -6;
                break;
            case 13:
                Unk_ov94_02246AC0.unk_04 = -7;
                break;
            case 8:
                Unk_ov94_02246AC0.unk_04 = -8;
                break;
            case 9:
                Unk_ov94_02246AC0.unk_04 = -9;
                break;
            case 10:
                Unk_ov94_02246AC0.unk_04 = -10;
                break;
            case 11:
                Unk_ov94_02246AC0.unk_04 = -11;
                break;
            case 14:
                Unk_ov94_02246AC0.unk_04 = -2;
                break;
            default:

                Unk_ov94_02246AC0.unk_04 = -13;
                break;
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_04:
        switch (HTTP_GetRequestStatus()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
            Unk_ov94_02246AC0.unk_04 = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;

            switch (Unk_ov94_02246AC0.unk_13C[0]) {
            case 1:
                Unk_ov94_02246AC0.unk_04 = 0;
                break;
            case 2:
                Unk_ov94_02246AC0.unk_04 = -5;
                break;
            case 3:
                Unk_ov94_02246AC0.unk_04 = -4;
                break;
            case 5:
                Unk_ov94_02246AC0.unk_04 = -3;
                break;
            case 14:
                Unk_ov94_02246AC0.unk_04 = -2;
                break;
            default:

                Unk_ov94_02246AC0.unk_04 = -13;
                break;
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_06:
        switch (HTTP_GetRequestStatus()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
            Unk_ov94_02246AC0.unk_04 = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;

            if (HTTP_GetResponseLength() == sizeof(GTSPokemonListing)) {
                Unk_ov94_02246AC0.unk_04 = 0;
            } else {
                switch (Unk_ov94_02246AC0.unk_140[0]) {
                case 5:
                    Unk_ov94_02246AC0.unk_04 = -3;
                    break;
                case 3:
                    Unk_ov94_02246AC0.unk_04 = -4;
                    break;
                case 14:
                    Unk_ov94_02246AC0.unk_04 = -2;
                    break;
                default:

                    Unk_ov94_02246AC0.unk_04 = -13;
                    break;
                }
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case NETWORK_STATUS_GET_LISTED_POKEMON_PENDING:
        switch (HTTP_GetRequestStatus()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
            Unk_ov94_02246AC0.unk_04 = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;

            if (HTTP_GetResponseLength() == sizeof(GTSPokemonListing)) {
                Unk_ov94_02246AC0.unk_04 = 1;
            } else {
                switch (Unk_ov94_02246AC0.unk_140[0]) {
                case 5:
                    Unk_ov94_02246AC0.unk_04 = -3;
                    break;
                case 3:
                    Unk_ov94_02246AC0.unk_04 = -4;
                    break;
                case 4:
                    Unk_ov94_02246AC0.unk_04 = 0;
                    break;
                case 14:
                    Unk_ov94_02246AC0.unk_04 = -2;
                    break;
                default:

                    Unk_ov94_02246AC0.unk_04 = -13;
                    break;
                }
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_10:
        switch (HTTP_GetRequestStatus()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
            Unk_ov94_02246AC0.unk_04 = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;

            switch (Unk_ov94_02246AC0.unk_13C[0]) {
            case 1:
                Unk_ov94_02246AC0.unk_04 = 0;
                break;
            case 5:
                Unk_ov94_02246AC0.unk_04 = -3;
                break;
            case 3:
                Unk_ov94_02246AC0.unk_04 = -4;
                break;
            case 14:
                Unk_ov94_02246AC0.unk_04 = -2;
                break;
            default:

                Unk_ov94_02246AC0.unk_04 = -13;
                break;
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_12:
        switch (HTTP_GetRequestStatus()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
            Unk_ov94_02246AC0.unk_04 = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;

            switch (Unk_ov94_02246AC0.unk_13C[0]) {
            case 1:
                Unk_ov94_02246AC0.unk_04 = 0;
                break;
            case 5:
                Unk_ov94_02246AC0.unk_04 = -3;
                break;
            case 2:
                Unk_ov94_02246AC0.unk_04 = -5;
                break;
            case 3:
                Unk_ov94_02246AC0.unk_04 = -4;
                break;
            case 14:
                Unk_ov94_02246AC0.unk_04 = -2;
                break;
            default:

                Unk_ov94_02246AC0.unk_04 = -13;
                break;
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_14:
        switch (HTTP_GetRequestStatus()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
            Unk_ov94_02246AC0.unk_04 = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
            {
                int v0 = HTTP_GetResponseLength();

                if (v0 >= sizeof(GTSPokemonListing)) {
                    Unk_ov94_02246AC0.unk_04 = (s32)(HTTP_GetResponseLength() / sizeof(GTSPokemonListing));
                } else if (v0 == 0) {
                    Unk_ov94_02246AC0.unk_04 = 0;
                } else {
                    switch (Unk_ov94_02246AC0.unk_140[0]) {
                    case 14:
                        Unk_ov94_02246AC0.unk_04 = -2;
                        break;
                    default:

                        Unk_ov94_02246AC0.unk_04 = -13;
                        break;
                    }
                }
            }
            HTTP_Shutdown();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_16:
        switch (HTTP_GetRequestStatus()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
            Unk_ov94_02246AC0.unk_04 = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;

            if (HTTP_GetResponseLength() == sizeof(GTSPokemonListing)) {
                Unk_ov94_02246AC0.unk_04 = 0;
            } else {
                switch (Unk_ov94_02246AC0.unk_140[0]) {
                case 2:
                    Unk_ov94_02246AC0.unk_04 = -5;
                    break;
                case 12:
                    Unk_ov94_02246AC0.unk_04 = -6;
                    break;
                case 13:
                    Unk_ov94_02246AC0.unk_04 = -7;
                    break;
                case 8:
                    Unk_ov94_02246AC0.unk_04 = -8;
                    break;
                case 9:
                    Unk_ov94_02246AC0.unk_04 = -9;
                    break;
                case 10:
                    Unk_ov94_02246AC0.unk_04 = -10;
                    break;
                case 11:
                    Unk_ov94_02246AC0.unk_04 = -11;
                    break;
                case 14:
                    Unk_ov94_02246AC0.unk_04 = -2;
                    break;
                default:

                    Unk_ov94_02246AC0.unk_04 = -13;
                    break;
                }
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_18:
        switch (HTTP_GetRequestStatus()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
            Unk_ov94_02246AC0.unk_04 = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;

            switch (Unk_ov94_02246AC0.unk_13C[0]) {
            case 1:
                Unk_ov94_02246AC0.unk_04 = 0;
                break;
            case 14:
                Unk_ov94_02246AC0.unk_04 = -2;
                break;
            case 2:
                Unk_ov94_02246AC0.unk_04 = -5;
                break;
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case NETWORK_STATUS_INIT_PENDING:
        switch (HTTP_GetRequestStatus()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
            Unk_ov94_02246AC0.unk_04 = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;

            switch (Unk_ov94_02246AC0.unk_13C[0]) {
            case 1:
                Unk_ov94_02246AC0.unk_04 = 0;
                break;
            case 6:
                Unk_ov94_02246AC0.unk_04 = 1;
                break;
            case 7:
                Unk_ov94_02246AC0.unk_04 = 2;
                break;
            case 14:
                Unk_ov94_02246AC0.unk_04 = -2;
                break;
            default:

                Unk_ov94_02246AC0.unk_04 = -13;
                break;
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case NETWORK_STATUS_SET_PROFILE_PENDING:
        switch (HTTP_GetRequestStatus()) {
        case 1:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
            Unk_ov94_02246AC0.unk_04 = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case 7:
            Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;

            if (HTTP_GetResponseLength() == sizeof(WorldExchangeTrainerError)) {
                Unk_ov94_02246AC0.unk_04 = 0;
            } else {
                switch (Unk_ov94_02246AC0.unk_13C[0]) {
                case 1:
                    Unk_ov94_02246AC0.unk_04 = 0;
                    break;
                case 6:
                    Unk_ov94_02246AC0.unk_04 = 1;
                    break;
                case 7:
                    Unk_ov94_02246AC0.unk_04 = 2;
                    break;
                case 14:
                    Unk_ov94_02246AC0.unk_04 = -2;
                    break;
                default:

                    Unk_ov94_02246AC0.unk_04 = -13;
                    break;
                }
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case UnkEnum_ov94_0223B15C_03:
    case UnkEnum_ov94_0223B15C_05:
    case UnkEnum_ov94_0223B15C_07:
    case UnkEnum_ov94_0223B15C_09:
    case UnkEnum_ov94_0223B15C_11:
    case UnkEnum_ov94_0223B15C_13:
    case UnkEnum_ov94_0223B15C_15:
    case UnkEnum_ov94_0223B15C_17:
    case UnkEnum_ov94_0223B15C_19:
    case UnkEnum_ov94_0223B15C_21:
    case UnkEnum_ov94_0223B15C_23:
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
        Unk_ov94_02246AC0.unk_04 = -12;
        HTTP_Shutdown();
        break;
    case NETWORK_STATUS_COMPLETE:
        break;
    }
}

void ov94_0223B7AC(void)
{
    Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_00;
}

BOOL GTSNetworking_RequestComplete(void)
{
    switch (Unk_ov94_02246AC0.unk_00) {
    case UnkEnum_ov94_0223B15C_01:
        return TRUE;
        break;
    case NETWORK_STATUS_COMPLETE:
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_01;
        return TRUE;
        break;
    default:
        break;
    }

    return FALSE;
}

s32 GTSNetworking_GetErrorCode(void)
{
    return Unk_ov94_02246AC0.unk_04;
}

void ov94_0223B7E4(const GTSPokemonListing *param0)
{
    memcpy(&Unk_ov94_02246AC0.unk_14[0], param0, sizeof(GTSPokemonListing));

    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                                             "worldexchange/post.asp"),
            Unk_ov94_02246AC0.unk_14,
            sizeof(GTSPokemonListing),
            Unk_ov94_02246AC0.unk_13C,
            2)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_02;
    } else {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
        Unk_ov94_02246AC0.unk_04 = -13;
        HTTP_Shutdown();
    }
}

void ov94_0223B834(void)
{
    memcpy(&Unk_ov94_02246AC0.unk_14[0], &Unk_ov94_02246AC0.unk_0C, 8);

    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                                             "worldexchange/post_finish.asp"),
            Unk_ov94_02246AC0.unk_14,
            8,
            Unk_ov94_02246AC0.unk_13C,
            2)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_04;
    } else {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
        Unk_ov94_02246AC0.unk_04 = -13;
        HTTP_Shutdown();
    }
}

void ov94_0223B888(GTSPokemonListing *param0)
{
    Unk_ov94_02246AC0.unk_140 = (u8 *)param0;

    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                                             "worldexchange/get.asp"),
            Unk_ov94_02246AC0.unk_14,
            0,
            param0,
            sizeof(GTSPokemonListing))) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_06;
    } else {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
        Unk_ov94_02246AC0.unk_04 = -13;
        HTTP_Shutdown();
    }
}

void GTSNetworking_GetListedPokemon(GTSPokemonListing *param0)
{
    Unk_ov94_02246AC0.unk_140 = (u8 *)param0;

    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                                             "worldexchange/result.asp"),
            Unk_ov94_02246AC0.unk_14,
            0,
            param0,
            sizeof(GTSPokemonListing))) {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_GET_LISTED_POKEMON_PENDING;
    } else {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
        Unk_ov94_02246AC0.unk_04 = -13;
        HTTP_Shutdown();
    }
}

void ov94_0223B928(void)
{
    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                                             "worldexchange/delete.asp"),
            Unk_ov94_02246AC0.unk_14,
            0,
            Unk_ov94_02246AC0.unk_13C,
            2)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_10;
    } else {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
        Unk_ov94_02246AC0.unk_04 = -13;
        HTTP_Shutdown();
    }
}

void ov94_0223B96C(void)
{
    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                                             "worldexchange/return.asp"),
            Unk_ov94_02246AC0.unk_14,
            0,
            Unk_ov94_02246AC0.unk_13C,
            2)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_12;
    } else {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
        Unk_ov94_02246AC0.unk_04 = -13;
        HTTP_Shutdown();
    }
}

void GTSNetworking_Search(const GTSPokemonListing_sub3 *param0, s32 param1, GTSPokemonListing *param2)
{
    Unk_ov94_02246AC0.unk_140 = (u8 *)param2;

    HTTP_Init();

    memcpy(&Unk_ov94_02246AC0.unk_14[0], param0, sizeof(GTSPokemonListing_sub3));
    Unk_ov94_02246AC0.unk_14[sizeof(GTSPokemonListing_sub3)] = (u8)param1;

    if (GTSNetworking_PrepareRequest(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                                             "worldexchange/search.asp"),
            Unk_ov94_02246AC0.unk_14,
            sizeof(GTSPokemonListing_sub3) + 1,
            param2,
            (int)sizeof(GTSPokemonListing) * param1)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_14;
    } else {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
        Unk_ov94_02246AC0.unk_04 = -13;
        HTTP_Shutdown();
    }
}

void ov94_0223BA24(const UnkStruct_ov94_0223BA24 *param0, GTSPokemonListing *param1)
{
    Unk_ov94_02246AC0.unk_140 = (u8 *)param1;

    HTTP_Init();

    memcpy(&Unk_ov94_02246AC0.unk_14[0], param0, sizeof(UnkStruct_ov94_0223BA24));

    if (GTSNetworking_PrepareRequest(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                                             "worldexchange/search.asp"),
            Unk_ov94_02246AC0.unk_14,
            sizeof(UnkStruct_ov94_0223BA24),
            param1,
            (int)sizeof(GTSPokemonListing) * param0->unk_06)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_14;
    } else {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
        Unk_ov94_02246AC0.unk_04 = -13;
        HTTP_Shutdown();
    }
}

void ov94_0223BA88(s32 param0, const GTSPokemonListing *param1, GTSPokemonListing *param2)
{
    Unk_ov94_02246AC0.unk_140 = (u8 *)param2;

    HTTP_Init();

    memcpy(&Unk_ov94_02246AC0.unk_14[0], param1, sizeof(GTSPokemonListing));

    *(s32 *)(&Unk_ov94_02246AC0.unk_14[sizeof(GTSPokemonListing)]) = param0;

    if (GTSNetworking_PrepareRequest(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                                             "worldexchange/exchange.asp"),
            Unk_ov94_02246AC0.unk_14,
            sizeof(GTSPokemonListing) + 4,
            param2,
            sizeof(GTSPokemonListing))) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_16;
    } else {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
        Unk_ov94_02246AC0.unk_04 = -13;
        HTTP_Shutdown();
    }
}

void ov94_0223BAEC(void)
{
    memcpy(&Unk_ov94_02246AC0.unk_14[0], &Unk_ov94_02246AC0.unk_0C, 8);

    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                                             "worldexchange/exchange_finish.asp"),
            Unk_ov94_02246AC0.unk_14,
            8,
            Unk_ov94_02246AC0.unk_13C,
            2)) {
        Unk_ov94_02246AC0.unk_00 = UnkEnum_ov94_0223B15C_18;
    } else {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
        Unk_ov94_02246AC0.unk_04 = -13;
        HTTP_Shutdown();
    }
}

void GTSNetworking_InitConnection(void)
{
    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                                             "worldexchange/info.asp"),
            Unk_ov94_02246AC0.unk_14,
            0,
            Unk_ov94_02246AC0.unk_13C,
            2)) {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_INIT_PENDING;
    } else {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
        Unk_ov94_02246AC0.unk_04 = -13;
        HTTP_Shutdown();
    }
}

void GTSNetworking_SetProfile(const WorldExchangeTrainer *trainer, WorldExchangeTrainerError *param1)
{
    OS_GetMacAddress((u8 *)trainer->macAddress);

    memcpy(Unk_ov94_02246AC0.unk_14, trainer, sizeof(WorldExchangeTrainer));
    Unk_ov94_02246AC0.unk_140 = (u8 *)param1;

    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const unsigned char *)"http://gamestats2.gs.nintendowifi.net/pokemondpds/"
                                                             "common/setProfile.asp"),
            Unk_ov94_02246AC0.unk_14,
            sizeof(WorldExchangeTrainer),
            Unk_ov94_02246AC0.unk_140,
            sizeof(WorldExchangeTrainerError))) {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_SET_PROFILE_PENDING;
    } else {
        Unk_ov94_02246AC0.unk_00 = NETWORK_STATUS_COMPLETE;
        Unk_ov94_02246AC0.unk_04 = -13;
        HTTP_Shutdown();
    }
}

static BOOL GTSNetworking_PrepareRequest(const u8 *param0, const void *param1, int param2, void *param3, int param4)
{
    switch (HTTP_PrepareRequest(param0, Unk_ov94_02246AC0.unk_08, param1, param2, (u8 *)param3, param4)) {
    case 0:
        return TRUE;
        break;
    case 1:
        break;
    case 2:
        break;
    }

    return FALSE;
}

static int GTSNetworking_GetPublicErrorCode(int param0)
{
    int v0;

    switch (param0) {
    case 0:
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 10:
    case 23:
    case 22:
    case 20:
    case 21:
    case 14:
    case 32:
        v0 = -13;
        break;
    case 2:
    case 8:
    case 25:
        v0 = -13;
        break;
    case 11:
        v0 = -15;
        break;
    case 12:
    case 13:
        v0 = -15;
        break;
    case 16:
    case 17:
    case 18:
    case 19:
    case 26:
    case 27:
    case 28:
    case 29:
    case 31:
        v0 = -2;
        break;
    case 15:
    case 30:
        v0 = -2;
        break;
    default:

        v0 = -13;
        break;
    }

    if (v0 != -13) {
        if (WCM_GetPhase() != WCM_PHASE_DCF) {
            v0 = -14;
        }

        DWC_ClearError();
    }

    return v0;
}
