	.include "macros/function.inc"
	.include "include/sb_serverbrowsing.inc"

	
	.extern Unk_ov4_0221AE50

	.extern Unk_ov4_02219B38
	.text


	arm_func_start ov4_021FE890
ov4_021FE890: ; 0x021FE890
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _021FEA14
_021FE8AC: ; jump table
	b _021FE8C8 ; case 0
	b _021FE940 ; case 1
	b _021FE974 ; case 2
	b _021FE9A8 ; case 3
	b _021FEA14 ; case 4
	b _021FE9EC ; case 5
	b _021FEA08 ; case 6
_021FE8C8:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #0
	blx ip
	ldrb r0, [r5, #0x14]
	tst r0, #3
	beq _021FE8F0
	tst r0, #0x40
	bne _021FEA14
_021FE8F0:
	tst r0, #0x2c
	ldreq r0, [r4, #0x624]
	cmpeq r0, #0
	bne _021FEA14
	ldrb r0, [r5, #0x15]
	tst r0, #1
	beq _021FE928
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	ldrne r0, [r4, #0x40]
	cmpne r0, #0
	moveq r3, #1
	movne r3, #0
	b _021FE92C
_021FE928:
	mov r3, #2
_021FE92C:
	mov r0, r4
	mov r1, r5
	mov r2, #0
	bl ov4_021FDB80
	b _021FEA14
_021FE940:
	ldrb r0, [r5, #0x14]
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	tst r0, #0x43
	bne _021FE964
	mov r0, r4
	mov r1, #2
	blx ip
	b _021FEA14
_021FE964:
	mov r0, r4
	mov r1, #1
	blx ip
	b _021FEA14
_021FE974:
	ldrb r0, [r5, #0x14]
	tst r0, #0x2c
	beq _021FE98C
	mov r0, r4
	mov r1, r5
	bl ov4_021FE080
_021FE98C:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r2, r5
	mov r1, #3
	blx ip
	b _021FEA14
_021FE9A8:
	ldr r1, [r4, #0x620]
	cmp r1, #0
	beq _021FE9B8
	bl ov4_021FFDE0
_021FE9B8:
	ldr r0, [r6, #4]
	bl ov4_021E9BBC
	cmp r0, #0
	ldrne r0, [r4, #0x10]
	cmpne r0, #0
	bne _021FEA14
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #4
	mov r2, #0
	blx ip
	b _021FEA14
_021FE9EC:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #5
	mov r2, #0
	blx ip
	b _021FEA14
_021FEA08:
	ldr r1, [r4, #0x4ec]
	mov r0, r4
	bl ov4_021FDB30
_021FEA14:
	cmp r5, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r5, #0]
	ldr r0, [r4, #0x628]
	cmp r1, r0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r4, #0x600
	ldrh r1, [r5, #4]
	ldrh r0, [r0, #0x2c]
	cmp r1, r0
	moveq r0, #0
	streq r0, [r4, #0x628]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021FE890

	arm_func_start ov4_021FEA48
ov4_021FEA48: ; 0x021FEA48
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	cmp r1, #0
	beq _021FEA88
	cmp r1, #1
	beq _021FEA70
	cmp r1, #2
	beq _021FEAA0
	b _021FEAB4
_021FEA70:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #2
	blx ip
	b _021FEAB4
_021FEA88:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #1
	blx ip
	b _021FEAB4
_021FEAA0:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #4
	blx ip
_021FEAB4:
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0]
	ldr r0, [r4, #0x628]
	cmp r1, r0
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, r4, #0x600
	ldrh r1, [r5, #4]
	ldrh r0, [r0, #0x2c]
	cmp r1, r0
	moveq r0, #0
	streq r0, [r4, #0x628]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021FEA48

	arm_func_start ServerBrowserNewA
ServerBrowserNewA: ; 0x021FEAE8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r4, [sp, #0x30]
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r4, #0
	bne _021FEB24
	ldr r0, _021FEBAC ; =0x0221AE50
	ldr r0, [r0, #0]
	cmp r0, #1
	addne sp, sp, #0x10
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021FEB24:
	ldr r0, _021FEBB0 ; =0x00000638
	bl DWCi_GsMalloc
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x38]
	str r1, [r4, #0x630]
	str r0, [r4, #0x634]
	mov r0, #0
	str r0, [r4, #0x624]
	ldr r1, [sp, #0x30]
	str r5, [sp]
	ldr r0, _021FEBB4 ; =ov4_021FE890
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r1, r8
	mov r2, r7
	mov r3, r6
	add r0, r4, #0x4c
	str r4, [sp, #0xc]
	bl ov4_021FF4DC
	ldr r0, _021FEBB8 ; =ov4_021FEA48
	ldr r1, [sp, #0x28]
	str r0, [sp]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	mov r0, r4
	str r4, [sp, #4]
	bl ov4_021FDABC
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021FEBAC: .word Unk_ov4_0221AE50
_021FEBB0: .word 0x00000638
_021FEBB4: .word ov4_021FE890
_021FEBB8: .word ov4_021FEA48
	arm_func_end ServerBrowserNewA

	arm_func_start ServerBrowserFree
ServerBrowserFree: ; 0x021FEBBC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl ov4_021FFE44
	mov r0, r4
	bl ov4_021FDB54
	mov r0, r4
	bl DWCi_GsFree
	ldmia sp!, {r4, pc}
	arm_func_end ServerBrowserFree

	arm_func_start ov4_021FEBE0
ov4_021FEBE0: ; 0x021FEBE0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x108
	ldr r8, [sp, #0x130]
	mov sl, r0
	str r1, [sp, #4]
	add r4, sp, #8
	mov sb, r3
	mov r1, #0x40
	mov r0, #0
_021FEC04:
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	add r4, r4, #4
	subs r1, r1, #1
	bne _021FEC04
	mov r5, #0
	str r2, [sl, #0x620]
	mov r6, r5
	str r5, [sl, #0x40]
	cmp r8, #0
	ble _021FEC8C
	ldr r4, _021FED08 ; =0x02219B38
	add fp, sp, #8
_021FEC40:
	ldrb r0, [sb, r6]
	ldr r7, [r4, r0, lsl #2]
	mov r0, r7
	bl strlen
	add r0, r5, r0
	add r0, r0, #1
	cmp r0, #0x100
	bge _021FEC8C
	ldr r1, _021FED0C ; =0x02219FA8
	mov r2, r7
	add r0, fp, r5
	bl sprintf
	add r5, r5, r0
	ldrb r1, [sb, r6]
	mov r0, sl
	bl ov4_021FE060
	add r6, r6, #1
	cmp r6, r8
	blt _021FEC40
_021FEC8C:
	ldr r4, [sp, #0x13c]
	ldr r2, [sp, #0x134]
	ldr r3, [sp, #0x138]
	add r1, sp, #8
	add r0, sl, #0x4c
	str r4, [sp]
	bl ov4_021FFAC8
	cmp r0, #0
	addne sp, sp, #0x108
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sp, #4]
	cmp r1, #0
	addne sp, sp, #0x108
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0xa
	b _021FECDC
_021FECCC:
	mov r0, r4
	bl ov4_021EA898
	mov r0, sl
	bl ServerBrowserThink
_021FECDC:
	ldr r1, [sl, #0x4c]
	cmp r1, #3
	beq _021FECCC
	ldr r1, [sl, #0x10]
	cmp r1, #0
	addle sp, sp, #0x108
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #0
	beq _021FECCC
	add sp, sp, #0x108
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021FED08: .word Unk_ov4_02219B38
_021FED0C: .word Unk_ov4_02219FA8
	arm_func_end ov4_021FEBE0

	arm_func_start ServerBrowserLimitUpdateA
ServerBrowserLimitUpdateA: ; 0x021FED10
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	ldr lr, [sp, #0x18]
	ldr ip, [sp, #0x1c]
	str lr, [sp]
	str ip, [sp, #4]
	mov lr, #0x80
	ldr ip, [sp, #0x20]
	str lr, [sp, #8]
	str ip, [sp, #0xc]
	bl ov4_021FEBE0
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	arm_func_end ServerBrowserLimitUpdateA

	arm_func_start ServerBrowserSendMessageToServerA
ServerBrowserSendMessageToServerA: ; 0x021FED44
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r6, r2
	mov r0, r1
	mov r4, r3
	bl ov4_021EAF1C
	mov r3, r6, asr #8
	mov r2, r6, lsl #8
	ldr ip, [sp, #0x18]
	mov r1, r0
	str ip, [sp]
	and r3, r3, #0xff
	and r0, r2, #0xff00
	orr r0, r3, r0
	mov r2, r0, lsl #0x10
	mov r3, r4
	add r0, r5, #0x4c
	mov r2, r2, lsr #0x10
	bl ov4_022011B4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ServerBrowserSendMessageToServerA

	arm_func_start ServerBrowserSendNatNegotiateCookieToServerA
ServerBrowserSendNatNegotiateCookieToServerA: ; 0x021FED9C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r6, r2
	mov r0, r1
	mov r4, r3
	bl ov4_021EAF1C
	mov r3, r6, asr #8
	mov r2, r6, lsl #8
	mov r1, r0
	and r3, r3, #0xff
	and r0, r2, #0xff00
	orr r0, r3, r0
	mov r2, r0, lsl #0x10
	mov r3, r4
	add r0, r5, #0x4c
	mov r2, r2, lsr #0x10
	bl ov4_022012DC
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ServerBrowserSendNatNegotiateCookieToServerA

	arm_func_start ServerBrowserRemoveServer
ServerBrowserRemoveServer: ; 0x021FEDE4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl ov4_021FF180
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x4c
	bl ov4_021FF278
	ldmia sp!, {r4, pc}
	arm_func_end ServerBrowserRemoveServer

	arm_func_start ServerBrowserThink
ServerBrowserThink: ; 0x021FEE10
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_021FE000
	add r0, r4, #0x4c
	bl ov4_022014B8
	ldmia sp!, {r4, pc}
	arm_func_end ServerBrowserThink

	arm_func_start ov4_021FEE28
ov4_021FEE28: ; 0x021FEE28
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl ov4_021FFDE0
	mov r0, r4
	bl ov4_021FDB38
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021FEE28

	arm_func_start ServerBrowserClear
ServerBrowserClear: ; 0x021FEE44
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_021FEE28
	add r0, r4, #0x4c
	bl ov4_021FF340
	ldmia sp!, {r4, pc}
	arm_func_end ServerBrowserClear

	arm_func_start ServerBrowserState
ServerBrowserState: ; 0x021FEE5C
	ldr r1, [r0, #0x10]
	cmp r1, #0
	movgt r0, #2
	bxgt lr
	ldr r0, [r0, #0x4c]
	cmp r0, #3
	cmpne r0, #0
	moveq r0, #1
	bxeq lr
	cmp r0, #1
	moveq r0, #0
	movne r0, #3
	bx lr
	arm_func_end ServerBrowserState

	arm_func_start ServerBrowserGetServer
ServerBrowserGetServer: ; 0x021FEE90
	ldr ip, _021FEE9C ; =ov4_021FF2D4
	add r0, r0, #0x4c
	bx ip
	; .align 2, 0
_021FEE9C: .word ov4_021FF2D4
	arm_func_end ServerBrowserGetServer

	arm_func_start ServerBrowserCount
ServerBrowserCount: ; 0x021FEEA0
	ldr ip, _021FEEAC ; =ov4_021FF2C4
	add r0, r0, #0x4c
	bx ip
	; .align 2, 0
_021FEEAC: .word ov4_021FF2C4
	arm_func_end ServerBrowserCount

	arm_func_start ServerBrowserSortA
ServerBrowserSortA: ; 0x021FEEB0
	ldr ip, _021FEEBC ; =ov4_021FF0CC
	add r0, r0, #0x4c
	bx ip
	; .align 2, 0
_021FEEBC: .word ov4_021FF0CC
	arm_func_end ServerBrowserSortA

	arm_func_start ServerBrowserGetMyPublicIPAddr
ServerBrowserGetMyPublicIPAddr: ; 0x021FEEC0
	ldr r0, [r0, #0x4ec]
	bx lr
	arm_func_end ServerBrowserGetMyPublicIPAddr

	.data


	.global Unk_ov4_02219FA8
Unk_ov4_02219FA8: ; 0x02219FA8
	.asciz "\\%s"

