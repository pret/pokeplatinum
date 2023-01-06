	.include "macros/function.inc"
	.include "overlay066/ov66_02255ADC.inc"

	

	.text


	arm_func_start ov66_02255ADC
ov66_02255ADC: ; 0x02255ADC
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _02255AFC
	ldr r0, _02255B30 ; =0x0225B148
	ldr r1, _02255B34 ; =0x0225B158
	ldr r2, _02255B38 ; =0x0225B074
	mov r3, #0x5f
	bl __msl_assertion_failed
_02255AFC:
	mov r0, #0
	mov r1, #0x2000
	str r0, [r4, #4]
	add r0, r1, #1
	str r1, [r4, #8]
	bl ov4_021D7880
	cmp r0, #0
	str r0, [r4, #0]
	moveq r0, #0
	movne r1, #0
	strneb r1, [r0]
	movne r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02255B30: .word Unk_ov66_0225B148
_02255B34: .word Unk_ov66_0225B158
_02255B38: .word Unk_ov66_0225B074
	arm_func_end ov66_02255ADC

	arm_func_start ov66_02255B3C
ov66_02255B3C: ; 0x02255B3C
	ldr ip, _02255B48 ; =ov4_021D78B0
	ldr r0, [r0, #0]
	bx ip
	; .align 2, 0
_02255B48: .word ov4_021D78B0
	arm_func_end ov66_02255B3C

	arm_func_start ov66_02255B4C
ov66_02255B4C: ; 0x02255B4C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _02255B70
	ldr r0, _02255C88 ; =0x0225B168
	ldr r1, _02255C8C ; =0x0225B158
	ldr r2, _02255C90 ; =0x0225B0E4
	mov r3, #0x78
	bl __msl_assertion_failed
_02255B70:
	ldr r0, [r5, #8]
	cmp r0, #0
	bge _02255B90
	ldr r0, _02255C94 ; =0x0225B17C
	ldr r1, _02255C8C ; =0x0225B158
	ldr r2, _02255C90 ; =0x0225B0E4
	mov r3, #0x78
	bl __msl_assertion_failed
_02255B90:
	ldr r0, [r5, #8]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02255BB8
	ldr r0, _02255C98 ; =0x0225B190
	ldr r1, _02255C8C ; =0x0225B158
	ldr r2, _02255C90 ; =0x0225B0E4
	mov r3, #0x78
	bl __msl_assertion_failed
_02255BB8:
	ldr r0, [r5, #4]
	cmp r0, #0
	bge _02255BD8
	ldr r0, _02255C9C ; =0x0225B1B4
	ldr r1, _02255C8C ; =0x0225B158
	ldr r2, _02255C90 ; =0x0225B0E4
	mov r3, #0x78
	bl __msl_assertion_failed
_02255BD8:
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	cmp r1, r0
	ble _02255BFC
	ldr r0, _02255CA0 ; =0x0225B1CC
	ldr r1, _02255C8C ; =0x0225B158
	ldr r2, _02255C90 ; =0x0225B0E4
	mov r3, #0x78
	bl __msl_assertion_failed
_02255BFC:
	cmp r4, #0
	bge _02255C18
	ldr r0, _02255CA4 ; =0x0225B1F0
	ldr r1, _02255C8C ; =0x0225B158
	ldr r2, _02255C90 ; =0x0225B0E4
	mov r3, #0x79
	bl __msl_assertion_failed
_02255C18:
	ldr r0, _02255CA8 ; =0x00007FFF
	cmp r4, r0
	ble _02255C38
	ldr r0, _02255CAC ; =0x0225B1FC
	ldr r1, _02255C8C ; =0x0225B158
	ldr r2, _02255C90 ; =0x0225B0E4
	mov r3, #0x7a
	bl __msl_assertion_failed
_02255C38:
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	add r1, r1, r4
	cmp r1, r0
	movle r0, #1
	ldmleia sp!, {r3, r4, r5, pc}
	add r2, r1, #0x2000
	mov r1, r2, lsr #0x1f
	rsb r0, r1, r2, lsl #19
	add r0, r1, r0, ror #19
	sub r4, r2, r0
	ldr r0, [r5, #0]
	add r1, r4, #1
	bl ov4_021D7894
	cmp r0, #0
	moveq r0, #0
	strne r0, [r5]
	strne r4, [r5, #8]
	movne r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02255C88: .word Unk_ov66_0225B168
_02255C8C: .word Unk_ov66_0225B158
_02255C90: .word Unk_ov66_0225B0E4
_02255C94: .word Unk_ov66_0225B17C
_02255C98: .word Unk_ov66_0225B190
_02255C9C: .word Unk_ov66_0225B1B4
_02255CA0: .word Unk_ov66_0225B1CC
_02255CA4: .word Unk_ov66_0225B1F0
_02255CA8: .word 0x00007FFF
_02255CAC: .word Unk_ov66_0225B1FC
	arm_func_end ov66_02255B4C

	arm_func_start ov66_02255CB0
ov66_02255CB0: ; 0x02255CB0
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _02255CD4
	ldr r0, _02255DC8 ; =0x0225B168
	ldr r1, _02255DCC ; =0x0225B158
	ldr r2, _02255DD0 ; =0x0225B0F8
	mov r3, #0x97
	bl __msl_assertion_failed
_02255CD4:
	ldr r0, [r5, #8]
	cmp r0, #0
	bge _02255CF4
	ldr r0, _02255DD4 ; =0x0225B17C
	ldr r1, _02255DCC ; =0x0225B158
	ldr r2, _02255DD0 ; =0x0225B0F8
	mov r3, #0x97
	bl __msl_assertion_failed
_02255CF4:
	ldr r0, [r5, #8]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02255D1C
	ldr r0, _02255DD8 ; =0x0225B190
	ldr r1, _02255DCC ; =0x0225B158
	ldr r2, _02255DD0 ; =0x0225B0F8
	mov r3, #0x97
	bl __msl_assertion_failed
_02255D1C:
	ldr r0, [r5, #4]
	cmp r0, #0
	bge _02255D3C
	ldr r0, _02255DDC ; =0x0225B1B4
	ldr r1, _02255DCC ; =0x0225B158
	ldr r2, _02255DD0 ; =0x0225B0F8
	mov r3, #0x97
	bl __msl_assertion_failed
_02255D3C:
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	cmp r1, r0
	ble _02255D60
	ldr r0, _02255DE0 ; =0x0225B1CC
	ldr r1, _02255DCC ; =0x0225B158
	ldr r2, _02255DD0 ; =0x0225B0F8
	mov r3, #0x97
	bl __msl_assertion_failed
_02255D60:
	cmp r4, #0
	bge _02255D7C
	ldr r0, _02255DE4 ; =0x0225B1F0
	ldr r1, _02255DCC ; =0x0225B158
	ldr r2, _02255DD0 ; =0x0225B0F8
	mov r3, #0x98
	bl __msl_assertion_failed
_02255D7C:
	ldr r0, [r5, #4]
	cmp r4, r0
	ble _02255D9C
	ldr r0, _02255DE8 ; =0x0225B20C
	ldr r1, _02255DCC ; =0x0225B158
	ldr r2, _02255DD0 ; =0x0225B0F8
	mov r3, #0x99
	bl __msl_assertion_failed
_02255D9C:
	ldr r0, [r5, #4]
	sub r2, r0, r4
	str r2, [r5, #4]
	ldr r0, [r5, #0]
	add r1, r0, r4
	bl memmove
	ldr r1, [r5, #0]
	ldr r0, [r5, #4]
	mov r2, #0
	strb r2, [r1, r0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02255DC8: .word Unk_ov66_0225B168
_02255DCC: .word Unk_ov66_0225B158
_02255DD0: .word Unk_ov66_0225B0F8
_02255DD4: .word Unk_ov66_0225B17C
_02255DD8: .word Unk_ov66_0225B190
_02255DDC: .word Unk_ov66_0225B1B4
_02255DE0: .word Unk_ov66_0225B1CC
_02255DE4: .word Unk_ov66_0225B1F0
_02255DE8: .word Unk_ov66_0225B20C
	arm_func_end ov66_02255CB0

	arm_func_start ov66_02255DEC
ov66_02255DEC: ; 0x02255DEC
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _02255E0C
	ldr r0, _02255E5C ; =0x0225B224
	ldr r1, _02255E60 ; =0x0225B158
	ldr r2, _02255E64 ; =0x0225B094
	mov r3, #0xb1
	bl __msl_assertion_failed
_02255E0C:
	mov r0, r4
	mov r1, #0
	mov r2, #0x350
	bl memset
	mvn r1, #0
	add r0, r4, #0x108
	str r1, [r4, #0]
	bl ov66_02255ADC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x114
	bl ov66_02255ADC
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
	add r0, r4, #0x108
	bl ov66_02255B3C
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02255E5C: .word Unk_ov66_0225B224
_02255E60: .word Unk_ov66_0225B158
_02255E64: .word Unk_ov66_0225B094
	arm_func_end ov66_02255DEC

	arm_func_start ov66_02255E68
ov66_02255E68: ; 0x02255E68
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _02255E94
	ldr r0, _02256164 ; =0x0225B234
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xd8
	bl __msl_assertion_failed
_02255E94:
	ldr r0, [r6, #4]
	cmp r0, #2
	bls _02255EB4
	ldr r0, _02256170 ; =0x0225B244
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xd8
	bl __msl_assertion_failed
_02255EB4:
	adds r0, r6, #0x108
	bne _02255ED0
	ldr r0, _02256174 ; =0x0225B2C4
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xd8
	bl __msl_assertion_failed
_02255ED0:
	ldr r0, [r6, #0x110]
	cmp r0, #0
	bge _02255EF0
	ldr r0, _02256178 ; =0x0225B2E4
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xd8
	bl __msl_assertion_failed
_02255EF0:
	ldr r0, [r6, #0x110]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02255F18
	ldr r0, _0225617C ; =0x0225B308
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xd8
	bl __msl_assertion_failed
_02255F18:
	ldr r0, [r6, #0x10c]
	cmp r0, #0
	bge _02255F38
	ldr r0, _02256180 ; =0x0225B338
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xd8
	bl __msl_assertion_failed
_02255F38:
	ldr r1, [r6, #0x10c]
	ldr r0, [r6, #0x110]
	cmp r1, r0
	ble _02255F5C
	ldr r0, _02256184 ; =0x0225B35C
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xd8
	bl __msl_assertion_failed
_02255F5C:
	adds r0, r6, #0x114
	bne _02255F78
	ldr r0, _02256188 ; =0x0225B39C
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xd8
	bl __msl_assertion_failed
_02255F78:
	ldr r0, [r6, #0x11c]
	cmp r0, #0
	bge _02255F98
	ldr r0, _0225618C ; =0x0225B3BC
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xd8
	bl __msl_assertion_failed
_02255F98:
	ldr r0, [r6, #0x11c]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02255FC0
	ldr r0, _02256190 ; =0x0225B3E0
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xd8
	bl __msl_assertion_failed
_02255FC0:
	ldr r0, [r6, #0x118]
	cmp r0, #0
	bge _02255FE0
	ldr r0, _02256194 ; =0x0225B414
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xd8
	bl __msl_assertion_failed
_02255FE0:
	ldr r1, [r6, #0x118]
	ldr r0, [r6, #0x11c]
	cmp r1, r0
	ble _02256004
	ldr r0, _02256198 ; =0x0225B438
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xd8
	bl __msl_assertion_failed
_02256004:
	cmp r5, #0
	bne _02256020
	ldr r0, _0225619C ; =0x0225B478
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xd9
	bl __msl_assertion_failed
_02256020:
	cmp r4, #0
	bge _0225603C
	ldr r0, _022561A0 ; =0x0225B490
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xda
	bl __msl_assertion_failed
_0225603C:
	ldr r0, _022561A4 ; =0x0000FFFF
	cmp r4, r0
	ble _0225605C
	ldr r0, _022561A8 ; =0x0225B49C
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xdb
	bl __msl_assertion_failed
_0225605C:
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _0225607C
	ldr r0, _022561AC ; =0x0225B4B0
	ldr r1, _02256168 ; =0x0225B158
	ldr r2, _0225616C ; =0x0225B0D4
	mov r3, #0xdc
	bl __msl_assertion_failed
_0225607C:
	mov r1, r5
	add r0, r6, #8
	mov r2, #0xff
	bl strncpy
	mov r1, #0
	mov r0, r5
	strb r1, [r6, #0x106]
	bl ov4_021EAF1C
	mvn r1, #0
	cmp r0, r1
	bne _022560CC
	mov r0, r5
	bl ov4_0220854C
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
_022560CC:
	mov r1, r4, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r3, r1, asr #8
	mov r1, r1, lsl #8
	add r4, sp, #0
	mov r2, #0
	str r2, [r4, #4]
	and r3, r3, #0xff
	and r1, r1, #0xff00
	orr r1, r3, r1
	str r2, [r4, #0]
	mov r3, #2
	str r0, [sp, #4]
	strh r1, [sp, #2]
	mov r0, r3
	mov r1, #1
	strb r3, [sp, #1]
	bl ov4_021EACDC
	mvn r1, #0
	cmp r0, r1
	str r0, [r6, #0]
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r4
	mov r2, #8
	bl ov4_021EAD78
	mvn r1, #0
	cmp r0, r1
	movne r0, #1
	addne sp, sp, #8
	strne r0, [r6, #4]
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0]
	bl ov4_021EACF0
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02256164: .word Unk_ov66_0225B234
_02256168: .word Unk_ov66_0225B158
_0225616C: .word Unk_ov66_0225B0D4
_02256170: .word Unk_ov66_0225B244
_02256174: .word Unk_ov66_0225B2C4
_02256178: .word Unk_ov66_0225B2E4
_0225617C: .word Unk_ov66_0225B308
_02256180: .word Unk_ov66_0225B338
_02256184: .word Unk_ov66_0225B35C
_02256188: .word Unk_ov66_0225B39C
_0225618C: .word Unk_ov66_0225B3BC
_02256190: .word Unk_ov66_0225B3E0
_02256194: .word Unk_ov66_0225B414
_02256198: .word Unk_ov66_0225B438
_0225619C: .word Unk_ov66_0225B478
_022561A0: .word Unk_ov66_0225B490
_022561A4: .word 0x0000FFFF
_022561A8: .word Unk_ov66_0225B49C
_022561AC: .word Unk_ov66_0225B4B0
	arm_func_end ov66_02255E68

	arm_func_start ov66_022561B0
ov66_022561B0: ; 0x022561B0
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r0
	bne _022561D0
	ldr r0, _022563F0 ; =0x0225B234
	ldr r1, _022563F4 ; =0x0225B158
	ldr r2, _022563F8 ; =0x0225B134
	ldr r3, _022563FC ; =0x0000011B
	bl __msl_assertion_failed
_022561D0:
	ldr r0, [r4, #4]
	cmp r0, #2
	bls _022561F0
	ldr r0, _02256400 ; =0x0225B244
	ldr r1, _022563F4 ; =0x0225B158
	ldr r2, _022563F8 ; =0x0225B134
	ldr r3, _022563FC ; =0x0000011B
	bl __msl_assertion_failed
_022561F0:
	adds r0, r4, #0x108
	bne _0225620C
	ldr r0, _02256404 ; =0x0225B2C4
	ldr r1, _022563F4 ; =0x0225B158
	ldr r2, _022563F8 ; =0x0225B134
	ldr r3, _022563FC ; =0x0000011B
	bl __msl_assertion_failed
_0225620C:
	ldr r0, [r4, #0x110]
	cmp r0, #0
	bge _0225622C
	ldr r0, _02256408 ; =0x0225B2E4
	ldr r1, _022563F4 ; =0x0225B158
	ldr r2, _022563F8 ; =0x0225B134
	ldr r3, _022563FC ; =0x0000011B
	bl __msl_assertion_failed
_0225622C:
	ldr r0, [r4, #0x110]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02256254
	ldr r0, _0225640C ; =0x0225B308
	ldr r1, _022563F4 ; =0x0225B158
	ldr r2, _022563F8 ; =0x0225B134
	ldr r3, _022563FC ; =0x0000011B
	bl __msl_assertion_failed
_02256254:
	ldr r0, [r4, #0x10c]
	cmp r0, #0
	bge _02256274
	ldr r0, _02256410 ; =0x0225B338
	ldr r1, _022563F4 ; =0x0225B158
	ldr r2, _022563F8 ; =0x0225B134
	ldr r3, _022563FC ; =0x0000011B
	bl __msl_assertion_failed
_02256274:
	ldr r1, [r4, #0x10c]
	ldr r0, [r4, #0x110]
	cmp r1, r0
	ble _02256298
	ldr r0, _02256414 ; =0x0225B35C
	ldr r1, _022563F4 ; =0x0225B158
	ldr r2, _022563F8 ; =0x0225B134
	ldr r3, _022563FC ; =0x0000011B
	bl __msl_assertion_failed
_02256298:
	adds r0, r4, #0x114
	bne _022562B4
	ldr r0, _02256418 ; =0x0225B39C
	ldr r1, _022563F4 ; =0x0225B158
	ldr r2, _022563F8 ; =0x0225B134
	ldr r3, _022563FC ; =0x0000011B
	bl __msl_assertion_failed
_022562B4:
	ldr r0, [r4, #0x11c]
	cmp r0, #0
	bge _022562D4
	ldr r0, _0225641C ; =0x0225B3BC
	ldr r1, _022563F4 ; =0x0225B158
	ldr r2, _022563F8 ; =0x0225B134
	ldr r3, _022563FC ; =0x0000011B
	bl __msl_assertion_failed
_022562D4:
	ldr r0, [r4, #0x11c]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _022562FC
	ldr r0, _02256420 ; =0x0225B3E0
	ldr r1, _022563F4 ; =0x0225B158
	ldr r2, _022563F8 ; =0x0225B134
	ldr r3, _022563FC ; =0x0000011B
	bl __msl_assertion_failed
_022562FC:
	ldr r0, [r4, #0x118]
	cmp r0, #0
	bge _0225631C
	ldr r0, _02256424 ; =0x0225B414
	ldr r1, _022563F4 ; =0x0225B158
	ldr r2, _022563F8 ; =0x0225B134
	ldr r3, _022563FC ; =0x0000011B
	bl __msl_assertion_failed
_0225631C:
	ldr r1, [r4, #0x118]
	ldr r0, [r4, #0x11c]
	cmp r1, r0
	ble _02256340
	ldr r0, _02256428 ; =0x0225B438
	ldr r1, _022563F4 ; =0x0225B158
	ldr r2, _022563F8 ; =0x0225B134
	ldr r3, _022563FC ; =0x0000011B
	bl __msl_assertion_failed
_02256340:
	ldr r0, [r4, #0]
	mvn r1, #0
	cmp r0, r1
	beq _02256360
	mov r1, #2
	bl ov4_021EAD04
	ldr r0, [r4, #0]
	bl ov4_021EACF0
_02256360:
	mov r1, #2
	add r0, r4, #0x108
	str r1, [r4, #4]
	bl ov66_02255B3C
	add r0, r4, #0x114
	bl ov66_02255B3C
	ldr r0, [r4, #0x328]
	bl ov4_021D78B0
	ldr r0, [r4, #0x32c]
	bl ov4_021D78B0
	ldr r0, [r4, #0x330]
	bl ov4_021D78B0
	ldr r0, [r4, #0x334]
	bl ov4_021D78B0
	ldr r0, [r4, #0x338]
	bl ov4_021D78B0
	ldr r0, [r4, #0x33c]
	bl ov4_021D78B0
	ldr r0, [r4, #0x340]
	bl ov4_021D78B0
	ldr r0, [r4, #0x344]
	bl ov4_021D78B0
	ldr r0, [r4, #0x34c]
	mov r5, #0
	cmp r0, #0
	ble _022563E4
_022563C8:
	ldr r0, [r4, #0x348]
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r4, #0x34c]
	add r5, r5, #1
	cmp r5, r0
	blt _022563C8
_022563E4:
	ldr r0, [r4, #0x348]
	bl ov4_021D78B0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022563F0: .word Unk_ov66_0225B234
_022563F4: .word Unk_ov66_0225B158
_022563F8: .word Unk_ov66_0225B134
_022563FC: .word 0x0000011B
_02256400: .word Unk_ov66_0225B244
_02256404: .word Unk_ov66_0225B2C4
_02256408: .word Unk_ov66_0225B2E4
_0225640C: .word Unk_ov66_0225B308
_02256410: .word Unk_ov66_0225B338
_02256414: .word Unk_ov66_0225B35C
_02256418: .word Unk_ov66_0225B39C
_0225641C: .word Unk_ov66_0225B3BC
_02256420: .word Unk_ov66_0225B3E0
_02256424: .word Unk_ov66_0225B414
_02256428: .word Unk_ov66_0225B438
	arm_func_end ov66_022561B0

	arm_func_start ov66_0225642C
ov66_0225642C: ; 0x0225642C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov ip, #0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	str ip, [sp, #8]
	str ip, [sp, #4]
	str ip, [sp]
	bl ov4_021EAA74
	cmp r6, #0
	ldrne r0, [sp, #8]
	strne r0, [r6]
	cmp r5, #0
	ldrne r0, [sp, #4]
	strne r0, [r5]
	cmp r4, #0
	ldrne r0, [sp]
	strne r0, [r4]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov66_0225642C

	arm_func_start ov66_0225648C
ov66_0225648C: ; 0x0225648C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	movs r6, r0
	bne _022564AC
	ldr r0, _022566BC ; =0x0225B234
	ldr r1, _022566C0 ; =0x0225B158
	ldr r2, _022566C4 ; =0x0225B10C
	mov r3, #0x154
	bl __msl_assertion_failed
_022564AC:
	ldr r0, [r6, #4]
	cmp r0, #2
	bls _022564CC
	ldr r0, _022566C8 ; =0x0225B244
	ldr r1, _022566C0 ; =0x0225B158
	ldr r2, _022566C4 ; =0x0225B10C
	mov r3, #0x154
	bl __msl_assertion_failed
_022564CC:
	adds r0, r6, #0x108
	bne _022564E8
	ldr r0, _022566CC ; =0x0225B2C4
	ldr r1, _022566C0 ; =0x0225B158
	ldr r2, _022566C4 ; =0x0225B10C
	mov r3, #0x154
	bl __msl_assertion_failed
_022564E8:
	ldr r0, [r6, #0x110]
	cmp r0, #0
	bge _02256508
	ldr r0, _022566D0 ; =0x0225B2E4
	ldr r1, _022566C0 ; =0x0225B158
	ldr r2, _022566C4 ; =0x0225B10C
	mov r3, #0x154
	bl __msl_assertion_failed
_02256508:
	ldr r0, [r6, #0x110]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02256530
	ldr r0, _022566D4 ; =0x0225B308
	ldr r1, _022566C0 ; =0x0225B158
	ldr r2, _022566C4 ; =0x0225B10C
	mov r3, #0x154
	bl __msl_assertion_failed
_02256530:
	ldr r0, [r6, #0x10c]
	cmp r0, #0
	bge _02256550
	ldr r0, _022566D8 ; =0x0225B338
	ldr r1, _022566C0 ; =0x0225B158
	ldr r2, _022566C4 ; =0x0225B10C
	mov r3, #0x154
	bl __msl_assertion_failed
_02256550:
	ldr r1, [r6, #0x10c]
	ldr r0, [r6, #0x110]
	cmp r1, r0
	ble _02256574
	ldr r0, _022566DC ; =0x0225B35C
	ldr r1, _022566C0 ; =0x0225B158
	ldr r2, _022566C4 ; =0x0225B10C
	mov r3, #0x154
	bl __msl_assertion_failed
_02256574:
	adds r0, r6, #0x114
	bne _02256590
	ldr r0, _022566E0 ; =0x0225B39C
	ldr r1, _022566C0 ; =0x0225B158
	ldr r2, _022566C4 ; =0x0225B10C
	mov r3, #0x154
	bl __msl_assertion_failed
_02256590:
	ldr r0, [r6, #0x11c]
	cmp r0, #0
	bge _022565B0
	ldr r0, _022566E4 ; =0x0225B3BC
	ldr r1, _022566C0 ; =0x0225B158
	ldr r2, _022566C4 ; =0x0225B10C
	mov r3, #0x154
	bl __msl_assertion_failed
_022565B0:
	ldr r0, [r6, #0x11c]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _022565D8
	ldr r0, _022566E8 ; =0x0225B3E0
	ldr r1, _022566C0 ; =0x0225B158
	ldr r2, _022566C4 ; =0x0225B10C
	mov r3, #0x154
	bl __msl_assertion_failed
_022565D8:
	ldr r0, [r6, #0x118]
	cmp r0, #0
	bge _022565F8
	ldr r0, _022566EC ; =0x0225B414
	ldr r1, _022566C0 ; =0x0225B158
	ldr r2, _022566C4 ; =0x0225B10C
	mov r3, #0x154
	bl __msl_assertion_failed
_022565F8:
	ldr r1, [r6, #0x118]
	ldr r0, [r6, #0x11c]
	cmp r1, r0
	ble _0225661C
	ldr r0, _022566F0 ; =0x0225B438
	ldr r1, _022566C0 ; =0x0225B158
	ldr r2, _022566C4 ; =0x0225B10C
	mov r3, #0x154
	bl __msl_assertion_failed
_0225661C:
	ldr r0, [r6, #4]
	cmp r0, #1
	beq _0225663C
	ldr r0, _022566F4 ; =0x0225B4D8
	ldr r1, _022566C0 ; =0x0225B158
	ldr r2, _022566C4 ; =0x0225B10C
	ldr r3, _022566F8 ; =0x00000155
	bl __msl_assertion_failed
_0225663C:
	ldr r0, [r6, #0x118]
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r8, #0
	mov sb, #0x400
	mov r5, r8
	add r4, sp, #0
	mvn r7, #0
_0225665C:
	ldr r0, [r6, #0]
	mov r1, r5
	mov r2, r4
	mov r3, r5
	bl ov66_0225642C
	ldr r0, [sp]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r2, [r6, #0x118]
	ldr r0, [r6, #0]
	cmp r2, #0x400
	ldr r1, [r6, #0x114]
	movge r2, sb
	mov r3, r8
	bl ov4_021EAE48
	movs r1, r0
	cmpne r1, r7
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r6, #0x114
	bl ov66_02255CB0
	ldr r0, [r6, #0x118]
	cmp r0, #0
	bgt _0225665C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_022566BC: .word Unk_ov66_0225B234
_022566C0: .word Unk_ov66_0225B158
_022566C4: .word Unk_ov66_0225B10C
_022566C8: .word Unk_ov66_0225B244
_022566CC: .word Unk_ov66_0225B2C4
_022566D0: .word Unk_ov66_0225B2E4
_022566D4: .word Unk_ov66_0225B308
_022566D8: .word Unk_ov66_0225B338
_022566DC: .word Unk_ov66_0225B35C
_022566E0: .word Unk_ov66_0225B39C
_022566E4: .word Unk_ov66_0225B3BC
_022566E8: .word Unk_ov66_0225B3E0
_022566EC: .word Unk_ov66_0225B414
_022566F0: .word Unk_ov66_0225B438
_022566F4: .word Unk_ov66_0225B4D8
_022566F8: .word 0x00000155
	arm_func_end ov66_0225648C

	arm_func_start ov66_022566FC
ov66_022566FC: ; 0x022566FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs sl, r0
	bne _0225671C
	ldr r0, _02256958 ; =0x0225B234
	ldr r1, _0225695C ; =0x0225B158
	ldr r2, _02256960 ; =0x0225B120
	ldr r3, _02256964 ; =0x0000017A
	bl __msl_assertion_failed
_0225671C:
	ldr r0, [sl, #4]
	cmp r0, #2
	bls _0225673C
	ldr r0, _02256968 ; =0x0225B244
	ldr r1, _0225695C ; =0x0225B158
	ldr r2, _02256960 ; =0x0225B120
	ldr r3, _02256964 ; =0x0000017A
	bl __msl_assertion_failed
_0225673C:
	adds r0, sl, #0x108
	bne _02256758
	ldr r0, _0225696C ; =0x0225B2C4
	ldr r1, _0225695C ; =0x0225B158
	ldr r2, _02256960 ; =0x0225B120
	ldr r3, _02256964 ; =0x0000017A
	bl __msl_assertion_failed
_02256758:
	ldr r0, [sl, #0x110]
	cmp r0, #0
	bge _02256778
	ldr r0, _02256970 ; =0x0225B2E4
	ldr r1, _0225695C ; =0x0225B158
	ldr r2, _02256960 ; =0x0225B120
	ldr r3, _02256964 ; =0x0000017A
	bl __msl_assertion_failed
_02256778:
	ldr r0, [sl, #0x110]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _022567A0
	ldr r0, _02256974 ; =0x0225B308
	ldr r1, _0225695C ; =0x0225B158
	ldr r2, _02256960 ; =0x0225B120
	ldr r3, _02256964 ; =0x0000017A
	bl __msl_assertion_failed
_022567A0:
	ldr r0, [sl, #0x10c]
	cmp r0, #0
	bge _022567C0
	ldr r0, _02256978 ; =0x0225B338
	ldr r1, _0225695C ; =0x0225B158
	ldr r2, _02256960 ; =0x0225B120
	ldr r3, _02256964 ; =0x0000017A
	bl __msl_assertion_failed
_022567C0:
	ldr r1, [sl, #0x10c]
	ldr r0, [sl, #0x110]
	cmp r1, r0
	ble _022567E4
	ldr r0, _0225697C ; =0x0225B35C
	ldr r1, _0225695C ; =0x0225B158
	ldr r2, _02256960 ; =0x0225B120
	ldr r3, _02256964 ; =0x0000017A
	bl __msl_assertion_failed
_022567E4:
	adds r0, sl, #0x114
	bne _02256800
	ldr r0, _02256980 ; =0x0225B39C
	ldr r1, _0225695C ; =0x0225B158
	ldr r2, _02256960 ; =0x0225B120
	ldr r3, _02256964 ; =0x0000017A
	bl __msl_assertion_failed
_02256800:
	ldr r0, [sl, #0x11c]
	cmp r0, #0
	bge _02256820
	ldr r0, _02256984 ; =0x0225B3BC
	ldr r1, _0225695C ; =0x0225B158
	ldr r2, _02256960 ; =0x0225B120
	ldr r3, _02256964 ; =0x0000017A
	bl __msl_assertion_failed
_02256820:
	ldr r0, [sl, #0x11c]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02256848
	ldr r0, _02256988 ; =0x0225B3E0
	ldr r1, _0225695C ; =0x0225B158
	ldr r2, _02256960 ; =0x0225B120
	ldr r3, _02256964 ; =0x0000017A
	bl __msl_assertion_failed
_02256848:
	ldr r0, [sl, #0x118]
	cmp r0, #0
	bge _02256868
	ldr r0, _0225698C ; =0x0225B414
	ldr r1, _0225695C ; =0x0225B158
	ldr r2, _02256960 ; =0x0225B120
	ldr r3, _02256964 ; =0x0000017A
	bl __msl_assertion_failed
_02256868:
	ldr r1, [sl, #0x118]
	ldr r0, [sl, #0x11c]
	cmp r1, r0
	ble _0225688C
	ldr r0, _02256990 ; =0x0225B438
	ldr r1, _0225695C ; =0x0225B158
	ldr r2, _02256960 ; =0x0225B120
	ldr r3, _02256964 ; =0x0000017A
	bl __msl_assertion_failed
_0225688C:
	ldr r0, [sl, #4]
	cmp r0, #1
	beq _022568AC
	ldr r0, _02256994 ; =0x0225B4D8
	ldr r1, _0225695C ; =0x0225B158
	ldr r2, _02256960 ; =0x0225B120
	ldr r3, _02256998 ; =0x0000017B
	bl __msl_assertion_failed
_022568AC:
	mov r7, #0x1000
	mov fp, r7
	mov r4, #0
	add r8, sp, #0
_022568BC:
	mov r2, #0
	ldr r0, [sl]
	mov r1, r8
	mov r3, r2
	bl ov66_0225642C
	ldr r0, [sp]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r1, r7
	add r0, sl, #0x108
	bl ov66_02255B4C
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r6, [sl, #0x108]
	ldr r5, [sl, #0x10c]
	ldr r0, [sl]
	mov r2, fp
	mov r3, #0
	add r1, r6, r5
	bl ov4_021EAE04
	mov sb, r0
	cmp sb, #0
	movle r0, #2
	strle r0, [sl, #4]
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sl, #0x120]
	cmp r0, #0
	beq _0225693C
	mov r1, sb
	add r0, r6, r5
	add r2, sl, #0x124
	bl ov66_0224D4D8
_0225693C:
	ldr r0, [sl, #0x10c]
	add r1, r0, sb
	str r1, [sl, #0x10c]
	ldr r0, [sl, #0x108]
	strb r4, [r0, r1]
	b _022568BC
_02256954:
	.byte 0xF8, 0x8F, 0xBD, 0xE8
_02256958: .word Unk_ov66_0225B234
_0225695C: .word Unk_ov66_0225B158
_02256960: .word Unk_ov66_0225B120
_02256964: .word 0x0000017A
_02256968: .word Unk_ov66_0225B244
_0225696C: .word Unk_ov66_0225B2C4
_02256970: .word Unk_ov66_0225B2E4
_02256974: .word Unk_ov66_0225B308
_02256978: .word Unk_ov66_0225B338
_0225697C: .word Unk_ov66_0225B35C
_02256980: .word Unk_ov66_0225B39C
_02256984: .word Unk_ov66_0225B3BC
_02256988: .word Unk_ov66_0225B3E0
_0225698C: .word Unk_ov66_0225B414
_02256990: .word Unk_ov66_0225B438
_02256994: .word Unk_ov66_0225B4D8
_02256998: .word 0x0000017B
	arm_func_end ov66_022566FC

	arm_func_start ov66_0225699C
ov66_0225699C: ; 0x0225699C
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _022569BC
	ldr r0, _02256B6C ; =0x0225B234
	ldr r1, _02256B70 ; =0x0225B158
	ldr r2, _02256B74 ; =0x0225B0B4
	ldr r3, _02256B78 ; =0x000001BE
	bl __msl_assertion_failed
_022569BC:
	ldr r0, [r4, #4]
	cmp r0, #2
	bls _022569DC
	ldr r0, _02256B7C ; =0x0225B244
	ldr r1, _02256B70 ; =0x0225B158
	ldr r2, _02256B74 ; =0x0225B0B4
	ldr r3, _02256B78 ; =0x000001BE
	bl __msl_assertion_failed
_022569DC:
	adds r0, r4, #0x108
	bne _022569F8
	ldr r0, _02256B80 ; =0x0225B2C4
	ldr r1, _02256B70 ; =0x0225B158
	ldr r2, _02256B74 ; =0x0225B0B4
	ldr r3, _02256B78 ; =0x000001BE
	bl __msl_assertion_failed
_022569F8:
	ldr r0, [r4, #0x110]
	cmp r0, #0
	bge _02256A18
	ldr r0, _02256B84 ; =0x0225B2E4
	ldr r1, _02256B70 ; =0x0225B158
	ldr r2, _02256B74 ; =0x0225B0B4
	ldr r3, _02256B78 ; =0x000001BE
	bl __msl_assertion_failed
_02256A18:
	ldr r0, [r4, #0x110]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02256A40
	ldr r0, _02256B88 ; =0x0225B308
	ldr r1, _02256B70 ; =0x0225B158
	ldr r2, _02256B74 ; =0x0225B0B4
	ldr r3, _02256B78 ; =0x000001BE
	bl __msl_assertion_failed
_02256A40:
	ldr r0, [r4, #0x10c]
	cmp r0, #0
	bge _02256A60
	ldr r0, _02256B8C ; =0x0225B338
	ldr r1, _02256B70 ; =0x0225B158
	ldr r2, _02256B74 ; =0x0225B0B4
	ldr r3, _02256B78 ; =0x000001BE
	bl __msl_assertion_failed
_02256A60:
	ldr r1, [r4, #0x10c]
	ldr r0, [r4, #0x110]
	cmp r1, r0
	ble _02256A84
	ldr r0, _02256B90 ; =0x0225B35C
	ldr r1, _02256B70 ; =0x0225B158
	ldr r2, _02256B74 ; =0x0225B0B4
	ldr r3, _02256B78 ; =0x000001BE
	bl __msl_assertion_failed
_02256A84:
	adds r0, r4, #0x114
	bne _02256AA0
	ldr r0, _02256B94 ; =0x0225B39C
	ldr r1, _02256B70 ; =0x0225B158
	ldr r2, _02256B74 ; =0x0225B0B4
	ldr r3, _02256B78 ; =0x000001BE
	bl __msl_assertion_failed
_02256AA0:
	ldr r0, [r4, #0x11c]
	cmp r0, #0
	bge _02256AC0
	ldr r0, _02256B98 ; =0x0225B3BC
	ldr r1, _02256B70 ; =0x0225B158
	ldr r2, _02256B74 ; =0x0225B0B4
	ldr r3, _02256B78 ; =0x000001BE
	bl __msl_assertion_failed
_02256AC0:
	ldr r0, [r4, #0x11c]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02256AE8
	ldr r0, _02256B9C ; =0x0225B3E0
	ldr r1, _02256B70 ; =0x0225B158
	ldr r2, _02256B74 ; =0x0225B0B4
	ldr r3, _02256B78 ; =0x000001BE
	bl __msl_assertion_failed
_02256AE8:
	ldr r0, [r4, #0x118]
	cmp r0, #0
	bge _02256B08
	ldr r0, _02256BA0 ; =0x0225B414
	ldr r1, _02256B70 ; =0x0225B158
	ldr r2, _02256B74 ; =0x0225B0B4
	ldr r3, _02256B78 ; =0x000001BE
	bl __msl_assertion_failed
_02256B08:
	ldr r1, [r4, #0x118]
	ldr r0, [r4, #0x11c]
	cmp r1, r0
	ble _02256B2C
	ldr r0, _02256BA4 ; =0x0225B438
	ldr r1, _02256B70 ; =0x0225B158
	ldr r2, _02256B74 ; =0x0225B0B4
	ldr r3, _02256B78 ; =0x000001BE
	bl __msl_assertion_failed
_02256B2C:
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _02256B4C
	ldr r0, _02256BA8 ; =0x0225B4D8
	ldr r1, _02256B70 ; =0x0225B158
	ldr r2, _02256B74 ; =0x0225B0B4
	ldr r3, _02256BAC ; =0x000001BF
	bl __msl_assertion_failed
_02256B4C:
	ldr r0, [r4, #4]
	cmp r0, #2
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl ov66_0225648C
	mov r0, r4
	bl ov66_022566FC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02256B6C: .word Unk_ov66_0225B234
_02256B70: .word Unk_ov66_0225B158
_02256B74: .word Unk_ov66_0225B0B4
_02256B78: .word 0x000001BE
_02256B7C: .word Unk_ov66_0225B244
_02256B80: .word Unk_ov66_0225B2C4
_02256B84: .word Unk_ov66_0225B2E4
_02256B88: .word Unk_ov66_0225B308
_02256B8C: .word Unk_ov66_0225B338
_02256B90: .word Unk_ov66_0225B35C
_02256B94: .word Unk_ov66_0225B39C
_02256B98: .word Unk_ov66_0225B3BC
_02256B9C: .word Unk_ov66_0225B3E0
_02256BA0: .word Unk_ov66_0225B414
_02256BA4: .word Unk_ov66_0225B438
_02256BA8: .word Unk_ov66_0225B4D8
_02256BAC: .word 0x000001BF
	arm_func_end ov66_0225699C

	arm_func_start ov66_02256BB0
ov66_02256BB0: ; 0x02256BB0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r8, r0
	mov r7, r1
	bne _02256BD4
	ldr r0, _02256E28 ; =0x0225B234
	ldr r1, _02256E2C ; =0x0225B158
	ldr r2, _02256E30 ; =0x0225B054
	mov r3, #0x1d8
	bl __msl_assertion_failed
_02256BD4:
	ldr r0, [r8, #4]
	cmp r0, #2
	bls _02256BF4
	ldr r0, _02256E34 ; =0x0225B244
	ldr r1, _02256E2C ; =0x0225B158
	ldr r2, _02256E30 ; =0x0225B054
	mov r3, #0x1d8
	bl __msl_assertion_failed
_02256BF4:
	adds r0, r8, #0x108
	bne _02256C10
	ldr r0, _02256E38 ; =0x0225B2C4
	ldr r1, _02256E2C ; =0x0225B158
	ldr r2, _02256E30 ; =0x0225B054
	mov r3, #0x1d8
	bl __msl_assertion_failed
_02256C10:
	ldr r0, [r8, #0x110]
	cmp r0, #0
	bge _02256C30
	ldr r0, _02256E3C ; =0x0225B2E4
	ldr r1, _02256E2C ; =0x0225B158
	ldr r2, _02256E30 ; =0x0225B054
	mov r3, #0x1d8
	bl __msl_assertion_failed
_02256C30:
	ldr r0, [r8, #0x110]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02256C58
	ldr r0, _02256E40 ; =0x0225B308
	ldr r1, _02256E2C ; =0x0225B158
	ldr r2, _02256E30 ; =0x0225B054
	mov r3, #0x1d8
	bl __msl_assertion_failed
_02256C58:
	ldr r0, [r8, #0x10c]
	cmp r0, #0
	bge _02256C78
	ldr r0, _02256E44 ; =0x0225B338
	ldr r1, _02256E2C ; =0x0225B158
	ldr r2, _02256E30 ; =0x0225B054
	mov r3, #0x1d8
	bl __msl_assertion_failed
_02256C78:
	ldr r1, [r8, #0x10c]
	ldr r0, [r8, #0x110]
	cmp r1, r0
	ble _02256C9C
	ldr r0, _02256E48 ; =0x0225B35C
	ldr r1, _02256E2C ; =0x0225B158
	ldr r2, _02256E30 ; =0x0225B054
	mov r3, #0x1d8
	bl __msl_assertion_failed
_02256C9C:
	adds r0, r8, #0x114
	bne _02256CB8
	ldr r0, _02256E4C ; =0x0225B39C
	ldr r1, _02256E2C ; =0x0225B158
	ldr r2, _02256E30 ; =0x0225B054
	mov r3, #0x1d8
	bl __msl_assertion_failed
_02256CB8:
	ldr r0, [r8, #0x11c]
	cmp r0, #0
	bge _02256CD8
	ldr r0, _02256E50 ; =0x0225B3BC
	ldr r1, _02256E2C ; =0x0225B158
	ldr r2, _02256E30 ; =0x0225B054
	mov r3, #0x1d8
	bl __msl_assertion_failed
_02256CD8:
	ldr r0, [r8, #0x11c]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02256D00
	ldr r0, _02256E54 ; =0x0225B3E0
	ldr r1, _02256E2C ; =0x0225B158
	ldr r2, _02256E30 ; =0x0225B054
	mov r3, #0x1d8
	bl __msl_assertion_failed
_02256D00:
	ldr r0, [r8, #0x118]
	cmp r0, #0
	bge _02256D20
	ldr r0, _02256E58 ; =0x0225B414
	ldr r1, _02256E2C ; =0x0225B158
	ldr r2, _02256E30 ; =0x0225B054
	mov r3, #0x1d8
	bl __msl_assertion_failed
_02256D20:
	ldr r1, [r8, #0x118]
	ldr r0, [r8, #0x11c]
	cmp r1, r0
	ble _02256D44
	ldr r0, _02256E5C ; =0x0225B438
	ldr r1, _02256E2C ; =0x0225B158
	ldr r2, _02256E30 ; =0x0225B054
	mov r3, #0x1d8
	bl __msl_assertion_failed
_02256D44:
	ldr r0, [r8, #4]
	cmp r0, #1
	beq _02256D64
	ldr r0, _02256E60 ; =0x0225B4D8
	ldr r1, _02256E2C ; =0x0225B158
	ldr r2, _02256E30 ; =0x0225B054
	ldr r3, _02256E64 ; =0x000001D9
	bl __msl_assertion_failed
_02256D64:
	cmp r7, #0
	bne _02256D80
	ldr r0, _02256E68 ; =0x0225B148
	ldr r1, _02256E2C ; =0x0225B158
	ldr r2, _02256E30 ; =0x0225B054
	ldr r3, _02256E6C ; =0x000001DA
	bl __msl_assertion_failed
_02256D80:
	ldr r0, [r8, #4]
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl strlen
	mov r6, r0
	add r0, r8, #0x114
	add r1, r6, #2
	bl ov66_02255B4C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r5, [r8, #0x114]
	ldr r4, [r8, #0x118]
	mov r1, r7
	mov r2, r6
	add r0, r5, r4
	bl memcpy
	ldr r0, [r8, #0x118]
	mov r2, #0xd
	add r3, r0, r6
	add r0, r3, #1
	str r0, [r8, #0x118]
	ldr r0, [r8, #0x114]
	mov r1, #0xa
	strb r2, [r0, r3]
	ldr r2, [r8, #0x118]
	add r0, r2, #1
	str r0, [r8, #0x118]
	ldr r0, [r8, #0x114]
	strb r1, [r0, r2]
	ldr r0, [r8, #0x120]
	cmp r0, #0
	beq _02256E20
	add r2, r8, #0x26
	add r0, r5, r4
	add r1, r6, #2
	add r2, r2, #0x200
	bl ov66_0224D4D8
_02256E20:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02256E28: .word Unk_ov66_0225B234
_02256E2C: .word Unk_ov66_0225B158
_02256E30: .word Unk_ov66_0225B054
_02256E34: .word Unk_ov66_0225B244
_02256E38: .word Unk_ov66_0225B2C4
_02256E3C: .word Unk_ov66_0225B2E4
_02256E40: .word Unk_ov66_0225B308
_02256E44: .word Unk_ov66_0225B338
_02256E48: .word Unk_ov66_0225B35C
_02256E4C: .word Unk_ov66_0225B39C
_02256E50: .word Unk_ov66_0225B3BC
_02256E54: .word Unk_ov66_0225B3E0
_02256E58: .word Unk_ov66_0225B414
_02256E5C: .word Unk_ov66_0225B438
_02256E60: .word Unk_ov66_0225B4D8
_02256E64: .word 0x000001D9
_02256E68: .word Unk_ov66_0225B148
_02256E6C: .word 0x000001DA
	arm_func_end ov66_02256BB0

	arm_func_start ov66_02256E70
ov66_02256E70: ; 0x02256E70
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _02256E94
	ldr r0, _02257090 ; =0x0225B234
	ldr r1, _02257094 ; =0x0225B158
	ldr r2, _02257098 ; =0x0225B0A4
	ldr r3, _0225709C ; =0x00000213
	bl __msl_assertion_failed
_02256E94:
	ldr r0, [r4, #4]
	cmp r0, #2
	bls _02256EB4
	ldr r0, _022570A0 ; =0x0225B244
	ldr r1, _02257094 ; =0x0225B158
	ldr r2, _02257098 ; =0x0225B0A4
	ldr r3, _0225709C ; =0x00000213
	bl __msl_assertion_failed
_02256EB4:
	adds r0, r4, #0x108
	bne _02256ED0
	ldr r0, _022570A4 ; =0x0225B2C4
	ldr r1, _02257094 ; =0x0225B158
	ldr r2, _02257098 ; =0x0225B0A4
	ldr r3, _0225709C ; =0x00000213
	bl __msl_assertion_failed
_02256ED0:
	ldr r0, [r4, #0x110]
	cmp r0, #0
	bge _02256EF0
	ldr r0, _022570A8 ; =0x0225B2E4
	ldr r1, _02257094 ; =0x0225B158
	ldr r2, _02257098 ; =0x0225B0A4
	ldr r3, _0225709C ; =0x00000213
	bl __msl_assertion_failed
_02256EF0:
	ldr r0, [r4, #0x110]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02256F18
	ldr r0, _022570AC ; =0x0225B308
	ldr r1, _02257094 ; =0x0225B158
	ldr r2, _02257098 ; =0x0225B0A4
	ldr r3, _0225709C ; =0x00000213
	bl __msl_assertion_failed
_02256F18:
	ldr r0, [r4, #0x10c]
	cmp r0, #0
	bge _02256F38
	ldr r0, _022570B0 ; =0x0225B338
	ldr r1, _02257094 ; =0x0225B158
	ldr r2, _02257098 ; =0x0225B0A4
	ldr r3, _0225709C ; =0x00000213
	bl __msl_assertion_failed
_02256F38:
	ldr r1, [r4, #0x10c]
	ldr r0, [r4, #0x110]
	cmp r1, r0
	ble _02256F5C
	ldr r0, _022570B4 ; =0x0225B35C
	ldr r1, _02257094 ; =0x0225B158
	ldr r2, _02257098 ; =0x0225B0A4
	ldr r3, _0225709C ; =0x00000213
	bl __msl_assertion_failed
_02256F5C:
	adds r0, r4, #0x114
	bne _02256F78
	ldr r0, _022570B8 ; =0x0225B39C
	ldr r1, _02257094 ; =0x0225B158
	ldr r2, _02257098 ; =0x0225B0A4
	ldr r3, _0225709C ; =0x00000213
	bl __msl_assertion_failed
_02256F78:
	ldr r0, [r4, #0x11c]
	cmp r0, #0
	bge _02256F98
	ldr r0, _022570BC ; =0x0225B3BC
	ldr r1, _02257094 ; =0x0225B158
	ldr r2, _02257098 ; =0x0225B0A4
	ldr r3, _0225709C ; =0x00000213
	bl __msl_assertion_failed
_02256F98:
	ldr r0, [r4, #0x11c]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02256FC0
	ldr r0, _022570C0 ; =0x0225B3E0
	ldr r1, _02257094 ; =0x0225B158
	ldr r2, _02257098 ; =0x0225B0A4
	ldr r3, _0225709C ; =0x00000213
	bl __msl_assertion_failed
_02256FC0:
	ldr r0, [r4, #0x118]
	cmp r0, #0
	bge _02256FE0
	ldr r0, _022570C4 ; =0x0225B414
	ldr r1, _02257094 ; =0x0225B158
	ldr r2, _02257098 ; =0x0225B0A4
	ldr r3, _0225709C ; =0x00000213
	bl __msl_assertion_failed
_02256FE0:
	ldr r1, [r4, #0x118]
	ldr r0, [r4, #0x11c]
	cmp r1, r0
	ble _02257004
	ldr r0, _022570C8 ; =0x0225B438
	ldr r1, _02257094 ; =0x0225B158
	ldr r2, _02257098 ; =0x0225B0A4
	ldr r3, _0225709C ; =0x00000213
	bl __msl_assertion_failed
_02257004:
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _02257024
	ldr r0, _022570CC ; =0x0225B4D8
	ldr r1, _02257094 ; =0x0225B158
	ldr r2, _02257098 ; =0x0225B0A4
	mov r3, #0x214
	bl __msl_assertion_failed
_02257024:
	ldr r0, [r4, #4]
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r4, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r0, sp, #0xc
	bic r2, r0, #3
	ldr r1, [sp, #0xc]
	ldr r0, _022570D0 ; =0x0225B6F8
	add r2, r2, #4
	bl vsprintf
	mvn r1, #0
	cmp r0, r1
	ldreq r0, _022570D0 ; =0x0225B6F8
	moveq r1, #0
	streqb r1, [r0, #0xfff]
	beq _02257078
	ldr r1, _022570D0 ; =0x0225B6F8
	mov r2, #0
	strb r2, [r1, r0]
_02257078:
	ldr r1, _022570D0 ; =0x0225B6F8
	mov r0, r4
	bl ov66_02256BB0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_02257090: .word Unk_ov66_0225B234
_02257094: .word Unk_ov66_0225B158
_02257098: .word Unk_ov66_0225B0A4
_0225709C: .word 0x00000213
_022570A0: .word Unk_ov66_0225B244
_022570A4: .word Unk_ov66_0225B2C4
_022570A8: .word Unk_ov66_0225B2E4
_022570AC: .word Unk_ov66_0225B308
_022570B0: .word Unk_ov66_0225B338
_022570B4: .word Unk_ov66_0225B35C
_022570B8: .word Unk_ov66_0225B39C
_022570BC: .word Unk_ov66_0225B3BC
_022570C0: .word Unk_ov66_0225B3E0
_022570C4: .word Unk_ov66_0225B414
_022570C8: .word Unk_ov66_0225B438
_022570CC: .word Unk_ov66_0225B4D8
_022570D0: .word Unk_ov66_0225B6F8
	arm_func_end ov66_02256E70

	arm_func_start ov66_022570D4
ov66_022570D4: ; 0x022570D4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	movs sl, r0
	ldrnesb r0, [sl]
	mov r4, #0
	mov sb, r1
	mov r5, r4
	mov r6, r4
	mov r7, r4
	mov r8, r4
	cmpne r0, #0
	bne _0225711C
	ldr r0, _02257260 ; =0x0225B4FC
	ldr r1, _02257264 ; =0x0225B158
	ldr r2, _02257268 ; =0x0225B048
	ldr r3, _0225726C ; =0x00000232
	bl __msl_assertion_failed
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0225711C:
	ldrsb r0, [sl]
	mov r1, sl
	cmp r0, #0
	beq _02257198
_0225712C:
	ldrsb r0, [r1]
	cmp r0, #0x21
	addne r1, r1, #1
	addne r6, r6, #1
	bne _0225718C
	ldrsb r0, [r1, #1]!
	mov r4, r1
	cmp r0, #0
	beq _0225718C
_02257150:
	cmp r0, #0x40
	addne r1, r1, #1
	addne r7, r7, #1
	bne _02257180
	ldrsb r0, [r1, #1]!
	mov r5, r1
	cmp r0, #0
	beq _02257180
_02257170:
	ldrsb r0, [r1, #1]!
	add r8, r8, #1
	cmp r0, #0
	bne _02257170
_02257180:
	ldrsb r0, [r1]
	cmp r0, #0
	bne _02257150
_0225718C:
	ldrsb r0, [r1]
	cmp r0, #0
	bne _0225712C
_02257198:
	cmp r6, #0
	beq _022571D0
	add r0, r6, #1
	bl ov4_021D7880
	str r0, [sb, #8]
	cmp r0, #0
	beq _022571D8
	mov r1, sl
	mov r2, r6
	bl memcpy
	ldr r0, [sb, #8]
	mov r1, #0
	strb r1, [r0, r6]
	b _022571D8
_022571D0:
	mov r0, #0
	str r0, [sb, #8]
_022571D8:
	cmp r7, #0
	beq _02257210
	add r0, r7, #1
	bl ov4_021D7880
	str r0, [sb, #0xc]
	cmp r0, #0
	beq _02257218
	mov r1, r4
	mov r2, r7
	bl memcpy
	ldr r0, [sb, #0xc]
	mov r1, #0
	strb r1, [r0, r7]
	b _02257218
_02257210:
	mov r0, #0
	str r0, [sb, #0xc]
_02257218:
	cmp r8, #0
	beq _02257250
	add r0, r8, #1
	bl ov4_021D7880
	str r0, [sb, #0x10]
	cmp r0, #0
	beq _02257258
	mov r1, r5
	mov r2, r8
	bl memcpy
	ldr r0, [sb, #0x10]
	mov r1, #0
	strb r1, [r0, r8]
	b _02257258
_02257250:
	mov r0, #0
	str r0, [sb, #0x10]
_02257258:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02257260: .word Unk_ov66_0225B4FC
_02257264: .word Unk_ov66_0225B158
_02257268: .word Unk_ov66_0225B048
_0225726C: .word 0x00000232
	arm_func_end ov66_022570D4

	arm_func_start ov66_02257270
ov66_02257270: ; 0x02257270
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5, #0x24]
	mov r6, r0
	add r1, r1, #1
	ldr r0, [r5, #0x20]
	mov r1, r1, lsl #2
	bl ov4_021D7894
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	str r0, [r5, #0x20]
	mov r0, r6
	bl strlen
	add r0, r0, #1
	bl ov4_021D7880
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r6
	bl strcpy
	ldr r2, [r5, #0x24]
	mov r0, #1
	add r1, r2, #1
	str r1, [r5, #0x24]
	ldr r1, [r5, #0x20]
	str r4, [r1, r2, lsl #2]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov66_02257270

	arm_func_start ov66_022572E0
ov66_022572E0: ; 0x022572E0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r6, r0
	mov r5, r1
	bne _02257304
	ldr r0, _02257404 ; =0x0225B500
	ldr r1, _02257408 ; =0x0225B158
	ldr r2, _0225740C ; =0x0225B084
	ldr r3, _02257410 ; =0x000002A1
	bl __msl_assertion_failed
_02257304:
	cmp r5, #0
	bne _02257320
	ldr r0, _02257414 ; =0x0225B510
	ldr r1, _02257408 ; =0x0225B158
	ldr r2, _0225740C ; =0x0225B084
	ldr r3, _02257418 ; =0x000002A2
	bl __msl_assertion_failed
_02257320:
	mov r0, r6
	bl strlen
	add r0, r0, #1
	bl ov4_021D7880
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r6
	bl strcpy
	ldrsb r0, [r4]
	cmp r0, #0x3a
	bne _02257360
	mov r0, #0
	strb r0, [r4]
	add r8, r4, #1
	b _02257378
_02257360:
	ldr r1, _0225741C ; =0x0225B520
	mov r0, r4
	bl strstr
	movs r8, r0
	movne r0, #0
	strneb r0, [r8], #2
_02257378:
	ldr r1, _02257420 ; =0x0225B524
	mov r0, r4
	bl strtok
	cmp r0, #0
	beq _022573C8
	ldr r6, _02257420 ; =0x0225B524
	mov r7, #0
_02257394:
	mov r1, r5
	bl ov66_02257270
	cmp r0, #0
	bne _022573B4
	mov r0, r4
	bl ov4_021D78B0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022573B4:
	mov r0, r7
	mov r1, r6
	bl strtok
	cmp r0, #0
	bne _02257394
_022573C8:
	cmp r8, #0
	beq _022573F4
	mov r0, r8
	mov r1, r5
	bl ov66_02257270
	cmp r0, #0
	bne _022573F4
	mov r0, r4
	bl ov4_021D78B0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022573F4:
	mov r0, r4
	bl ov4_021D78B0
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02257404: .word Unk_ov66_0225B500
_02257408: .word Unk_ov66_0225B158
_0225740C: .word Unk_ov66_0225B084
_02257410: .word 0x000002A1
_02257414: .word Unk_ov66_0225B510
_02257418: .word 0x000002A2
_0225741C: .word Unk_ov66_0225B520
_02257420: .word Unk_ov66_0225B524
	arm_func_end ov66_022572E0

	arm_func_start ov66_02257424
ov66_02257424: ; 0x02257424
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	movs sb, r1
	mov sl, r0
	ldrnesb r0, [sb]
	mov r5, #0
	mov r6, r5
	mov r7, r5
	mov r8, r5
	cmpne r0, #0
	bne _02257468
	ldr r0, _02257858 ; =0x0225B4FC
	ldr r1, _0225785C ; =0x0225B158
	ldr r2, _02257860 ; =0x0225B0C4
	mov r3, #0x2e4
	bl __msl_assertion_failed
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02257468:
	mov r0, sb
	bl strlen
	mov r4, r0
	add r0, r4, #1
	bl ov4_021D7880
	str r0, [sl, #0x328]
	cmp r0, #0
	moveq r0, r5
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, sb
	mov r2, r4
	bl memcpy
	ldr r0, [sl, #0x328]
	mov r1, r5
	strb r1, [r0, r4]
	b _022574AC
_022574A8:
	add sb, sb, #1
_022574AC:
	ldrsb r0, [sb]
	cmp r0, #0xa
	cmpne r0, #0xd
	beq _022574A8
	cmp r0, #0x3a
	bne _022574F4
	add sb, sb, #1
	str sb, [sl, #0x32c]
	ldrsb r0, [sb]
	cmp r0, #0
	beq _022574F4
	b _022574E4
_022574DC:
	add r5, r5, #1
	add sb, sb, #1
_022574E4:
	ldrsb r0, [sb]
	cmp r0, #0x20
	cmpne r0, #0
	bne _022574DC
_022574F4:
	cmp r0, #0x20
	bne _02257508
_022574FC:
	ldrsb r0, [sb, #1]!
	cmp r0, #0x20
	beq _022574FC
_02257508:
	cmp r0, #0
	beq _02257530
	str sb, [sl, #0x33c]
	b _02257520
_02257518:
	add r6, r6, #1
	add sb, sb, #1
_02257520:
	ldrsb r0, [sb]
	cmp r0, #0x20
	cmpne r0, #0
	bne _02257518
_02257530:
	cmp r0, #0x20
	bne _02257544
_02257538:
	ldrsb r0, [sb, #1]!
	cmp r0, #0x20
	beq _02257538
_02257544:
	cmp r0, #0x3a
	cmpne r0, #0
	beq _02257570
	str sb, [sl, #0x340]
	b _02257560
_02257558:
	add r7, r7, #1
	add sb, sb, #1
_02257560:
	ldrsb r0, [sb]
	cmp r0, #0x20
	cmpne r0, #0
	bne _02257558
_02257570:
	cmp r0, #0x20
	bne _02257584
_02257578:
	ldrsb r0, [sb, #1]!
	cmp r0, #0x20
	beq _02257578
_02257584:
	cmp r0, #0
	strne sb, [sl, #0x344]
	ldrnesb r0, [sb]
	cmpne r0, #0
	beq _022575A8
_02257598:
	ldrsb r0, [sb, #1]!
	add r8, r8, #1
	cmp r0, #0
	bne _02257598
_022575A8:
	cmp r5, #0
	beq _0225762C
	ldr r4, [sl, #0x32c]
	add r0, r5, #1
	bl ov4_021D7880
	str r0, [sl, #0x32c]
	cmp r0, #0
	beq _022575E0
	mov r1, r4
	mov r2, r5
	bl memcpy
	ldr r0, [sl, #0x32c]
	mov r1, #0
	strb r1, [r0, r5]
_022575E0:
	ldr r0, [sl, #0x32c]
	add r1, sl, #0x328
	bl ov66_022570D4
	cmp r0, #0
	bne _02257640
	ldr r0, [sl, #0x328]
	cmp r0, #0
	beq _0225760C
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x328]
_0225760C:
	ldr r0, [sl, #0x32c]
	cmp r0, #0
	beq _02257624
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x32c]
_02257624:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0225762C:
	mov r0, #0
	str r0, [sl, #0x32c]
	str r0, [sl, #0x330]
	str r0, [sl, #0x334]
	str r0, [sl, #0x338]
_02257640:
	cmp r7, #0
	beq _022576DC
	ldr r0, [sl, #0x340]
	add r1, sl, #0x328
	bl ov66_022572E0
	cmp r0, #0
	bne _02257784
	ldr r0, [sl, #0x328]
	cmp r0, #0
	beq _02257674
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x328]
_02257674:
	ldr r0, [sl, #0x32c]
	cmp r0, #0
	beq _0225768C
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x32c]
_0225768C:
	ldr r0, [sl, #0x330]
	cmp r0, #0
	beq _022576A4
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x330]
_022576A4:
	ldr r0, [sl, #0x334]
	cmp r0, #0
	beq _022576BC
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x334]
_022576BC:
	ldr r0, [sl, #0x338]
	cmp r0, #0
	beq _022576D4
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x338]
_022576D4:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_022576DC:
	cmp r8, #0
	beq _02257778
	ldr r0, [sl, #0x344]
	add r1, sl, #0x328
	bl ov66_022572E0
	cmp r0, #0
	bne _02257784
	ldr r0, [sl, #0x328]
	cmp r0, #0
	beq _02257710
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x328]
_02257710:
	ldr r0, [sl, #0x32c]
	cmp r0, #0
	beq _02257728
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x32c]
_02257728:
	ldr r0, [sl, #0x330]
	cmp r0, #0
	beq _02257740
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x330]
_02257740:
	ldr r0, [sl, #0x334]
	cmp r0, #0
	beq _02257758
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x334]
_02257758:
	ldr r0, [sl, #0x338]
	cmp r0, #0
	beq _02257770
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x338]
_02257770:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02257778:
	mov r0, #0
	str r0, [sl, #0x348]
	str r0, [sl, #0x34c]
_02257784:
	cmp r8, #0
	beq _022577C0
	ldr r4, [sl, #0x344]
	add r0, r8, #1
	bl ov4_021D7880
	str r0, [sl, #0x344]
	cmp r0, #0
	beq _022577C8
	mov r1, r4
	mov r2, r8
	bl memcpy
	ldr r0, [sl, #0x344]
	mov r1, #0
	strb r1, [r0, r8]
	b _022577C8
_022577C0:
	mov r0, #0
	str r0, [sl, #0x344]
_022577C8:
	cmp r6, #0
	beq _02257804
	ldr r4, [sl, #0x33c]
	add r0, r6, #1
	bl ov4_021D7880
	str r0, [sl, #0x33c]
	cmp r0, #0
	beq _0225780C
	mov r1, r4
	mov r2, r6
	bl memcpy
	ldr r0, [sl, #0x33c]
	mov r1, #0
	strb r1, [r0, r6]
	b _0225780C
_02257804:
	mov r0, #0
	str r0, [sl, #0x33c]
_0225780C:
	cmp r7, #0
	beq _02257848
	ldr r4, [sl, #0x340]
	add r0, r7, #1
	bl ov4_021D7880
	str r0, [sl, #0x340]
	cmp r0, #0
	beq _02257850
	mov r1, r4
	mov r2, r7
	bl memcpy
	ldr r0, [sl, #0x340]
	mov r1, #0
	strb r1, [r0, r7]
	b _02257850
_02257848:
	mov r0, #0
	str r0, [sl, #0x340]
_02257850:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02257858: .word Unk_ov66_0225B4FC
_0225785C: .word Unk_ov66_0225B158
_02257860: .word Unk_ov66_0225B0C4
	arm_func_end ov66_02257424

	arm_func_start ov66_02257864
ov66_02257864: ; 0x02257864
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	ldr r5, [sl, #0x108]
	ldrsb r0, [r5]
	cmp r0, #0
	beq _02257A50
	b _02257884
_02257880:
	add r5, r5, #1
_02257884:
	ldrsb r0, [r5]
	cmp r0, #0xd
	cmpne r0, #0xa
	beq _02257880
	cmp r0, #0
	beq _02257A50
	mov r6, r5
	mov r7, r5
	b _022578B4
_022578A8:
	cmp r0, #0x20
	movne r7, r6
	add r6, r6, #1
_022578B4:
	ldrsb r0, [r6]
	cmp r0, #0xa
	cmpne r0, #0xd
	cmpne r0, #0
	bne _022578A8
	cmp r0, #0
	beq _02257A50
	ldrsb r8, [r7, #1]
	mov r0, #0
	strb r0, [r7, #1]
	ldr r0, [sl, #0x328]
	cmp r0, #0
	beq _022578F4
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x328]
_022578F4:
	ldr r0, [sl, #0x32c]
	cmp r0, #0
	beq _0225790C
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x32c]
_0225790C:
	ldr r0, [sl, #0x330]
	cmp r0, #0
	beq _02257924
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x330]
_02257924:
	ldr r0, [sl, #0x334]
	cmp r0, #0
	beq _0225793C
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x334]
_0225793C:
	ldr r0, [sl, #0x338]
	cmp r0, #0
	beq _02257954
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x338]
_02257954:
	ldr r0, [sl, #0x33c]
	cmp r0, #0
	beq _0225796C
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x33c]
_0225796C:
	ldr r0, [sl, #0x340]
	cmp r0, #0
	beq _02257984
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x340]
_02257984:
	ldr r0, [sl, #0x344]
	cmp r0, #0
	beq _0225799C
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x344]
_0225799C:
	ldr r0, [sl, #0x34c]
	mov sb, #0
	cmp r0, #0
	ble _022579DC
	mov r4, sb
_022579B0:
	ldr r0, [sl, #0x348]
	ldr r0, [r0, sb, lsl #2]
	cmp r0, #0
	beq _022579CC
	bl ov4_021D78B0
	ldr r0, [sl, #0x348]
	str r4, [r0, sb, lsl #2]
_022579CC:
	ldr r0, [sl, #0x34c]
	add sb, sb, #1
	cmp sb, r0
	blt _022579B0
_022579DC:
	ldr r0, [sl, #0x348]
	cmp r0, #0
	beq _022579F4
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sl, #0x348]
_022579F4:
	mov r1, #0
	add r0, sl, #0x328
	mov r2, #0x28
	str r1, [sl, #0x34c]
	bl memset
	mov r0, sl
	mov r1, r5
	bl ov66_02257424
	cmp r0, #0
	bne _02257A34
	add r0, sl, #0x328
	mov r1, #0
	mov r2, #0x28
	bl memset
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02257A34:
	strb r8, [r7, #1]
	ldr r1, [sl, #0x108]
	add r0, sl, #0x108
	sub r1, r6, r1
	bl ov66_02255CB0
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02257A50:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov66_02257864

	arm_func_start ov66_02257A58
ov66_02257A58: ; 0x02257A58
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _02257A78
	ldr r0, _02257C10 ; =0x0225B234
	ldr r1, _02257C14 ; =0x0225B158
	ldr r2, _02257C18 ; =0x0225B064
	ldr r3, _02257C1C ; =0x000003E9
	bl __msl_assertion_failed
_02257A78:
	ldr r0, [r4, #4]
	cmp r0, #2
	bls _02257A98
	ldr r0, _02257C20 ; =0x0225B244
	ldr r1, _02257C14 ; =0x0225B158
	ldr r2, _02257C18 ; =0x0225B064
	ldr r3, _02257C1C ; =0x000003E9
	bl __msl_assertion_failed
_02257A98:
	adds r0, r4, #0x108
	bne _02257AB4
	ldr r0, _02257C24 ; =0x0225B2C4
	ldr r1, _02257C14 ; =0x0225B158
	ldr r2, _02257C18 ; =0x0225B064
	ldr r3, _02257C1C ; =0x000003E9
	bl __msl_assertion_failed
_02257AB4:
	ldr r0, [r4, #0x110]
	cmp r0, #0
	bge _02257AD4
	ldr r0, _02257C28 ; =0x0225B2E4
	ldr r1, _02257C14 ; =0x0225B158
	ldr r2, _02257C18 ; =0x0225B064
	ldr r3, _02257C1C ; =0x000003E9
	bl __msl_assertion_failed
_02257AD4:
	ldr r0, [r4, #0x110]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02257AFC
	ldr r0, _02257C2C ; =0x0225B308
	ldr r1, _02257C14 ; =0x0225B158
	ldr r2, _02257C18 ; =0x0225B064
	ldr r3, _02257C1C ; =0x000003E9
	bl __msl_assertion_failed
_02257AFC:
	ldr r0, [r4, #0x10c]
	cmp r0, #0
	bge _02257B1C
	ldr r0, _02257C30 ; =0x0225B338
	ldr r1, _02257C14 ; =0x0225B158
	ldr r2, _02257C18 ; =0x0225B064
	ldr r3, _02257C1C ; =0x000003E9
	bl __msl_assertion_failed
_02257B1C:
	ldr r1, [r4, #0x10c]
	ldr r0, [r4, #0x110]
	cmp r1, r0
	ble _02257B40
	ldr r0, _02257C34 ; =0x0225B35C
	ldr r1, _02257C14 ; =0x0225B158
	ldr r2, _02257C18 ; =0x0225B064
	ldr r3, _02257C1C ; =0x000003E9
	bl __msl_assertion_failed
_02257B40:
	adds r0, r4, #0x114
	bne _02257B5C
	ldr r0, _02257C38 ; =0x0225B39C
	ldr r1, _02257C14 ; =0x0225B158
	ldr r2, _02257C18 ; =0x0225B064
	ldr r3, _02257C1C ; =0x000003E9
	bl __msl_assertion_failed
_02257B5C:
	ldr r0, [r4, #0x11c]
	cmp r0, #0
	bge _02257B7C
	ldr r0, _02257C3C ; =0x0225B3BC
	ldr r1, _02257C14 ; =0x0225B158
	ldr r2, _02257C18 ; =0x0225B064
	ldr r3, _02257C1C ; =0x000003E9
	bl __msl_assertion_failed
_02257B7C:
	ldr r0, [r4, #0x11c]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #19
	adds r0, r1, r0, ror #19
	beq _02257BA4
	ldr r0, _02257C40 ; =0x0225B3E0
	ldr r1, _02257C14 ; =0x0225B158
	ldr r2, _02257C18 ; =0x0225B064
	ldr r3, _02257C1C ; =0x000003E9
	bl __msl_assertion_failed
_02257BA4:
	ldr r0, [r4, #0x118]
	cmp r0, #0
	bge _02257BC4
	ldr r0, _02257C44 ; =0x0225B414
	ldr r1, _02257C14 ; =0x0225B158
	ldr r2, _02257C18 ; =0x0225B064
	ldr r3, _02257C1C ; =0x000003E9
	bl __msl_assertion_failed
_02257BC4:
	ldr r1, [r4, #0x118]
	ldr r0, [r4, #0x11c]
	cmp r1, r0
	ble _02257BE8
	ldr r0, _02257C48 ; =0x0225B438
	ldr r1, _02257C14 ; =0x0225B158
	ldr r2, _02257C18 ; =0x0225B064
	ldr r3, _02257C1C ; =0x000003E9
	bl __msl_assertion_failed
_02257BE8:
	ldr r0, [r4, #0x10c]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl ov66_02257864
	cmp r0, #0
	addne r0, r4, #0x328
	moveq r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02257C10: .word Unk_ov66_0225B234
_02257C14: .word Unk_ov66_0225B158
_02257C18: .word Unk_ov66_0225B064
_02257C1C: .word 0x000003E9
_02257C20: .word Unk_ov66_0225B244
_02257C24: .word Unk_ov66_0225B2C4
_02257C28: .word Unk_ov66_0225B2E4
_02257C2C: .word Unk_ov66_0225B308
_02257C30: .word Unk_ov66_0225B338
_02257C34: .word Unk_ov66_0225B35C
_02257C38: .word Unk_ov66_0225B39C
_02257C3C: .word Unk_ov66_0225B3BC
_02257C40: .word Unk_ov66_0225B3E0
_02257C44: .word Unk_ov66_0225B414
_02257C48: .word Unk_ov66_0225B438
	arm_func_end ov66_02257A58
	.data


	.global Unk_ov66_0225B048
Unk_ov66_0225B048: ; 0x0225B048
	.incbin "incbin/overlay66_data.bin", 0x2328, 0x2334 - 0x2328

	.global Unk_ov66_0225B054
Unk_ov66_0225B054: ; 0x0225B054
	.incbin "incbin/overlay66_data.bin", 0x2334, 0x2344 - 0x2334

	.global Unk_ov66_0225B064
Unk_ov66_0225B064: ; 0x0225B064
	.incbin "incbin/overlay66_data.bin", 0x2344, 0x2354 - 0x2344

	.global Unk_ov66_0225B074
Unk_ov66_0225B074: ; 0x0225B074
	.incbin "incbin/overlay66_data.bin", 0x2354, 0x2364 - 0x2354

	.global Unk_ov66_0225B084
Unk_ov66_0225B084: ; 0x0225B084
	.incbin "incbin/overlay66_data.bin", 0x2364, 0x2374 - 0x2364

	.global Unk_ov66_0225B094
Unk_ov66_0225B094: ; 0x0225B094
	.incbin "incbin/overlay66_data.bin", 0x2374, 0x2384 - 0x2374

	.global Unk_ov66_0225B0A4
Unk_ov66_0225B0A4: ; 0x0225B0A4
	.incbin "incbin/overlay66_data.bin", 0x2384, 0x2394 - 0x2384

	.global Unk_ov66_0225B0B4
Unk_ov66_0225B0B4: ; 0x0225B0B4
	.incbin "incbin/overlay66_data.bin", 0x2394, 0x23A4 - 0x2394

	.global Unk_ov66_0225B0C4
Unk_ov66_0225B0C4: ; 0x0225B0C4
	.incbin "incbin/overlay66_data.bin", 0x23A4, 0x23B4 - 0x23A4

	.global Unk_ov66_0225B0D4
Unk_ov66_0225B0D4: ; 0x0225B0D4
	.incbin "incbin/overlay66_data.bin", 0x23B4, 0x23C4 - 0x23B4

	.global Unk_ov66_0225B0E4
Unk_ov66_0225B0E4: ; 0x0225B0E4
	.incbin "incbin/overlay66_data.bin", 0x23C4, 0x23D8 - 0x23C4

	.global Unk_ov66_0225B0F8
Unk_ov66_0225B0F8: ; 0x0225B0F8
	.incbin "incbin/overlay66_data.bin", 0x23D8, 0x23EC - 0x23D8

	.global Unk_ov66_0225B10C
Unk_ov66_0225B10C: ; 0x0225B10C
	.incbin "incbin/overlay66_data.bin", 0x23EC, 0x2400 - 0x23EC

	.global Unk_ov66_0225B120
Unk_ov66_0225B120: ; 0x0225B120
	.incbin "incbin/overlay66_data.bin", 0x2400, 0x2414 - 0x2400

	.global Unk_ov66_0225B134
Unk_ov66_0225B134: ; 0x0225B134
	.incbin "incbin/overlay66_data.bin", 0x2414, 0x2428 - 0x2414

	.global Unk_ov66_0225B148
Unk_ov66_0225B148: ; 0x0225B148
	.incbin "incbin/overlay66_data.bin", 0x2428, 0x2438 - 0x2428

	.global Unk_ov66_0225B158
Unk_ov66_0225B158: ; 0x0225B158
	.incbin "incbin/overlay66_data.bin", 0x2438, 0x2448 - 0x2438

	.global Unk_ov66_0225B168
Unk_ov66_0225B168: ; 0x0225B168
	.incbin "incbin/overlay66_data.bin", 0x2448, 0x245C - 0x2448

	.global Unk_ov66_0225B17C
Unk_ov66_0225B17C: ; 0x0225B17C
	.incbin "incbin/overlay66_data.bin", 0x245C, 0x2470 - 0x245C

	.global Unk_ov66_0225B190
Unk_ov66_0225B190: ; 0x0225B190
	.incbin "incbin/overlay66_data.bin", 0x2470, 0x2494 - 0x2470

	.global Unk_ov66_0225B1B4
Unk_ov66_0225B1B4: ; 0x0225B1B4
	.incbin "incbin/overlay66_data.bin", 0x2494, 0x24AC - 0x2494

	.global Unk_ov66_0225B1CC
Unk_ov66_0225B1CC: ; 0x0225B1CC
	.incbin "incbin/overlay66_data.bin", 0x24AC, 0x24D0 - 0x24AC

	.global Unk_ov66_0225B1F0
Unk_ov66_0225B1F0: ; 0x0225B1F0
	.incbin "incbin/overlay66_data.bin", 0x24D0, 0x24DC - 0x24D0

	.global Unk_ov66_0225B1FC
Unk_ov66_0225B1FC: ; 0x0225B1FC
	.incbin "incbin/overlay66_data.bin", 0x24DC, 0x24EC - 0x24DC

	.global Unk_ov66_0225B20C
Unk_ov66_0225B20C: ; 0x0225B20C
	.incbin "incbin/overlay66_data.bin", 0x24EC, 0x2504 - 0x24EC

	.global Unk_ov66_0225B224
Unk_ov66_0225B224: ; 0x0225B224
	.incbin "incbin/overlay66_data.bin", 0x2504, 0x2514 - 0x2504

	.global Unk_ov66_0225B234
Unk_ov66_0225B234: ; 0x0225B234
	.incbin "incbin/overlay66_data.bin", 0x2514, 0x2524 - 0x2514

	.global Unk_ov66_0225B244
Unk_ov66_0225B244: ; 0x0225B244
	.incbin "incbin/overlay66_data.bin", 0x2524, 0x25A4 - 0x2524

	.global Unk_ov66_0225B2C4
Unk_ov66_0225B2C4: ; 0x0225B2C4
	.incbin "incbin/overlay66_data.bin", 0x25A4, 0x25C4 - 0x25A4

	.global Unk_ov66_0225B2E4
Unk_ov66_0225B2E4: ; 0x0225B2E4
	.incbin "incbin/overlay66_data.bin", 0x25C4, 0x25E8 - 0x25C4

	.global Unk_ov66_0225B308
Unk_ov66_0225B308: ; 0x0225B308
	.incbin "incbin/overlay66_data.bin", 0x25E8, 0x2618 - 0x25E8

	.global Unk_ov66_0225B338
Unk_ov66_0225B338: ; 0x0225B338
	.incbin "incbin/overlay66_data.bin", 0x2618, 0x263C - 0x2618

	.global Unk_ov66_0225B35C
Unk_ov66_0225B35C: ; 0x0225B35C
	.incbin "incbin/overlay66_data.bin", 0x263C, 0x267C - 0x263C

	.global Unk_ov66_0225B39C
Unk_ov66_0225B39C: ; 0x0225B39C
	.incbin "incbin/overlay66_data.bin", 0x267C, 0x269C - 0x267C

	.global Unk_ov66_0225B3BC
Unk_ov66_0225B3BC: ; 0x0225B3BC
	.incbin "incbin/overlay66_data.bin", 0x269C, 0x26C0 - 0x269C

	.global Unk_ov66_0225B3E0
Unk_ov66_0225B3E0: ; 0x0225B3E0
	.incbin "incbin/overlay66_data.bin", 0x26C0, 0x26F4 - 0x26C0

	.global Unk_ov66_0225B414
Unk_ov66_0225B414: ; 0x0225B414
	.incbin "incbin/overlay66_data.bin", 0x26F4, 0x2718 - 0x26F4

	.global Unk_ov66_0225B438
Unk_ov66_0225B438: ; 0x0225B438
	.incbin "incbin/overlay66_data.bin", 0x2718, 0x2758 - 0x2718

	.global Unk_ov66_0225B478
Unk_ov66_0225B478: ; 0x0225B478
	.incbin "incbin/overlay66_data.bin", 0x2758, 0x2770 - 0x2758

	.global Unk_ov66_0225B490
Unk_ov66_0225B490: ; 0x0225B490
	.incbin "incbin/overlay66_data.bin", 0x2770, 0x277C - 0x2770

	.global Unk_ov66_0225B49C
Unk_ov66_0225B49C: ; 0x0225B49C
	.incbin "incbin/overlay66_data.bin", 0x277C, 0x2790 - 0x277C

	.global Unk_ov66_0225B4B0
Unk_ov66_0225B4B0: ; 0x0225B4B0
	.incbin "incbin/overlay66_data.bin", 0x2790, 0x27B8 - 0x2790

	.global Unk_ov66_0225B4D8
Unk_ov66_0225B4D8: ; 0x0225B4D8
	.incbin "incbin/overlay66_data.bin", 0x27B8, 0x27DC - 0x27B8

	.global Unk_ov66_0225B4FC
Unk_ov66_0225B4FC: ; 0x0225B4FC
	.incbin "incbin/overlay66_data.bin", 0x27DC, 0x27E0 - 0x27DC

	.global Unk_ov66_0225B500
Unk_ov66_0225B500: ; 0x0225B500
	.incbin "incbin/overlay66_data.bin", 0x27E0, 0x27F0 - 0x27E0

	.global Unk_ov66_0225B510
Unk_ov66_0225B510: ; 0x0225B510
	.incbin "incbin/overlay66_data.bin", 0x27F0, 0x2800 - 0x27F0

	.global Unk_ov66_0225B520
Unk_ov66_0225B520: ; 0x0225B520
	.incbin "incbin/overlay66_data.bin", 0x2800, 0x2804 - 0x2800

	.global Unk_ov66_0225B524
Unk_ov66_0225B524: ; 0x0225B524
	.incbin "incbin/overlay66_data.bin", 0x2804, 0x2


	.bss


	.global Unk_ov66_0225B6F8
Unk_ov66_0225B6F8: ; 0x0225B6F8
	.space 0x1000

