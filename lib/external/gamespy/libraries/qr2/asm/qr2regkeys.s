	.include "macros/function.inc"

	.text


	arm_func_start qr2_register_keyA
qr2_register_keyA: ; 0x021FD4E0
	cmp r0, #0x32
	bxlt lr
	cmp r0, #0xfe
	bxgt lr
	ldr r2, _021FD4FC ; =0x02219B38
	str r1, [r2, r0, lsl #2]
	bx lr
	; .align 2, 0
_021FD4FC: .word Unk_ov4_02219B38
	arm_func_end qr2_register_keyA

	.data


	.global Unk_ov4_02219A00
Unk_ov4_02219A00: ; 0x02219A00
	.space 0x4

	.global Unk_ov4_02219A04
Unk_ov4_02219A04: ; 0x02219A04
	.ascii "pid_"
	.space 0x4

	.global Unk_ov4_02219A0C
Unk_ov4_02219A0C: ; 0x02219A0C
	.asciz "ping_"
	.space 0x2

	.global Unk_ov4_02219A14
Unk_ov4_02219A14: ; 0x02219A14
	.asciz "team_"
	.space 0x2

	.global Unk_ov4_02219A1C
Unk_ov4_02219A1C: ; 0x02219A1C
	.ascii "score_"
	.space 0x2

	.global Unk_ov4_02219A24
Unk_ov4_02219A24: ; 0x02219A24
	.ascii "team_t"
	.space 0x2

	.global Unk_ov4_02219A2C
Unk_ov4_02219A2C: ; 0x02219A2C
	.ascii "skill_"
	.space 0x2

	.global Unk_ov4_02219A34
Unk_ov4_02219A34: ; 0x02219A34
	.asciz "groupid"

	.global Unk_ov4_02219A3C
Unk_ov4_02219A3C: ; 0x02219A3C
	.asciz "deaths_"

	.global Unk_ov4_02219A44
Unk_ov4_02219A44: ; 0x02219A44
	.asciz "gamever"

	.global Unk_ov4_02219A4C
Unk_ov4_02219A4C: ; 0x02219A4C
	.asciz "player_"

	.global Unk_ov4_02219A54
Unk_ov4_02219A54: ; 0x02219A54
	.asciz "score_t"

	.global Unk_ov4_02219A5C
Unk_ov4_02219A5C: ; 0x02219A5C
	.asciz "mapname" 

	.global Unk_ov4_02219A64
Unk_ov4_02219A64: ; 0x02219A64
	.ascii "gamename"
	.space 0x4

	.global Unk_ov4_02219A70
Unk_ov4_02219A70: ; 0x02219A70
	.ascii "hostport"
	.space 0x4

	.global Unk_ov4_02219A7C
Unk_ov4_02219A7C: ; 0x02219A7C
	.ascii "password"
	.space 0x4

	.global Unk_ov4_02219A88
Unk_ov4_02219A88: ; 0x02219A88
	.ascii "gametype"
	.space 0x4

	.global Unk_ov4_02219A94
Unk_ov4_02219A94: ; 0x02219A94
	.ascii "numteams"
	.space 0x4

	.global Unk_ov4_02219AA0
Unk_ov4_02219AA0: ; 0x02219AA0
	.ascii "gamemode"
	.space 0x4

	.global Unk_ov4_02219AAC
Unk_ov4_02219AAC: ; 0x02219AAC
	.ascii "teamplay"
	.space 0x4

	.global Unk_ov4_02219AB8
Unk_ov4_02219AB8: ; 0x02219AB8
	.ascii "hostname"
	.space 0x4

	.global Unk_ov4_02219AC4
Unk_ov4_02219AC4: ; 0x02219AC4
	.asciz "fraglimit"
	.space 0x2

	.global Unk_ov4_02219AD0
Unk_ov4_02219AD0: ; 0x02219AD0
	.asciz "timelimit"
	.space 0x2

	.global Unk_ov4_02219ADC
Unk_ov4_02219ADC: ; 0x02219ADC
	.asciz "roundtime"
	.space 0x2

	.global Unk_ov4_02219AE8
Unk_ov4_02219AE8: ; 0x02219AE8
	.ascii "numplayers"
	.space 0x2

	.global Unk_ov4_02219AF4
Unk_ov4_02219AF4: ; 0x02219AF4
	.ascii "maxplayers"
	.space 0x2

	.global Unk_ov4_02219B00
Unk_ov4_02219B00: ; 0x02219B00
	.asciz "gamevariant"

	.global Unk_ov4_02219B0C
Unk_ov4_02219B0C: ; 0x02219B0C
	.asciz "timeelapsed"

	.global Unk_ov4_02219B18
Unk_ov4_02219B18: ; 0x02219B18
	.ascii "roundelapsed"
	.space 0x4

	.global Unk_ov4_02219B28
Unk_ov4_02219B28: ; 0x02219B28
	.asciz "teamfraglimit"
	.space 0x2

	.global Unk_ov4_02219B38
Unk_ov4_02219B38: ; 0x02219B38
	.word Unk_ov4_02219A00
	.word Unk_ov4_02219AB8
	.word Unk_ov4_02219A64
	.word Unk_ov4_02219A44
	.word Unk_ov4_02219A70
	.word Unk_ov4_02219A5C
	.word Unk_ov4_02219A88
	.word Unk_ov4_02219B00
	.word Unk_ov4_02219AE8
	.word Unk_ov4_02219A94
	.word Unk_ov4_02219AF4
	.word Unk_ov4_02219AA0
	.word Unk_ov4_02219AAC
	.word Unk_ov4_02219AC4
	.word Unk_ov4_02219B28
	.word Unk_ov4_02219B0C
	.word Unk_ov4_02219AD0
	.word Unk_ov4_02219ADC
	.word Unk_ov4_02219B18
	.word Unk_ov4_02219A7C
	.word Unk_ov4_02219A34
	.word Unk_ov4_02219A4C
	.word Unk_ov4_02219A1C
	.word Unk_ov4_02219A2C
	.word Unk_ov4_02219A0C
	.word Unk_ov4_02219A14
	.word Unk_ov4_02219A3C
	.word Unk_ov4_02219A04
	.word Unk_ov4_02219A24
	.word Unk_ov4_02219A54
	.space 0x380

