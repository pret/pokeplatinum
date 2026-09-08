#ifndef POKEPLATINUM_FRONTIER_COMMUNICATION_H
#define POKEPLATINUM_FRONTIER_COMMUNICATION_H

#include "overlay104/battle_arcade.h"
#include "overlay104/battle_castle.h"
#include "overlay104/battle_factory.h"
#include "overlay104/battle_hall.h"

#define FRONTIER_COMMUNICATION_UNREACHABLE2     34
#define HALL_COMMUNICATION_SEND_TRAINERS        35
#define HALL_COMMUNICATION_SEND_OPPONENT_MONS   36
#define HALL_COMMUNICATION_SEND_PLAYERS_POKEMON 38

#define FACTORY_COMMUNICATION_SEND_TRAINERS 23

#define CASTLE_COMMUNICATION_SEND_PLAYERS_CP    42
#define CASTLE_COMMUNICATION_SEND_TRAINERS      43
#define CASTLE_COMMUNICATION_SEND_OPPONENT_MONS 45
#define FRONTIER_COMMUNICATION_UNREACHABLE4     47
#define CASTLE_COMMUNICATION_SEND_PLAYERS_PARTY 48

#define ARCADE_COMMUNICATION_SEND_TRAINERS      66
#define ARCADE_COMMUNICATION_SEND_PLAYERS_PARTY 70

void FrontierCommunication_Unreachable1(int dummy1, int unused1, void *dummy2, void *battleHall);
BOOL FrontierCommunication_Unreachable2(BattleHall *battleHall);
void FrontierCommunication_Unreachable3(int dummy1, int unused1, void *dummy2, void *battleHall);
BOOL HallCommunication_SendTrainers(BattleHall *battleHall);
void HallCommunication_ReceiveTrainers(int netID, int unused, void *trainerIDs, void *battleHall);
BOOL HallCommunication_SendOpponentMons(BattleHall *battleHall);
void HallCommunication_ReceiveOpponentMons(int netID, int unused, void *monIndices, void *battleHall);
BOOL ov104_0222EE14(BattleHall *battleHall, u8 param1);
void ov104_0222EE38(int netID, int unused, void *param2, void *battleHall);
BOOL HallCommunication_SendPlayersPokemon(BattleHall *battleHall);
void HallCommunication_ReceivePartnersPokemon(int netID, int unused1, void *partnersMon, void *battleHall);
u8 *HallCommunication_VerifyPacketSize(int index, void *battleHall, int size);
BOOL ov104_0222EEF8(BattleFactory *battleFactory);
void ov104_0222EF30(int netID, int unused1, void *param2, void *battleFactory);
BOOL FactoryCommunication_SendTrainers(BattleFactory *battleFactory);
void FactoryCommunication_ReceiveTrainers(int netID, int unused, void *trainerIDs, void *battleFactory);
BOOL ov104_0222EFCC(BattleFactory *battleFactory);
void ov104_0222F03C(int netID, int unused1, void *param2, void *battleFactory);
BOOL ov104_0222F0B4(BattleFactory *battleFactory);
void ov104_0222F124(int netID, int unused, void *param2, void *battleFactory);
BOOL ov104_0222F1A0(BattleFactory *battleFactory, u8 param1);
void ov104_0222F1C4(int netID, int unused, void *param2, void *battleFactory);
BOOL ov104_0222F1EC(BattleFactory *battleFactory, u8 param1);
void ov104_0222F210(int netID, int unused, void *param2, void *battleFactory);
BOOL ov104_0222F238(BattleFactory *battleFactory);
void ov104_0222F31C(int netID, int unused1, void *param2, void *battleFactory);
BOOL CastleCommunication_SendPlayersCP(BattleCastle *battleCastle);
void CastleCommunication_ReceivePartnersCP(int netID, int unused1, void *partnersCP, void *battleCastle);
BOOL CastleCommunication_SendTrainers(BattleCastle *battleCastle);
void CastleCommunications_ReceiveTrainers(int netID, int unused, void *trainerIDs, void *battleCastle);
BOOL ov104_0222F4B8(BattleCastle *battleCastle);
void ov104_0222F530(int netID, int unused, void *param2, void *battleCastle);
BOOL CastleCommunication_SendOpponentMons(BattleCastle *battleCastle);
void ov104_0222F650(int netID, int unused, void *monData, void *battleCastle);
BOOL ov104_0222F6C8(BattleCastle *battleCastle, u16 param1);
void ov104_0222F6E8(int netID, int unused, void *param2, void *battleCastle);
BOOL FrontierCommunication_Unreachable4(BattleCastle *battleCastle, u16 param1);
void FrontierCommunication_Unreachable5(int netID, int unused, void *param2, void *battleCastle);
BOOL CastleCommunication_SendPlayersParty(BattleCastle *battleCastle);
void CastleCommunication_ReceivePartnersParty(int netID, int unused, void *param2, void *battleCastle);
u8 *CastleCommunication_VerifyPacketSize(int index, void *battleCastle, int size);
BOOL ov104_0222F86C(BattleArcade *battleArcade);
void ov104_0222F8A0(int netID, int unused1, void *param2, void *battleArcade);
BOOL ArcadeCommunication_SendTrainers(BattleArcade *battleArcade);
void ArcadeCommunication_ReceiveTrainers(int netID, int unused, void *trainerIDs, void *battleArcade);
BOOL ov104_0222F944(BattleArcade *battleArcade);
void ov104_0222F9C0(int netID, int unused, void *param2, void *battleArcade);
BOOL ov104_0222FA38(BattleArcade *battleArcade, u16 param1);
void ov104_0222FA5C(int netID, int unused, void *param2, void *battleArcade);
BOOL ov104_0222FA84(BattleArcade *battleArcade, u16 param1);
void ov104_0222FAA8(int netID, int unused, void *param2, void *battleArcade);
BOOL ArcadeCommunication_SendPlayersParty(BattleArcade *battleArcade);
void ArcadeCommunication_ReceivePartnersParty(int netID, int unused, void *partnersParty, void *battleArcade);
u8 *ArcadeCommunication_VerifyPacketSize(int netID, void *battleArcade, int size);

#endif // POKEPLATINUM_FRONTIER_COMMUNICATION_H
