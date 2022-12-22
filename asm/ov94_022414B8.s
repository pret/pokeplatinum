	.include "macros/function.inc"
	.include "include/ov94_022414B8.inc"

	

	.text


	thumb_func_start ov94_022414B8
ov94_022414B8: ; 0x022414B8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_022418B8
	ldr r0, [r4, #4]
	bl ov94_022415F8
	add r0, r4, #0
	bl ov94_0224170C
	add r0, r4, #0
	bl ov94_022417A0
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	add r0, r4, #0
	bl ov94_02245934
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	ldr r2, _02241538 ; =0x00000B94
	str r0, [sp, #4]
	sub r0, r0, #4
	str r0, [sp, #8]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r3, _0224153C ; =0x00000F6C
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r4, r3
	bl ov94_022422D4
	ldr r1, _02241540 ; =0x00000B74
	mov r3, #0x46
	add r0, r4, r1
	str r0, [sp]
	add r0, r1, #0
	add r0, #0x20
	add r1, #0x1c
	ldr r2, _02241544 ; =0x00000F9C
	lsl r3, r3, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	add r2, r4, r2
	bl ov94_022423FC
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02241538: .word 0x00000B94
_0224153C: .word 0x00000F6C
_02241540: .word 0x00000B74
_02241544: .word 0x00000F9C
	thumb_func_end ov94_022414B8

	thumb_func_start ov94_02241548
ov94_02241548: ; 0x02241548
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223C4B4
	bl sub_020397B0
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02241564 ; =0x0224695C
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_02241564: .word 0x0224695C
	thumb_func_end ov94_02241548

	thumb_func_start ov94_02241568
ov94_02241568: ; 0x02241568
	push {r4, lr}
	add r4, r0, #0
	bl sub_02039794
	add r0, r4, #0
	bl ov94_02241920
	add r0, r4, #0
	bl ov94_02241880
	ldr r0, [r4, #4]
	bl ov94_022416E0
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov94_02241568

	thumb_func_start ov94_0224158C
ov94_0224158C: ; 0x0224158C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _022415EC ; =0x00000B94
	add r4, r2, #0
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0xb9
	add r6, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0x20
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	ldr r0, _022415F0 ; =0x00000EFC
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _022415F0 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbb
	ldr r0, _022415F0 ; =0x00000EFC
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _022415F4 ; =0x00000BE4
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022415EC: .word 0x00000B94
_022415F0: .word 0x00000EFC
_022415F4: .word 0x00000BE4
	thumb_func_end ov94_0224158C

	thumb_func_start ov94_022415F8
ov94_022415F8: ; 0x022415F8
	push {r4, r5, lr}
	sub sp, #0x8c
	ldr r5, _022416CC ; =0x0224601C
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x70
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _022416D0 ; =0x02246038
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldr r5, _022416D4 ; =0x02246054
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldr r5, _022416D8 ; =0x02246070
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _022416DC ; =0x02246000
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	add sp, #0x8c
	pop {r4, r5, pc}
	nop
_022416CC: .word 0x0224601C
_022416D0: .word 0x02246038
_022416D4: .word 0x02246054
_022416D8: .word 0x02246070
_022416DC: .word 0x02246000
	thumb_func_end ov94_022415F8

	thumb_func_start ov94_022416E0
ov94_022416E0: ; 0x022416E0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov94_022416E0

	thumb_func_start ov94_0224170C
ov94_0224170C: ; 0x0224170C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r4, [r5, #4]
	mov r0, #0x60
	str r0, [sp]
	mov r0, #0x3e
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x68
	mov r1, #1
	add r3, r2, #0
	bl sub_02006E84
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3e
	bl sub_02002E98
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	mov r0, #0x68
	mov r1, #0xb
	add r2, r4, #0
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	mov r0, #0x68
	mov r1, #0x17
	add r2, r4, #0
	bl sub_02006E60
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov94_0224170C

	thumb_func_start ov94_022417A0
ov94_022417A0: ; 0x022417A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r3, #1
	add r7, r0, #0
	str r3, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _02241868 ; =0x00000F1C
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _02241868 ; =0x00000F1C
	mov r1, #0
	add r0, r7, r0
	bl sub_0201ADA4
	mov r2, #0
	ldr r0, _0224186C ; =0x000F0E00
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, _02241870 ; =0x00000BB4
	ldr r0, _02241868 ; =0x00000F1C
	ldr r1, [r7, r1]
	add r0, r7, r0
	mov r3, #1
	bl ov94_022458CC
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	ldr r1, _02241874 ; =0x00000EFC
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x60
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _02241874 ; =0x00000EFC
	mov r1, #0
	add r0, r7, r0
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _02241878 ; =0x00000F6C
	ldr r4, _0224187C ; =0x02245FE8
	mov r6, #0x96
	add r5, r7, r0
_0224181C:
	ldrh r0, [r4, #2]
	add r1, r5, #0
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [r7, #4]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201A954
	ldr r0, [sp, #0x14]
	add r6, #0x16
	add r0, r0, #1
	add r4, r4, #4
	add r5, #0x10
	str r0, [sp, #0x14]
	cmp r0, #6
	blt _0224181C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241868: .word 0x00000F1C
_0224186C: .word 0x000F0E00
_02241870: .word 0x00000BB4
_02241874: .word 0x00000EFC
_02241878: .word 0x00000F6C
_0224187C: .word 0x02245FE8
	thumb_func_end ov94_022417A0

	thumb_func_start ov94_02241880
ov94_02241880: ; 0x02241880
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _022418AC ; =0x00000F6C
	mov r4, #0
	add r5, r6, r0
_0224188A:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blt _0224188A
	ldr r0, _022418B0 ; =0x00000EFC
	add r0, r6, r0
	bl sub_0201A8FC
	ldr r0, _022418B4 ; =0x00000F1C
	add r0, r6, r0
	bl sub_0201A8FC
	pop {r4, r5, r6, pc}
	nop
_022418AC: .word 0x00000F6C
_022418B0: .word 0x00000EFC
_022418B4: .word 0x00000F1C
	thumb_func_end ov94_02241880

	thumb_func_start ov94_022418B8
ov94_022418B8: ; 0x022418B8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x1c
	ldr r0, [r4, r1]
	mov r1, #0x5a
	bl sub_0200B1EC
	ldr r1, _02241918 ; =0x00000BB4
	str r0, [r4, r1]
	mov r0, #0x3e
	mov r1, #0x30
	bl sub_02018144
	ldr r1, _0224191C ; =0x00001084
	mov r2, #0x30
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	bl MIi_CpuClearFast
	ldr r2, _0224191C ; =0x00001084
	mov r0, #0x3e
	ldr r2, [r4, r2]
	mov r1, #0
	add r2, #0x1c
	bl ov94_02242524
	ldr r1, _0224191C ; =0x00001084
	ldr r1, [r4, r1]
	str r0, [r1, #0x18]
	mov r0, #0x3e
	bl ov94_02242548
	ldr r1, _0224191C ; =0x00001084
	ldr r2, [r4, r1]
	add r1, #0x38
	str r0, [r2, #0x14]
	add r0, r4, r1
	bl ov94_02242AAC
	pop {r4, pc}
	; .align 2, 0
_02241918: .word 0x00000BB4
_0224191C: .word 0x00001084
	thumb_func_end ov94_022418B8

	thumb_func_start ov94_02241920
ov94_02241920: ; 0x02241920
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02241954 ; =0x00001084
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x14]
	bl sub_020181C4
	ldr r0, _02241954 ; =0x00001084
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x18]
	bl sub_020181C4
	ldr r0, _02241954 ; =0x00001084
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _02241958 ; =0x00000BB4
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
_02241954: .word 0x00001084
_02241958: .word 0x00000BB4
	thumb_func_end ov94_02241920

	thumb_func_start ov94_0224195C
ov94_0224195C: ; 0x0224195C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _02241984
	ldr r0, _0224198C ; =0x00000F0F
	mov r1, #9
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov94_0224158C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #1
	bl ov94_0223C3F4
_02241984:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224198C: .word 0x00000F0F
	thumb_func_end ov94_0224195C

	thumb_func_start ov94_02241990
ov94_02241990: ; 0x02241990
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _02241A08 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #2
	tst r1, r2
	beq _022419AC
	mov r1, #5
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r4, #0x2c]
_022419AC:
	mov r0, #5
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _02241A0C ; =0x0000011A
	ldr r1, _02241A10 ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0xf
	bl sub_0201A7E8
	ldr r0, _02241A10 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #5
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _02241A14 ; =0x0000014E
	ldr r1, _02241A18 ; =0x00000F4C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x15
	bl sub_0201A7E8
	ldr r0, _02241A18 ; =0x00000F4C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #3
	str r0, [r4, #0x2c]
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02241A08: .word 0x021BF67C
_02241A0C: .word 0x0000011A
_02241A10: .word 0x00000F3C
_02241A14: .word 0x0000014E
_02241A18: .word 0x00000F4C
	thumb_func_end ov94_02241990

	thumb_func_start ov94_02241A1C
ov94_02241A1C: ; 0x02241A1C
	push {r4, lr}
	ldr r3, _02241A44 ; =0x00000B94
	add r4, r0, #0
	ldr r1, _02241A48 ; =0x0000106C
	ldr r2, _02241A4C ; =0x00000F3C
	ldr r3, [r4, r3]
	add r1, r4, r1
	add r2, r4, r2
	bl ov94_022426A8
	ldr r1, _02241A50 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _02241A54 ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #4
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02241A44: .word 0x00000B94
_02241A48: .word 0x0000106C
_02241A4C: .word 0x00000F3C
_02241A50: .word 0x00001078
_02241A54: .word 0x0000FFFF
	thumb_func_end ov94_02241A1C

	thumb_func_start ov94_02241A58
ov94_02241A58: ; 0x02241A58
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02241B10 ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov94_02242A6C
	cmp r0, #9
	bhi _02241A8E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02241A7A: ; jump table
	.short _02241B0C - _02241A7A - 2 ; case 0
	.short _02241A98 - _02241A7A - 2 ; case 1
	.short _02241A98 - _02241A7A - 2 ; case 2
	.short _02241A98 - _02241A7A - 2 ; case 3
	.short _02241A98 - _02241A7A - 2 ; case 4
	.short _02241A98 - _02241A7A - 2 ; case 5
	.short _02241A98 - _02241A7A - 2 ; case 6
	.short _02241A98 - _02241A7A - 2 ; case 7
	.short _02241A98 - _02241A7A - 2 ; case 8
	.short _02241A98 - _02241A7A - 2 ; case 9
_02241A8E:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _02241ABC
	b _02241B0C
_02241A98:
	ldr r0, _02241B14 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #6
	ldr r0, [r4, r0]
	add r2, r2, #4
	bl sub_02001384
	ldr r0, _02241B18 ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r0, #5
	str r0, [r4, #0x2c]
	ldr r0, _02241B1C ; =0x000005DC
	bl sub_02005748
	b _02241B0C
_02241ABC:
	ldr r0, _02241B14 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #6
	ldr r0, [r4, r0]
	add r2, r2, #4
	bl sub_02001384
	ldr r0, _02241B18 ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r0, _02241B20 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _02241B24 ; =0x00000EFC
	mov r1, #0
	add r0, r4, r0
	bl sub_0200E084
	ldr r0, _02241B20 ; =0x00000F3C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _02241B28 ; =0x00000F4C
	add r0, r4, r0
	bl sub_0201A8FC
	mov r1, #5
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r4, #0x2c]
	ldr r0, _02241B1C ; =0x000005DC
	bl sub_02005748
_02241B0C:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02241B10: .word 0x00001078
_02241B14: .word 0x00001084
_02241B18: .word 0x0000106C
_02241B1C: .word 0x000005DC
_02241B20: .word 0x00000F3C
_02241B24: .word 0x00000EFC
_02241B28: .word 0x00000F4C
	thumb_func_end ov94_02241A58

	thumb_func_start ov94_02241B2C
ov94_02241B2C: ; 0x02241B2C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r3, _02241B6C ; =0x00000B98
	add r4, r0, #0
	ldr r1, [r4, r3]
	sub r3, r3, #4
	str r1, [sp]
	ldr r1, _02241B70 ; =0x00001084
	ldr r2, [r4, r1]
	sub r1, #0x18
	str r2, [sp, #4]
	ldr r2, [r4, #0]
	add r1, r4, r1
	ldr r2, [r2, #0x10]
	str r2, [sp, #8]
	ldr r2, _02241B74 ; =0x00000F4C
	ldr r3, [r4, r3]
	add r2, r4, r2
	bl ov94_022427C0
	ldr r1, _02241B78 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _02241B7C ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #6
	str r0, [r4, #0x2c]
	mov r0, #3
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02241B6C: .word 0x00000B98
_02241B70: .word 0x00001084
_02241B74: .word 0x00000F4C
_02241B78: .word 0x00001078
_02241B7C: .word 0x0000FFFF
	thumb_func_end ov94_02241B2C

	thumb_func_start ov94_02241B80
ov94_02241B80: ; 0x02241B80
	cmp r1, #0
	beq _02241B8E
	cmp r1, #0xfe
	beq _02241B96
	cmp r1, #0xff
	beq _02241B9E
	b _02241BA6
_02241B8E:
	mov r1, #1
	strb r1, [r0, #2]
	add r0, r1, #0
	bx lr
_02241B96:
	mov r1, #2
	strb r1, [r0, #2]
	mov r0, #1
	bx lr
_02241B9E:
	mov r1, #3
	strb r1, [r0, #2]
	mov r0, #1
	bx lr
_02241BA6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov94_02241B80

	thumb_func_start ov94_02241BAC
ov94_02241BAC: ; 0x02241BAC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _02241CE4 ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov94_02242A6C
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _02241BD4
	add r0, r0, #1
	cmp r5, r0
	bne _02241BD2
	b _02241CDC
_02241BD2:
	b _02241C2A
_02241BD4:
	ldr r0, _02241CE8 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #0
	ldr r0, [r4, r0]
	add r1, #0xa
	add r2, #8
	bl sub_02001384
	ldr r0, _02241CEC ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r0, _02241CF0 ; =0x00000F4C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _02241CF4 ; =0x00000F3C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _02241CF0 ; =0x00000F4C
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, _02241CF8 ; =0x000005DC
	bl sub_02005748
	ldr r0, _02241CE8 ; =0x00001084
	ldr r3, [r4, r0]
	add r0, #0x38
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #4]
	add r0, r4, r0
	add r1, r2, r1
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3, #8]
	bl ov94_02242AC4
	b _02241CDC
_02241C2A:
	ldr r0, _02241CE8 ; =0x00001084
	ldr r2, [r4, r0]
	sub r0, #0xc
	add r1, r2, #0
	ldr r0, [r4, r0]
	add r1, #0xa
	add r2, #8
	bl sub_02001384
	ldr r0, _02241CEC ; =0x0000106C
	ldr r0, [r4, r0]
	bl sub_02013A3C
	ldr r0, _02241CF4 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _02241CF0 ; =0x00000F4C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _02241CF4 ; =0x00000F3C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _02241CF0 ; =0x00000F4C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _02241CFC ; =0x00000B78
	strh r5, [r4, r0]
	ldr r0, _02241CF8 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	mov r1, #0x12
	bl sub_020759F0
	ldr r1, _02241CE8 ; =0x00001084
	ldr r2, [r4, r1]
	str r0, [r2, #0x20]
	ldr r1, [r4, r1]
	ldr r0, _02241CFC ; =0x00000B78
	ldr r1, [r1, #0x20]
	add r0, r4, r0
	bl ov94_02241B80
	cmp r0, #0
	beq _02241C9A
	mov r0, #0xa
	str r0, [r4, #0x2c]
	ldr r0, _02241D00 ; =0x00000B7A
	ldrsb r1, [r4, r0]
	b _02241CA0
_02241C9A:
	mov r0, #7
	str r0, [r4, #0x2c]
	mov r1, #3
_02241CA0:
	ldr r2, _02241CFC ; =0x00000B78
	ldr r3, _02241D04 ; =0x00000F6C
	ldrsh r0, [r4, r2]
	add r3, r4, r3
	str r0, [sp]
	mov r0, #0
	str r1, [sp, #4]
	mvn r0, r0
	str r0, [sp, #8]
	add r0, r2, #0
	add r1, r2, #0
	add r0, #0x1c
	add r1, #0x20
	add r2, #0x18
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl ov94_022422D4
	ldr r0, _02241CE8 ; =0x00001084
	ldr r3, [r4, r0]
	add r0, #0x38
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #4]
	add r0, r4, r0
	add r1, r2, r1
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3, #8]
	bl ov94_02242AC4
_02241CDC:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02241CE4: .word 0x00001078
_02241CE8: .word 0x00001084
_02241CEC: .word 0x0000106C
_02241CF0: .word 0x00000F4C
_02241CF4: .word 0x00000F3C
_02241CF8: .word 0x000005DC
_02241CFC: .word 0x00000B78
_02241D00: .word 0x00000B7A
_02241D04: .word 0x00000F6C
	thumb_func_end ov94_02241BAC

	thumb_func_start ov94_02241D08
ov94_02241D08: ; 0x02241D08
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _02241D58 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl ov94_0224158C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #8
	bl ov94_0223C3F4
	mov r0, #0xa
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _02241D5C ; =0x0000011A
	ldr r1, _02241D60 ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x15
	bl sub_0201A7E8
	ldr r0, _02241D60 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02241D58: .word 0x00000F0F
_02241D5C: .word 0x0000011A
_02241D60: .word 0x00000F3C
	thumb_func_end ov94_02241D08

	thumb_func_start ov94_02241D64
ov94_02241D64: ; 0x02241D64
	push {r4, lr}
	ldr r2, _02241D8C ; =0x00000B94
	add r4, r0, #0
	ldr r0, _02241D90 ; =0x0000106C
	ldr r1, _02241D94 ; =0x00000F3C
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r1, r4, r1
	bl ov94_02242840
	ldr r1, _02241D98 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _02241D9C ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #9
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02241D8C: .word 0x00000B94
_02241D90: .word 0x0000106C
_02241D94: .word 0x00000F3C
_02241D98: .word 0x00001078
_02241D9C: .word 0x0000FFFF
	thumb_func_end ov94_02241D64

	thumb_func_start ov94_02241DA0
ov94_02241DA0: ; 0x02241DA0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _02241E70 ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ov94_02242A6C
	add r4, r0, #0
	cmp r4, #2
	bhi _02241DC8
	cmp r4, #0
	beq _02241E0C
	cmp r4, #1
	beq _02241E0C
	cmp r4, #2
	beq _02241E0C
	b _02241E68
_02241DC8:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _02241E68
	ldr r0, _02241E70 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _02241E74 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02241E78 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _02241E7C ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E084
	ldr r0, _02241E78 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _02241E80 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	str r0, [r5, #0x2c]
	b _02241E68
_02241E0C:
	ldr r0, _02241E70 ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _02241E74 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02241E78 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _02241E78 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _02241E80 ; =0x000005DC
	bl sub_02005748
	ldr r3, _02241E84 ; =0x00000F6C
	ldr r2, _02241E88 ; =0x00000B7A
	add r0, r4, #1
	strb r0, [r5, r2]
	mov r1, #0xa
	str r1, [r5, #0x2c]
	sub r0, r2, #2
	ldrsh r0, [r5, r0]
	sub r1, #0xb
	add r3, r5, r3
	str r0, [sp]
	ldrsb r0, [r5, r2]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r2, #0
	add r1, r2, #0
	add r0, #0x1a
	add r1, #0x1e
	add r2, #0x16
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl ov94_022422D4
_02241E68:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02241E70: .word 0x00001078
_02241E74: .word 0x0000106C
_02241E78: .word 0x00000F3C
_02241E7C: .word 0x00000EFC
_02241E80: .word 0x000005DC
_02241E84: .word 0x00000F6C
_02241E88: .word 0x00000B7A
	thumb_func_end ov94_02241DA0

	thumb_func_start ov94_02241E8C
ov94_02241E8C: ; 0x02241E8C
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _02241EDC ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xb
	mov r2, #1
	mov r3, #0
	bl ov94_0224158C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0xb
	bl ov94_0223C3F4
	mov r0, #5
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _02241EE0 ; =0x0000011A
	ldr r1, _02241EE4 ; =0x00000F3C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0xf
	bl sub_0201A7E8
	ldr r0, _02241EE4 ; =0x00000F3C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02241EDC: .word 0x00000F0F
_02241EE0: .word 0x0000011A
_02241EE4: .word 0x00000F3C
	thumb_func_end ov94_02241E8C

	thumb_func_start ov94_02241EE8
ov94_02241EE8: ; 0x02241EE8
	push {r4, lr}
	ldr r2, _02241F14 ; =0x00000B94
	add r4, r0, #0
	ldr r0, _02241F18 ; =0x0000106C
	ldr r1, _02241F1C ; =0x00000F3C
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r1, r4, r1
	mov r3, #0
	bl ov94_022428B0
	ldr r1, _02241F20 ; =0x00001078
	str r0, [r4, r1]
	mov r0, #0x43
	ldr r1, _02241F24 ; =0x0000FFFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #0xc
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_02241F14: .word 0x00000B94
_02241F18: .word 0x0000106C
_02241F1C: .word 0x00000F3C
_02241F20: .word 0x00001078
_02241F24: .word 0x0000FFFF
	thumb_func_end ov94_02241EE8

	thumb_func_start ov94_02241F28
ov94_02241F28: ; 0x02241F28
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0224201C ; =0x00001078
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ov94_02242A6C
	add r4, r0, #0
	cmp r4, #0xc
	beq _02241F52
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02241F52
	add r0, r0, #1
	cmp r4, r0
	beq _02242016
	b _02241FA6
_02241F52:
	ldr r0, _0224201C ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _02242020 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02242024 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _02242028 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E084
	ldr r0, _02242024 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0224202C ; =0x000005DC
	bl sub_02005748
	ldr r1, _02242030 ; =0x00001084
	ldr r0, _02242034 ; =0x00000B78
	ldr r1, [r5, r1]
	add r0, r5, r0
	ldr r1, [r1, #0x20]
	bl ov94_02241B80
	cmp r0, #0
	beq _02241FA0
	mov r0, #0
	str r0, [r5, #0x2c]
	b _02242016
_02241FA0:
	mov r0, #7
	str r0, [r5, #0x2c]
	b _02242016
_02241FA6:
	ldr r0, _0224202C ; =0x000005DC
	bl sub_02005748
	ldr r0, _0224201C ; =0x00001078
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, _02242020 ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02242024 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	ldr r0, _02242024 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _02242034 ; =0x00000B78
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	bl ov94_02242934
	mov r0, #0xd
	ldr r1, _02242038 ; =0x00000B7B
	str r0, [r5, #0x2c]
	ldrsb r0, [r5, r1]
	add r1, r1, #1
	ldrsb r1, [r5, r1]
	mov r2, #0
	bl ov94_02242970
	ldr r2, _02242034 ; =0x00000B78
	ldr r3, _0224203C ; =0x00000F6C
	ldrsh r1, [r5, r2]
	add r3, r5, r3
	str r1, [sp]
	add r1, r2, #2
	ldrsb r1, [r5, r1]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r2, #0
	add r1, r2, #0
	add r0, #0x1c
	add r1, #0x20
	add r2, #0x18
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl ov94_022422D4
_02242016:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0224201C: .word 0x00001078
_02242020: .word 0x0000106C
_02242024: .word 0x00000F3C
_02242028: .word 0x00000EFC
_0224202C: .word 0x000005DC
_02242030: .word 0x00001084
_02242034: .word 0x00000B78
_02242038: .word 0x00000B7B
_0224203C: .word 0x00000F6C
	thumb_func_end ov94_02241F28

	thumb_func_start ov94_02242040
ov94_02242040: ; 0x02242040
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02242064 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0x17
	mov r2, #1
	mov r3, #0
	bl ov94_0224158C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0xe
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02242064: .word 0x00000F0F
	thumb_func_end ov94_02242040

	thumb_func_start ov94_02242068
ov94_02242068: ; 0x02242068
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _02242084 ; =0x000001EA
	mov r1, #0xf
	bl ov94_0223C3C0
	ldr r1, _02242088 ; =0x00001070
	str r0, [r4, r1]
	mov r0, #0xf
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_02242084: .word 0x000001EA
_02242088: .word 0x00001070
	thumb_func_end ov94_02242068

	thumb_func_start ov94_0224208C
ov94_0224208C: ; 0x0224208C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022420DC ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022420D8
	sub r1, r1, #1
	cmp r0, r1
	bne _022420B8
	mov r1, #5
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r4, #0x2c]
	b _022420D8
_022420B8:
	mov r1, #7
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r4, #0x2c]
	ldr r0, _022420E0 ; =0x000010B0
	mov r1, #1
	str r1, [r4, r0]
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r4, #0
	bl ov94_02242668
_022420D8:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_022420DC: .word 0x00001070
_022420E0: .word 0x000010B0
	thumb_func_end ov94_0224208C

	thumb_func_start ov94_022420E4
ov94_022420E4: ; 0x022420E4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02242110
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, _02242134 ; =0x000010B0
	mov r1, #1
	str r1, [r4, r0]
	b _02242128
_02242110:
	mov r0, #6
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
_02242128:
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02242134: .word 0x000010B0
	thumb_func_end ov94_022420E4

	thumb_func_start ov94_02242138
ov94_02242138: ; 0x02242138
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02242154 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02242150
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_02242150:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02242154: .word 0x00000BE4
	thumb_func_end ov94_02242138

	thumb_func_start ov94_02242158
ov94_02242158: ; 0x02242158
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r3, #0
	cmp r2, #0
	beq _02242186
	add r0, r1, #0
	add r1, r2, #0
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	str r5, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov94_02245900
	add r0, r4, #0
	bl sub_020237BC
_02242186:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov94_02242158

	thumb_func_start ov94_0224218C
ov94_0224218C: ; 0x0224218C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	cmp r3, #0
	beq _022421BE
	add r0, r1, #0
	add r1, r3, #0
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl ov94_02245900
	add r0, r5, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, pc}
_022421BE:
	add r0, r2, #0
	mov r1, #0xa7
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl ov94_02245900
	add r0, r5, #0
	bl sub_020237BC
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov94_0224218C

	thumb_func_start ov94_022421E8
ov94_022421E8: ; 0x022421E8
	cmp r0, #1
	bne _022421F2
	ldr r0, _02242200 ; =0x02246920
	ldr r0, [r0, #0]
	bx lr
_022421F2:
	cmp r0, #2
	bne _022421FA
	ldr r0, _02242200 ; =0x02246920
	ldr r1, [r0, #4]
_022421FA:
	add r0, r1, #0
	bx lr
	nop
_02242200: .word 0x02246920
	thumb_func_end ov94_022421E8

	thumb_func_start ov94_02242204
ov94_02242204: ; 0x02242204
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r2, #0
	cmp r3, #0
	bne _02242214
	cmp r5, #3
	beq _02242264
_02242214:
	add r0, r1, #0
	ldr r1, _02242268 ; =0x02245FD8
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #3
	ble _02242244
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov94_022421E8
	mov r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	bl ov94_02245900
	b _0224225E
_02242244:
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov94_022421E8
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov94_02245900
_0224225E:
	add r0, r4, #0
	bl sub_020237BC
_02242264:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02242268: .word 0x02245FD8
	thumb_func_end ov94_02242204

	thumb_func_start ov94_0224226C
ov94_0224226C: ; 0x0224226C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	add r5, r3, #0
	cmp r2, r0
	beq _022422AC
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02242286
	ldr r3, _022422B0 ; =0x0224610C
	b _02242288
_02242286:
	ldr r3, _022422B4 ; =0x022460AC
_02242288:
	add r0, r1, #0
	lsl r1, r2, #3
	ldr r1, [r3, r1]
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	str r5, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	bl ov94_02245900
	add r0, r4, #0
	bl sub_020237BC
_022422AC:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022422B0: .word 0x0224610C
_022422B4: .word 0x022460AC
	thumb_func_end ov94_0224226C

	thumb_func_start ov94_022422B8
ov94_022422B8: ; 0x022422B8
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x18]
	str r4, [sp]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x20]
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	bl ov94_0224226C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov94_022422B8

	thumb_func_start ov94_022422D4
ov94_022422D4: ; 0x022422D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	mov r1, #0x61
	str r0, [sp, #0xc]
	add r6, r3, #0
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	mov r2, #0
	ldr r0, _02242364 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	add r5, r6, #0
	mov r4, #1
	add r5, #0x10
	mov r7, #0
_02242300:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0201ADA4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _02242300
	mov r3, #0
	ldr r0, _02242364 ; =0x000F0200
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x30]
	add r0, #0x10
	bl ov94_02242158
	ldr r2, [sp, #0x34]
	sub r0, r2, #1
	cmp r0, #1
	bhi _02242342
	mov r3, #0
	str r3, [sp]
	mov r0, #0x46
	str r0, [sp, #4]
	ldr r0, _02242364 ; =0x000F0200
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x10
	bl ov94_02242204
_02242342:
	mov r1, #0
	ldr r0, _02242364 ; =0x000F0200
	str r1, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r6, #0x20
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	mov r3, #2
	bl ov94_022422B8
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242364: .word 0x000F0200
	thumb_func_end ov94_022422D4

	thumb_func_start ov94_02242368
ov94_02242368: ; 0x02242368
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	mov r1, #0x61
	str r0, [sp, #0xc]
	add r6, r3, #0
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	mov r2, #0
	ldr r0, _022423F8 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	add r5, r6, #0
	mov r4, #1
	add r5, #0x10
	mov r7, #0
_02242394:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0201ADA4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _02242394
	mov r3, #0
	ldr r0, _022423F8 ; =0x000F0200
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x30]
	add r0, #0x10
	bl ov94_02242158
	ldr r2, [sp, #0x34]
	sub r0, r2, #1
	cmp r0, #1
	bhi _022423D6
	mov r3, #0
	str r3, [sp]
	mov r0, #0x46
	str r0, [sp, #4]
	ldr r0, _022423F8 ; =0x000F0200
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x10
	bl ov94_02242204
_022423D6:
	mov r1, #0
	ldr r0, _022423F8 ; =0x000F0200
	str r1, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r6, #0x20
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	mov r3, #2
	bl ov94_022422B8
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022423F8: .word 0x000F0200
	thumb_func_end ov94_02242368

	thumb_func_start ov94_022423FC
ov94_022423FC: ; 0x022423FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x3e
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r7, [sp, #0x38]
	bl sub_02023790
	str r0, [sp, #0x18]
	mov r0, #0xb
	mov r1, #0x3e
	bl sub_02023790
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x18]
	mov r1, #0x77
	bl sub_02074570
	ldr r0, [sp, #0xc]
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074570
	add r6, r0, #1
	ldr r0, [sp, #0xc]
	bl sub_02075B40
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x64
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	mov r1, #3
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_0200B60C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x66
	mov r3, #0x3e
	bl sub_0200B29C
	str r0, [sp, #0x1c]
	cmp r6, #3
	beq _0224247A
	ldr r1, _02242518 ; =0x02245FD8
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	bl sub_0200B1B8
_0224247A:
	ldr r5, [sp, #8]
	mov r4, #0
_0224247E:
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _0224247E
	mov r2, #0
	ldr r0, _0224251C ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x20]
	add r3, r2, #0
	bl ov94_02245900
	mov r2, #0
	ldr r0, _0224251C ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	add r0, #0x10
	add r3, r2, #0
	bl ov94_02245900
	mov r0, #2
	str r0, [sp]
	ldr r0, _0224251C ; =0x000F0200
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	add r0, #0x20
	add r3, r2, #0
	bl ov94_02245900
	cmp r6, #3
	beq _022424EA
	sub r0, r6, #1
	mov r3, #0
	lsl r1, r0, #2
	ldr r0, _02242520 ; =0x02246920
	str r3, [sp]
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	mov r2, #0x46
	add r0, #0x10
	str r0, [sp, #8]
	bl ov94_02245900
_022424EA:
	ldr r0, [sp, #0xc]
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	strh r0, [r7]
	ldr r0, [sp, #0x10]
	strb r6, [r7, #2]
	strb r0, [r7, #3]
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02242518: .word 0x02245FD8
_0224251C: .word 0x000F0200
_02242520: .word 0x02246920
	thumb_func_end ov94_022423FC

	thumb_func_start ov94_02242524
ov94_02242524: ; 0x02242524
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #0
	add r3, r0, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0x4b
	mov r1, #0xd
	bl sub_02007068
	ldr r1, [sp, #8]
	lsr r1, r1, #1
	str r1, [r4, #0]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov94_02242524

	thumb_func_start ov94_02242548
ov94_02242548: ; 0x02242548
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _022425A0 ; =0x000001EE
	add r5, r0, #0
	mov r0, #0x3e
	bl sub_02018144
	add r4, r0, #0
	ldr r2, _022425A0 ; =0x000001EE
	mov r0, #0
	add r1, r4, #0
	bl MIi_CpuClearFast
	mov r2, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0x4b
	mov r1, #0xc
	add r3, r5, #0
	bl sub_02007068
	add r7, r0, #0
	ldr r0, [sp, #8]
	ldr r5, _022425A4 ; =0x00000000
	lsr r3, r0, #1
	beq _02242594
	ldr r0, _022425A0 ; =0x000001EE
	add r6, r7, #0
	mov r1, #1
_02242584:
	ldrh r2, [r6]
	cmp r2, r0
	bhs _0224258C
	strb r1, [r4, r2]
_0224258C:
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, r3
	blo _02242584
_02242594:
	add r0, r7, #0
	bl sub_020181C4
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022425A0: .word 0x000001EE
_022425A4: .word 0x00000000
	thumb_func_end ov94_02242548

	thumb_func_start ov94_022425A8
ov94_022425A8: ; 0x022425A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x45
	add r4, r1, #0
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	bl ov94_022411D0
	cmp r0, #0
	beq _022425DC
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02077ACC
	bl sub_02073C70
	add r2, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl MIi_CpuCopyFast
	b _022425F4
_022425DC:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02077ADC
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_020774C8
_022425F4:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x1c]
	bl sub_02025EF0
	add r1, r0, #0
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r2, #8
	bl sub_020021D0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x1c]
	bl sub_02025F24
	mov r1, #0x47
	lsl r1, r1, #2
	strh r0, [r5, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x18]
	bl sub_0202C8C0
	ldr r1, _0224265C ; =0x0000011E
	strb r0, [r5, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x18]
	bl sub_0202C8C4
	ldr r1, _02242660 ; =0x0000011F
	strb r0, [r5, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x1c]
	bl sub_02025F8C
	mov r1, #0x12
	lsl r1, r1, #4
	strb r0, [r5, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x1c]
	bl sub_02025F30
	add r1, r5, #0
	add r1, #0xf6
	strb r0, [r1]
	ldr r0, _02242664 ; =0x00000122
	mov r1, #0xc
	strb r1, [r5, r0]
	mov r1, #2
	add r0, r0, #1
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_0224265C: .word 0x0000011E
_02242660: .word 0x0000011F
_02242664: .word 0x00000122
	thumb_func_end ov94_022425A8

	thumb_func_start ov94_02242668
ov94_02242668: ; 0x02242668
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov94_022425A8
	ldr r0, _022426A4 ; =0x00000B74
	add r1, r5, #0
	ldrh r2, [r4, r0]
	add r1, #0xec
	strh r2, [r1]
	add r1, r0, #2
	ldrh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xee
	strh r2, [r1]
	add r1, r0, #4
	ldrh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xf0
	strh r2, [r1]
	add r1, r0, #6
	ldrh r2, [r4, r1]
	add r1, r5, #0
	add r1, #0xf2
	strh r2, [r1]
	add r0, #8
	ldrh r0, [r4, r0]
	add r5, #0xf4
	strh r0, [r5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022426A4: .word 0x00000B74
	thumb_func_end ov94_02242668

	thumb_func_start ov94_022426A8
ov94_022426A8: ; 0x022426A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #9
	mov r1, #0x3e
	str r2, [sp]
	add r6, r3, #0
	bl sub_02013A04
	str r0, [r5, #0]
	mov r4, #0
_022426C0:
	add r2, r4, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, #0x68
	add r3, r4, #1
	bl sub_02013A4C
	add r4, r4, #1
	cmp r4, #9
	blt _022426C0
	ldr r3, _02242710 ; =0x0224608C
	add r2, sp, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r2, #0x1f
	mov r3, #0xb
	str r0, [sp, #0x10]
	bl sub_0200DC48
	ldr r0, _02242714 ; =0x00001084
	mov r3, #0x3e
	ldr r2, [r7, r0]
	add r0, sp, #4
	ldrh r1, [r2, #6]
	ldrh r2, [r2, #4]
	bl sub_0200112C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02242710: .word 0x0224608C
_02242714: .word 0x00001084
	thumb_func_end ov94_022426A8

	thumb_func_start ov94_02242718
ov94_02242718: ; 0x02242718
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r2, [sp, #8]
	str r1, [sp, #4]
	ldr r2, [sp, #0x38]
	str r0, [sp]
	ldr r1, _022427BC ; =0x02246928
	lsl r0, r2, #1
	ldrh r0, [r1, r0]
	mov r7, #0
	str r3, [sp, #0xc]
	str r0, [sp, #0x14]
	add r0, r2, #1
	lsl r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [sp, #0x14]
	ldr r6, [sp, #0x3c]
	sub r4, r1, r0
	str r7, [sp, #0x18]
	cmp r4, #0
	ble _02242762
	lsl r1, r0, #1
	add r0, r3, #0
	add r5, r0, r1
_02242748:
	ldrh r1, [r5]
	add r0, r6, #0
	bl sub_02026FE8
	cmp r0, #0
	beq _02242756
	add r7, r7, #1
_02242756:
	ldr r0, [sp, #0x18]
	add r5, r5, #2
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r4
	blt _02242748
_02242762:
	add r0, r7, #1
	mov r1, #0x3e
	bl sub_02013A04
	ldr r1, [sp]
	str r0, [r1, #0]
	mov r0, #0
	str r0, [sp, #0x10]
	cmp r4, #0
	ble _022427A4
	ldr r0, [sp, #0x14]
	lsl r1, r0, #1
	ldr r0, [sp, #0xc]
	add r5, r0, r1
_0224277E:
	ldrh r1, [r5]
	add r0, r6, #0
	bl sub_02026FE8
	cmp r0, #0
	beq _02242798
	ldrh r2, [r5]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	add r3, r2, #0
	bl sub_02013A4C
_02242798:
	ldr r0, [sp, #0x10]
	add r5, r5, #2
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, r4
	blt _0224277E
_022427A4:
	ldr r0, [sp]
	mov r2, #0x79
	add r3, r2, #0
	ldr r0, [r0, #0]
	ldr r1, [sp, #8]
	sub r3, #0x7b
	bl sub_02013A4C
	add r0, r7, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022427BC: .word 0x02246928
	thumb_func_end ov94_02242718

	thumb_func_start ov94_022427C0
ov94_022427C0: ; 0x022427C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r5, [sp, #0x54]
	add r7, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	mov r1, #0xf
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_0201ADA4
	ldrh r1, [r5, #6]
	ldrh r0, [r5, #4]
	ldr r2, [sp, #0x14]
	add r4, r1, r0
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #0x50]
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x58]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [r5, #0x18]
	add r0, r6, #0
	bl ov94_02242718
	ldr r3, _0224283C ; =0x0224608C
	add r5, r0, #0
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, sp, #0x18
	strh r5, [r0, #0x10]
	ldr r0, [r6, #0]
	mov r1, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	mov r2, #0x1f
	mov r3, #0xb
	str r0, [sp, #0x24]
	bl sub_0200DC48
	lsl r1, r4, #1
	mov r2, #0x43
	add r3, r7, r1
	lsl r2, r2, #6
	ldrh r1, [r3, r2]
	add r2, #0x12
	ldrh r2, [r3, r2]
	add r0, sp, #0x18
	mov r3, #0x3e
	bl sub_0200112C
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224283C: .word 0x0224608C
	thumb_func_end ov94_022427C0

	thumb_func_start ov94_02242840
ov94_02242840: ; 0x02242840
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	str r1, [sp]
	mov r0, #4
	mov r1, #0x3e
	add r7, r2, #0
	bl sub_02013A04
	ldr r5, _022428A8 ; =0x0224693C
	str r0, [r6, #0]
	mov r4, #0
_02242858:
	ldr r0, [r6, #0]
	ldr r2, [r5, #0]
	ldr r3, [r5, #4]
	add r1, r7, #0
	bl sub_02013A4C
	add r4, r4, #1
	add r5, #8
	cmp r4, #4
	blt _02242858
	ldr r3, _022428AC ; =0x0224608C
	add r2, sp, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #4
	add r0, sp, #4
	strh r1, [r0, #0x10]
	ldr r0, [r6, #0]
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r2, #0x1f
	mov r3, #0xb
	str r0, [sp, #0x10]
	bl sub_0200DC48
	mov r1, #0
	add r0, sp, #4
	add r2, r1, #0
	mov r3, #0x3e
	bl sub_0200112C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022428A8: .word 0x0224693C
_022428AC: .word 0x0224608C
	thumb_func_end ov94_02242840

	thumb_func_start ov94_022428B0
ov94_022428B0: ; 0x022428B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	cmp r3, #0
	bne _022428C4
	ldr r5, _02242928 ; =0x0224610C
	mov r6, #0xd
	b _022428C8
_022428C4:
	ldr r5, _0224292C ; =0x022460AC
	mov r6, #0xc
_022428C8:
	add r0, r6, #0
	mov r1, #0x3e
	bl sub_02013A04
	mov r4, #0
	str r0, [r7, #0]
	cmp r6, #0
	ble _022428EC
_022428D8:
	ldr r0, [r7, #0]
	ldr r1, [sp, #4]
	ldr r2, [r5, #0]
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
	add r5, #8
	cmp r4, r6
	blt _022428D8
_022428EC:
	ldr r3, _02242930 ; =0x0224608C
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, sp, #8
	strh r6, [r0, #0x10]
	ldr r0, [r7, #0]
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r2, #0x1f
	mov r3, #0xb
	str r0, [sp, #0x14]
	bl sub_0200DC48
	mov r1, #0
	add r0, sp, #8
	add r2, r1, #0
	mov r3, #0x3e
	bl sub_0200112C
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242928: .word 0x0224610C
_0224292C: .word 0x022460AC
_02242930: .word 0x0224608C
	thumb_func_end ov94_022428B0

	thumb_func_start ov94_02242934
ov94_02242934: ; 0x02242934
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r2, #0
	bne _0224294A
	ldr r6, _02242968 ; =0x0224610C
	cmp r4, #0xc
	blt _02242954
	bl GF_AssertFail
	b _02242954
_0224294A:
	ldr r6, _0224296C ; =0x022460AC
	cmp r4, #0xb
	blo _02242954
	bl GF_AssertFail
_02242954:
	lsl r0, r4, #3
	add r1, r6, r0
	mov r0, #4
	ldrsh r0, [r1, r0]
	strb r0, [r5, #3]
	mov r0, #6
	ldrsh r0, [r1, r0]
	strb r0, [r5, #4]
	pop {r4, r5, r6, pc}
	nop
_02242968: .word 0x0224610C
_0224296C: .word 0x022460AC
	thumb_func_end ov94_02242934

	thumb_func_start ov94_02242970
ov94_02242970: ; 0x02242970
	push {r4, r5, r6, r7}
	cmp r2, #0
	bne _0224297C
	ldr r4, _022429AC ; =0x0224610C
	mov r3, #0xd
	b _02242980
_0224297C:
	ldr r4, _022429B0 ; =0x022460AC
	mov r3, #0xc
_02242980:
	mov r2, #0
	cmp r3, #0
	ble _022429A4
	mov r5, #6
	mov r6, #4
_0224298A:
	ldrsh r7, [r4, r6]
	cmp r0, r7
	bne _0224299C
	ldrsh r7, [r4, r5]
	cmp r1, r7
	bne _0224299C
	add r0, r2, #0
	pop {r4, r5, r6, r7}
	bx lr
_0224299C:
	add r2, r2, #1
	add r4, #8
	cmp r2, r3
	blt _0224298A
_022429A4:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	nop
_022429AC: .word 0x0224610C
_022429B0: .word 0x022460AC
	thumb_func_end ov94_02242970

	thumb_func_start ov94_022429B4
ov94_022429B4: ; 0x022429B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	str r1, [sp]
	str r3, [sp, #4]
	mov r0, #0x84
	mov r1, #0x3e
	add r7, r2, #0
	bl sub_02013A04
	ldr r1, [sp, #4]
	mov r2, #0xa7
	mov r3, #0
	str r0, [r5, #0]
	bl sub_02013A4C
	mov r0, #0x84
	mov r4, #1
	sub r6, r0, #1
	b _022429F0
_022429DC:
	sub r2, r4, #1
	lsl r3, r2, #1
	ldr r2, _02242A3C ; =0x02246174
	ldr r0, [r5, #0]
	ldrh r2, [r2, r3]
	add r1, r7, #0
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
_022429F0:
	cmp r4, r6
	blt _022429DC
	ldr r0, [r5, #0]
	ldr r1, [sp, #4]
	mov r2, #0xa8
	add r3, r6, #0
	bl sub_02013A4C
	ldr r3, _02242A40 ; =0x0224608C
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r1, sp, #8
	mov r0, #0x84
	strh r0, [r1, #0x10]
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r2, #0x1f
	mov r3, #0xb
	str r0, [sp, #0x14]
	bl sub_0200DC48
	mov r1, #0
	add r0, sp, #8
	add r2, r1, #0
	mov r3, #0x3e
	bl sub_0200112C
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242A3C: .word 0x02246174
_02242A40: .word 0x0224608C
	thumb_func_end ov94_022429B4

	thumb_func_start ov94_02242A44
ov94_02242A44: ; 0x02242A44
	cmp r1, #0
	bne _02242A50
	ldr r1, _02242A64 ; =0x00001150
	mov r2, #0
	str r2, [r0, r1]
	bx lr
_02242A50:
	sub r1, r1, #1
	cmp r1, #0x82
	bhs _02242A60
	lsl r2, r1, #1
	ldr r1, _02242A68 ; =0x02246174
	ldrh r2, [r1, r2]
	ldr r1, _02242A64 ; =0x00001150
	str r2, [r0, r1]
_02242A60:
	bx lr
	nop
_02242A64: .word 0x00001150
_02242A68: .word 0x02246174
	thumb_func_end ov94_02242A44

	thumb_func_start ov94_02242A6C
ov94_02242A6C: ; 0x02242A6C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02001288
	add r6, r0, #0
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020014D0
	add r0, sp, #0
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	beq _02242A9E
	ldr r0, _02242AA4 ; =0x0000FFFF
	cmp r1, r0
	beq _02242A98
	ldr r0, _02242AA8 ; =0x000005DC
	bl sub_02005748
_02242A98:
	add r0, sp, #0
	ldrh r0, [r0]
	strh r0, [r4]
_02242A9E:
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02242AA4: .word 0x0000FFFF
_02242AA8: .word 0x000005DC
	thumb_func_end ov94_02242A6C

	thumb_func_start ov94_02242AAC
ov94_02242AAC: ; 0x02242AAC
	mov r2, #0
	add r3, r0, #0
	add r1, r2, #0
_02242AB2:
	strh r1, [r3, #4]
	strh r1, [r3, #0x16]
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #9
	blt _02242AB2
	strh r1, [r0]
	strh r1, [r0, #2]
	bx lr
	thumb_func_end ov94_02242AAC

	thumb_func_start ov94_02242AC4
ov94_02242AC4: ; 0x02242AC4
	lsl r1, r1, #1
	add r0, r0, r1
	strh r2, [r0, #4]
	strh r3, [r0, #0x16]
	bx lr
	; .align 2, 0
	thumb_func_end ov94_02242AC4

	.rodata


	.global Unk_ov94_02245FD4
Unk_ov94_02245FD4: ; 0x02245FD4
	.incbin "incbin/overlay94_rodata.bin", 0x5DC, 0x5E0 - 0x5DC

	.global Unk_ov94_02245FD8
Unk_ov94_02245FD8: ; 0x02245FD8
	.incbin "incbin/overlay94_rodata.bin", 0x5E0, 0x5F0 - 0x5E0

	.global Unk_ov94_02245FE8
Unk_ov94_02245FE8: ; 0x02245FE8
	.incbin "incbin/overlay94_rodata.bin", 0x5F0, 0x608 - 0x5F0

	.global Unk_ov94_02246000
Unk_ov94_02246000: ; 0x02246000
	.incbin "incbin/overlay94_rodata.bin", 0x608, 0x624 - 0x608

	.global Unk_ov94_0224601C
Unk_ov94_0224601C: ; 0x0224601C
	.incbin "incbin/overlay94_rodata.bin", 0x624, 0x640 - 0x624

	.global Unk_ov94_02246038
Unk_ov94_02246038: ; 0x02246038
	.incbin "incbin/overlay94_rodata.bin", 0x640, 0x65C - 0x640

	.global Unk_ov94_02246054
Unk_ov94_02246054: ; 0x02246054
	.incbin "incbin/overlay94_rodata.bin", 0x65C, 0x678 - 0x65C

	.global Unk_ov94_02246070
Unk_ov94_02246070: ; 0x02246070
	.incbin "incbin/overlay94_rodata.bin", 0x678, 0x694 - 0x678

	.global Unk_ov94_0224608C
Unk_ov94_0224608C: ; 0x0224608C
	.incbin "incbin/overlay94_rodata.bin", 0x694, 0x6B4 - 0x694

	.global Unk_ov94_022460AC
Unk_ov94_022460AC: ; 0x022460AC
	.incbin "incbin/overlay94_rodata.bin", 0x6B4, 0x714 - 0x6B4

	.global Unk_ov94_0224610C
Unk_ov94_0224610C: ; 0x0224610C
	.incbin "incbin/overlay94_rodata.bin", 0x714, 0x77C - 0x714

	.global Unk_ov94_02246174
Unk_ov94_02246174: ; 0x02246174
	.incbin "incbin/overlay94_rodata.bin", 0x77C, 0x104


	.data


	.global Unk_ov94_02246920
Unk_ov94_02246920: ; 0x02246920
	.incbin "incbin/overlay94_data.bin", 0x520, 0x528 - 0x520

	.global Unk_ov94_02246928
Unk_ov94_02246928: ; 0x02246928
	.incbin "incbin/overlay94_data.bin", 0x528, 0x53C - 0x528

	.global Unk_ov94_0224693C
Unk_ov94_0224693C: ; 0x0224693C
	.incbin "incbin/overlay94_data.bin", 0x53C, 0x55C - 0x53C

	.global Unk_ov94_0224695C
Unk_ov94_0224695C: ; 0x0224695C
	.incbin "incbin/overlay94_data.bin", 0x55C, 0x44

