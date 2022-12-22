	.include "macros/function.inc"
	.include "include/ov111_021D2F80.inc"

	

	.text


	thumb_func_start ov111_021D2F80
ov111_021D2F80: ; 0x021D2F80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x20
	mov r1, #0x73
	bl sub_0201DBEC
	bl ov111_021D3378
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x73
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r0, #0x28
	add r1, r5, #4
	mov r2, #0x73
	bl sub_020095C4
	mov r2, #2
	str r0, [r5, #0]
	add r0, r5, #4
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	ldr r4, _021D3048 ; =0x021D3820
	mov r7, #0
	add r6, r5, #0
_021D2FCC:
	ldrb r0, [r4]
	add r1, r7, #0
	mov r2, #0x73
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r7, r7, #1
	add r4, r4, #1
	add r6, r6, #4
	cmp r7, #4
	blt _021D2FCC
	add r0, r5, #0
	mov r1, #1
	bl ov111_021D304C
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov111_021D30D8
	add r0, r5, #0
	mov r1, #1
	bl ov111_021D3168
	add r0, r5, #0
	mov r1, #1
	bl ov111_021D31F4
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #2
	bl ov111_021D30D8
	mov r7, #0x4f
	lsl r7, r7, #2
	mov r4, #0
	add r6, r7, #4
_021D301E:
	ldr r0, [r5, r7]
	bl sub_0200A328
	ldr r0, [r5, r6]
	bl sub_0200A5C8
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #5
	blt _021D301E
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D3048: .word 0x021D3820
	thumb_func_end ov111_021D2F80

	thumb_func_start ov111_021D304C
ov111_021D304C: ; 0x021D304C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xb9
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0xc
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	add r0, #0xbd
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0xd
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc1
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0xb
	mov r3, #0
	bl sub_02009918
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0xa
	mov r3, #0
	bl sub_02009918
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov111_021D304C

	thumb_func_start ov111_021D30D8
ov111_021D30D8: ; 0x021D30D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r7, r3, #0
	str r6, [sp]
	add r5, r0, #0
	str r7, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xb9
	lsl r4, r1, #4
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x20
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x4f
	add r2, r5, r4
	lsl r1, r1, #2
	str r0, [r2, r1]
	str r6, [sp]
	str r7, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	add r0, #0xbd
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x21
	mov r3, #0
	bl sub_020098B8
	mov r1, #5
	add r2, r5, r4
	lsl r1, r1, #6
	str r0, [r2, r1]
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc1
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x1f
	mov r3, #0
	bl sub_02009918
	mov r1, #0x51
	add r2, r5, r4
	lsl r1, r1, #2
	str r0, [r2, r1]
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x1e
	mov r3, #0
	bl sub_02009918
	mov r1, #0x52
	add r2, r5, r4
	lsl r1, r1, #2
	str r0, [r2, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021D30D8

	thumb_func_start ov111_021D3168
ov111_021D3168: ; 0x021D3168
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xb9
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0x10
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	add r0, #0xbd
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0x11
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc1
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0xf
	mov r3, #0
	bl sub_02009918
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0xe
	mov r3, #0
	bl sub_02009918
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov111_021D3168

	thumb_func_start ov111_021D31F4
ov111_021D31F4: ; 0x021D31F4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xb9
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0x14
	mov r3, #0
	bl sub_0200985C
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x73
	str r0, [sp, #0xc]
	add r0, #0xbd
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0x15
	mov r3, #0
	bl sub_020098B8
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc1
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0x13
	mov r3, #0
	bl sub_02009918
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #4
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x73
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r4, r0]
	mov r1, #0xb8
	mov r2, #0x12
	mov r3, #0
	bl sub_02009918
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov111_021D31F4

	thumb_func_start ov111_021D3280
ov111_021D3280: ; 0x021D3280
	push {r3, r4, r5, lr}
	sub sp, #0x80
	add r4, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	add r5, r2, #0
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x4b
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r3, [sp, #0x10]
	ldr r3, [r4, r0]
	str r3, [sp, #0x14]
	add r3, r0, #4
	ldr r3, [r4, r3]
	str r3, [sp, #0x18]
	add r3, r0, #0
	add r3, #8
	ldr r3, [r4, r3]
	add r0, #0xc
	str r3, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r3, r1, #0
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x5c
	add r2, r1, #0
	bl sub_020093B4
	ldr r0, [r4, #0]
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
	ldr r0, [sp, #0x90]
	str r0, [sp, #0x50]
	mov r0, #0x73
	str r0, [sp, #0x58]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _021D32F6
	mov r0, #1
	str r0, [sp, #0x54]
	b _021D32FA
_021D32F6:
	mov r0, #2
	str r0, [sp, #0x54]
_021D32FA:
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0
	add r4, r0, #0
	bl sub_02021CC8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021CE4
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02021D6C
	add r0, r4, #0
	add sp, #0x80
	pop {r3, r4, r5, pc}
	thumb_func_end ov111_021D3280

	thumb_func_start ov111_021D3320
ov111_021D3320: ; 0x021D3320
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #5
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #6
_021D332A:
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
	cmp r4, #5
	blo _021D332A
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_021D334E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02009754
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021D334E
	ldr r0, [r5, #0]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov111_021D3320

	thumb_func_start ov111_021D3378
ov111_021D3378: ; 0x021D3378
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D33A8 ; =0x021D3824
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, _021D33AC ; =0x00200010
	add r0, r2, #0
	add r2, r1, #0
	bl sub_0201E88C
	mov r0, #0xe
	mov r1, #0x73
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D33A8: .word 0x021D3824
_021D33AC: .word 0x00200010
	thumb_func_end ov111_021D3378

	thumb_func_start ov111_021D33B0
ov111_021D33B0: ; 0x021D33B0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #8
	blt _021D33C0
	bl sub_02022974
_021D33C0:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_02009DC8
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x73
	str r0, [sp, #4]
	ldr r3, _021D33F0 ; =0x021D3940
	add r0, #0xbd
	ldrb r3, [r3, r4]
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #0xb8
	bl sub_020099D4
	add r0, r6, #0
	bl sub_0200A6B8
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D33F0: .word 0x021D3940
	thumb_func_end ov111_021D33B0

	.rodata


	.global Unk_ov111_021D3820
Unk_ov111_021D3820: ; 0x021D3820
	.incbin "incbin/overlay111_rodata.bin", 0x220, 0x224 - 0x220

	.global Unk_ov111_021D3824
Unk_ov111_021D3824: ; 0x021D3824
	.incbin "incbin/overlay111_rodata.bin", 0x224, 0x10


	.data


	.global Unk_ov111_021D3940
Unk_ov111_021D3940: ; 0x021D3940
	.incbin "incbin/overlay111_data.bin", 0x0, 0x8

