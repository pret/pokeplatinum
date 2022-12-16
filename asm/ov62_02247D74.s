	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov62_02247D74
ov62_02247D74: ; 0x02247D74
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02247DB0 ; =0x000008A4
	add r2, r1, #0
	add r4, r0, #0
	mov r1, #2
	bl ov62_022302A8
	add r0, r4, r5
	bl sub_0201A7A0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x4b
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x24]
	add r1, r4, r5
	mov r2, #2
	mov r3, #1
	bl sub_0201A7E8
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02247DB0: .word 0x000008A4
	thumb_func_end ov62_02247D74

	thumb_func_start ov62_02247DB4
ov62_02247DB4: ; 0x02247DB4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02247DD4 ; =0x000008A4
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _02247DD4 ; =0x000008A4
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	pop {r4, pc}
	nop
_02247DD4: .word 0x000008A4
	thumb_func_end ov62_02247DB4

	thumb_func_start ov62_02247DD8
ov62_02247DD8: ; 0x02247DD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r3, _02247E90 ; =0x0000011A
	add r5, r0, #0
	add r0, r1, #0
	str r1, [sp, #0x10]
	cmp r0, r3
	bne _02247E52
	lsl r0, r2, #2
	add r1, r5, r0
	ldr r0, _02247E94 ; =0x000008A4
	sub r0, #0x18
	ldr r7, [r1, r0]
	mov r0, #0x66
	bl ov62_02231690
	add r6, r0, #0
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0x66
	bl sub_02030B94
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r5, #0x48]
	ldr r1, [sp, #0x10]
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0200C388
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B3F0
	b _02247E5A
_02247E52:
	ldr r0, [r5, #0x48]
	bl sub_0200B1EC
	add r4, r0, #0
_02247E5A:
	ldr r0, _02247E94 ; =0x000008A4
	mov r1, #0xcc
	add r0, r5, r0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02247E98 ; =0x000F0D0C
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, _02247E94 ; =0x000008A4
	add r3, r1, #0
	add r0, r5, r0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, _02247E94 ; =0x000008A4
	add r0, r5, r0
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02247E90: .word 0x0000011A
_02247E94: .word 0x000008A4
_02247E98: .word 0x000F0D0C
	thumb_func_end ov62_02247DD8

	thumb_func_start ov62_02247E9C
ov62_02247E9C: ; 0x02247E9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	add r6, r4, #0
	add r6, #0x10
	add r0, r6, #0
	bl sub_0201A7A0
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r6, #0
	mov r3, #4
	bl sub_0201A7E8
	add r0, r6, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	mov r1, #0x82
	bl sub_0200B1EC
	add r7, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02247F78 ; =0x000F0D00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0201A9A4
	add r4, #0x20
	add r0, r4, #0
	bl sub_0201A7A0
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x15
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	mov r3, #0x12
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	mov r1, #0x83
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02247F78 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02247F78: .word 0x000F0D00
	thumb_func_end ov62_02247E9C

	thumb_func_start ov62_02247F7C
ov62_02247F7C: ; 0x02247F7C
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x20
	bl sub_0201ACF4
	add r4, #0x20
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02247F7C

	thumb_func_start ov62_02247FA8
ov62_02247FA8: ; 0x02247FA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x66
	mov r1, #0x30
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x86
	lsl r0, r0, #4
	str r4, [r5, r0]
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	bl ov62_022315C8
	add r0, r5, #0
	mov r1, #1
	bl ov62_0222FB60
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02247FA8

	thumb_func_start ov62_02247FFC
ov62_02247FFC: ; 0x02247FFC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02248014
	cmp r1, #1
	beq _02248072
	b _02248100
_02248014:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _02248028
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02248028:
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0224810E
_02248072:
	mov r0, #0
	add r1, r0, #0
	bl sub_02019060
	mov r0, #1
	mov r1, #3
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #2
	bl sub_02019060
	mov r0, #4
	mov r1, #0
	bl sub_02019060
	mov r0, #5
	mov r1, #3
	bl sub_02019060
	mov r0, #6
	mov r1, #1
	bl sub_02019060
	mov r0, #7
	mov r1, #2
	bl sub_02019060
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_02231454
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0224810E
_02248100:
	mov r1, #0
	bl ov62_0223376C
	add r0, r5, #0
	mov r1, #2
	bl ov62_0222FB60
_0224810E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02247FFC

	thumb_func_start ov62_02248114
ov62_02248114: ; 0x02248114
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #6
	bls _02248128
	b _022482F0
_02248128:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02248134: ; jump table
	.short _02248142 - _02248134 - 2 ; case 0
	.short _0224818E - _02248134 - 2 ; case 1
	.short _022481E4 - _02248134 - 2 ; case 2
	.short _02248226 - _02248134 - 2 ; case 3
	.short _0224826A - _02248134 - 2 ; case 4
	.short _02248276 - _02248134 - 2 ; case 5
	.short _022482C0 - _02248134 - 2 ; case 6
_02248142:
	bl ov62_02247E9C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02247D74
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x54
	mov r3, #7
	bl sub_0200710C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02248306
_0224818E:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _022481CA
	ldr r2, _0224830C ; =0x0000086C
	ldr r1, _02248310 ; =0x0000011A
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov62_02247DD8
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022481CA:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02248306
_022481E4:
	ldr r0, _02248314 ; =0x02249788
	bl sub_02022760
	cmp r0, #0
	beq _02248206
	add r0, r4, #0
	bl ov62_02234520
	ldr r1, _02248318 ; =0x0000011B
	add r0, r4, #0
	mov r2, #0
	bl ov62_02247DD8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02248306
_02248206:
	ldr r0, _0224831C ; =0x0224978C
	bl sub_02022760
	cmp r0, #0
	beq _02248306
	add r0, r4, #0
	bl ov62_02234520
	mov r0, #1
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl ov62_02247DB4
	mov r0, #4
	str r0, [r4, #8]
	b _02248306
_02248226:
	ldr r0, _02248314 ; =0x02249788
	bl sub_02022760
	cmp r0, #0
	beq _02248248
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	bl ov62_022342BC
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02248306
_02248248:
	ldr r0, _0224831C ; =0x0224978C
	bl sub_02022760
	cmp r0, #0
	beq _02248306
	add r0, r4, #0
	bl ov62_02234520
	add r0, r4, #0
	bl ov62_02247DB4
	mov r0, #1
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02248306
_0224826A:
	bl ov62_02247F7C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02248306
_02248276:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022482A6
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _022482A0
	add r0, r4, #0
	mov r1, #3
	bl ov62_0222FB60
	b _022482A6
_022482A0:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022482A6:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02248306
_022482C0:
	bl ov62_022342CC
	cmp r0, #0
	beq _022482E6
	add r0, r4, #0
	bl ov62_022339A0
	add r0, r4, #0
	bl ov62_022338A8
	ldr r1, _02248320 ; =0x0000011D
	add r0, r4, #0
	mov r2, #0
	bl ov62_02247DD8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02248306
_022482E6:
	add r0, r4, #0
	mov r1, #3
	bl ov62_0222FB60
	b _02248306
_022482F0:
	bl sub_02022798
	cmp r0, #0
	beq _02248306
	add r0, r4, #0
	bl ov62_02247DB4
	add r0, r4, #0
	mov r1, #3
	bl ov62_0222FB60
_02248306:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224830C: .word 0x0000086C
_02248310: .word 0x0000011A
_02248314: .word 0x02249788
_02248318: .word 0x0000011B
_0224831C: .word 0x0224978C
_02248320: .word 0x0000011D
	thumb_func_end ov62_02248114

	thumb_func_start ov62_02248324
ov62_02248324: ; 0x02248324
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0224833E
	cmp r1, #1
	beq _02248342
	cmp r1, #2
	beq _02248348
	b _0224837E
_0224833E:
	add r0, r1, #1
	str r0, [r5, #8]
_02248342:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02248348:
	add r0, r5, #0
	bl ov62_0223146C
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r5, #0
	mov r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02248402
_0224837E:
	bl ov62_02233790
	cmp r0, #0
	beq _02248402
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _022483D2
	add r0, r5, #0
	bl ov62_022318E8
	add r0, r4, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
	add r0, r4, #0
	bl sub_020181C4
	b _02248402
_022483D2:
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
_02248402:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02248324

	.rodata


	.global Unk_ov62_02249788
Unk_ov62_02249788: ; 0x02249788
	.incbin "incbin/overlay62_rodata.bin", 0x105C, 0x1064 - 0x105C

	.global Unk_ov62_02249790
Unk_ov62_02249790: ; 0x02249790
	.incbin "incbin/overlay62_rodata.bin", 0x1064, 0x10

