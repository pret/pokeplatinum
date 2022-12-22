	.include "macros/function.inc"
	.include "include/ov77_021D54B0.inc"

	

	.text


	thumb_func_start ov77_021D54B0
ov77_021D54B0: ; 0x021D54B0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D54E4 ; =0x021D78BC
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #0xb
	mov r1, #0x4c
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	mov r0, #6
	mov r1, #0x4c
	bl sub_0201DBEC
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D54E4: .word 0x021D78BC
	thumb_func_end ov77_021D54B0

	thumb_func_start ov77_021D54E8
ov77_021D54E8: ; 0x021D54E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r6, r0, #0
	mov r0, #0
	str r6, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	add r5, r1, #0
	str r0, [sp, #0xc]
	mov r1, #0x4b
	str r2, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r4, r3, #0
	str r0, [sp, #0x14]
	add r0, r1, #4
	ldr r0, [r5, r0]
	add r2, r6, #0
	str r0, [sp, #0x18]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r1, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [r5, r1]
	add r1, r6, #0
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x40]
	add r3, r6, #0
	bl sub_020093B4
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r4, #0]
	ldr r0, [sp, #0x40]
	str r0, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	mov r0, #1
	str r1, [r4, #0x10]
	lsl r0, r0, #0xc
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	strh r1, [r4, #0x20]
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x48]
	str r0, [r4, #0x28]
	mov r0, #0x4c
	str r0, [r4, #0x2c]
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov77_021D54E8

	thumb_func_start ov77_021D555C
ov77_021D555C: ; 0x021D555C
	mov r0, #0x2a
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end ov77_021D555C

	thumb_func_start ov77_021D5564
ov77_021D5564: ; 0x021D5564
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	add r5, r0, #0
	add r3, r1, #0
	ldr r0, _021D55C4 ; =0xFFCFFFEF
	mov r1, #0x10
	and r3, r0
	orr r3, r1
	str r3, [r2, #0]
	ldr r3, _021D55C8 ; =0x04001000
	ldr r2, [r3, #0]
	and r0, r2
	orr r0, r1
	str r0, [r3, #0]
	bl ov77_021D54B0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x4c
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r0, #0x21
	add r1, r5, #4
	mov r2, #0x4c
	bl sub_020095C4
	str r0, [r5, #0]
	mov r0, #3
	mov r1, #0x4c
	bl sub_0201DCC8
	mov r1, #0xa7
	lsl r1, r1, #2
	ldr r4, _021D55CC ; =0x021D7914
	b _021D55D0
	nop
_021D55C4: .word 0xFFCFFFEF
_021D55C8: .word 0x04001000
_021D55CC: .word 0x021D7914
_021D55D0:
	str r0, [r5, r1]
	mov r7, #0
	add r6, r5, #0
_021D55D6:
	ldrb r0, [r4]
	add r1, r7, #0
	mov r2, #0x4c
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r7, r7, #1
	add r4, r4, #1
	add r6, r6, #4
	cmp r7, #4
	blt _021D55D6
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x2e
	bl sub_0200985C
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x2e
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x32
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x57
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x16
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #5
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x17
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x5b
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #7
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x53
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x53
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #9
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x36
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xa
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe0
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x36
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x77
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x31
	bl sub_020098B8
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x31
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x35
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x5a
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x14
	mov r3, #0
	bl sub_020098B8
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #5
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x15
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x5e
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x1a
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #7
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x56
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x56
	mov r3, #0
	bl sub_020098B8
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #9
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x39
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x1d
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0xa
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	add r0, #0xe4
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x39
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x1e
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x30
	bl sub_02009918
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x30
	mov r3, #0
	bl sub_02009918
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x33
	mov r3, #0
	bl sub_02009918
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x59
	mov r3, #0
	bl sub_02009918
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x18
	mov r3, #0
	bl sub_02009918
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #6
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x5d
	mov r3, #0
	bl sub_02009918
	mov r1, #0x69
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #7
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x55
	mov r3, #0
	bl sub_02009918
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x55
	mov r3, #0
	bl sub_02009918
	mov r1, #0x71
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #9
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x37
	mov r3, #0
	bl sub_02009918
	mov r1, #0x75
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xa
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x37
	mov r3, #0
	bl sub_02009918
	mov r1, #0x79
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #5
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x19
	mov r3, #0
	bl sub_02009918
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x2f
	bl sub_02009918
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x2f
	mov r3, #0
	bl sub_02009918
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x34
	mov r3, #0
	bl sub_02009918
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x58
	mov r3, #0
	bl sub_02009918
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #4
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x1a
	mov r3, #0
	bl sub_02009918
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #5
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x1b
	mov r3, #0
	bl sub_02009918
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x5c
	mov r3, #0
	bl sub_02009918
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #7
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x54
	mov r3, #0
	bl sub_02009918
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x54
	mov r3, #0
	bl sub_02009918
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #9
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x38
	mov r3, #0
	bl sub_02009918
	mov r1, #0x76
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xa
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4c
	str r0, [sp, #8]
	add r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0x80
	mov r2, #0x38
	mov r3, #0
	bl sub_02009918
	mov r1, #0x7a
	lsl r1, r1, #2
	add r7, r1, #0
	add r6, r1, #0
	str r0, [r5, r1]
	mov r4, #0
	sub r7, #0xac
	sub r6, #0xa8
_021D5B8C:
	ldr r0, [r5, r7]
	bl sub_0200A3DC
	ldr r0, [r5, r6]
	bl sub_0200A640
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xb
	blt _021D5B8C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov77_021D5564

	thumb_func_start ov77_021D5BAC
ov77_021D5BAC: ; 0x021D5BAC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #5
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #6
_021D5BB6:
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
	cmp r4, #0xb
	blo _021D5BB6
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_021D5BDA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02009754
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021D5BDA
	ldr r0, [r5, #0]
	bl sub_02021964
	mov r0, #0x23
	lsl r0, r0, #4
	mov r4, #0
	add r6, r5, r0
	mov r7, #0x24
_021D5BFE:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl sub_020094F0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021D5BFE
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D5C28
	bl sub_0201DCF0
	mov r0, #0xa7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_021D5C28:
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	bl sub_0201DC3C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov77_021D5BAC

	thumb_func_start ov77_021D5C3C
ov77_021D5C3C: ; 0x021D5C3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xac
	ldr r3, _021D5FA4 ; =0x021D78FC
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x40
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021D5FA8 ; =0x021D78CC
	add r2, sp, #0x28
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021D5FAC ; =0x021D78E4
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x23
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	mov r0, #5
	lsl r0, r0, #0x10
	str r0, [sp, #0x60]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x7b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x9e
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	add r1, r5, #0
	mov r2, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	mov r0, #5
	lsl r0, r0, #0x10
	str r0, [sp, #0x60]
	mov r0, #0x13
	lsl r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x1f
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	add r1, r5, #0
	mov r2, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	mov r0, #0xb
	lsl r0, r0, #0x10
	str r0, [sp, #0x60]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x7d
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, sp, #0x88
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #3
	add r1, r5, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	ldr r0, _021D5FB0 ; =0xFFFC0000
	str r0, [sp, #0x60]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, sp, #0x88
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #6
	add r1, r5, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	mov r0, #5
	lsl r0, r0, #0x12
	str r0, [sp, #0x60]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x85
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, sp, #0x88
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r2, #1
	mov r0, #7
	add r1, r5, #0
	add r3, sp, #0x58
	str r2, [sp, #8]
	bl ov77_021D54E8
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x60]
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x86
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CF8
	add r0, sp, #0x88
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #8
	add r1, r5, #0
	mov r2, #1
	add r3, sp, #0x58
	bl ov77_021D54E8
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x60]
	mov r0, #0x12
	lsl r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x87
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CF8
	add r0, sp, #0x88
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #9
	add r1, r5, #0
	mov r2, #3
	add r3, sp, #0x58
	bl ov77_021D54E8
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x60]
	mov r0, #0x1a
	lsl r0, r0, #0xe
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x22
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x89
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, sp, #0x88
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xa
	add r1, r5, #0
	mov r2, #3
	add r3, sp, #0x58
	bl ov77_021D54E8
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x60]
	mov r0, #0x4a
	lsl r0, r0, #0xe
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x8a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, sp, #0x58
	bl sub_02021AA0
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0
	str r0, [sp, #0xc]
	add r7, sp, #0x28
	add r6, sp, #0x10
	add r4, sp, #0x40
_021D5F36:
	add r0, sp, #0x88
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	add r1, r5, #0
	mov r2, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	ldr r0, [r7, #0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x60]
	ldr r0, [r6, #0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl sub_02021AA0
	ldr r1, [r4, #0]
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x7b
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r4, #0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	add r0, r0, #1
	add r6, r6, #4
	add r4, r4, #4
	str r0, [sp, #0xc]
	cmp r0, #6
	blt _021D5F36
	add sp, #0xac
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D5FA4: .word 0x021D78FC
_021D5FA8: .word 0x021D78CC
_021D5FAC: .word 0x021D78E4
_021D5FB0: .word 0xFFFC0000
	thumb_func_end ov77_021D5C3C

	thumb_func_start ov77_021D5FB4
ov77_021D5FB4: ; 0x021D5FB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r3, r0, #0
	add r0, sp, #0x3c
	str r0, [sp]
	mov r2, #0
	add r6, r1, #0
	add r1, r3, #0
	str r2, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #5
	add r3, sp, #0xc
	bl ov77_021D54E8
	mov r5, #0
	add r7, sp, #0xc
_021D5FD6:
	add r0, r6, #0
	add r1, r5, #0
	bl ov77_021D6794
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02021AA0
	str r0, [r4, #0]
	mov r1, #0
	bl sub_02021CC8
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021CAC
	add r5, r5, #1
	cmp r5, #0x10
	blt _021D5FD6
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov77_021D5FB4

	thumb_func_start ov77_021D6000
ov77_021D6000: ; 0x021D6000
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r1, #0
	add r6, r4, #0
_021D6008:
	add r0, r5, #0
	add r1, r4, #0
	bl ov77_021D6794
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_02021CAC
	add r4, r4, #1
	cmp r4, #0x10
	blt _021D6008
	pop {r4, r5, r6, pc}
	thumb_func_end ov77_021D6000

	thumb_func_start ov77_021D6020
ov77_021D6020: ; 0x021D6020
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020219F8
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D6038
	bl sub_0201DCE8
_021D6038:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6020

	thumb_func_start ov77_021D603C
ov77_021D603C: ; 0x021D603C
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _021D604C ; =sub_02021CAC
	add r1, r2, #0
	bx r3
	; .align 2, 0
_021D604C: .word sub_02021CAC
	thumb_func_end ov77_021D603C

	thumb_func_start ov77_021D6050
ov77_021D6050: ; 0x021D6050
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_02021CC8
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021CC8
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021CC8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6050

	thumb_func_start ov77_021D607C
ov77_021D607C: ; 0x021D607C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #2
	ldr r1, [sp]
	lsl r0, r0, #8
	sub r1, r1, r0
	str r1, [sp]
	sub r0, #0x10
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #2
	ldr r1, [sp]
	lsl r0, r0, #8
	add r1, r1, r0
	str r1, [sp]
	sub r0, #0xc
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D607C

	thumb_func_start ov77_021D60E0
ov77_021D60E0: ; 0x021D60E0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, _021D61B0 ; =0x00000582
	add r4, r0, #0
	cmp r5, r1
	bge _021D60F4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D60F4:
	bne _021D60FE
	mov r1, #3
	mov r2, #1
	bl ov77_021D603C
_021D60FE:
	ldr r0, _021D61B4 ; =0x00000627
	cmp r5, r0
	bge _021D6154
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #0x12
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r1, r1, r0
	mov r0, #0xb
	lsl r0, r0, #0x10
	str r1, [sp]
	cmp r1, r0
	blt _021D6142
	str r0, [sp]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D6142:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D6154:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #0x12
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r1, r1, r0
	mov r0, #5
	lsl r0, r0, #0x12
	str r1, [sp]
	cmp r1, r0
	blt _021D619C
	str r0, [sp]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov77_021D603C
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D619C:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D61B0: .word 0x00000582
_021D61B4: .word 0x00000627
	thumb_func_end ov77_021D60E0

	thumb_func_start ov77_021D61B8
ov77_021D61B8: ; 0x021D61B8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, _021D6284 ; =0x000005DC
	add r4, r0, #0
	cmp r5, r1
	bge _021D61CC
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D61CC:
	bne _021D61D6
	mov r1, #0xa
	mov r2, #1
	bl ov77_021D603C
_021D61D6:
	ldr r0, _021D6288 ; =0x00000627
	cmp r5, r0
	bge _021D622C
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #0x12
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r1, r1, r0
	mov r0, #5
	lsl r0, r0, #0x10
	str r1, [sp]
	cmp r1, r0
	bgt _021D621A
	str r0, [sp]
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D621A:
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D622C:
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	mov r0, #0x12
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r1, r1, r0
	ldr r0, _021D628C ; =0xFFFC0000
	str r1, [sp]
	cmp r1, r0
	bgt _021D6272
	str r0, [sp]
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl ov77_021D603C
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D6272:
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D6284: .word 0x000005DC
_021D6288: .word 0x00000627
_021D628C: .word 0xFFFC0000
	thumb_func_end ov77_021D61B8

	thumb_func_start ov77_021D6290
ov77_021D6290: ; 0x021D6290
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _021D6364 ; =0x021BF6DC
	add r7, r1, #0
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _021D62A6
	mov r6, #0xd
	mov r4, #0xf
	b _021D62AA
_021D62A6:
	mov r6, #0xf
	mov r4, #0xd
_021D62AA:
	mov r0, #0x7b
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp]
	ldr r1, [sp]
	lsl r0, r6, #2
	str r0, [sp, #4]
	ldr r0, [r1, r0]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0xc]
	add r1, r0, r7
	mov r0, #6
	lsl r0, r0, #0x12
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021D62E0
	mov r0, #1
	lsl r0, r0, #0x14
	sub r0, r1, r0
	str r0, [sp, #0xc]
_021D62E0:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl sub_02021C50
	mov r0, #1
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x14
	sub r0, r1, r0
	str r0, [sp, #0xc]
	add r0, r6, #1
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl sub_02021C50
	mov r0, #0x7b
	lsl r0, r0, #2
	add r6, r5, r0
	lsl r0, r4, #2
	str r0, [sp, #8]
	ldr r0, [r6, r0]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0xc]
	sub r1, r0, r7
	ldr r0, _021D6368 ; =0xFFF80000
	str r1, [sp, #0xc]
	cmp r1, r0
	bgt _021D6338
	mov r0, #1
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0xc]
_021D6338:
	ldr r0, [sp, #8]
	add r1, sp, #0xc
	ldr r0, [r6, r0]
	bl sub_02021C50
	mov r0, #1
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0xc]
	add r0, r4, #1
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl sub_02021C50
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D6364: .word 0x021BF6DC
_021D6368: .word 0xFFF80000
	thumb_func_end ov77_021D6290

	thumb_func_start ov77_021D636C
ov77_021D636C: ; 0x021D636C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	cmp r1, #0
	bne _021D63E2
	ldr r0, _021D646C ; =0x021BF6DC
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _021D63B0
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021F24
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021F24
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021F24
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021F24
	b _021D6412
_021D63B0:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021F24
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021F24
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021F24
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021F24
	b _021D6412
_021D63E2:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02021F24
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02021F24
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02021F24
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02021F24
_021D6412:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp]
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02021C50
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp]
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D646C: .word 0x021BF6DC
	thumb_func_end ov77_021D636C

	thumb_func_start ov77_021D6470
ov77_021D6470: ; 0x021D6470
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021D652C ; =0x00000744
	add r6, r1, #0
	sub r4, r6, r0
	bpl _021D6480
	mov r4, #0
_021D6480:
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D30
	mov r1, #7
	add r2, r0, #0
	lsl r1, r1, #0xa
	mov r0, #0x86
	add r1, r2, r1
	lsl r0, r0, #2
	add r1, r1, r4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_02021C94
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D30
	mov r1, #7
	add r2, r0, #0
	lsl r1, r1, #0xa
	mov r0, #0x87
	sub r1, r2, r1
	lsl r0, r0, #2
	sub r1, r1, r4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_02021C94
	ldr r0, _021D652C ; =0x00000744
	cmp r6, r0
	blt _021D6526
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D28
	add r4, r0, #0
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	mov r0, #1
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r2, #0
	bl sub_02021C50
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D28
	add r4, r0, #0
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	mov r0, #1
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r2, #0
	bl sub_02021C50
_021D6526:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D652C: .word 0x00000744
	thumb_func_end ov77_021D6470

	thumb_func_start ov77_021D6530
ov77_021D6530: ; 0x021D6530
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r3, _021D6650 ; =0x021D78B0
	add r2, sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldmia r3!, {r0, r1}
	str r2, [sp, #8]
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, _021D6654 ; =0x021D789C
	ldr r1, [r0, #8]
	str r1, [sp, #0x14]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r1, _021D6658 ; =0x000005A5
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _021D65AC
	mov r4, #0
_021D655E:
	ldr r0, [sp, #8]
	lsl r7, r4, #2
	ldr r0, [r0, r7]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r5, r0, r1
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0x24
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldr r0, _021D665C ; =0x021D79AC
	ldr r1, [sp, #0x24]
	ldr r0, [r0, r7]
	sub r0, r1, r0
	str r0, [sp, #0x24]
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r2, #0
	bl sub_02021C50
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021D655E
_021D65AC:
	ldr r1, _021D6660 ; =0x000005D2
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _021D65F4
	ldr r0, [sp, #0x14]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r4, r0, r1
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0x24
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r0, _021D6664 ; =0x021D79A0
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0]
	sub r0, r1, r0
	str r0, [sp, #0x24]
	mov r0, #3
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
_021D65F4:
	ldr r1, _021D6668 ; =0x000005E6
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _021D664C
	mov r5, #0
_021D65FE:
	lsl r7, r5, #2
	add r0, sp, #0xc
	ldr r0, [r0, r7]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r4, r0, r1
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0x24
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldr r0, _021D666C ; =0x021D79A4
	ldr r1, [sp, #0x24]
	ldr r0, [r0, r7]
	sub r0, r1, r0
	str r0, [sp, #0x24]
	mov r0, #3
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02021C50
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #2
	blo _021D65FE
_021D664C:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6650: .word 0x021D78B0
_021D6654: .word 0x021D789C
_021D6658: .word 0x000005A5
_021D665C: .word 0x021D79AC
_021D6660: .word 0x000005D2
_021D6664: .word 0x021D79A0
_021D6668: .word 0x000005E6
_021D666C: .word 0x021D79A4
	thumb_func_end ov77_021D6530

	.rodata


	.global Unk_ov77_021D789C
Unk_ov77_021D789C: ; 0x021D789C
	.incbin "incbin/overlay77_rodata.bin", 0x5D4, 0x5D8 - 0x5D4

	.global Unk_ov77_021D78A0
Unk_ov77_021D78A0: ; 0x021D78A0
	.incbin "incbin/overlay77_rodata.bin", 0x5D8, 0x5DC - 0x5D8

	.global Unk_ov77_021D78A4
Unk_ov77_021D78A4: ; 0x021D78A4
	.incbin "incbin/overlay77_rodata.bin", 0x5DC, 0x5E0 - 0x5DC

	.global Unk_ov77_021D78A8
Unk_ov77_021D78A8: ; 0x021D78A8
	.incbin "incbin/overlay77_rodata.bin", 0x5E0, 0x5E8 - 0x5E0

	.global Unk_ov77_021D78B0
Unk_ov77_021D78B0: ; 0x021D78B0
	.incbin "incbin/overlay77_rodata.bin", 0x5E8, 0x5F4 - 0x5E8

	.global Unk_ov77_021D78BC
Unk_ov77_021D78BC: ; 0x021D78BC
	.incbin "incbin/overlay77_rodata.bin", 0x5F4, 0x604 - 0x5F4

	.global Unk_ov77_021D78CC
Unk_ov77_021D78CC: ; 0x021D78CC
	.incbin "incbin/overlay77_rodata.bin", 0x604, 0x61C - 0x604

	.global Unk_ov77_021D78E4
Unk_ov77_021D78E4: ; 0x021D78E4
	.incbin "incbin/overlay77_rodata.bin", 0x61C, 0x634 - 0x61C

	.global Unk_ov77_021D78FC
Unk_ov77_021D78FC: ; 0x021D78FC
	.incbin "incbin/overlay77_rodata.bin", 0x634, 0x64C - 0x634

	.global Unk_ov77_021D7914
Unk_ov77_021D7914: ; 0x021D7914
	.incbin "incbin/overlay77_rodata.bin", 0x64C, 0x4


	.data


	.global Unk_ov77_021D79A0
Unk_ov77_021D79A0: ; 0x021D79A0
	.incbin "incbin/overlay77_data.bin", 0x0, 0x4 - 0x0

	.global Unk_ov77_021D79A4
Unk_ov77_021D79A4: ; 0x021D79A4
	.incbin "incbin/overlay77_data.bin", 0x4, 0xC - 0x4

	.global Unk_ov77_021D79AC
Unk_ov77_021D79AC: ; 0x021D79AC
	.incbin "incbin/overlay77_data.bin", 0xC, 0x18 - 0xC

	.global Unk_ov77_021D79B8
Unk_ov77_021D79B8: ; 0x021D79B8
	.incbin "incbin/overlay77_data.bin", 0x18, 0x44

