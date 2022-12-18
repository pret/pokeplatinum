	.include "macros/function.inc"
	.include "include/ov70_02265F38.inc"

	

	.text


	thumb_func_start ov70_02265F38
ov70_02265F38: ; 0x02265F38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp, #0x10]
	bl ov70_02262E38
	add r6, r0, #0
	add r0, r7, #0
	bl ov70_02262E80
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x34]
	add r0, r7, #0
	bl ov70_02262E84
	cmp r0, #0x1b
	bhi _02266050
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265F6E: ; jump table
	.short _02266050 - _02265F6E - 2 ; case 0
	.short _02266050 - _02265F6E - 2 ; case 1
	.short _02266050 - _02265F6E - 2 ; case 2
	.short _02266050 - _02265F6E - 2 ; case 3
	.short _02266050 - _02265F6E - 2 ; case 4
	.short _02266050 - _02265F6E - 2 ; case 5
	.short _02266050 - _02265F6E - 2 ; case 6
	.short _02266024 - _02265F6E - 2 ; case 7
	.short _02265FEE - _02265F6E - 2 ; case 8
	.short _02265FA6 - _02265F6E - 2 ; case 9
	.short _02265FA6 - _02265F6E - 2 ; case 10
	.short _02265FA6 - _02265F6E - 2 ; case 11
	.short _02265FA6 - _02265F6E - 2 ; case 12
	.short _02265FA6 - _02265F6E - 2 ; case 13
	.short _02265FA6 - _02265F6E - 2 ; case 14
	.short _02266050 - _02265F6E - 2 ; case 15
	.short _02266050 - _02265F6E - 2 ; case 16
	.short _02266024 - _02265F6E - 2 ; case 17
	.short _02266024 - _02265F6E - 2 ; case 18
	.short _02266024 - _02265F6E - 2 ; case 19
	.short _02266024 - _02265F6E - 2 ; case 20
	.short _02266024 - _02265F6E - 2 ; case 21
	.short _02266024 - _02265F6E - 2 ; case 22
	.short _02266050 - _02265F6E - 2 ; case 23
	.short _02266050 - _02265F6E - 2 ; case 24
	.short _02266050 - _02265F6E - 2 ; case 25
	.short _02265FA6 - _02265F6E - 2 ; case 26
	.short _02265FA6 - _02265F6E - 2 ; case 27
_02265FA6:
	ldrb r0, [r6, #1]
	bl ov66_02233224
	ldrh r1, [r4, #8]
	cmp r1, r0
	bls _02265FC0
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02266050
_02265FC0:
	bl sub_02035E18
	ldrh r1, [r4, #8]
	cmp r1, r0
	ble _02265FD8
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02266050
_02265FD8:
	bl sub_020388AC
	cmp r0, #0
	bne _02265FEE
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02266050
_02265FEE:
	bl ov66_02233374
	cmp r0, #1
	bne _0226600E
	ldrb r0, [r6, #1]
	bl ov66_02233224
	cmp r0, #1
	bhi _0226600E
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02266050
_0226600E:
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	bpl _02266024
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _02266050
_02266024:
	bl sub_020380E4
	cmp r0, #5
	bhi _02266050
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02266038: ; jump table
	.short _02266050 - _02266038 - 2 ; case 0
	.short _02266050 - _02266038 - 2 ; case 1
	.short _02266044 - _02266038 - 2 ; case 2
	.short _02266044 - _02266038 - 2 ; case 3
	.short _02266044 - _02266038 - 2 ; case 4
	.short _02266044 - _02266038 - 2 ; case 5
_02266044:
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
_02266050:
	add r0, r7, #0
	bl ov70_02262E84
	cmp r0, #0x1c
	bls _0226605E
	bl _022669AC
_0226605E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226606A: ; jump table
	.short _022660A4 - _0226606A - 2 ; case 0
	.short _022660B6 - _0226606A - 2 ; case 1
	.short _022660FA - _0226606A - 2 ; case 2
	.short _02266118 - _0226606A - 2 ; case 3
	.short _0226613E - _0226606A - 2 ; case 4
	.short _022661AC - _0226606A - 2 ; case 5
	.short _022661CA - _0226606A - 2 ; case 6
	.short _022662B4 - _0226606A - 2 ; case 7
	.short _02266472 - _0226606A - 2 ; case 8
	.short _022664FA - _0226606A - 2 ; case 9
	.short _0226654E - _0226606A - 2 ; case 10
	.short _0226657A - _0226606A - 2 ; case 11
	.short _022665F2 - _0226606A - 2 ; case 12
	.short _02266620 - _0226606A - 2 ; case 13
	.short _0226665A - _0226606A - 2 ; case 14
	.short _02266700 - _0226606A - 2 ; case 15
	.short _02266750 - _0226606A - 2 ; case 16
	.short _02266776 - _0226606A - 2 ; case 17
	.short _0226679E - _0226606A - 2 ; case 18
	.short _022667AE - _0226606A - 2 ; case 19
	.short _02266806 - _0226606A - 2 ; case 20
	.short _02266866 - _0226606A - 2 ; case 21
	.short _022668B8 - _0226606A - 2 ; case 22
	.short _02266902 - _0226606A - 2 ; case 23
	.short _02266914 - _0226606A - 2 ; case 24
	.short _02266926 - _0226606A - 2 ; case 25
	.short _0226693A - _0226606A - 2 ; case 26
	.short _0226695E - _0226606A - 2 ; case 27
	.short _02266988 - _0226606A - 2 ; case 28
_022660A4:
	add r0, r7, #0
	mov r1, #0x44
	bl ov70_02262E3C
	add r0, r7, #0
	bl ov70_02262E8C
	bl _022669AC
_022660B6:
	ldr r0, [sp, #0x34]
	bl ov66_0222E210
	cmp r0, #0
	beq _022660D0
	mov r0, #7
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x1c
	bl ov70_02262E88
	bl _022669AC
_022660D0:
	ldr r0, [sp, #0x34]
	bl ov66_0222E190
	cmp r0, #0
	beq _022660EA
	mov r0, #2
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x1c
	bl ov70_02262E88
	bl _022669AC
_022660EA:
	ldr r0, _022663C4 ; =0x000005DD
	bl sub_02005748
	add r0, r7, #0
	bl ov70_02262E8C
	bl _022669AC
_022660FA:
	ldrb r1, [r6, #2]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E27C
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #0
	bl ov70_02266AF0
	bl _022669AC
_02266118:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	mov r3, #1
	bl ov70_02266B30
	add r4, #0x18
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_0225E074
	add r0, r7, #0
	mov r1, #4
	bl ov70_02262E88
	bl _022669AC
_0226613E:
	mov r0, #0
	str r0, [sp, #0x30]
	add r0, r5, #0
	bl ov70_0225E0D4
	cmp r0, #2
	bhi _0226615A
	cmp r0, #0
	beq _02266182
	cmp r0, #1
	beq _02266174
	cmp r0, #2
	beq _02266162
	b _0226618E
_0226615A:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _0226618E
_02266162:
	mov r0, #5
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x1c
	bl ov70_02262E88
	mov r0, #1
	str r0, [sp, #0x30]
	b _0226618E
_02266174:
	add r0, r7, #0
	mov r1, #5
	bl ov70_02262E88
	mov r0, #1
	str r0, [sp, #0x30]
	b _0226618E
_02266182:
	add r0, r7, #0
	mov r1, #6
	bl ov70_02262E88
	mov r0, #1
	str r0, [sp, #0x30]
_0226618E:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	beq _02266198
	bl _022669AC
_02266198:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov70_0225E0E4
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02266BA0
	b _022669AC
_022661AC:
	ldrb r1, [r6, #2]
	add r0, r5, #0
	mov r2, #0
	bl ov70_0225E27C
	mov r0, #2
	str r0, [sp]
	ldrb r3, [r6, #2]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	add r3, #0x22
	bl ov70_02266AF0
	b _022669AC
_022661CA:
	ldr r0, [sp, #0x34]
	bl ov66_0222E190
	cmp r0, #0
	beq _022661E2
	mov r0, #2
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x1c
	bl ov70_02262E88
	b _022669AC
_022661E2:
	ldrb r0, [r6, #1]
	bl ov66_02233184
	cmp r0, #1
	bne _02266226
	ldrb r0, [r6, #1]
	bl ov66_022331E4
	cmp r0, #0
	beq _02266200
	ldrb r0, [r6, #1]
	bl ov66_022331A4
	cmp r0, #0
	bne _0226620E
_02266200:
	mov r0, #1
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x1c
	bl ov70_02262E88
	b _022669AC
_0226620E:
	ldrb r0, [r6, #1]
	bl ov66_022332F8
	cmp r0, #0
	bne _02266226
	mov r0, #7
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x1c
	bl ov70_02262E88
	b _022669AC
_02266226:
	ldrb r0, [r6, #1]
	bl ov66_022332F8
	strh r0, [r4]
	mov r0, #0xe1
	lsl r0, r0, #2
	str r0, [r4, #0x10]
	mov r1, #0
	ldrsh r2, [r4, r1]
	ldr r0, _022663C8 ; =0x0000014A
	cmp r2, r0
	ble _02266248
	add r0, r5, #0
	mov r2, #0xa
	bl ov70_0225E20C
	b _02266254
_02266248:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r5, #0
	mov r2, #0xb
	bl ov70_0225E20C
_02266254:
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
	ldrb r0, [r6, #1]
	bl sub_0203883C
	bl ov66_02233374
	cmp r0, #1
	bne _0226628A
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r6, #2]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x10]
	mov r2, #1
	bl ov66_0222EA10
	mov r0, #1
	strb r0, [r4, #7]
_0226628A:
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r1, r5, #0
	mov r3, #1
	str r0, [sp]
	ldrb r2, [r6, #2]
	add r0, r4, #0
	add r0, #0x3c
	bl ov70_02266C68
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov70_02266CFC
	add r0, r7, #0
	mov r1, #7
	bl ov70_02262E88
	b _022669AC
_022662B4:
	bl sub_020388AC
	str r0, [sp, #0x2c]
	ldrb r0, [r6, #1]
	bl ov66_02233224
	str r0, [sp, #0x28]
	ldrb r0, [r6, #1]
	bl ov66_022332F8
	strh r0, [r4]
	mov r1, #0
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	add r0, #0x3c
	bl ov70_02266CCC
	mov r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, _022663C8 ; =0x0000014A
	cmp r1, r0
	bgt _02266308
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _02266308
	add r0, r5, #0
	bl ov70_0225DFCC
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xb
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
_02266308:
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02266328
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_02266328:
	cmp r0, #2
	bne _0226637E
	mov r0, #8
	strb r0, [r6]
	ldr r0, [sp, #0x28]
	cmp r0, #4
	bne _0226633A
	mov r6, #0x10
	b _0226633C
_0226633A:
	mov r6, #0x12
_0226633C:
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
	add r0, r7, #0
	mov r1, #9
	bl ov70_02262E88
	ldr r0, [sp, #0x28]
	mov r1, #0
	strh r0, [r4, #8]
	add r0, r4, #0
	add r0, #0x3c
	bl ov70_02266CCC
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	b _022669AC
_0226637E:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _022663D4
	ldr r0, _022663CC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _022663D4
	ldr r0, _022663D0 ; =0x000005DC
	bl sub_02005748
	bl ov66_02233374
	cmp r0, #0
	bne _022663B0
	mov r0, #6
	strb r0, [r6]
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_022663B0:
	mov r0, #6
	strb r0, [r6]
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r7, #0
	mov r1, #0x10
	bl ov70_02262E88
	b _022669AC
	; .align 2, 0
_022663C4: .word 0x000005DD
_022663C8: .word 0x0000014A
_022663CC: .word 0x021BF67C
_022663D0: .word 0x000005DC
_022663D4:
	bl ov66_02233374
	cmp r0, #1
	bne _02266420
	ldrb r1, [r4, #7]
	ldr r0, [sp, #0x28]
	cmp r1, r0
	beq _02266400
	strb r0, [r4, #7]
	cmp r0, #4
	beq _02266400
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r6, #2]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x10]
	bl ov66_0222EA10
_02266400:
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _02266420
	ldrb r0, [r6, #1]
	bl ov66_02233224
	cmp r0, #1
	bhi _02266420
	mov r0, #3
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_02266420:
	ldrb r0, [r6, #1]
	bl ov66_02233184
	cmp r0, #1
	bne _02266442
	ldrb r0, [r6, #1]
	bl ov66_022331A4
	cmp r0, #0
	bne _02266442
	mov r0, #0
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_02266442:
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _022664EA
	add r0, r7, #0
	mov r1, #8
	bl ov70_02262E88
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x12
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
	b _022669AC
_02266472:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	bl sub_020388AC
	add r5, r0, #0
	ldrb r0, [r6, #1]
	bl ov66_02233224
	str r0, [sp, #0x24]
	bl sub_020380E4
	cmp r0, #3
	beq _022664A2
	cmp r0, #4
	bne _022664AE
_022664A2:
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
_022664AE:
	cmp r5, #0
	bne _022664C0
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_022664C0:
	cmp r5, #2
	bne _022664D6
	mov r0, #8
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #9
	bl ov70_02262E88
	ldr r0, [sp, #0x24]
	strh r0, [r4, #8]
	b _022669AC
_022664D6:
	ldrb r0, [r6, #1]
	bl ov66_02233184
	cmp r0, #1
	bne _022664EA
	ldrb r0, [r6, #1]
	bl ov66_022331A4
	cmp r0, #0
	beq _022664EC
_022664EA:
	b _022669AC
_022664EC:
	mov r0, #0
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_022664FA:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	add r0, r5, #0
	bl ov70_0225DEE8
	ldrb r1, [r6, #3]
	bl ov66_0222E3E4
	bl sub_02038B40
	add r0, r5, #0
	bl ov70_0225DEE8
	bl ov66_0222E0C4
	mov r1, #0
	bl sub_020329E0
	ldr r0, [sp, #0x34]
	bl ov66_0222E918
	bl sub_020331F4
	mov r0, #0
	bl sub_0203632C
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0xa
	mov r3, #0x11
	bl ov70_02266B18
	b _022669AC
_0226654E:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	bl sub_02032AC0
	bl sub_0203608C
	bl sub_02032E1C
	add r0, r7, #0
	mov r1, #0xb
	bl ov70_02262E88
	b _022669AC
_0226657A:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	bl sub_02032E44
	cmp r0, #0xff
	beq _022665A4
_02266598:
	bl sub_02032E1C
	bl sub_02032E44
	cmp r0, #0xff
	bne _02266598
_022665A4:
	bl sub_02032E64
	add r5, r0, #0
	ldrb r0, [r6, #1]
	bl ov66_02233224
	cmp r5, r0
	blo _022665DC
	bl ov66_02233374
	cmp r0, #1
	bne _022665CA
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _022665CA
	bl ov66_022330CC
	mov r0, #1
	strh r0, [r4, #2]
_022665CA:
	bl ov66_02233128
	cmp r0, #1
	bne _0226664E
	add r0, r7, #0
	mov r1, #0xc
	bl ov70_02262E88
	b _022669AC
_022665DC:
	bl ov66_02233128
	cmp r0, #1
	bne _0226664E
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_022665F2:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	bl sub_020365F4
	ldr r0, [sp, #0x34]
	bl ov66_0222E238
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0xd
	mov r3, #0xe
	bl ov70_02266B18
	b _022669AC
_02266620:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	ldr r0, [sp, #0x34]
	bl ov66_0222E344
	str r0, [r4, #0xc]
	bl sub_0203608C
	add r4, #0xc
	add r1, r4, #0
	bl sub_02036614
	cmp r0, #1
	beq _02266650
_0226664E:
	b _022669AC
_02266650:
	add r0, r7, #0
	mov r1, #0xe
	bl ov70_02262E88
	b _022669AC
_0226665A:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CF0
	bl sub_02032E64
	str r0, [sp, #0x20]
	bl sub_0203608C
	mov r5, #0
	str r0, [sp, #0x1c]
	str r5, [sp, #0x18]
	bl ov66_02233340
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	add r4, r5, #0
	cmp r0, #0
	ble _022666DC
_0226668E:
	ldr r0, [sp, #0x1c]
	cmp r0, r4
	beq _022666BE
	add r0, r4, #0
	bl sub_0203664C
	str r0, [sp, #0x38]
	cmp r0, #0
	beq _022666D4
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x34]
	ldr r1, [r1, #0]
	add r2, r4, #0
	bl ov66_0222E24C
	ldr r0, [sp, #0x38]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bne _022666BA
	mov r0, #1
	str r0, [sp, #0x18]
_022666BA:
	add r5, r5, #1
	b _022666D4
_022666BE:
	ldr r0, [sp, #0x34]
	add r1, r4, #0
	bl ov66_0222E27C
	bl ov66_02233374
	cmp r0, #1
	bne _022666D2
	mov r0, #1
	str r0, [sp, #0x18]
_022666D2:
	add r5, r5, #1
_022666D4:
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	cmp r4, r0
	blt _0226668E
_022666DC:
	ldr r0, [sp, #0x20]
	cmp r5, r0
	bne _022667C0
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _022666F2
	add r0, r7, #0
	mov r1, #0xf
	bl ov70_02262E88
	b _022669AC
_022666F2:
	mov r0, #4
	strb r0, [r6]
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	b _022669AC
_02266700:
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	bl ov66_02233374
	cmp r0, #1
	bne _0226673C
	ldr r0, [sp, #0x34]
	add r1, sp, #0x3c
	bl ov66_0222E294
	ldrb r0, [r6, #1]
	bl ov66_02233224
	add r3, sp, #0x3c
	add r2, r0, #0
	ldrb r0, [r3, #1]
	str r0, [sp]
	ldrb r0, [r3, #2]
	str r0, [sp, #4]
	ldrb r0, [r3, #3]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldrb r1, [r6, #2]
	ldrb r3, [r3]
	ldr r0, [sp, #0x34]
	bl ov66_0222EA10
_0226673C:
	add r0, r5, #0
	bl ov70_0225DFCC
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x1c
	mov r3, #0x12
	bl ov70_02266B18
	b _022669AC
_02266750:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1a
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF8C
	add r0, r7, #0
	mov r1, #0x11
	bl ov70_02262E88
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02266CB0
	b _022669AC
_02266776:
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_02266BAC
	cmp r0, #0
	bne _022667C0
	add r0, r5, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022667C0
	add r0, r7, #0
	mov r1, #0x12
	bl ov70_02262E88
	b _022669AC
_0226679E:
	add r0, r5, #0
	bl ov70_0225E194
	add r0, r7, #0
	mov r1, #0x13
	bl ov70_02262E88
	b _022669AC
_022667AE:
	add r0, r5, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _022667C2
	cmp r0, #1
	beq _022667D8
	cmp r0, #2
	beq _022667E8
_022667C0:
	b _022669AC
_022667C2:
	add r0, r5, #0
	bl ov70_0225E1F8
	add r0, r7, #0
	mov r1, #0x17
	bl ov70_02262E88
	ldr r0, [sp, #0x34]
	bl ov66_0222E200
	b _022669AC
_022667D8:
	add r0, r5, #0
	bl ov70_0225E1F8
	add r0, r7, #0
	mov r1, #0x14
	bl ov70_02262E88
	b _022669AC
_022667E8:
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov70_02266BAC
	cmp r0, #1
	beq _022667FE
	b _022669AC
_022667FE:
	add r0, r5, #0
	bl ov70_0225E1F8
	b _022669AC
_02266806:
	ldrb r0, [r6, #1]
	bl ov66_022332F8
	strh r0, [r4]
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r1, r5, #0
	mov r3, #1
	str r0, [sp]
	add r0, r4, #0
	ldrb r2, [r6, #2]
	add r0, #0x3c
	bl ov70_02266C68
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #1
	bl ov70_02266CFC
	mov r1, #0
	ldrsh r2, [r4, r1]
	ldr r0, _022669B4 ; =0x0000014A
	cmp r2, r0
	ble _02266842
	add r0, r5, #0
	mov r2, #0xa
	bl ov70_0225E20C
	b _0226684E
_02266842:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r5, #0
	mov r2, #0xb
	bl ov70_0225E20C
_0226684E:
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
	add r0, r7, #0
	mov r1, #7
	bl ov70_02262E88
	b _022669AC
_02266866:
	ldrb r0, [r6, #1]
	bl ov66_02233224
	mov r1, #8
	strb r1, [r6]
	cmp r0, #4
	bne _02266878
	mov r2, #0x10
	b _0226687A
_02266878:
	mov r2, #0x12
_0226687A:
	add r0, r5, #0
	mov r1, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
	add r0, r7, #0
	mov r1, #9
	bl ov70_02262E88
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldrb r2, [r6, #2]
	add r0, #0x3c
	add r1, r5, #0
	mov r3, #1
	bl ov70_02266C68
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov70_02266CFC
	b _022669AC
_022668B8:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x12
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DF9C
	add r0, r5, #0
	bl ov70_0225DFBC
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldrb r2, [r6, #2]
	add r0, #0x3c
	add r1, r5, #0
	mov r3, #1
	bl ov70_02266C68
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov70_02266CCC
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov70_02266CF0
	add r0, r7, #0
	mov r1, #8
	bl ov70_02262E88
	b _022669AC
_02266902:
	bl sub_02032A70
	bl sub_0203888C
	add r0, r7, #0
	mov r1, #0x18
	bl ov70_02262E88
	b _022669AC
_02266914:
	bl sub_020388AC
	cmp r0, #0
	bne _022669AC
	add r0, r7, #0
	mov r1, #0x1c
	bl ov70_02262E88
	b _022669AC
_02266926:
	add r0, r5, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022669AC
	ldrb r1, [r4, #4]
	add r0, r7, #0
	bl ov70_02262E88
	b _022669AC
_0226693A:
	mov r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _02266946
	sub r0, r0, #1
	strb r0, [r4, #5]
_02266946:
	mov r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _022669AC
	ldrb r0, [r4, #6]
	bl sub_020364F0
	add r0, r7, #0
	mov r1, #0x1b
	bl ov70_02262E88
	b _022669AC
_0226695E:
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #0x96
	blo _02266974
	ldrb r0, [r4, #6]
	bl sub_020364F0
	mov r0, #0
	strh r0, [r4, #0xa]
_02266974:
	ldrb r0, [r4, #6]
	bl sub_02036540
	cmp r0, #0
	beq _022669AC
	ldrb r1, [r4, #4]
	add r0, r7, #0
	bl ov70_02262E88
	b _022669AC
_02266988:
	add r0, r5, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02266BA0
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02266CB0
	add r0, r7, #0
	bl ov70_02262E64
	add sp, #0x40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022669AC:
	mov r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022669B4: .word 0x0000014A
	thumb_func_end ov70_02265F38

	thumb_func_start ov70_022669B8
ov70_022669B8: ; 0x022669B8
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _022669CA
	cmp r0, #1
	beq _022669EC
	b _022669F8
_022669CA:
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	bl sub_020382C0
	cmp r0, #0
	bne _022669E2
	bl sub_02032A70
	bl sub_0203888C
_022669E2:
	add r0, r4, #0
	mov r1, #1
	bl ov70_02262E88
	b _022669F8
_022669EC:
	bl sub_020382C0
	cmp r0, #1
	bne _022669F8
	mov r0, #1
	pop {r4, pc}
_022669F8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov70_022669B8

	thumb_func_start ov70_022669FC
ov70_022669FC: ; 0x022669FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	bl ov70_02262E80
	add r4, r0, #0
	add r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _02266A1A
	cmp r0, #1
	beq _02266A90
	b _02266AE6
_02266A1A:
	add r0, r6, #0
	mov r1, #8
	bl ov70_02262E3C
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov70_0225DF40
	cmp r0, #0x27
	beq _02266A38
	cmp r0, #0x28
	beq _02266A3E
	cmp r0, #0x29
	beq _02266A44
	b _02266A4A
_02266A38:
	mov r7, #0x2a
	mov r4, #0
	b _02266A54
_02266A3E:
	mov r7, #0x29
	mov r4, #1
	b _02266A54
_02266A44:
	mov r7, #0x2b
	mov r4, #2
	b _02266A54
_02266A4A:
	bl sub_02022974
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02266A54:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_0225E27C
	add r0, r5, #0
	mov r1, #1
	add r2, r7, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0225DFFC
	mov r3, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	str r3, [sp]
	bl ov70_02266C68
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #1
	bl ov70_02266CFC
	add r0, r6, #0
	bl ov70_02262E8C
	b _02266AE6
_02266A90:
	ldr r0, _02266AEC ; =0x021BF67C
	mov r1, #1
	ldr r0, [r0, #0x48]
	tst r1, r0
	bne _02266AAC
	mov r1, #0x10
	tst r1, r0
	bne _02266AAC
	mov r1, #0x20
	tst r1, r0
	bne _02266AAC
	mov r1, #0x80
	tst r0, r1
	beq _02266ADC
_02266AAC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_02266CB0
	add r0, r5, #0
	bl ov70_0225DFEC
	add r0, r5, #0
	bl ov70_0225DEF0
	add r4, r0, #0
	bl ov70_0225CCAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r6, #0
	bl ov70_02262E64
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02266ADC:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov70_02266CFC
_02266AE6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02266AEC: .word 0x021BF67C
	thumb_func_end ov70_022669FC

	thumb_func_start ov70_02266AF0
ov70_02266AF0: ; 0x02266AF0
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0
	add r2, r3, #0
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r6, #0
	bl ov70_0225DF8C
	ldr r0, [sp, #0x10]
	mov r1, #0x19
	strb r0, [r5, #4]
	add r0, r4, #0
	bl ov70_02262E88
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_02266AF0

	thumb_func_start ov70_02266B18
ov70_02266B18: ; 0x02266B18
	strb r2, [r0, #4]
	strb r3, [r0, #6]
	mov r2, #0
	strb r2, [r0, #5]
	strh r2, [r0, #0xa]
	add r0, r1, #0
	ldr r3, _02266B2C ; =ov70_02262E88
	mov r1, #0x1a
	bx r3
	nop
_02266B2C: .word ov70_02262E88
	thumb_func_end ov70_02266B18

	thumb_func_start ov70_02266B30
ov70_02266B30: ; 0x02266B30
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r7, r3, #0
	bl ov70_0225E00C
	ldr r0, [sp]
	mov r4, #0
	str r6, [r0, #0x38]
	cmp r6, #0
	bls _02266B66
_02266B4C:
	add r0, r5, #0
	mov r1, #0
	add r2, r7, r4
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov70_0225E044
	add r4, r4, #1
	cmp r4, r6
	blo _02266B4C
_02266B66:
	ldr r2, [sp]
	ldr r3, _02266B9C ; =0x0226DC94
	add r2, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x38]
	strh r1, [r0, #0x28]
	ldr r1, [r0, #0x38]
	ldrh r0, [r0, #0x2a]
	cmp r0, r1
	bls _02266B8E
	ldr r0, [sp]
	strh r1, [r0, #0x2a]
_02266B8E:
	add r0, r5, #0
	bl ov70_0225E054
	ldr r1, [sp]
	str r0, [r1, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266B9C: .word 0x0226DC94
	thumb_func_end ov70_02266B30

	thumb_func_start ov70_02266BA0
ov70_02266BA0: ; 0x02266BA0
	ldr r3, _02266BA8 ; =ov70_0225E034
	add r0, r1, #0
	bx r3
	nop
_02266BA8: .word ov70_0225E034
	thumb_func_end ov70_02266BA0

	thumb_func_start ov70_02266BAC
ov70_02266BAC: ; 0x02266BAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	add r6, r3, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x10]
	bl sub_020388AC
	add r7, r0, #0
	ldrb r0, [r4, #1]
	bl ov66_02233224
	add r2, r0, #0
	cmp r7, #0
	bne _02266BE2
	mov r0, #4
	strb r0, [r4]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02266BE2:
	cmp r7, #2
	bne _02266BF6
	add r0, r6, #0
	mov r1, #0x15
	strh r2, [r5, #8]
	bl ov70_02262E88
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02266BF6:
	ldrb r0, [r5, #7]
	cmp r0, r2
	beq _02266C16
	strb r2, [r5, #7]
	cmp r2, #4
	beq _02266C16
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r4, #2]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x28]
	bl ov66_0222EA10
_02266C16:
	ldrb r0, [r4, #1]
	bl ov66_022332F8
	strh r0, [r5]
	mov r0, #0
	ldrsh r2, [r5, r0]
	cmp r2, #0
	bne _02266C50
	ldrb r0, [r4, #1]
	bl ov66_02233224
	cmp r0, #1
	bhi _02266C42
	mov r0, #3
	strb r0, [r4]
	add r0, r6, #0
	mov r1, #0x17
	bl ov70_02262E88
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02266C42:
	add r0, r6, #0
	mov r1, #0x16
	bl ov70_02262E88
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02266C50:
	ldr r1, _02266C64 ; =0x0000014A
	cmp r2, r1
	bgt _02266C60
	add r0, r6, #0
	mov r1, #0x14
	bl ov70_02262E88
	mov r0, #1
_02266C60:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02266C64: .word 0x0000014A
	thumb_func_end ov70_02266BAC

	thumb_func_start ov70_02266C68
ov70_02266C68: ; 0x02266C68
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	cmp r4, #2
	blo _02266C7A
	bl sub_02022974
_02266C7A:
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	strb r0, [r5, #5]
	strb r0, [r5, #6]
	strb r0, [r5, #7]
	strb r4, [r5, #6]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	strb r6, [r5, #3]
	bl ov70_02266CCC
	ldr r0, _02266CAC ; =0x0226DC90
	mov r1, #0x12
	ldrb r0, [r0, r4]
	mov r2, #3
	mov r3, #0xd
	str r0, [sp]
	add r0, r7, #0
	bl ov70_0225E104
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02266CAC: .word 0x0226DC90
	thumb_func_end ov70_02266C68

	thumb_func_start ov70_02266CB0
ov70_02266CB0: ; 0x02266CB0
	mov r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	strb r2, [r0, #3]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	strb r2, [r0, #6]
	strb r2, [r0, #7]
	ldr r3, _02266CC8 ; =ov70_0225E12C
	add r0, r1, #0
	bx r3
	; .align 2, 0
_02266CC8: .word ov70_0225E12C
	thumb_func_end ov70_02266CB0

	thumb_func_start ov70_02266CCC
ov70_02266CCC: ; 0x02266CCC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0x1e
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r1, r0
	beq _02266CEE
	strh r1, [r4, #4]
	ldrb r1, [r4, #7]
	mov r0, #8
	orr r0, r1
	strb r0, [r4, #7]
_02266CEE:
	pop {r4, pc}
	thumb_func_end ov70_02266CCC

	thumb_func_start ov70_02266CF0
ov70_02266CF0: ; 0x02266CF0
	push {r3, lr}
	mov r3, #0
	bl ov70_02266D08
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_02266CF0

	thumb_func_start ov70_02266CFC
ov70_02266CFC: ; 0x02266CFC
	push {r3, lr}
	mov r3, #1
	bl ov70_02266D08
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_02266CFC

	thumb_func_start ov70_02266D08
ov70_02266D08: ; 0x02266D08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	str r3, [sp, #4]
	cmp r2, #0
	beq _02266D1A
	mov r0, #0xff
	strb r0, [r5, #7]
_02266D1A:
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _02266D2A
	cmp r0, #1
	beq _02266D2E
	cmp r0, #2
	beq _02266D32
	b _02266D36
_02266D2A:
	mov r6, #0
	b _02266D3C
_02266D2E:
	mov r6, #1
	b _02266D3C
_02266D32:
	mov r6, #2
	b _02266D3C
_02266D36:
	bl sub_02022974
	mov r6, #2
_02266D3C:
	add r0, r6, #0
	bl ov66_02233184
	add r7, r0, #0
	ldrb r0, [r5]
	cmp r0, r7
	beq _02266D52
	ldrb r1, [r5, #7]
	mov r0, #4
	orr r0, r1
	strb r0, [r5, #7]
_02266D52:
	strb r7, [r5]
	add r0, r6, #0
	bl ov66_022331A4
	ldrb r1, [r5, #2]
	cmp r1, r0
	beq _02266D68
	ldrb r2, [r5, #7]
	mov r1, #4
	orr r1, r2
	strb r1, [r5, #7]
_02266D68:
	strb r0, [r5, #2]
	cmp r7, #1
	bne _02266D76
	add r0, r6, #0
	bl ov66_022331E4
	b _02266D78
_02266D76:
	mov r0, #4
_02266D78:
	ldrb r1, [r5, #1]
	cmp r1, r0
	beq _02266D86
	ldrb r2, [r5, #7]
	mov r1, #2
	orr r1, r2
	strb r1, [r5, #7]
_02266D86:
	strb r0, [r5, #1]
	ldrb r1, [r5, #7]
	mov r0, #1
	tst r0, r1
	beq _02266DC0
	mov r0, #0x10
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x68
	bl ov70_0225E14C
	ldrb r1, [r5, #3]
	add r0, r4, #0
	mov r2, #0
	bl ov70_0225E27C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x36
	bl ov70_0225E20C
	mov r2, #0
	add r1, r0, #0
	add r0, r4, #0
	add r3, r2, #0
	bl ov70_0225E13C
_02266DC0:
	ldrb r1, [r5, #7]
	mov r0, #4
	tst r0, r1
	beq _02266DFE
	mov r2, #0x10
	add r0, r4, #0
	mov r1, #0x24
	mov r3, #0x68
	str r2, [sp]
	bl ov70_0225E14C
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02266DFE
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _02266DFE
	ldrb r0, [r5]
	cmp r0, #1
	bne _02266DFE
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x45
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x24
	mov r3, #0x10
	bl ov70_0225E13C
_02266DFE:
	ldrb r1, [r5, #7]
	mov r0, #2
	tst r0, r1
	beq _02266E4E
	mov r2, #0x20
	add r0, r4, #0
	mov r1, #0
	mov r3, #0x68
	str r2, [sp]
	bl ov70_0225E14C
	mov r0, #2
	str r0, [sp]
	mov r2, #1
	ldrb r1, [r5, #1]
	add r0, r4, #0
	add r3, r2, #0
	bl ov70_0225E21C
	mov r0, #2
	str r0, [sp]
	ldrb r2, [r5, #1]
	mov r1, #4
	add r0, r4, #0
	sub r1, r1, r2
	mov r2, #1
	mov r3, #0
	bl ov70_0225E21C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x44
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	mov r3, #0x20
	bl ov70_0225E13C
_02266E4E:
	ldrb r0, [r5, #6]
	cmp r0, #1
	bne _02266E92
	ldrb r1, [r5, #7]
	mov r0, #8
	tst r0, r1
	beq _02266E92
	mov r0, #0x10
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x40
	mov r3, #0x68
	bl ov70_0225E14C
	mov r2, #2
	str r2, [sp]
	mov r1, #4
	ldrsh r1, [r5, r1]
	add r0, r4, #0
	mov r3, #0
	bl ov70_0225E21C
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf
	bl ov70_0225E20C
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	mov r3, #0x40
	bl ov70_0225E13C
_02266E92:
	mov r0, #0
	strb r0, [r5, #7]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02266D08

	.rodata


	.global Unk_ov70_0226DC90
Unk_ov70_0226DC90: ; 0x0226DC90
	.incbin "incbin/overlay70_rodata.bin", 0x7C4, 0x7C8 - 0x7C4

	.global Unk_ov70_0226DC94
Unk_ov70_0226DC94: ; 0x0226DC94
	.incbin "incbin/overlay70_rodata.bin", 0x7C8, 0x20

