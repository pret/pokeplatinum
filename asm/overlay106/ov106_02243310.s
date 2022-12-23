	.include "macros/function.inc"
	.include "overlay106/ov106_02243310.inc"

	

	.text


	thumb_func_start ov106_02243310
ov106_02243310: ; 0x02243310
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x14]
	bl ov106_022435C8
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x62
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r0, #2
	add r1, r5, #4
	mov r2, #0x62
	bl sub_020095C4
	ldr r4, _022434B8 ; =0x0224384C
	str r0, [r5, #0]
	mov r7, #0
	add r6, r5, #0
_0224334A:
	ldrb r0, [r4]
	add r1, r7, #0
	mov r2, #0x62
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r7, r7, #1
	add r4, r4, #1
	add r6, r6, #4
	cmp r7, #4
	blt _0224334A
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x62
	str r0, [sp, #8]
	add r0, #0xca
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0xc
	bl sub_0200985C
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x62
	str r0, [sp, #0xc]
	add r0, #0xce
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0x26
	bl sub_020098B8
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x62
	str r0, [sp, #8]
	add r0, #0xd2
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0xe
	mov r3, #1
	bl sub_02009918
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x62
	str r0, [sp, #8]
	add r0, #0xd6
	ldr r0, [r5, r0]
	mov r1, #0x97
	mov r2, #0xd
	mov r3, #1
	bl sub_02009918
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x13
	mov r1, #0x62
	bl sub_02006C24
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	bl sub_02079D80
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x62
	str r0, [sp, #8]
	add r0, #0xca
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x18]
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_02079FD0
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x62
	str r0, [sp, #0xc]
	add r0, #0xce
	ldr r0, [r5, r0]
	mov r1, #0x13
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	bl sub_02079FD8
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x62
	str r0, [sp, #8]
	add r0, #0xd2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x18]
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_02079FE4
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x62
	str r0, [sp, #8]
	add r0, #0xd6
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x18]
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x56
	lsl r1, r1, #2
	add r7, r1, #0
	add r6, r1, #0
	str r0, [r5, r1]
	mov r4, #0
	sub r7, #0x1c
	sub r6, #0x18
_02243488:
	ldr r0, [r5, r7]
	bl sub_0200A328
	ldr r0, [r5, r6]
	bl sub_0200A5C8
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blt _02243488
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [sp, #0x18]
	bl sub_02006CA8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022434B8: .word 0x0224384C
	thumb_func_end ov106_02243310

	thumb_func_start ov106_022434BC
ov106_022434BC: ; 0x022434BC
	push {r4, r5, r6, lr}
	sub sp, #0x80
	add r5, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	add r4, r3, #0
	str r0, [sp, #8]
	mov r3, #0
	str r3, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0x4b
	lsl r0, r0, #2
	add r6, r2, #0
	ldr r2, [r5, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r5, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r5, r0]
	add r2, r1, #0
	str r0, [sp, #0x20]
	str r3, [sp, #0x24]
	str r3, [sp, #0x28]
	add r0, sp, #0x5c
	add r3, r1, #0
	bl sub_020093B4
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	str r4, [sp, #0x50]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	bne _02243530
	mov r0, #1
	str r0, [sp, #0x54]
	b _02243534
_02243530:
	mov r0, #2
	str r0, [sp, #0x54]
_02243534:
	mov r0, #0x62
	str r0, [sp, #0x58]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x10]
	cmp r0, #1
	bne _0224354A
	mov r0, #3
	ldr r1, [sp, #0x38]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x38]
_0224354A:
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #1
	add r4, r0, #0
	bl sub_02021CC8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021CE4
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02021D6C
	add r0, r4, #0
	add sp, #0x80
	pop {r4, r5, r6, pc}
	thumb_func_end ov106_022434BC

	thumb_func_start ov106_02243570
ov106_02243570: ; 0x02243570
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #5
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #6
_0224357A:
	lsl r0, r4, #4
	add r6, r5, r0
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	ldr r0, [r6, r7]
	bl sub_0200A6DC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _0224357A
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_0224359E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02009754
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0224359E
	ldr r0, [r5, #0]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov106_02243570

	thumb_func_start ov106_022435C8
ov106_022435C8: ; 0x022435C8
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _022435F8 ; =0x02243850
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0x10
	add r0, r2, #0
	add r2, r1, #0
	bl sub_0201E88C
	mov r0, #4
	mov r1, #0x62
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_022435F8: .word 0x02243850
	thumb_func_end ov106_022435C8

	.rodata


	.global Unk_ov106_0224384C
Unk_ov106_0224384C: ; 0x0224384C
	.incbin "incbin/overlay106_rodata.bin", 0xB4, 0xB8 - 0xB4

	.global Unk_ov106_02243850
Unk_ov106_02243850: ; 0x02243850
	.incbin "incbin/overlay106_rodata.bin", 0xB8, 0x10

