	.include "macros/function.inc"
	.include "overlay104/ov104_0223BCBC.inc"

	

	.text


	thumb_func_start ov104_0223BCBC
ov104_0223BCBC: ; 0x0223BCBC
	push {r3, r4, r5, lr}
	cmp r0, #0
	bne _0223BCDC
	mov r0, #7
	add r3, r2, #1
	mul r0, r1
	add r0, r3, r0
	cmp r0, #0x15
	bne _0223BCD2
	ldr r0, _0223BD14 ; =0x00000137
	pop {r3, r4, r5, pc}
_0223BCD2:
	cmp r0, #0x31
	bne _0223BCDC
	mov r0, #0x4e
	lsl r0, r0, #2
	pop {r3, r4, r5, pc}
_0223BCDC:
	cmp r1, #8
	blo _0223BCE2
	mov r1, #7
_0223BCE2:
	cmp r2, #6
	beq _0223BCEA
	cmp r2, #0xd
	bne _0223BCF8
_0223BCEA:
	ldr r0, _0223BD18 ; =0x0224129C
	lsl r1, r1, #3
	ldrh r4, [r0, r1]
	ldr r0, _0223BD1C ; =0x0224129E
	ldrh r0, [r0, r1]
	sub r5, r0, r4
	b _0223BD04
_0223BCF8:
	ldr r0, _0223BD20 ; =0x02241298
	lsl r1, r1, #3
	ldrh r4, [r0, r1]
	ldr r0, _0223BD24 ; =0x0224129A
	ldrh r0, [r0, r1]
	sub r5, r0, r4
_0223BD04:
	bl sub_0201D2E8
	add r1, r5, #0
	bl _s32_div_f
	add r0, r4, r1
	pop {r3, r4, r5, pc}
	nop
_0223BD14: .word 0x00000137
_0223BD18: .word 0x0224129C
_0223BD1C: .word 0x0224129E
_0223BD20: .word Unk_ov104_02241298
_0223BD24: .word 0x0224129A
	thumb_func_end ov104_0223BCBC

	thumb_func_start ov104_0223BD28
ov104_0223BD28: ; 0x0223BD28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r7, r3, #0
	mov r4, #0
	add r5, r6, #0
_0223BD38:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl ov104_0223BCBC
	mov r1, #0
	strh r0, [r5]
	cmp r4, #0
	ble _0223BD5E
	lsl r0, r4, #1
	ldrh r3, [r6, r0]
	add r2, r6, #0
_0223BD50:
	ldrh r0, [r2]
	cmp r0, r3
	beq _0223BD5E
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, r4
	blt _0223BD50
_0223BD5E:
	cmp r1, r4
	bne _0223BD66
	add r5, r5, #2
	add r4, r4, #1
_0223BD66:
	cmp r4, r7
	blt _0223BD38
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223BD28

	thumb_func_start ov104_0223BD70
ov104_0223BD70: ; 0x0223BD70
	push {r3, lr}
	cmp r0, #3
	bhi _0223BD9A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223BD82: ; jump table
	.short _0223BD8A - _0223BD82 - 2 ; case 0
	.short _0223BD8A - _0223BD82 - 2 ; case 1
	.short _0223BD8E - _0223BD82 - 2 ; case 2
	.short _0223BD8E - _0223BD82 - 2 ; case 3
_0223BD8A:
	mov r0, #3
	pop {r3, pc}
_0223BD8E:
	cmp r1, #0
	bne _0223BD96
	mov r0, #2
	pop {r3, pc}
_0223BD96:
	mov r0, #4
	pop {r3, pc}
_0223BD9A:
	bl GF_AssertFail
	mov r0, #3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0223BD70

	thumb_func_start ov104_0223BDA4
ov104_0223BDA4: ; 0x0223BDA4
	push {r3, lr}
	cmp r0, #3
	bhi _0223BDCE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223BDB6: ; jump table
	.short _0223BDBE - _0223BDB6 - 2 ; case 0
	.short _0223BDBE - _0223BDB6 - 2 ; case 1
	.short _0223BDC2 - _0223BDB6 - 2 ; case 2
	.short _0223BDC2 - _0223BDB6 - 2 ; case 3
_0223BDBE:
	mov r0, #3
	pop {r3, pc}
_0223BDC2:
	cmp r1, #0
	bne _0223BDCA
	mov r0, #2
	pop {r3, pc}
_0223BDCA:
	mov r0, #4
	pop {r3, pc}
_0223BDCE:
	bl GF_AssertFail
	mov r0, #3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0223BDA4

	thumb_func_start ov104_0223BDD8
ov104_0223BDD8: ; 0x0223BDD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r7, r0, #0
	ldrb r0, [r7, #0x10]
	add r5, r1, #0
	mov r1, #0
	bl ov104_0223BD70
	str r0, [sp, #0x14]
	ldrb r0, [r7, #0x10]
	mov r1, #0
	bl ov104_0223BDA4
	str r0, [sp, #0x10]
	ldrb r0, [r7, #0x10]
	bl ov104_0223BFD0
	add r1, r0, #0
	mov r0, #0xb
	bl sub_02051D8C
	ldr r1, [r5, #0xc]
	add r4, r0, #0
	str r1, [sp]
	ldr r1, [r5, #0x10]
	str r1, [sp, #4]
	ldr r1, [r5, #0x20]
	str r1, [sp, #8]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0x1c]
	mov r1, #0
	bl sub_020521B8
	mov r1, #0x15
	lsl r1, r1, #4
	mov r2, #0x14
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r7, #0x14]
	add r1, #0x24
	str r0, [r4, r1]
	ldr r0, [r7, #0x74]
	ldr r1, [r7, #0x70]
	str r0, [sp, #0x18]
	ldrb r0, [r7, #0x13]
	str r1, [sp, #0x1c]
	cmp r0, #0x1b
	bne _0223BE40
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r1, [sp, #0x18]
_0223BE40:
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x14]
	bl sub_0207A014
	bl sub_0203608C
	cmp r0, #0
	bne _0223BE54
	mov r5, #0
	b _0223BE56
_0223BE54:
	mov r5, #2
_0223BE56:
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _0223BE8E
_0223BE68:
	ldr r0, [sp, #0x1c]
	add r1, r5, #0
	bl sub_0207A0FC
	add r1, r6, #0
	bl sub_020775EC
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_0205213C
	ldr r0, [sp, #0x20]
	add r5, r5, #1
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _0223BE68
_0223BE8E:
	add r0, r6, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_02052894
	ldrb r1, [r7, #0x11]
	add r0, sp, #0x24
	mov r2, #0xb
	lsl r1, r1, #1
	add r1, r7, r1
	add r1, #0x78
	ldrh r1, [r1]
	mov r3, #0xb2
	bl ov104_0222DD04
	bl sub_020181C4
	mov r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, sp, #0x24
	mov r3, #1
	bl ov104_0222E284
	ldrb r0, [r7, #0x10]
	mov r1, #0
	bl ov104_0223BDA4
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_0207A014
	mov r6, #0
	add r5, r4, #0
_0223BED6:
	add r0, r7, #0
	bl ov104_0223C0D0
	str r0, [r5, #0x34]
	add r6, r6, #1
	add r5, #0x34
	cmp r6, #4
	blt _0223BED6
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	mov r5, #0
	cmp r0, #0
	ble _0223BF16
_0223BEF6:
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	bl sub_0207A0FC
	add r1, r6, #0
	bl sub_020775EC
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl sub_0205213C
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	cmp r5, r0
	blt _0223BEF6
_0223BF16:
	add r0, r6, #0
	bl sub_020181C4
	ldrb r0, [r7, #0x10]
	cmp r0, #2
	beq _0223BF26
	cmp r0, #3
	bne _0223BFBC
_0223BF26:
	add r0, r4, #0
	bl sub_02052894
	bl sub_0203608C
	mov r1, #1
	sub r0, r1, r0
	bl sub_02032EE8
	mov r1, #1
	lsl r1, r1, #8
	ldr r1, [r4, r1]
	bl sub_02025E80
	ldrb r1, [r7, #0x11]
	add r0, sp, #0x24
	mov r2, #0xb
	add r1, r1, #7
	lsl r1, r1, #1
	add r1, r7, r1
	add r1, #0x78
	ldrh r1, [r1]
	mov r3, #0xb2
	bl ov104_0222DD04
	bl sub_020181C4
	mov r0, #0xb
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, sp, #0x24
	mov r3, #3
	bl ov104_0222E284
	ldrb r0, [r7, #0x10]
	mov r1, #0
	bl ov104_0223BDA4
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0207A014
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0223BFB6
	add r5, r0, #0
_0223BF90:
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	bl sub_0207A0FC
	add r1, r6, #0
	bl sub_020775EC
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl sub_0205213C
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _0223BF90
_0223BFB6:
	add r0, r6, #0
	bl sub_020181C4
_0223BFBC:
	ldr r0, [r7, #0x70]
	bl sub_02097284
	ldr r0, [r7, #0x74]
	bl sub_02097284
	add r0, r4, #0
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223BDD8

	thumb_func_start ov104_0223BFD0
ov104_0223BFD0: ; 0x0223BFD0
	cmp r0, #3
	bhi _0223BFF8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223BFE0: ; jump table
	.short _0223BFE8 - _0223BFE0 - 2 ; case 0
	.short _0223BFEC - _0223BFE0 - 2 ; case 1
	.short _0223BFF0 - _0223BFE0 - 2 ; case 2
	.short _0223BFF4 - _0223BFE0 - 2 ; case 3
_0223BFE8:
	mov r0, #0x81
	bx lr
_0223BFEC:
	mov r0, #0x83
	bx lr
_0223BFF0:
	mov r0, #0x8f
	bx lr
_0223BFF4:
	mov r0, #0x8f
	bx lr
_0223BFF8:
	mov r0, #0x81
	bx lr
	thumb_func_end ov104_0223BFD0

	thumb_func_start ov104_0223BFFC
ov104_0223BFFC: ; 0x0223BFFC
	mov r0, #0x32
	bx lr
	thumb_func_end ov104_0223BFFC

	thumb_func_start ov104_0223C000
ov104_0223C000: ; 0x0223C000
	cmp r0, #2
	beq _0223C008
	cmp r0, #3
	bne _0223C00C
_0223C008:
	mov r0, #1
	bx lr
_0223C00C:
	mov r0, #0
	bx lr
	thumb_func_end ov104_0223C000

	thumb_func_start ov104_0223C010
ov104_0223C010: ; 0x0223C010
	push {r4, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	add r4, r1, #0
	bl sub_02025E38
	mov r3, #0
	add r1, r0, #0
	str r3, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #4
	bl sub_02077EE4
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223C010

	thumb_func_start ov104_0223C034
ov104_0223C034: ; 0x0223C034
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	add r1, r4, #0
	bl ov104_0223C010
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207A048
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0223C034

	thumb_func_start ov104_0223C04C
ov104_0223C04C: ; 0x0223C04C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x74]
	bl sub_0207A008
	ldrb r0, [r5, #0x10]
	mov r1, #1
	bl ov104_0223BDA4
	str r0, [sp]
	mov r0, #0xb
	bl sub_02073C74
	add r7, r0, #0
	ldr r0, [sp]
	mov r6, #0
	cmp r0, #0
	ble _0223C0B0
	mov r0, #0x33
	lsl r0, r0, #4
	add r4, r5, r0
_0223C078:
	add r0, r5, #0
	bl ov104_0223BFFC
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov104_0222DF40
	ldr r1, [r5, #0x74]
	add r0, r5, #0
	add r2, r7, #0
	bl ov104_0223C034
	ldr r0, [r5, #0x74]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #6
	add r2, sp, #4
	bl sub_02074B30
	ldr r0, [sp]
	add r6, r6, #1
	add r4, #0x38
	cmp r6, r0
	blt _0223C078
_0223C0B0:
	add r0, r7, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223C04C

	thumb_func_start ov104_0223C0BC
ov104_0223C0BC: ; 0x0223C0BC
	push {r4, lr}
	add r4, r1, #0
	bl ov104_0223C124
	cmp r4, #0x1c
	bne _0223C0CC
	mov r0, #1
	pop {r4, pc}
_0223C0CC:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov104_0223C0BC

	thumb_func_start ov104_0223C0D0
ov104_0223C0D0: ; 0x0223C0D0
	push {r3, lr}
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	bne _0223C0F2
	ldrb r1, [r0, #0x11]
	lsl r1, r1, #1
	add r1, r0, r1
	add r1, #0x78
	ldrh r2, [r1]
	ldr r1, _0223C120 ; =0x0000FEC9
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #1
	bhi _0223C0F2
	mov r0, #7
	pop {r3, pc}
_0223C0F2:
	bl ov104_0223C124
	add r0, r0, #1
	mov r1, #7
	cmp r0, #4
	bhi _0223C11A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223C10A: ; jump table
	.short _0223C11A - _0223C10A - 2 ; case 0
	.short _0223C114 - _0223C10A - 2 ; case 1
	.short _0223C114 - _0223C10A - 2 ; case 2
	.short _0223C118 - _0223C10A - 2 ; case 3
	.short _0223C118 - _0223C10A - 2 ; case 4
_0223C114:
	mov r1, #0
	b _0223C11A
_0223C118:
	mov r1, #1
_0223C11A:
	add r0, r1, #0
	pop {r3, pc}
	nop
_0223C120: .word 0x0000FEC9
	thumb_func_end ov104_0223C0D0

	thumb_func_start ov104_0223C124
ov104_0223C124: ; 0x0223C124
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x10]
	ldrh r4, [r5, #0x1a]
	bl ov104_0223C000
	cmp r0, #1
	bne _0223C140
	ldr r0, _0223C144 ; =0x00000A76
	ldrh r1, [r5, r0]
	ldrh r0, [r5, #0x1a]
	cmp r1, r0
	bls _0223C140
	add r4, r1, #0
_0223C140:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C144: .word 0x00000A76
	thumb_func_end ov104_0223C124

	thumb_func_start ov104_0223C148
ov104_0223C148: ; 0x0223C148
	cmp r0, #9
	bhs _0223C150
	mov r0, #0
	bx lr
_0223C150:
	cmp r0, #0x12
	bhs _0223C158
	mov r0, #1
	bx lr
_0223C158:
	cmp r0, #0x1b
	bhs _0223C160
	mov r0, #2
	bx lr
_0223C160:
	mov r0, #3
	bx lr
	thumb_func_end ov104_0223C148

	.rodata


	.global Unk_ov104_02241298
Unk_ov104_02241298: ; 0x02241298
	.incbin "incbin/overlay104_rodata.bin", 0x2008, 0x40

