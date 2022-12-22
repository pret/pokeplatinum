	.include "macros/function.inc"
	.include "include/unk_020BDF4C.inc"

	

	.text


	arm_func_start GX_VRAMCNT_SetLCDC_
GX_VRAMCNT_SetLCDC_: ; 0x020BDF4C
	tst r0, #1
	ldrne r1, _020BDFE0 ; =0x04000240
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #2
	ldrne r1, _020BDFE4 ; =0x04000241
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #4
	ldrne r1, _020BDFE8 ; =0x04000242
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #8
	ldrne r1, _020BDFEC ; =0x04000243
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #0x10
	ldrne r1, _020BDFF0 ; =0x04000244
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #0x20
	ldrne r1, _020BDFF4 ; =0x04000245
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #0x40
	ldrne r1, _020BDFF8 ; =0x04000246
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #0x80
	ldrne r1, _020BDFFC ; =0x04000248
	movne r2, #0x80
	strneb r2, [r1]
	tst r0, #0x100
	ldrne r0, _020BE000 ; =0x04000249
	movne r1, #0x80
	strneb r1, [r0]
	bx lr
	; .align 2, 0
_020BDFE0: .word 0x04000240
_020BDFE4: .word 0x04000241
_020BDFE8: .word 0x04000242
_020BDFEC: .word 0x04000243
_020BDFF0: .word 0x04000244
_020BDFF4: .word 0x04000245
_020BDFF8: .word 0x04000246
_020BDFFC: .word 0x04000248
_020BE000: .word 0x04000249
	arm_func_end GX_VRAMCNT_SetLCDC_

	arm_func_start GX_SetBankForBG
GX_SetBankForBG: ; 0x020BE004
	stmfd sp!, {r3, lr}
	ldr r1, _020BE274 ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #2]
	cmp r0, #0x40
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #2]
	bgt _020BE0DC
	cmp r0, #0x40
	bge _020BE258
	cmp r0, #0x20
	bgt _020BE0D0
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020BE264
_020BE04C: ; jump table
	b _020BE264 ; case 0
	b _020BE178 ; case 1
	b _020BE144 ; case 2
	b _020BE16C ; case 3
	b _020BE11C ; case 4
	b _020BE1B4 ; case 5
	b _020BE138 ; case 6
	b _020BE160 ; case 7
	b _020BE100 ; case 8
	b _020BE1CC ; case 9
	b _020BE1E4 ; case 10
	b _020BE188 ; case 11
	b _020BE110 ; case 12
	b _020BE1A8 ; case 13
	b _020BE12C ; case 14
	b _020BE154 ; case 15
	b _020BE214 ; case 16
	b _020BE264 ; case 17
	b _020BE264 ; case 18
	b _020BE264 ; case 19
	b _020BE264 ; case 20
	b _020BE264 ; case 21
	b _020BE264 ; case 22
	b _020BE264 ; case 23
	b _020BE264 ; case 24
	b _020BE264 ; case 25
	b _020BE264 ; case 26
	b _020BE264 ; case 27
	b _020BE264 ; case 28
	b _020BE264 ; case 29
	b _020BE264 ; case 30
	b _020BE264 ; case 31
	b _020BE248 ; case 32
_020BE0D0:
	cmp r0, #0x30
	beq _020BE208
	b _020BE264
_020BE0DC:
	cmp r0, #0x60
	bgt _020BE0F4
	bge _020BE23C
	cmp r0, #0x50
	beq _020BE224
	b _020BE264
_020BE0F4:
	cmp r0, #0x70
	beq _020BE1FC
	b _020BE264
_020BE100:
	ldr r0, _020BE278 ; =0x04000243
	mov r1, #0x81
	strb r1, [r0]
	b _020BE264
_020BE110:
	ldr r0, _020BE278 ; =0x04000243
	mov r1, #0x89
	strb r1, [r0]
_020BE11C:
	ldr r0, _020BE27C ; =0x04000242
	mov r1, #0x81
	strb r1, [r0]
	b _020BE264
_020BE12C:
	ldr r0, _020BE278 ; =0x04000243
	mov r1, #0x91
	strb r1, [r0]
_020BE138:
	ldr r0, _020BE27C ; =0x04000242
	mov r1, #0x89
	strb r1, [r0]
_020BE144:
	ldr r0, _020BE280 ; =0x04000241
	mov r1, #0x81
	strb r1, [r0]
	b _020BE264
_020BE154:
	ldr r0, _020BE278 ; =0x04000243
	mov r1, #0x99
	strb r1, [r0]
_020BE160:
	ldr r0, _020BE27C ; =0x04000242
	mov r1, #0x91
	strb r1, [r0]
_020BE16C:
	ldr r0, _020BE280 ; =0x04000241
	mov r1, #0x89
	strb r1, [r0]
_020BE178:
	ldr r0, _020BE284 ; =0x04000240
	mov r1, #0x81
	strb r1, [r0]
	b _020BE264
_020BE188:
	ldr r1, _020BE284 ; =0x04000240
	mov r0, #0x81
	strb r0, [r1]
	mov r0, #0x89
	strb r0, [r1, #1]
	mov r0, #0x91
	strb r0, [r1, #3]
	b _020BE264
_020BE1A8:
	ldr r0, _020BE278 ; =0x04000243
	mov r1, #0x91
	strb r1, [r0]
_020BE1B4:
	ldr r1, _020BE284 ; =0x04000240
	mov r0, #0x81
	strb r0, [r1]
	mov r0, #0x89
	strb r0, [r1, #2]
	b _020BE264
_020BE1CC:
	ldr r1, _020BE284 ; =0x04000240
	mov r0, #0x81
	strb r0, [r1]
	mov r0, #0x89
	strb r0, [r1, #3]
	b _020BE264
_020BE1E4:
	ldr r1, _020BE280 ; =0x04000241
	mov r0, #0x81
	strb r0, [r1]
	mov r0, #0x89
	strb r0, [r1, #2]
	b _020BE264
_020BE1FC:
	ldr r0, _020BE288 ; =0x04000246
	mov r1, #0x99
	strb r1, [r0]
_020BE208:
	ldr r0, _020BE28C ; =0x04000245
	mov r1, #0x91
	strb r1, [r0]
_020BE214:
	ldr r0, _020BE290 ; =0x04000244
	mov r1, #0x81
	strb r1, [r0]
	b _020BE264
_020BE224:
	ldr r1, _020BE288 ; =0x04000246
	mov r0, #0x91
	strb r0, [r1]
	mov r0, #0x81
	strb r0, [r1, #-2]
	b _020BE264
_020BE23C:
	ldr r0, _020BE288 ; =0x04000246
	mov r1, #0x89
	strb r1, [r0]
_020BE248:
	ldr r0, _020BE28C ; =0x04000245
	mov r1, #0x81
	strb r1, [r0]
	b _020BE264
_020BE258:
	ldr r0, _020BE288 ; =0x04000246
	mov r1, #0x81
	strb r1, [r0]
_020BE264:
	ldr r0, _020BE274 ; =0x021CCBA0
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BE274: .word 0x021CCBA0
_020BE278: .word 0x04000243
_020BE27C: .word 0x04000242
_020BE280: .word 0x04000241
_020BE284: .word 0x04000240
_020BE288: .word 0x04000246
_020BE28C: .word 0x04000245
_020BE290: .word 0x04000244
	arm_func_end GX_SetBankForBG

	arm_func_start GX_SetBankForOBJ
GX_SetBankForOBJ: ; 0x020BE294
	stmfd sp!, {r3, lr}
	ldr r1, _020BE3CC ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #4]
	cmp r0, #0x30
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #4]
	bgt _020BE2FC
	cmp r0, #0x30
	bge _020BE370
	cmp r0, #0x10
	bgt _020BE2F0
	bge _020BE37C
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020BE3BC
_020BE2E0: ; jump table
	b _020BE3BC ; case 0
	b _020BE344 ; case 1
	b _020BE354 ; case 2
	b _020BE338 ; case 3
_020BE2F0:
	cmp r0, #0x20
	beq _020BE3B0
	b _020BE3BC
_020BE2FC:
	cmp r0, #0x50
	bgt _020BE31C
	bge _020BE38C
	cmp r0, #0x40
	ldreq r0, _020BE3D0 ; =0x04000246
	moveq r1, #0x82
	streqb r1, [r0]
	b _020BE3BC
_020BE31C:
	cmp r0, #0x60
	bgt _020BE32C
	beq _020BE3A4
	b _020BE3BC
_020BE32C:
	cmp r0, #0x70
	beq _020BE364
	b _020BE3BC
_020BE338:
	ldr r0, _020BE3D4 ; =0x04000241
	mov r1, #0x8a
	strb r1, [r0]
_020BE344:
	ldr r0, _020BE3D8 ; =0x04000240
	mov r1, #0x82
	strb r1, [r0]
	b _020BE3BC
_020BE354:
	ldr r0, _020BE3D4 ; =0x04000241
	mov r1, #0x82
	strb r1, [r0]
	b _020BE3BC
_020BE364:
	ldr r0, _020BE3D0 ; =0x04000246
	mov r1, #0x9a
	strb r1, [r0]
_020BE370:
	ldr r0, _020BE3DC ; =0x04000245
	mov r1, #0x92
	strb r1, [r0]
_020BE37C:
	ldr r0, _020BE3E0 ; =0x04000244
	mov r1, #0x82
	strb r1, [r0]
	b _020BE3BC
_020BE38C:
	ldr r1, _020BE3D0 ; =0x04000246
	mov r0, #0x92
	strb r0, [r1]
	mov r0, #0x82
	strb r0, [r1, #-2]
	b _020BE3BC
_020BE3A4:
	ldr r0, _020BE3D0 ; =0x04000246
	mov r1, #0x8a
	strb r1, [r0]
_020BE3B0:
	ldr r0, _020BE3DC ; =0x04000245
	mov r1, #0x82
	strb r1, [r0]
_020BE3BC:
	ldr r0, _020BE3CC ; =0x021CCBA0
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BE3CC: .word 0x021CCBA0
_020BE3D0: .word 0x04000246
_020BE3D4: .word 0x04000241
_020BE3D8: .word 0x04000240
_020BE3DC: .word 0x04000245
_020BE3E0: .word 0x04000244
	arm_func_end GX_SetBankForOBJ

	arm_func_start GX_SetBankForBGExtPltt
GX_SetBankForBGExtPltt: ; 0x020BE3E4
	stmfd sp!, {r3, lr}
	ldr r1, _020BE4D8 ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0xe]
	cmp r0, #0x20
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0xe]
	bgt _020BE434
	cmp r0, #0x20
	bge _020BE498
	cmp r0, #0
	bgt _020BE428
	beq _020BE4B8
	b _020BE4C8
_020BE428:
	cmp r0, #0x10
	beq _020BE450
	b _020BE4C8
_020BE434:
	cmp r0, #0x40
	bgt _020BE444
	beq _020BE46C
	b _020BE4C8
_020BE444:
	cmp r0, #0x60
	beq _020BE48C
	b _020BE4C8
_020BE450:
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	mov r0, #0x84
	orr r1, r1, #0x40000000
	str r1, [r2, #0]
	strb r0, [r2, #0x244]
	b _020BE4C8
_020BE46C:
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	ldr r0, _020BE4DC ; =0x04000246
	orr r1, r1, #0x40000000
	str r1, [r2, #0]
	mov r1, #0x8c
	strb r1, [r0]
	b _020BE4C8
_020BE48C:
	ldr r0, _020BE4DC ; =0x04000246
	mov r1, #0x8c
	strb r1, [r0]
_020BE498:
	ldr r0, _020BE4E0 ; =0x04000245
	mov r1, #0x84
	strb r1, [r0]
	mov r1, #0x4000000
	ldr r0, [r1, #0]
	orr r0, r0, #0x40000000
	str r0, [r1, #0]
	b _020BE4C8
_020BE4B8:
	mov r1, #0x4000000
	ldr r0, [r1, #0]
	bic r0, r0, #0x40000000
	str r0, [r1, #0]
_020BE4C8:
	ldr r0, _020BE4D8 ; =0x021CCBA0
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BE4D8: .word 0x021CCBA0
_020BE4DC: .word 0x04000246
_020BE4E0: .word 0x04000245
	arm_func_end GX_SetBankForBGExtPltt

	arm_func_start GX_SetBankForOBJExtPltt
GX_SetBankForOBJExtPltt: ; 0x020BE4E4
	stmfd sp!, {r3, lr}
	ldr r1, _020BE584 ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x10]
	cmp r0, #0
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0x10]
	beq _020BE564
	cmp r0, #0x20
	beq _020BE524
	cmp r0, #0x40
	beq _020BE544
	b _020BE574
_020BE524:
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	ldr r0, _020BE588 ; =0x04000245
	orr r1, r1, #0x80000000
	str r1, [r2, #0]
	mov r1, #0x85
	strb r1, [r0]
	b _020BE574
_020BE544:
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	ldr r0, _020BE58C ; =0x04000246
	orr r1, r1, #0x80000000
	str r1, [r2, #0]
	mov r1, #0x85
	strb r1, [r0]
	b _020BE574
_020BE564:
	mov r1, #0x4000000
	ldr r0, [r1, #0]
	bic r0, r0, #0x80000000
	str r0, [r1, #0]
_020BE574:
	ldr r0, _020BE584 ; =0x021CCBA0
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BE584: .word 0x021CCBA0
_020BE588: .word 0x04000245
_020BE58C: .word 0x04000246
	arm_func_end GX_SetBankForOBJExtPltt

	arm_func_start GX_SetBankForTex
GX_SetBankForTex: ; 0x020BE590
	stmfd sp!, {r3, lr}
	ldr r1, _020BE74C ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #8]
	cmp r0, #0
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #8]
	ldr r2, _020BE750 ; =0x04000060
	bne _020BE5D4
	ldrh r1, [r2]
	ldr r0, _020BE754 ; =0x0000CFFE
	and r0, r1, r0
	strh r0, [r2]
	b _020BE73C
_020BE5D4:
	ldrh r1, [r2]
	cmp r0, #0xf
	bic r1, r1, #0x3000
	orr r1, r1, #1
	strh r1, [r2]
	addls pc, pc, r0, lsl #2
	b _020BE73C
_020BE5F0: ; jump table
	b _020BE73C ; case 0
	b _020BE730 ; case 1
	b _020BE6FC ; case 2
	b _020BE724 ; case 3
	b _020BE6D4 ; case 4
	b _020BE630 ; case 5
	b _020BE6F0 ; case 6
	b _020BE718 ; case 7
	b _020BE6B8 ; case 8
	b _020BE648 ; case 9
	b _020BE660 ; case 10
	b _020BE678 ; case 11
	b _020BE6C8 ; case 12
	b _020BE698 ; case 13
	b _020BE6E4 ; case 14
	b _020BE70C ; case 15
_020BE630:
	mov r1, #0x83
	ldr r0, _020BE758 ; =0x04000242
	strb r1, [r2, #0x1e0]
	mov r1, #0x8b
	strb r1, [r0]
	b _020BE73C
_020BE648:
	mov r1, #0x83
	ldr r0, _020BE75C ; =0x04000243
	strb r1, [r2, #0x1e0]
	mov r1, #0x8b
	strb r1, [r0]
	b _020BE73C
_020BE660:
	ldr r1, _020BE760 ; =0x04000241
	mov r0, #0x83
	strb r0, [r1]
	mov r0, #0x8b
	strb r0, [r1, #2]
	b _020BE73C
_020BE678:
	mov r0, #0x83
	ldr r1, _020BE760 ; =0x04000241
	strb r0, [r2, #0x1e0]
	mov r0, #0x8b
	strb r0, [r1]
	mov r0, #0x93
	strb r0, [r1, #2]
	b _020BE73C
_020BE698:
	mov r0, #0x83
	ldr r1, _020BE758 ; =0x04000242
	strb r0, [r2, #0x1e0]
	mov r0, #0x8b
	strb r0, [r1]
	mov r0, #0x93
	strb r0, [r1, #1]
	b _020BE73C
_020BE6B8:
	ldr r0, _020BE75C ; =0x04000243
	mov r1, #0x83
	strb r1, [r0]
	b _020BE73C
_020BE6C8:
	ldr r0, _020BE75C ; =0x04000243
	mov r1, #0x8b
	strb r1, [r0]
_020BE6D4:
	ldr r0, _020BE758 ; =0x04000242
	mov r1, #0x83
	strb r1, [r0]
	b _020BE73C
_020BE6E4:
	ldr r0, _020BE75C ; =0x04000243
	mov r1, #0x93
	strb r1, [r0]
_020BE6F0:
	ldr r0, _020BE758 ; =0x04000242
	mov r1, #0x8b
	strb r1, [r0]
_020BE6FC:
	ldr r0, _020BE760 ; =0x04000241
	mov r1, #0x83
	strb r1, [r0]
	b _020BE73C
_020BE70C:
	ldr r0, _020BE75C ; =0x04000243
	mov r1, #0x9b
	strb r1, [r0]
_020BE718:
	ldr r0, _020BE758 ; =0x04000242
	mov r1, #0x93
	strb r1, [r0]
_020BE724:
	ldr r0, _020BE760 ; =0x04000241
	mov r1, #0x8b
	strb r1, [r0]
_020BE730:
	ldr r0, _020BE764 ; =0x04000240
	mov r1, #0x83
	strb r1, [r0]
_020BE73C:
	ldr r0, _020BE74C ; =0x021CCBA0
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BE74C: .word 0x021CCBA0
_020BE750: .word 0x04000060
_020BE754: .word 0x0000CFFE
_020BE758: .word 0x04000242
_020BE75C: .word 0x04000243
_020BE760: .word 0x04000241
_020BE764: .word 0x04000240
	arm_func_end GX_SetBankForTex

	arm_func_start GX_SetBankForTexPltt
GX_SetBankForTexPltt: ; 0x020BE768
	stmfd sp!, {r3, lr}
	ldr r1, _020BE840 ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0xa]
	cmp r0, #0x30
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0xa]
	bgt _020BE7BC
	cmp r0, #0x30
	bge _020BE818
	cmp r0, #0x10
	bgt _020BE7B0
	bge _020BE824
	cmp r0, #0
	b _020BE830
_020BE7B0:
	cmp r0, #0x20
	beq _020BE7EC
	b _020BE830
_020BE7BC:
	cmp r0, #0x60
	bgt _020BE7D4
	bge _020BE7E0
	cmp r0, #0x40
	beq _020BE7FC
	b _020BE830
_020BE7D4:
	cmp r0, #0x70
	beq _020BE80C
	b _020BE830
_020BE7E0:
	ldr r0, _020BE844 ; =0x04000246
	mov r1, #0x8b
	strb r1, [r0]
_020BE7EC:
	ldr r0, _020BE848 ; =0x04000245
	mov r1, #0x83
	strb r1, [r0]
	b _020BE830
_020BE7FC:
	ldr r0, _020BE844 ; =0x04000246
	mov r1, #0x83
	strb r1, [r0]
	b _020BE830
_020BE80C:
	ldr r0, _020BE844 ; =0x04000246
	mov r1, #0x9b
	strb r1, [r0]
_020BE818:
	ldr r0, _020BE848 ; =0x04000245
	mov r1, #0x93
	strb r1, [r0]
_020BE824:
	ldr r0, _020BE84C ; =0x04000244
	mov r1, #0x83
	strb r1, [r0]
_020BE830:
	ldr r0, _020BE840 ; =0x021CCBA0
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BE840: .word 0x021CCBA0
_020BE844: .word 0x04000246
_020BE848: .word 0x04000245
_020BE84C: .word 0x04000244
	arm_func_end GX_SetBankForTexPltt

	arm_func_start GX_SetBankForClearImage
GX_SetBankForClearImage: ; 0x020BE850
	stmfd sp!, {r3, lr}
	ldr r1, _020BE96C ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0xc]
	cmp r0, #0xc
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0xc]
	addls pc, pc, r0, lsl #2
	b _020BE95C
_020BE880: ; jump table
	b _020BE90C ; case 0
	b _020BE920 ; case 1
	b _020BE8C0 ; case 2
	b _020BE8B4 ; case 3
	b _020BE940 ; case 4
	b _020BE95C ; case 5
	b _020BE95C ; case 6
	b _020BE95C ; case 7
	b _020BE8EC ; case 8
	b _020BE95C ; case 9
	b _020BE95C ; case 10
	b _020BE95C ; case 11
	b _020BE8E0 ; case 12
_020BE8B4:
	ldr r0, _020BE970 ; =0x04000240
	mov r1, #0x93
	strb r1, [r0]
_020BE8C0:
	ldr r0, _020BE974 ; =0x04000241
	mov r2, #0x9b
	ldr r1, _020BE978 ; =0x04000060
	strb r2, [r0]
	ldrh r0, [r1]
	orr r0, r0, #0x4000
	strh r0, [r1]
	b _020BE95C
_020BE8E0:
	ldr r0, _020BE97C ; =0x04000242
	mov r1, #0x93
	strb r1, [r0]
_020BE8EC:
	ldr r0, _020BE980 ; =0x04000243
	mov r2, #0x9b
	ldr r1, _020BE978 ; =0x04000060
	strb r2, [r0]
	ldrh r0, [r1]
	orr r0, r0, #0x4000
	strh r0, [r1]
	b _020BE95C
_020BE90C:
	ldr r1, _020BE978 ; =0x04000060
	ldrh r0, [r1]
	bic r0, r0, #0x4000
	strh r0, [r1]
	b _020BE95C
_020BE920:
	ldr r0, _020BE970 ; =0x04000240
	mov r1, #0x9b
	strb r1, [r0]
	sub r1, r0, #0x1e0
	ldrh r0, [r1]
	orr r0, r0, #0x4000
	strh r0, [r1]
	b _020BE95C
_020BE940:
	ldr r0, _020BE97C ; =0x04000242
	mov r2, #0x9b
	ldr r1, _020BE978 ; =0x04000060
	strb r2, [r0]
	ldrh r0, [r1]
	orr r0, r0, #0x4000
	strh r0, [r1]
_020BE95C:
	ldr r0, _020BE96C ; =0x021CCBA0
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BE96C: .word 0x021CCBA0
_020BE970: .word 0x04000240
_020BE974: .word 0x04000241
_020BE978: .word 0x04000060
_020BE97C: .word 0x04000242
_020BE980: .word 0x04000243
	arm_func_end GX_SetBankForClearImage

	arm_func_start GX_SetBankForARM7
GX_SetBankForARM7: ; 0x020BE984
	stmfd sp!, {r3, lr}
	ldr r1, _020BEA24 ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #6]
	cmp r0, #8
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #6]
	bgt _020BE9D8
	cmp r0, #8
	bge _020BEA08
	cmp r0, #4
	bgt _020BEA14
	cmp r0, #0
	blt _020BEA14
	beq _020BEA14
	cmp r0, #4
	beq _020BE9F8
	b _020BEA14
_020BE9D8:
	cmp r0, #0xc
	bne _020BEA14
	ldr r1, _020BEA28 ; =0x04000243
	mov r0, #0x8a
	strb r0, [r1]
	mov r0, #0x82
	strb r0, [r1, #-1]
	b _020BEA14
_020BE9F8:
	ldr r0, _020BEA2C ; =0x04000242
	mov r1, #0x82
	strb r1, [r0]
	b _020BEA14
_020BEA08:
	ldr r0, _020BEA28 ; =0x04000243
	mov r1, #0x82
	strb r1, [r0]
_020BEA14:
	ldr r0, _020BEA24 ; =0x021CCBA0
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BEA24: .word 0x021CCBA0
_020BEA28: .word 0x04000243
_020BEA2C: .word 0x04000242
	arm_func_end GX_SetBankForARM7

	arm_func_start GX_SetBankForLCDC
GX_SetBankForLCDC: ; 0x020BEA30
	ldr r1, _020BEA48 ; =0x021CCBA0
	ldr ip, _020BEA4C ; =GX_VRAMCNT_SetLCDC_
	ldrh r2, [r1]
	orr r2, r2, r0
	strh r2, [r1]
	bx ip
	; .align 2, 0
_020BEA48: .word 0x021CCBA0
_020BEA4C: .word GX_VRAMCNT_SetLCDC_
	arm_func_end GX_SetBankForLCDC

	arm_func_start GX_SetBankForSubBG
GX_SetBankForSubBG: ; 0x020BEA50
	stmfd sp!, {r3, lr}
	ldr r1, _020BEAE8 ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x12]
	cmp r0, #0x80
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0x12]
	bgt _020BEAA4
	cmp r0, #0x80
	bge _020BEACC
	cmp r0, #4
	bgt _020BEAD8
	cmp r0, #0
	blt _020BEAD8
	beq _020BEAD8
	cmp r0, #4
	beq _020BEAB0
	b _020BEAD8
_020BEAA4:
	cmp r0, #0x180
	beq _020BEAC0
	b _020BEAD8
_020BEAB0:
	ldr r0, _020BEAEC ; =0x04000242
	mov r1, #0x84
	strb r1, [r0]
	b _020BEAD8
_020BEAC0:
	ldr r0, _020BEAF0 ; =0x04000249
	mov r1, #0x81
	strb r1, [r0]
_020BEACC:
	ldr r0, _020BEAF4 ; =0x04000248
	mov r1, #0x81
	strb r1, [r0]
_020BEAD8:
	ldr r0, _020BEAE8 ; =0x021CCBA0
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BEAE8: .word 0x021CCBA0
_020BEAEC: .word 0x04000242
_020BEAF0: .word 0x04000249
_020BEAF4: .word 0x04000248
	arm_func_end GX_SetBankForSubBG

	arm_func_start GX_SetBankForSubOBJ
GX_SetBankForSubOBJ: ; 0x020BEAF8
	stmfd sp!, {r3, lr}
	ldr r1, _020BEB5C ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x14]
	cmp r0, #0
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0x14]
	beq _020BEB4C
	cmp r0, #8
	beq _020BEB40
	cmp r0, #0x100
	ldreq r0, _020BEB60 ; =0x04000249
	moveq r1, #0x82
	streqb r1, [r0]
	b _020BEB4C
_020BEB40:
	ldr r0, _020BEB64 ; =0x04000243
	mov r1, #0x84
	strb r1, [r0]
_020BEB4C:
	ldr r0, _020BEB5C ; =0x021CCBA0
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BEB5C: .word 0x021CCBA0
_020BEB60: .word 0x04000249
_020BEB64: .word 0x04000243
	arm_func_end GX_SetBankForSubOBJ

	arm_func_start GX_SetBankForSubBGExtPltt
GX_SetBankForSubBGExtPltt: ; 0x020BEB68
	stmfd sp!, {r3, lr}
	ldr r1, _020BEBDC ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x16]
	cmp r0, #0
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0x16]
	beq _020BEBBC
	cmp r0, #0x80
	bne _020BEBCC
	ldr r3, _020BEBE0 ; =0x04001000
	ldr r0, _020BEBE4 ; =0x04000248
	ldr r2, [r3, #0]
	mov r1, #0x82
	orr r2, r2, #0x40000000
	str r2, [r3, #0]
	strb r1, [r0]
	b _020BEBCC
_020BEBBC:
	ldr r1, _020BEBE0 ; =0x04001000
	ldr r0, [r1, #0]
	bic r0, r0, #0x40000000
	str r0, [r1, #0]
_020BEBCC:
	ldr r0, _020BEBDC ; =0x021CCBA0
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BEBDC: .word 0x021CCBA0
_020BEBE0: .word 0x04001000
_020BEBE4: .word 0x04000248
	arm_func_end GX_SetBankForSubBGExtPltt

	arm_func_start GX_SetBankForSubOBJExtPltt
GX_SetBankForSubOBJExtPltt: ; 0x020BEBE8
	stmfd sp!, {r3, lr}
	ldr r1, _020BEC5C ; =0x021CCBA0
	mvn ip, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x18]
	cmp r0, #0
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	strh r0, [r1, #0x18]
	beq _020BEC3C
	cmp r0, #0x100
	bne _020BEC4C
	ldr r3, _020BEC60 ; =0x04001000
	ldr r0, _020BEC64 ; =0x04000249
	ldr r2, [r3, #0]
	mov r1, #0x83
	orr r2, r2, #0x80000000
	str r2, [r3, #0]
	strb r1, [r0]
	b _020BEC4C
_020BEC3C:
	ldr r1, _020BEC60 ; =0x04001000
	ldr r0, [r1, #0]
	bic r0, r0, #0x80000000
	str r0, [r1, #0]
_020BEC4C:
	ldr r0, _020BEC5C ; =0x021CCBA0
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BEC5C: .word 0x021CCBA0
_020BEC60: .word 0x04001000
_020BEC64: .word 0x04000249
	arm_func_end GX_SetBankForSubOBJExtPltt

	arm_func_start resetBankForX_
resetBankForX_: ; 0x020BEC68
	stmfd sp!, {r4, lr}
	ldrh r4, [r0]
	mov r2, #0
	ldr r1, _020BEC98 ; =0x021CCBA0
	strh r2, [r0]
	ldrh r2, [r1]
	mov r0, r4
	orr r2, r2, r4
	strh r2, [r1]
	bl GX_VRAMCNT_SetLCDC_
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BEC98: .word 0x021CCBA0
	arm_func_end resetBankForX_

	arm_func_start GX_ResetBankForBG
GX_ResetBankForBG: ; 0x020BEC9C
	ldr ip, _020BECA8 ; =resetBankForX_
	ldr r0, _020BECAC ; =0x021CCBA2
	bx ip
	; .align 2, 0
_020BECA8: .word resetBankForX_
_020BECAC: .word 0x021CCBA2
	arm_func_end GX_ResetBankForBG

	arm_func_start GX_ResetBankForOBJ
GX_ResetBankForOBJ: ; 0x020BECB0
	ldr ip, _020BECBC ; =resetBankForX_
	ldr r0, _020BECC0 ; =0x021CCBA4
	bx ip
	; .align 2, 0
_020BECBC: .word resetBankForX_
_020BECC0: .word 0x021CCBA4
	arm_func_end GX_ResetBankForOBJ

	arm_func_start GX_ResetBankForBGExtPltt
GX_ResetBankForBGExtPltt: ; 0x020BECC4
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	ldr ip, _020BECE0 ; =resetBankForX_
	bic r1, r1, #0x40000000
	ldr r0, _020BECE4 ; =0x021CCBAE
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BECE0: .word resetBankForX_
_020BECE4: .word 0x021CCBAE
	arm_func_end GX_ResetBankForBGExtPltt

	arm_func_start GX_ResetBankForOBJExtPltt
GX_ResetBankForOBJExtPltt: ; 0x020BECE8
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	ldr ip, _020BED04 ; =resetBankForX_
	bic r1, r1, #0x80000000
	ldr r0, _020BED08 ; =0x021CCBB0
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BED04: .word resetBankForX_
_020BED08: .word 0x021CCBB0
	arm_func_end GX_ResetBankForOBJExtPltt

	arm_func_start GX_ResetBankForTex
GX_ResetBankForTex: ; 0x020BED0C
	ldr ip, _020BED18 ; =resetBankForX_
	ldr r0, _020BED1C ; =0x021CCBA8
	bx ip
	; .align 2, 0
_020BED18: .word resetBankForX_
_020BED1C: .word 0x021CCBA8
	arm_func_end GX_ResetBankForTex

	arm_func_start GX_ResetBankForTexPltt
GX_ResetBankForTexPltt: ; 0x020BED20
	ldr ip, _020BED2C ; =resetBankForX_
	ldr r0, _020BED30 ; =0x021CCBAA
	bx ip
	; .align 2, 0
_020BED2C: .word resetBankForX_
_020BED30: .word 0x021CCBAA
	arm_func_end GX_ResetBankForTexPltt

	arm_func_start GX_ResetBankForClearImage
GX_ResetBankForClearImage: ; 0x020BED34
	ldr ip, _020BED40 ; =resetBankForX_
	ldr r0, _020BED44 ; =0x021CCBAC
	bx ip
	; .align 2, 0
_020BED40: .word resetBankForX_
_020BED44: .word 0x021CCBAC
	arm_func_end GX_ResetBankForClearImage

	arm_func_start GX_ResetBankForSubBG
GX_ResetBankForSubBG: ; 0x020BED48
	ldr ip, _020BED54 ; =resetBankForX_
	ldr r0, _020BED58 ; =0x021CCBB2
	bx ip
	; .align 2, 0
_020BED54: .word resetBankForX_
_020BED58: .word 0x021CCBB2
	arm_func_end GX_ResetBankForSubBG

	arm_func_start GX_ResetBankForSubOBJ
GX_ResetBankForSubOBJ: ; 0x020BED5C
	ldr ip, _020BED68 ; =resetBankForX_
	ldr r0, _020BED6C ; =0x021CCBB4
	bx ip
	; .align 2, 0
_020BED68: .word resetBankForX_
_020BED6C: .word 0x021CCBB4
	arm_func_end GX_ResetBankForSubOBJ

	arm_func_start GX_ResetBankForSubBGExtPltt
GX_ResetBankForSubBGExtPltt: ; 0x020BED70
	ldr r2, _020BED8C ; =0x04001000
	ldr ip, _020BED90 ; =resetBankForX_
	ldr r1, [r2, #0]
	ldr r0, _020BED94 ; =0x021CCBB6
	bic r1, r1, #0x40000000
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BED8C: .word 0x04001000
_020BED90: .word resetBankForX_
_020BED94: .word 0x021CCBB6
	arm_func_end GX_ResetBankForSubBGExtPltt

	arm_func_start GX_ResetBankForSubOBJExtPltt
GX_ResetBankForSubOBJExtPltt: ; 0x020BED98
	ldr r2, _020BEDB4 ; =0x04001000
	ldr ip, _020BEDB8 ; =resetBankForX_
	ldr r1, [r2, #0]
	ldr r0, _020BEDBC ; =0x021CCBB8
	bic r1, r1, #0x80000000
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BEDB4: .word 0x04001000
_020BEDB8: .word resetBankForX_
_020BEDBC: .word 0x021CCBB8
	arm_func_end GX_ResetBankForSubOBJExtPltt

	arm_func_start disableBankForX_
disableBankForX_: ; 0x020BEDC0
	stmfd sp!, {r4, lr}
	ldrh r4, [r0]
	mov r1, #0
	strh r1, [r0]
	tst r4, #1
	ldrne r0, _020BEE78 ; =0x04000240
	strneb r1, [r0]
	tst r4, #2
	ldrne r0, _020BEE7C ; =0x04000241
	movne r1, #0
	strneb r1, [r0]
	tst r4, #4
	ldrne r0, _020BEE80 ; =0x04000242
	movne r1, #0
	strneb r1, [r0]
	tst r4, #8
	ldrne r0, _020BEE84 ; =0x04000243
	movne r1, #0
	strneb r1, [r0]
	tst r4, #0x10
	ldrne r0, _020BEE88 ; =0x04000244
	movne r1, #0
	strneb r1, [r0]
	tst r4, #0x20
	ldrne r0, _020BEE8C ; =0x04000245
	movne r1, #0
	strneb r1, [r0]
	tst r4, #0x40
	ldrne r0, _020BEE90 ; =0x04000246
	movne r1, #0
	strneb r1, [r0]
	tst r4, #0x80
	ldrne r0, _020BEE94 ; =0x04000248
	movne r1, #0
	strneb r1, [r0]
	tst r4, #0x100
	ldrne r0, _020BEE98 ; =0x04000249
	movne r1, #0
	strneb r1, [r0]
	ldr r1, _020BEE9C ; =0x021CCB9E
	mov r0, r4, lsl #0x10
	ldrh r1, [r1]
	mov r0, r0, lsr #0x10
	bl OSi_UnlockVram
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BEE78: .word 0x04000240
_020BEE7C: .word 0x04000241
_020BEE80: .word 0x04000242
_020BEE84: .word 0x04000243
_020BEE88: .word 0x04000244
_020BEE8C: .word 0x04000245
_020BEE90: .word 0x04000246
_020BEE94: .word 0x04000248
_020BEE98: .word 0x04000249
_020BEE9C: .word 0x021CCB9E
	arm_func_end disableBankForX_

	arm_func_start GX_DisableBankForBG
GX_DisableBankForBG: ; 0x020BEEA0
	ldr ip, _020BEEAC ; =disableBankForX_
	ldr r0, _020BEEB0 ; =0x021CCBA2
	bx ip
	; .align 2, 0
_020BEEAC: .word disableBankForX_
_020BEEB0: .word 0x021CCBA2
	arm_func_end GX_DisableBankForBG

	arm_func_start GX_DisableBankForOBJ
GX_DisableBankForOBJ: ; 0x020BEEB4
	ldr ip, _020BEEC0 ; =disableBankForX_
	ldr r0, _020BEEC4 ; =0x021CCBA4
	bx ip
	; .align 2, 0
_020BEEC0: .word disableBankForX_
_020BEEC4: .word 0x021CCBA4
	arm_func_end GX_DisableBankForOBJ

	arm_func_start GX_DisableBankForBGExtPltt
GX_DisableBankForBGExtPltt: ; 0x020BEEC8
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	ldr ip, _020BEEE4 ; =disableBankForX_
	bic r1, r1, #0x40000000
	ldr r0, _020BEEE8 ; =0x021CCBAE
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BEEE4: .word disableBankForX_
_020BEEE8: .word 0x021CCBAE
	arm_func_end GX_DisableBankForBGExtPltt

	arm_func_start GX_DisableBankForOBJExtPltt
GX_DisableBankForOBJExtPltt: ; 0x020BEEEC
	mov r2, #0x4000000
	ldr r1, [r2, #0]
	ldr ip, _020BEF08 ; =disableBankForX_
	bic r1, r1, #0x80000000
	ldr r0, _020BEF0C ; =0x021CCBB0
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BEF08: .word disableBankForX_
_020BEF0C: .word 0x021CCBB0
	arm_func_end GX_DisableBankForOBJExtPltt

	arm_func_start GX_DisableBankForTex
GX_DisableBankForTex: ; 0x020BEF10
	ldr ip, _020BEF1C ; =disableBankForX_
	ldr r0, _020BEF20 ; =0x021CCBA8
	bx ip
	; .align 2, 0
_020BEF1C: .word disableBankForX_
_020BEF20: .word 0x021CCBA8
	arm_func_end GX_DisableBankForTex

	arm_func_start GX_DisableBankForTexPltt
GX_DisableBankForTexPltt: ; 0x020BEF24
	ldr ip, _020BEF30 ; =disableBankForX_
	ldr r0, _020BEF34 ; =0x021CCBAA
	bx ip
	; .align 2, 0
_020BEF30: .word disableBankForX_
_020BEF34: .word 0x021CCBAA
	arm_func_end GX_DisableBankForTexPltt

	arm_func_start GX_DisableBankForClearImage
GX_DisableBankForClearImage: ; 0x020BEF38
	ldr ip, _020BEF44 ; =disableBankForX_
	ldr r0, _020BEF48 ; =0x021CCBAC
	bx ip
	; .align 2, 0
_020BEF44: .word disableBankForX_
_020BEF48: .word 0x021CCBAC
	arm_func_end GX_DisableBankForClearImage

	arm_func_start GX_DisableBankForARM7
GX_DisableBankForARM7: ; 0x020BEF4C
	ldr ip, _020BEF58 ; =disableBankForX_
	ldr r0, _020BEF5C ; =0x021CCBA6
	bx ip
	; .align 2, 0
_020BEF58: .word disableBankForX_
_020BEF5C: .word 0x021CCBA6
	arm_func_end GX_DisableBankForARM7

	arm_func_start GX_DisableBankForLCDC
GX_DisableBankForLCDC: ; 0x020BEF60
	ldr ip, _020BEF6C ; =disableBankForX_
	ldr r0, _020BEF70 ; =0x021CCBA0
	bx ip
	; .align 2, 0
_020BEF6C: .word disableBankForX_
_020BEF70: .word 0x021CCBA0
	arm_func_end GX_DisableBankForLCDC

	arm_func_start GX_DisableBankForSubBG
GX_DisableBankForSubBG: ; 0x020BEF74
	ldr ip, _020BEF80 ; =disableBankForX_
	ldr r0, _020BEF84 ; =0x021CCBB2
	bx ip
	; .align 2, 0
_020BEF80: .word disableBankForX_
_020BEF84: .word 0x021CCBB2
	arm_func_end GX_DisableBankForSubBG

	arm_func_start GX_DisableBankForSubOBJ
GX_DisableBankForSubOBJ: ; 0x020BEF88
	ldr ip, _020BEF94 ; =disableBankForX_
	ldr r0, _020BEF98 ; =0x021CCBB4
	bx ip
	; .align 2, 0
_020BEF94: .word disableBankForX_
_020BEF98: .word 0x021CCBB4
	arm_func_end GX_DisableBankForSubOBJ

	arm_func_start GX_DisableBankForSubBGExtPltt
GX_DisableBankForSubBGExtPltt: ; 0x020BEF9C
	ldr r2, _020BEFB8 ; =0x04001000
	ldr ip, _020BEFBC ; =disableBankForX_
	ldr r1, [r2, #0]
	ldr r0, _020BEFC0 ; =0x021CCBB6
	bic r1, r1, #0x40000000
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BEFB8: .word 0x04001000
_020BEFBC: .word disableBankForX_
_020BEFC0: .word 0x021CCBB6
	arm_func_end GX_DisableBankForSubBGExtPltt

	arm_func_start GX_DisableBankForSubOBJExtPltt
GX_DisableBankForSubOBJExtPltt: ; 0x020BEFC4
	ldr r2, _020BEFE0 ; =0x04001000
	ldr ip, _020BEFE4 ; =disableBankForX_
	ldr r1, [r2, #0]
	ldr r0, _020BEFE8 ; =0x021CCBB8
	bic r1, r1, #0x80000000
	str r1, [r2, #0]
	bx ip
	; .align 2, 0
_020BEFE0: .word 0x04001000
_020BEFE4: .word disableBankForX_
_020BEFE8: .word 0x021CCBB8
	arm_func_end GX_DisableBankForSubOBJExtPltt

	arm_func_start GX_GetBankForOBJ
GX_GetBankForOBJ: ; 0x020BEFEC
	ldr r0, _020BEFF8 ; =0x021CCBA0
	ldrh r0, [r0, #4]
	bx lr
	; .align 2, 0
_020BEFF8: .word 0x021CCBA0
	arm_func_end GX_GetBankForOBJ

	arm_func_start GX_GetBankForOBJExtPltt
GX_GetBankForOBJExtPltt: ; 0x020BEFFC
	ldr r0, _020BF008 ; =0x021CCBA0
	ldrh r0, [r0, #0x10]
	bx lr
	; .align 2, 0
_020BF008: .word 0x021CCBA0
	arm_func_end GX_GetBankForOBJExtPltt

	arm_func_start GX_GetBankForLCDC
GX_GetBankForLCDC: ; 0x020BF00C
	ldr r0, _020BF018 ; =0x021CCBA0
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
_020BF018: .word 0x021CCBA0
	arm_func_end GX_GetBankForLCDC

	arm_func_start GX_GetBankForSubOBJ
GX_GetBankForSubOBJ: ; 0x020BF01C
	ldr r0, _020BF028 ; =0x021CCBA0
	ldrh r0, [r0, #0x14]
	bx lr
	; .align 2, 0
_020BF028: .word 0x021CCBA0
	arm_func_end GX_GetBankForSubOBJ

	arm_func_start GX_GetBankForSubOBJExtPltt
GX_GetBankForSubOBJExtPltt: ; 0x020BF02C
	ldr r0, _020BF038 ; =0x021CCBA0
	ldrh r0, [r0, #0x18]
	bx lr
	; .align 2, 0
_020BF038: .word 0x021CCBA0
	arm_func_end GX_GetBankForSubOBJExtPltt