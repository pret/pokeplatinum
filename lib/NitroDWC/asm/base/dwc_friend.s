	.include "macros/function.inc"
	.include "include/dwc_friend.inc"

	

	.text


	arm_func_start DWC_GetFriendStatus
DWC_GetFriendStatus: ; 0x021DB170
	ldr ip, _021DB184 ; =DWC_GetFriendStatusSC
	mov r3, r1
	mov r1, #0
	mov r2, r1
	bx ip
	; .align 2, 0
_021DB184: .word DWC_GetFriendStatusSC
	arm_func_end DWC_GetFriendStatus

	arm_func_start DWC_GetFriendStatusSC
DWC_GetFriendStatusSC: ; 0x021DB188
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x214
	mov r6, r1
	add r1, sp, #4
	mov r4, r2
	mov r5, r3
	bl ov4_021DC064
	cmp r0, #0
	beq _021DB278
	ldr r0, [sp, #8]
	cmp r0, #6
	bne _021DB23C
	cmp r6, #0
	beq _021DB1F8
	ldr r0, _021DB29C ; =0x02217488
	add r1, sp, #0
	add r2, sp, #0xc
	mov r3, #0x2f
	bl DWC_GetCommonValueString
	cmp r0, #0
	movle r0, #0
	strleb r0, [r6]
	ble _021DB1F8
	add r0, sp, #0
	mov r1, #0
	mov r2, #0xa
	bl strtoul
	strb r0, [r6]
_021DB1F8:
	cmp r4, #0
	beq _021DB254
	ldr r0, _021DB2A0 ; =0x0221748C
	add r1, sp, #0
	add r2, sp, #0xc
	mov r3, #0x2f
	bl DWC_GetCommonValueString
	cmp r0, #0
	movle r0, #0
	strleb r0, [r4]
	ble _021DB254
	add r0, sp, #0
	mov r1, #0
	mov r2, #0xa
	bl strtoul
	strb r0, [r4]
	b _021DB254
_021DB23C:
	cmp r6, #0
	movne r0, #0
	strneb r0, [r6]
	cmp r4, #0
	movne r0, #0
	strneb r0, [r4]
_021DB254:
	cmp r5, #0
	beq _021DB268
	add r1, sp, #0x10c
	mov r0, r5
	bl strcpy
_021DB268:
	ldr r0, [sp, #8]
	add sp, sp, #0x214
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, pc}
_021DB278:
	cmp r6, #0
	movne r0, #0
	strneb r0, [r6]
	cmp r4, #0
	movne r0, #0
	strneb r0, [r4]
	mov r0, #0
	add sp, sp, #0x214
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021DB29C: .word Unk_ov4_02217488
_021DB2A0: .word Unk_ov4_0221748C
	arm_func_end DWC_GetFriendStatusSC

	arm_func_start DWC_GetFriendStatusData
DWC_GetFriendStatusData: ; 0x021DB2A4
	stmfd sp!, {r3, lr}
	mov r3, r1
	mov r1, #0
	str r2, [sp]
	mov r2, r1
	bl DWC_GetFriendStatusDataSC
	ldmia sp!, {r3, pc}
	arm_func_end DWC_GetFriendStatusData

	arm_func_start DWC_GetFriendStatusDataSC
DWC_GetFriendStatusDataSC: ; 0x021DB2C0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x100
	mov r6, r3
	add r3, sp, #0
	ldr r5, [sp, #0x110]
	bl DWC_GetFriendStatusSC
	movs r4, r0
	mvneq r1, #0
	addeq sp, sp, #0x100
	streq r1, [r5]
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, sp, #0
	bl strlen
	mov r2, #0
	mov r1, r0
	add r0, sp, #0
	mov r3, r2
	bl DWC_Auth_Base64Decode
	str r0, [r5, #0]
	cmp r6, #0
	ldrne r5, [r5]
	mvnne r0, #0
	cmpne r5, r0
	addeq sp, sp, #0x100
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, sp, #0
	bl strlen
	mov r1, r0
	add r0, sp, #0
	mov r2, r6
	mov r3, r5
	bl DWC_Auth_Base64Decode
	mov r0, r4
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end DWC_GetFriendStatusDataSC

	arm_func_start DWC_SetOwnStatusData
DWC_SetOwnStatusData: ; 0x021DB350
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x100
	ldr r2, _021DB3D8 ; =0x0221A698
	mov r5, r0
	ldr r0, [r2, #8]
	mov r4, r1
	cmp r0, #0
	beq _021DB37C
	bl ov4_021DB144
	cmp r0, #0
	bne _021DB388
_021DB37C:
	add sp, sp, #0x100
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021DB388:
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	mov r3, #0xff
	bl DWC_Auth_Base64Encode
	mvn r3, #0
	cmp r0, r3
	addeq sp, sp, #0x100
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r2, sp, #0
	mov r1, #0
	strb r1, [r2, r0]
	mov r0, r3
	bl ov4_021DB978
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x100
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021DB3D8: .word Unk_ov4_0221A698
	arm_func_end DWC_SetOwnStatusData

	arm_func_start DWC_SetBuddyFriendCallback
DWC_SetBuddyFriendCallback: ; 0x021DB3DC
	ldr r2, _021DB404 ; =0x0221A698
	ldr r3, [r2, #8]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	str r0, [r3, #0x44]
	ldr r2, [r2, #8]
	mov r0, #1
	str r1, [r2, #0x48]
	bx lr
	; .align 2, 0
_021DB404: .word Unk_ov4_0221A698
	arm_func_end DWC_SetBuddyFriendCallback

	arm_func_start DWC_Base64Encode
DWC_Base64Encode: ; 0x021DB408
	ldr ip, _021DB410 ; =DWC_Auth_Base64Encode
	bx ip
	; .align 2, 0
_021DB410: .word DWC_Auth_Base64Encode
	arm_func_end DWC_Base64Encode

	arm_func_start DWC_Base64Decode
DWC_Base64Decode: ; 0x021DB414
	ldr ip, _021DB41C ; =DWC_Auth_Base64Decode
	bx ip
	; .align 2, 0
_021DB41C: .word DWC_Auth_Base64Decode
	arm_func_end DWC_Base64Decode

	arm_func_start ov4_021DB420
ov4_021DB420: ; 0x021DB420
	stmfd sp!, {r4, lr}
	ldr lr, _021DB4FC ; =0x0221A698
	mov ip, #0
	str r0, [lr, #8]
	str ip, [r0]
	ldr r4, [lr, #8]
	ldr r0, [sp, #8]
	str r1, [r4, #4]
	ldr r1, [lr, #8]
	str ip, [r1, #8]
	ldr r1, [lr, #8]
	str ip, [r1, #0xc]
	str ip, [r1, #0x10]
	str r0, [r1, #0x14]
	ldr r0, [lr, #8]
	str r3, [r0, #0x18]
	ldr r0, [lr, #8]
	strb ip, [r0, #0x1c]
	ldr r0, [lr, #8]
	strb ip, [r0, #0x1d]
	ldr r0, [lr, #8]
	strb ip, [r0, #0x1e]
	ldr r0, [lr, #8]
	strb ip, [r0, #0x1f]
	ldr r0, [lr, #8]
	str ip, [r0, #0x20]
	ldr r0, [lr, #8]
	str ip, [r0, #0x24]
	ldr r0, [lr, #8]
	str r2, [r0, #0x28]
	ldr r0, [lr, #8]
	str ip, [r0, #0x2c]
	ldr r0, [lr, #8]
	str ip, [r0, #0x30]
	ldr r0, [lr, #8]
	str ip, [r0, #0x34]
	ldr r0, [lr, #8]
	str ip, [r0, #0x38]
	ldr r0, [lr, #8]
	str ip, [r0, #0x3c]
	ldr r0, [lr, #8]
	str ip, [r0, #0x40]
	ldr r0, [lr, #8]
	str ip, [r0, #0x44]
	ldr r0, [lr, #8]
	str ip, [r0, #0x48]
	ldr r0, [lr, #8]
	str ip, [r0, #0x4c]
	ldr r0, [lr, #8]
	str ip, [r0, #0x50]
	ldr r0, [lr, #8]
	str ip, [r0, #0x54]
	ldr r0, [lr, #8]
	str ip, [r0, #0x58]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021DB4FC: .word Unk_ov4_0221A698
	arm_func_end ov4_021DB420

	arm_func_start ov4_021DB500
ov4_021DB500: ; 0x021DB500
	stmfd sp!, {r3, lr}
	ldr r0, _021DB660 ; =0x0221A698
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov4_021D7708
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _021DB660 ; =0x0221A698
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _021DB550
	ldr r0, [r1, #4]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov4_021DBAC4
	ldmia sp!, {r3, pc}
_021DB550:
	bl ov4_021DC720
	cmp r0, #0
	bne _021DB568
	bl ov4_021F63A8
	cmp r0, #0
	beq _021DB5A0
_021DB568:
	ldr r0, _021DB660 ; =0x0221A698
	mov r1, #1
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #0xc]
	bl ov4_021F63C8
	ldr r0, _021DB660 ; =0x0221A698
	mov r2, #0
	str r2, [r0, #0]
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bne _021DB5A0
	str r2, [r0, #0xc]
	bl ov4_021F6338
_021DB5A0:
	ldr r0, _021DB660 ; =0x0221A698
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #0
	beq _021DB63C
	bl ov4_021DBAC4
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _021DB660 ; =0x0221A698
	ldr r3, [r0, #8]
	ldr r0, [r3, #0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r3, #0x18]
	cmp r0, #0
	ldrneb r2, [r3, #0x1e]
	cmpne r2, #3
	beq _021DB63C
	ldr r1, [r3, #8]
	cmp r1, #7
	bls _021DB63C
	cmp r2, #1
	bhi _021DB60C
	ldr r1, [r3, #0x14]
	bl ov4_021DBB80
_021DB60C:
	ldr r0, _021DB660 ; =0x0221A698
	ldr r3, [r0, #8]
	ldrb r2, [r3, #0x1c]
	ldr r1, [r3, #0x14]
	cmp r2, r1
	blt _021DB63C
	mov r1, #3
	strb r1, [r3, #0x1e]
	ldr r1, [r0, #8]
	ldrb r0, [r1, #0x1f]
	add r0, r0, #1
	strb r0, [r1, #0x1f]
_021DB63C:
	ldr r0, _021DB660 ; =0x0221A698
	ldr r1, [r0, #8]
	ldrb r0, [r1, #0x1f]
	cmp r0, #2
	ldmloia sp!, {r3, pc}
	mov r0, #0
	strb r0, [r1, #0x1f]
	bl ov4_021DBDEC
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021DB660: .word Unk_ov4_0221A698
	arm_func_end ov4_021DB500

	arm_func_start ov4_021DB664
ov4_021DB664: ; 0x021DB664
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _021DB70C ; =0x0221A698
	ldr r5, [sp, #0x10]
	ldr r1, [r0, #8]
	ldr r4, [sp, #0x14]
	str r2, [r1, #0x2c]
	ldr r1, [r0, #8]
	ldr lr, [sp, #0x18]
	str r3, [r1, #0x30]
	ldr r1, [r0, #8]
	ldr ip, [sp, #0x1c]
	str r5, [r1, #0x34]
	ldr r1, [r0, #8]
	mov r3, #0
	str r4, [r1, #0x38]
	ldr r1, [r0, #8]
	mov r2, #1
	str lr, [r1, #0x3c]
	ldr r1, [r0, #8]
	str ip, [r1, #0x40]
	ldr r1, [r0, #8]
	strb r3, [r1, #0x1d]
	ldr r1, [r0, #8]
	strb r3, [r1, #0x1e]
	ldr r1, [r0, #8]
	strb r3, [r1, #0x1f]
	ldr r1, [r0, #8]
	strb r3, [r1, #0x1c]
	ldr r1, [r0, #8]
	str r2, [r1, #0]
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x18]
	cmp r0, #0
	ldreqb r0, [r1, #0x1f]
	addeq r0, r0, #1
	streqb r0, [r1, #0x1f]
	ldr r0, _021DB70C ; =0x0221A698
	ldr r1, [r0, #8]
	ldrb r0, [r1, #0x1f]
	add r0, r0, #1
	strb r0, [r1, #0x1f]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021DB70C: .word Unk_ov4_0221A698
	arm_func_end ov4_021DB664

	arm_func_start ov4_021DB710
ov4_021DB710: ; 0x021DB710
	stmfd sp!, {r4, lr}
	ldr r2, _021DB764 ; =0x0221A698
	mov r4, r0
	ldr r2, [r2, #8]
	cmp r2, #0
	cmpne r4, #0
	ldmeqia sp!, {r4, pc}
	bl ov4_021D7724
	ldr r0, _021DB764 ; =0x0221A698
	ldr r3, [r0, #8]
	ldr r0, [r3, #0]
	cmp r0, #0
	cmpne r0, #2
	beq _021DB75C
	ldrb r1, [r3, #0x1d]
	ldr r2, [r3, #0x30]
	ldr r3, [r3, #0x2c]
	mov r0, r4
	blx r3
_021DB75C:
	bl ov4_021DBB50
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021DB764: .word Unk_ov4_0221A698
	arm_func_end ov4_021DB710

	arm_func_start ov4_021DB768
ov4_021DB768: ; 0x021DB768
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _021DB7AC ; =0x0221A698
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x18]
	cmp r2, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, pc}
	ldr r3, _021DB7B0 ; =ov4_021DC3D0
	mov r2, #0
	str r3, [sp]
	str r2, [sp, #4]
	ldr r1, [r1, #0]
	mov r3, r2
	bl ov4_021EB4F8
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021DB7AC: .word Unk_ov4_0221A698
_021DB7B0: .word ov4_021DC3D0
	arm_func_end ov4_021DB768

	arm_func_start ov4_021DB7B4
ov4_021DB7B4: ; 0x021DB7B4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r5, r0
	ldr r0, [r4, #8]
	ldr r1, _021DB808 ; =0x02217490
	bl strcmp
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _021DB80C ; =ov4_021DC580
	mov r2, #0
	stmia sp, {r0, r2}
	ldr r1, [r4, #0]
	mov r0, r5
	mov r3, r2
	bl ov4_021EB4F8
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021DB808: .word Unk_ov4_02217490
_021DB80C: .word ov4_021DC580
	arm_func_end ov4_021DB7B4

	arm_func_start ov4_021DB810
ov4_021DB810: ; 0x021DB810
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x210
	ldr r2, _021DB890 ; =0x0221A698
	mov r6, r0
	ldr r0, [r2, #8]
	mov r5, r1
	ldr r0, [r0, #0x34]
	cmp r0, #0
	addeq sp, sp, #0x210
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0]
	bl ov4_021DB8DC
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	addeq sp, sp, #0x210
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r5, #8]
	add r2, sp, #0
	mov r0, r6
	bl ov4_021EB8D8
	ldr r0, _021DB890 ; =0x0221A698
	ldr r1, [sp, #4]
	ldr r0, [r0, #8]
	add r2, sp, #0x108
	ldr r3, [r0, #0x38]
	ldr ip, [r0, #0x34]
	mov r0, r4
	and r1, r1, #0xff
	blx ip
	add sp, sp, #0x210
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021DB890: .word Unk_ov4_0221A698
	arm_func_end ov4_021DB810

	arm_func_start ov4_021DB894
ov4_021DB894: ; 0x021DB894
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _021DB8D8 ; =0x0221A698
	mov r5, r0
	ldr r0, [r1, #8]
	ldr r4, [r0, #0x18]
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl ov4_021DA87C
	mov r1, #0xc
	mla r1, r5, r1, r4
	bl DWC_GetGsProfileId
	cmp r0, #0
	mvnne r1, #0
	cmpne r0, r1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021DB8D8: .word Unk_ov4_0221A698
	arm_func_end ov4_021DB894

	arm_func_start ov4_021DB8DC
ov4_021DB8DC: ; 0x021DB8DC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _021DB93C ; =0x0221A698
	mov r6, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	cmpne r6, #0
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r0, #0x14]
	mov r5, #0
	cmp r0, #0
	ble _021DB934
_021DB90C:
	mov r0, r5
	bl ov4_021DB894
	cmp r6, r0
	moveq r0, r5
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #8]
	add r5, r5, #1
	ldr r0, [r0, #0x14]
	cmp r5, r0
	blt _021DB90C
_021DB934:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021DB93C: .word Unk_ov4_0221A698
	arm_func_end ov4_021DB8DC

	arm_func_start ov4_021DB940
ov4_021DB940: ; 0x021DB940
	stmfd sp!, {r3, lr}
	ldr r0, _021DB974 ; =0x0221A698
	ldr r1, [r0, #8]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	str r0, [r1, #8]
	bl OS_GetTick
	ldr r2, _021DB974 ; =0x0221A698
	ldr r2, [r2, #8]
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021DB974: .word Unk_ov4_0221A698
	arm_func_end ov4_021DB940

	arm_func_start ov4_021DB978
ov4_021DB978: ; 0x021DB978
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _021DBA24 ; =0x0221A698
	mov r6, r0
	ldr r0, [r3, #8]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	beq _021DB9A4
	bl ov4_021DB144
	cmp r0, #0
	bne _021DB9AC
_021DB9A4:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021DB9AC:
	mvn r0, #0
	cmp r6, r0
	bne _021DB9CC
	ldr r0, _021DBA24 ; =0x0221A698
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	ldr r6, [r0, #0x214]
_021DB9CC:
	cmp r5, #0
	bne _021DB9E8
	ldr r0, _021DBA24 ; =0x0221A698
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	add r5, r0, #0x218
_021DB9E8:
	cmp r4, #0
	bne _021DBA04
	ldr r0, _021DBA24 ; =0x0221A698
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	add r4, r0, #0x318
_021DBA04:
	ldr r0, _021DBA24 ; =0x0221A698
	mov r1, r6
	ldr r0, [r0, #8]
	mov r2, r5
	ldr r0, [r0, #4]
	mov r3, r4
	bl ov4_021EBB2C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021DBA24: .word Unk_ov4_0221A698
	arm_func_end ov4_021DB978

	arm_func_start ov4_021DBA28
ov4_021DBA28: ; 0x021DBA28
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x210
	ldr r1, _021DBAAC ; =0x0221A698
	mov r4, r0
	ldr r3, [r1, #8]
	ldr r2, [r3, #0x44]
	cmp r2, #0
	ldrne r1, [r3]
	cmpne r1, #1
	beq _021DBA58
	ldr r1, [r3, #0x48]
	blx r2
_021DBA58:
	ldr r0, _021DBAAC ; =0x0221A698
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x34]
	cmp r0, #0
	addeq sp, sp, #0x210
	ldmeqia sp!, {r4, pc}
	ldr r1, [r1, #0x18]
	mov r0, #0xc
	mla r0, r4, r0, r1
	add r1, sp, #0x108
	bl DWC_GetFriendStatus
	ldr r2, _021DBAAC ; =0x0221A698
	mov r1, r0
	ldr r0, [r2, #8]
	add r2, sp, #0x108
	ldr r3, [r0, #0x38]
	ldr ip, [r0, #0x34]
	mov r0, r4
	blx ip
	add sp, sp, #0x210
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021DBAAC: .word Unk_ov4_0221A698
	arm_func_end ov4_021DBA28

	arm_func_start ov4_021DBAB0
ov4_021DBAB0: ; 0x021DBAB0
	ldr r0, _021DBAC0 ; =0x0221A698
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
_021DBAC0: .word Unk_ov4_0221A698
	arm_func_end ov4_021DBAB0

	arm_func_start ov4_021DBAC4
ov4_021DBAC4: ; 0x021DBAC4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _021DBB48 ; =0x0221A698
	mov r4, #0
	ldr r5, [r0, #8]
	bl OS_GetTick
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #0x10]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021DBB4C ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, r4
	bl _ull_div
	cmp r1, #0
	cmpeq r0, #0x12c
	blo _021DBB40
	ldr r1, [r5, #8]
	ldr r0, _021DBB48 ; =0x0221A698
	add r1, r1, #1
	str r1, [r5, #8]
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	bl ov4_021EB274
	mov r4, r0
	bl OS_GetTick
	ldr r2, _021DBB48 ; =0x0221A698
	ldr r2, [r2, #8]
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_021DBB40:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021DBB48: .word Unk_ov4_0221A698
_021DBB4C: .word 0x000082EA
	arm_func_end ov4_021DBAC4

	arm_func_start ov4_021DBB50
ov4_021DBB50: ; 0x021DBB50
	ldr r0, _021DBB7C ; =0x0221A698
	ldr r1, [r0, #8]
	cmp r1, #0
	bxeq lr
	mov r2, #0
	str r2, [r1, #0]
	ldr r1, [r0, #8]
	strb r2, [r1, #0x1e]
	ldr r0, [r0, #8]
	strb r2, [r0, #0x1f]
	bx lr
	; .align 2, 0
_021DBB7C: .word Unk_ov4_0221A698
	arm_func_end ov4_021DBB50

	arm_func_start ov4_021DBB80
ov4_021DBB80: ; 0x021DBB80
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x248
	ldr r2, _021DBDE4 ; =0x0221A698
	mov r7, r0
	ldr r2, [r2, #8]
	mov r6, r1
	ldrb r0, [r2, #0x1e]
	cmp r0, #0
	bne _021DBCB0
	ldr r0, [r2, #4]
	add r1, sp, #0x1c
	bl ov4_021EB8A8
	bl ov4_021DC120
	ldr r0, [sp, #0x1c]
	mov r1, #0
	str r1, [sp, #0x18]
	cmp r0, #0
	ble _021DBCA0
_021DBBC8:
	ldr r0, _021DBDE4 ; =0x0221A698
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #8]
	add r2, sp, #0x38
	ldr r0, [r0, #4]
	bl ov4_021EB8D8
	bl ov4_021DC120
	cmp r6, #0
	mov r4, #0
	ble _021DBC50
_021DBBF0:
	mov r0, r4
	bl ov4_021DB894
	ldr r1, [sp, #0x38]
	cmp r1, r0
	bne _021DBC44
	mov r0, #0xc
	mul r5, r4, r0
	add r0, r7, r5
	bl DWC_IsBuddyFriendData
	cmp r0, #0
	bne _021DBC50
	ldr r1, [sp, #0x38]
	add r0, r7, r5
	bl DWC_SetGsProfileId
	add r0, r7, r5
	bl DWCi_SetBuddyFriendData
	ldr r0, _021DBDE4 ; =0x0221A698
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x1d]
	b _021DBC50
_021DBC44:
	add r4, r4, #1
	cmp r4, r6
	blt _021DBBF0
_021DBC50:
	cmp r4, r6
	bne _021DBC88
	ldr r0, _021DBDE4 ; =0x0221A698
	ldr r1, [sp, #0x38]
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	bl ov4_021EBAD4
	bl ov4_021DC120
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	sub r1, r1, #1
	sub r0, r0, #1
	str r1, [sp, #0x1c]
	str r0, [sp, #0x18]
_021DBC88:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r1, r1, #1
	str r1, [sp, #0x18]
	cmp r1, r0
	blt _021DBBC8
_021DBCA0:
	ldr r0, _021DBDE4 ; =0x0221A698
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x1e]
_021DBCB0:
	ldr sl, _021DBDE4 ; =0x0221A698
	ldr r0, [sl, #8]
	ldrb r0, [r0, #0x1c]
	cmp r0, r6
	addge sp, sp, #0x248
	ldmgeia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r4, sp, #0x18
	mov r8, #0xc
	mvn sb, #0
_021DBCD4:
	bl ov4_021DB894
	movs r5, r0
	beq _021DBD2C
	ldr r1, [sl, #8]
	mov r0, r7
	ldrb r1, [r1, #0x1c]
	mov r2, r5
	bl ov4_021DBE7C
	cmp r0, #0
	bne _021DBDBC
	ldr r0, [sl, #8]
	mov r1, r5
	ldr r0, [r0, #4]
	mov r2, r4
	bl ov4_021EBA18
	bl ov4_021DC120
	ldr r0, [sp, #0x18]
	cmp r0, sb
	bne _021DBDBC
	mov r0, r5
	bl ov4_021DC030
	b _021DBDBC
_021DBD2C:
	bl ov4_021DA87C
	ldr r1, [sl, #8]
	ldrb r2, [r1, #0x1c]
	mla r1, r2, r8, r7
	bl DWC_GetGsProfileId
	cmp r0, sb
	bne _021DBDBC
	bl ov4_021DA87C
	ldr r2, _021DBDE4 ; =0x0221A698
	mov r1, #0xc
	ldr r3, [r2, #8]
	add r2, sp, #0x20
	ldrb r3, [r3, #0x1c]
	mla r1, r3, r1, r7
	bl DWC_LoginIdToUserName
	ldr r0, _021DBDE4 ; =0x0221A698
	mov r1, #0
	ldr r4, [r0, #8]
	add r2, sp, #0x20
	stmia sp, {r1, r2}
	str r1, [sp, #8]
	ldr r0, _021DBDE8 ; =ov4_021DC194
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldrb r0, [r4, #0x1c]
	mov r2, r1
	mov r3, r1
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl ov4_021EB430
	ldr r0, _021DBDE4 ; =0x0221A698
	mov r1, #2
	ldr r0, [r0, #8]
	add sp, sp, #0x248
	strb r1, [r0, #0x1e]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021DBDBC:
	ldr r1, [sl, #8]
	ldrb r0, [r1, #0x1c]
	add r0, r0, #1
	strb r0, [r1, #0x1c]
	ldr r0, [sl, #8]
	ldrb r0, [r0, #0x1c]
	cmp r0, r6
	blt _021DBCD4
	add sp, sp, #0x248
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021DBDE4: .word Unk_ov4_0221A698
_021DBDE8: .word ov4_021DC194
	arm_func_end ov4_021DBB80

	arm_func_start ov4_021DBDEC
ov4_021DBDEC: ; 0x021DBDEC
	stmfd sp!, {r3, lr}
	ldr r1, _021DBE20 ; =0x0221A698
	mov r0, #0
	ldr r3, [r1, #8]
	ldrb r1, [r3, #0x1d]
	ldr r2, [r3, #0x30]
	ldr r3, [r3, #0x2c]
	blx r3
	ldr r0, _021DBE20 ; =0x0221A698
	mov r1, #2
	ldr r0, [r0, #8]
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021DBE20: .word Unk_ov4_0221A698
	arm_func_end ov4_021DBDEC

	arm_func_start ov4_021DBE24
ov4_021DBE24: ; 0x021DBE24
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _021DBE78 ; =0x0221A698
	mov r5, r1
	ldr r1, [r3, #8]
	mov r4, r2
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r2, #0xc
	mla r0, r5, r2, r0
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _021DBE78 ; =0x0221A698
	ldr r0, [r0, #8]
	ldr r3, [r0, #0x3c]
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r0, #0x40]
	mov r0, r5
	mov r1, r4
	blx r3
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021DBE78: .word Unk_ov4_0221A698
	arm_func_end ov4_021DBE24

	arm_func_start ov4_021DBE7C
ov4_021DBE7C: ; 0x021DBE7C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r5, r2
	cmp r6, #0
	mov r4, #0
	ble _021DBF1C
_021DBE98:
	mov r0, r4
	bl ov4_021DB894
	cmp r0, #0
	beq _021DBF10
	cmp r0, r5
	bne _021DBF10
	mov r0, #0xc
	mla r0, r6, r0, r7
	bl DWC_IsBuddyFriendData
	cmp r0, #0
	beq _021DBEEC
	mov r0, #0xc
	mla r0, r4, r0, r7
	bl DWC_IsBuddyFriendData
	cmp r0, #0
	bne _021DBEEC
	mov r0, r7
	mov r1, r4
	mov r2, r6
	bl ov4_021DBE24
	b _021DBEFC
_021DBEEC:
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl ov4_021DBE24
_021DBEFC:
	ldr r1, _021DBF24 ; =0x0221A698
	mov r0, #1
	ldr r1, [r1, #8]
	strb r0, [r1, #0x1d]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DBF10:
	add r4, r4, #1
	cmp r4, r6
	blt _021DBE98
_021DBF1C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DBF24: .word Unk_ov4_0221A698
	arm_func_end ov4_021DBE7C

	arm_func_start ov4_021DBF28
ov4_021DBF28: ; 0x021DBF28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r1
	mov fp, r0
	mvn r0, #0
	str r2, [sp]
	cmp sl, #0
	str r0, [sp, #4]
	mov r5, #0
	ble _021DC020
	mov r7, fp
	mov r8, fp
_021DBF58:
	mov r0, r5
	bl ov4_021DB894
	movs r4, r0
	beq _021DC00C
	ldr r0, [sp]
	add r6, r5, #1
	cmp r4, r0
	streq r5, [sp, #4]
	cmp r6, sl
	bge _021DC00C
	mov r0, #0xc
	mla sb, r6, r0, fp
_021DBF88:
	mov r0, r6
	bl ov4_021DB894
	cmp r4, r0
	bne _021DBFFC
	mov r0, r7
	bl DWC_GetFriendDataType
	cmp r0, #2
	bne _021DBFC4
	mov r0, sb
	bl DWC_GetFriendDataType
	cmp r0, #3
	bne _021DBFC4
	mov r0, r8
	mov r1, r4
	bl DWC_SetGsProfileId
_021DBFC4:
	mov r0, sb
	bl DWC_IsBuddyFriendData
	cmp r0, #0
	beq _021DBFDC
	mov r0, r8
	bl DWCi_SetBuddyFriendData
_021DBFDC:
	mov r0, fp
	mov r1, r6
	mov r2, r5
	bl ov4_021DBE24
	ldr r0, _021DC02C ; =0x0221A698
	ldr r1, [r0, #8]
	mov r0, #1
	strb r0, [r1, #0x1d]
_021DBFFC:
	add r6, r6, #1
	cmp r6, sl
	add sb, sb, #0xc
	blt _021DBF88
_021DC00C:
	add r5, r5, #1
	cmp r5, sl
	add r7, r7, #0xc
	add r8, r8, #0xc
	blt _021DBF58
_021DC020:
	ldr r0, [sp, #4]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021DC02C: .word Unk_ov4_0221A698
	arm_func_end ov4_021DBF28

	arm_func_start ov4_021DC030
ov4_021DC030: ; 0x021DC030
	stmfd sp!, {r4, lr}
	ldr r2, _021DC05C ; =0x0221A698
	mov r1, r0
	ldr r0, [r2, #8]
	ldr r2, _021DC060 ; =0x022174C8
	ldr r0, [r0, #4]
	bl ov4_021EB624
	mov r4, r0
	bl ov4_021DC120
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021DC05C: .word Unk_ov4_0221A698
_021DC060: .word Unk_ov4_022174C8
	arm_func_end ov4_021DC030

	arm_func_start ov4_021DC064
ov4_021DC064: ; 0x021DC064
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _021DC11C ; =0x0221A698
	mov r3, #0
	ldr r2, [r2, #8]
	mov r5, r0
	mov r4, r1
	str r3, [sp]
	cmp r2, #0
	beq _021DC094
	bl ov4_021DB144
	cmp r0, #0
	bne _021DC09C
_021DC094:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021DC09C:
	bl ov4_021DA87C
	mov r1, r5
	bl DWC_GetGsProfileId
	mov r5, r0
	cmp r5, #0
	ble _021DC0D8
	ldr r0, _021DC11C ; =0x0221A698
	add r2, sp, #0
	ldr r0, [r0, #8]
	mov r1, r5
	ldr r0, [r0, #4]
	bl ov4_021EBA18
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
_021DC0D8:
	cmp r5, #0
	ble _021DC0F0
	ldr r1, [sp]
	mvn r0, #0
	cmp r1, r0
	bne _021DC0F8
_021DC0F0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021DC0F8:
	ldr r0, _021DC11C ; =0x0221A698
	mov r2, r4
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	bl ov4_021EB8D8
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021DC11C: .word Unk_ov4_0221A698
	arm_func_end ov4_021DC064

	arm_func_start ov4_021DC120
ov4_021DC120: ; 0x021DC120
	stmfd sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #4
	addls pc, pc, r4, lsl #2
	b _021DC17C
_021DC13C: ; jump table
	b _021DC17C ; case 0
	b _021DC150 ; case 1
	b _021DC15C ; case 2
	b _021DC168 ; case 3
	b _021DC174 ; case 4
_021DC150:
	mov r0, #9
	sub r2, r0, #0xa
	b _021DC17C
_021DC15C:
	mov r0, #9
	sub r2, r0, #0xb
	b _021DC17C
_021DC168:
	mov r0, #6
	sub r2, r0, #0x10
	b _021DC17C
_021DC174:
	mov r0, #6
	sub r2, r0, #0x1a
_021DC17C:
	ldr r1, _021DC190 ; =0xFFFEEAA8
	add r1, r2, r1
	bl ov4_021DB710
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021DC190: .word 0xFFFEEAA8
	arm_func_end ov4_021DC120

	arm_func_start ov4_021DC194
ov4_021DC194: ; 0x021DC194
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	ldr r1, [sb]
	mov sl, r0
	mov r8, r2
	cmp r1, #0
	bne _021DC364
	ldr r0, [sb, #4]
	cmp r0, #0
	beq _021DC364
	mov r0, #0xc
	ldr r1, _021DC3CC ; =0x0221A698
	mul r6, r8, r0
	ldr r0, [r1, #8]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl DWC_GetFriendDataType
	cmp r0, #0
	beq _021DC364
	ldr r7, _021DC3CC ; =0x0221A698
	ldr r0, [r7, #8]
	ldr r0, [r0, #0]
	cmp r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sb, #4]
	mov r4, #0
	cmp r0, #0
	ble _021DC268
	mov r5, r4
_021DC208:
	ldr r0, [r7, #8]
	ldr r1, [sb, #0xc]
	ldr r0, [r0, #0x18]
	ldr r2, [r1, r5]
	mov r1, r8
	bl ov4_021DBE7C
	cmp r0, #0
	beq _021DC254
	ldr r0, _021DC3CC ; =0x0221A698
	mov r2, #1
	ldr r4, [r0, #8]
	add r1, r2, #0x600
	ldrb r3, [r4, #0x1c]
	add r3, r3, #1
	strb r3, [r4, #0x1c]
	ldr r0, [r0, #8]
	strb r2, [r0, #0x1e]
	str r1, [sb, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DC254:
	ldr r0, [sb, #4]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #0xac
	blt _021DC208
_021DC268:
	cmp r0, #0
	mov r7, #0
	ble _021DC334
	mov r5, r7
	add fp, sp, #0
	mvn r4, #0
_021DC280:
	ldr r1, [sb, #0xc]
	mov r0, sl
	ldr r1, [r1, r5]
	mov r2, fp
	bl ov4_021EBA18
	bl ov4_021DC120
	ldr r0, [sp]
	cmp r0, r4
	bne _021DC2B4
	ldr r0, [sb, #0xc]
	ldr r0, [r0, r5]
	bl ov4_021DC030
	b _021DC320
_021DC2B4:
	ldr r0, _021DC3CC ; =0x0221A698
	ldr r1, [sb, #0xc]
	ldr r0, [r0, #8]
	ldr r1, [r1, #0]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl DWC_SetGsProfileId
	ldr r0, _021DC3CC ; =0x0221A698
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl DWCi_SetBuddyFriendData
	mov r0, r8
	bl ov4_021DBA28
	ldr r0, _021DC3CC ; =0x0221A698
	mov r3, #1
	ldr r4, [r0, #8]
	add r1, r3, #0x600
	ldrb r2, [r4, #0x1c]
	add r2, r2, #1
	strb r2, [r4, #0x1c]
	ldr r2, [r0, #8]
	strb r3, [r2, #0x1e]
	str r1, [sb, #8]
	ldr r0, [r0, #8]
	strb r3, [r0, #0x1d]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DC320:
	ldr r0, [sb, #4]
	add r7, r7, #1
	cmp r7, r0
	add r5, r5, #0xac
	blt _021DC280
_021DC334:
	ldr r0, [sb, #8]
	cmp r0, #0x600
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _021DC3CC ; =0x0221A698
	mov r1, #1
	ldr r3, [r0, #8]
	ldrb r2, [r3, #0x1c]
	add r2, r2, #1
	strb r2, [r3, #0x1c]
	ldr r0, [r0, #8]
	strb r1, [r0, #0x1e]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DC364:
	ldr r0, [sb]
	cmp r0, #0
	beq _021DC37C
	bl ov4_021DC120
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DC37C:
	ldr r0, _021DC3CC ; =0x0221A698
	ldr r1, [r0, #8]
	ldr r0, [r1, #0]
	cmp r0, #1
	beq _021DC3A8
	ldr r1, [r1, #0x18]
	mov r0, #0xc
	mla r0, r8, r0, r1
	bl DWC_GetFriendDataType
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DC3A8:
	ldr r0, _021DC3CC ; =0x0221A698
	mov r1, #1
	ldr r3, [r0, #8]
	ldrb r2, [r3, #0x1c]
	add r2, r2, #1
	strb r2, [r3, #0x1c]
	ldr r0, [r0, #8]
	strb r1, [r0, #0x1e]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021DC3CC: .word Unk_ov4_0221A698
	arm_func_end ov4_021DC194

	arm_func_start ov4_021DC3D0
ov4_021DC3D0: ; 0x021DC3D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov sb, r1
	ldr r1, [sb]
	mov sl, r0
	cmp r1, #0
	mov r6, #0
	addne sp, sp, #0x28
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _021DC578 ; =0x0221A698
	mov r5, r6
	ldr r1, [r4, #8]
	ldr r0, [r1, #0x14]
	cmp r0, #0
	ble _021DC54C
	mov r7, r6
	add fp, sp, #0x11
_021DC414:
	ldr r0, [r1, #0x18]
	add r0, r0, r7
	bl DWC_GetFriendDataType
	cmp r0, #1
	bne _021DC47C
	bl ov4_021DA87C
	ldr r1, [r4, #8]
	mov r2, fp
	ldr r1, [r1, #0x18]
	add r1, r1, r7
	bl DWC_LoginIdToUserName
	mov r0, fp
	add r1, sb, #0x8e
	bl strcmp
	cmp r0, #0
	bne _021DC534
	ldr r1, [sb, #4]
	mov r0, sl
	bl ov4_021EB798
	ldr r0, [r4, #8]
	ldr r1, [sb, #4]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl DWC_SetGsProfileId
	mov r6, #1
	b _021DC534
_021DC47C:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl DWC_GetFriendDataType
	cmp r0, #3
	beq _021DC4AC
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl DWC_GetFriendDataType
	cmp r0, #2
	bne _021DC534
_021DC4AC:
	bl ov4_021DA87C
	ldr r1, [r0, #0x24]
	add r0, sp, #0xc
	mov r2, r1, lsr #0x10
	and r2, r2, #0xff
	str r2, [sp]
	mov r2, r1, lsr #8
	and r2, r2, #0xff
	str r2, [sp, #4]
	and r2, r1, #0xff
	str r2, [sp, #8]
	mov r1, r1, lsr #0x18
	and r3, r1, #0xff
	ldr r2, _021DC57C ; =0x022174CC
	mov r1, #5
	bl OS_SNPrintf
	ldr r8, [sb, #4]
	bl ov4_021DA87C
	ldr r1, [r4, #8]
	ldr r1, [r1, #0x18]
	add r1, r1, r7
	bl DWC_GetGsProfileId
	cmp r8, r0
	bne _021DC534
	add r0, sp, #0xc
	add r1, sb, #0x97
	mov r2, #4
	bl memcmp
	cmp r0, #0
	bne _021DC534
	mov r0, sl
	mov r1, r8
	bl ov4_021EB798
	mov r6, #1
_021DC534:
	ldr r1, [r4, #8]
	add r7, r7, #0xc
	add r5, r5, #1
	ldr r0, [r1, #0x14]
	cmp r5, r0
	blt _021DC414
_021DC54C:
	cmp r6, #0
	beq _021DC564
	ldr r0, [sb, #4]
	bl ov4_021DC030
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DC564:
	ldr r1, [sb, #4]
	mov r0, sl
	bl ov4_021EB7E8
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021DC578: .word Unk_ov4_0221A698
_021DC57C: .word Unk_ov4_022174CC
	arm_func_end ov4_021DC3D0

	arm_func_start ov4_021DC580
ov4_021DC580: ; 0x021DC580
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sl, r1
	ldr r0, [sl]
	mov r7, #0
	cmp r0, #0
	mov r8, r7
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _021DC71C ; =0x0221A698
	mov r6, r7
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	ble _021DC6E0
	mov sb, r7
	mov fp, #1
	add r5, sp, #0
_021DC5C8:
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl DWC_GetFriendDataType
	cmp r0, #1
	bne _021DC634
	bl ov4_021DA87C
	ldr r1, [r4, #8]
	mov r2, r5
	ldr r1, [r1, #0x18]
	add r1, r1, sb
	bl DWC_LoginIdToUserName
	mov r0, r5
	add r1, sl, #0x8e
	bl strcmp
	cmp r0, #0
	bne _021DC6C8
	ldr r0, [r4, #8]
	ldr r1, [sl, #4]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl DWC_SetGsProfileId
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl DWCi_SetBuddyFriendData
	mov r7, fp
	b _021DC6C8
_021DC634:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl DWC_GetFriendDataType
	cmp r0, #3
	beq _021DC664
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl DWC_GetFriendDataType
	cmp r0, #2
	bne _021DC6C8
_021DC664:
	bl ov4_021DA87C
	ldr r1, [r4, #8]
	ldr r1, [r1, #0x18]
	add r1, r1, sb
	bl DWC_GetGsProfileId
	ldr r1, [sl, #4]
	cmp r1, r0
	bne _021DC6C8
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl DWC_IsBuddyFriendData
	cmp r0, #1
	moveq r8, #1
	beq _021DC6C8
	ldr r0, [r4, #8]
	ldr r1, [sl, #4]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl DWC_SetGsProfileId
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl DWCi_SetBuddyFriendData
	mov r7, #1
_021DC6C8:
	ldr r0, [r4, #8]
	add r6, r6, #1
	ldr r1, [r0, #0x14]
	add sb, sb, #0xc
	cmp r6, r1
	blt _021DC5C8
_021DC6E0:
	cmp r7, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r0, #0x18]
	ldr r2, [sl, #4]
	bl ov4_021DBF28
	cmp r8, #0
	bne _021DC704
	bl ov4_021DBA28
_021DC704:
	ldr r0, _021DC71C ; =0x0221A698
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x1d]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021DC71C: .word Unk_ov4_0221A698
	arm_func_end ov4_021DC580

	arm_func_start ov4_021DC720
ov4_021DC720: ; 0x021DC720
	ldr r0, _021DC730 ; =0x0221A698
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x20]
	bx lr
	; .align 2, 0
_021DC730: .word Unk_ov4_0221A698
	arm_func_end ov4_021DC720

	.data


	.global Unk_ov4_02217488
Unk_ov4_02217488: ; 0x02217488
	.incbin "incbin/overlay4_data.bin", 0x1608, 0x160C - 0x1608

	.global Unk_ov4_0221748C
Unk_ov4_0221748C: ; 0x0221748C
	.incbin "incbin/overlay4_data.bin", 0x160C, 0x1610 - 0x160C

	.global Unk_ov4_02217490
Unk_ov4_02217490: ; 0x02217490
	.incbin "incbin/overlay4_data.bin", 0x1610, 0x1648 - 0x1610

	.global Unk_ov4_022174C8
Unk_ov4_022174C8: ; 0x022174C8
	.incbin "incbin/overlay4_data.bin", 0x1648, 0x164C - 0x1648

	.global Unk_ov4_022174CC
Unk_ov4_022174CC: ; 0x022174CC
	.incbin "incbin/overlay4_data.bin", 0x164C, 0x9



	.bss


	.global Unk_ov4_0221A698
Unk_ov4_0221A698: ; 0x0221A698
	.space 0x4

	.global Unk_ov4_0221A69C
Unk_ov4_0221A69C: ; 0x0221A69C
	.space 0x4

	.global Unk_ov4_0221A6A0
Unk_ov4_0221A6A0: ; 0x0221A6A0
	.space 0x4

	.global Unk_ov4_0221A6A4
Unk_ov4_0221A6A4: ; 0x0221A6A4
	.space 0x4

