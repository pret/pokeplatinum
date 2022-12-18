	.include "macros/function.inc"
	.include "include/ov47_02256634.inc"

	

	.text


	thumb_func_start ov47_02256634
ov47_02256634: ; 0x02256634
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0x80
	bl sub_02018144
	add r4, r0, #0
	beq _0225666A
	add r0, #8
	mov r1, #4
	bl ov25_02255090
	str r5, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
	str r0, [r4, #0x20]
	add r0, r4, #0
	add r1, r5, #0
	bl ov47_02256684
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225666A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov47_02256634

	thumb_func_start ov47_02256670
ov47_02256670: ; 0x02256670
	push {r4, lr}
	add r4, r0, #0
	beq _02256680
	bl ov47_022567FC
	add r0, r4, #0
	bl sub_020181C4
_02256680:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov47_02256670

	thumb_func_start ov47_02256684
ov47_02256684: ; 0x02256684
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x78
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x68
	mov r1, #0xc
	mov r2, #0x76
	mov r3, #0x77
	bl ov25_02255958
	mov r2, #0
	add r0, sp, #0x24
	strb r2, [r0, #0x12]
	mov r1, #2
	strb r1, [r0, #0x13]
	strb r2, [r0, #0x15]
	ldr r0, [r7, #0]
	ldr r1, [r7, #4]
	add r2, sp, #0x28
	add r3, sp, #0x24
	bl ov25_02255DBC
	ldr r0, [sp, #0x28]
	add r2, r5, #0
	lsl r0, r0, #0xc
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	mov r1, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	strb r1, [r0, #0x14]
	mov r1, #0
	strh r1, [r0, #0x10]
	ldr r0, [r5, #0x20]
	add r1, sp, #0x2c
	add r2, #0x68
	bl ov25_02255810
	str r0, [r5, #0x64]
	mov r1, #1
	add r0, sp, #0x24
	strb r1, [r0, #0x15]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x68
	mov r6, #0
	add r4, r7, #0
	str r5, [sp, #0xc]
	str r0, [sp, #0x14]
_02256702:
	ldrb r0, [r4, #0xc]
	ldr r2, [sp, #0x14]
	lsl r0, r0, #0xc
	str r0, [sp, #0x2c]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	ldrb r0, [r4, #0xe]
	add r1, r0, #2
	add r0, sp, #0x24
	strb r1, [r0, #0x14]
	add r1, r6, #1
	strh r1, [r0, #0x10]
	ldr r0, [r5, #0x20]
	add r1, sp, #0x2c
	bl ov25_02255810
	ldr r1, [sp, #0xc]
	add r6, r6, #1
	str r0, [r1, #0x24]
	add r0, r1, #0
	add r0, r0, #4
	add r4, r4, #4
	str r0, [sp, #0xc]
	cmp r6, #6
	blt _02256702
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x68
	mov r6, #0
	add r4, r5, #0
	str r7, [sp, #0x10]
	str r0, [sp, #0x18]
_02256744:
	add r0, r6, #0
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl ov25_02255DFC
	ldr r0, [sp, #0x28]
	mov r1, #9
	lsl r0, r0, #0xc
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	strb r1, [r0, #0x14]
	add r1, r6, #0
	add r1, #0xe
	strh r1, [r0, #0x10]
	ldr r0, [r5, #0x20]
	add r1, sp, #0x2c
	bl ov25_02255810
	str r0, [r4, #0x3c]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	bne _02256782
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl ov25_02255914
_02256782:
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, r0, #4
	add r4, r4, #4
	str r0, [sp, #0x10]
	cmp r6, #4
	blt _02256744
	add r0, r5, #0
	str r0, [sp, #0x20]
	add r0, #0x68
	mov r6, #0
	add r4, r5, #0
	str r0, [sp, #0x20]
_0225679C:
	ldr r0, [r7, #0x40]
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl ov25_02255E24
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	mov r1, #8
	lsl r0, r0, #0xc
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	strb r1, [r0, #0x14]
	mov r1, #0x12
	strh r1, [r0, #0x10]
	ldr r0, [r5, #0x20]
	add r1, sp, #0x2c
	bl ov25_02255810
	str r0, [r4, #0x4c]
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	beq _022567D6
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _022567DE
_022567D6:
	ldr r0, [r4, #0x4c]
	mov r1, #1
	bl ov25_02255914
_022567DE:
	add r6, r6, #1
	add r7, #8
	add r4, r4, #4
	cmp r6, #6
	blt _0225679C
	ldr r0, _022567F8 ; =ov47_02256968
	add r1, r5, #0
	mov r2, #3
	bl sub_0200D9E8
	str r0, [r5, #0x7c]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022567F8: .word ov47_02256968
	thumb_func_end ov47_02256684

	thumb_func_start ov47_022567FC
ov47_022567FC: ; 0x022567FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x7c]
	bl sub_0200DA58
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_0225680C:
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq _0225681A
	ldr r0, [r5, #0x20]
	bl ov25_022558B0
	str r7, [r4, #0x24]
_0225681A:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _0225680C
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_02256828:
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq _02256836
	ldr r0, [r5, #0x20]
	bl ov25_022558B0
	str r7, [r4, #0x3c]
_02256836:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02256828
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_02256844:
	ldr r1, [r4, #0x4c]
	cmp r1, #0
	beq _02256852
	ldr r0, [r5, #0x20]
	bl ov25_022558B0
	str r7, [r4, #0x4c]
_02256852:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _02256844
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x64]
	bl ov25_022558B0
	add r5, #0x68
	add r0, r5, #0
	bl ov25_022559B0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov47_022567FC

	thumb_func_start ov47_0225686C
ov47_0225686C: ; 0x0225686C
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _0225688C ; =0x02256A78
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_0225688C: .word 0x02256A78
	thumb_func_end ov47_0225686C

	thumb_func_start ov47_02256890
ov47_02256890: ; 0x02256890
	ldr r3, _02256898 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_02256898: .word ov25_02255130
	thumb_func_end ov47_02256890

	thumb_func_start ov47_0225689C
ov47_0225689C: ; 0x0225689C
	ldr r3, _022568A4 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022568A4: .word ov25_02255154
	thumb_func_end ov47_0225689C

	thumb_func_start ov47_022568A8
ov47_022568A8: ; 0x022568A8
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov47_022568A8

	thumb_func_start ov47_022568BC
ov47_022568BC: ; 0x022568BC
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256940 ; =0x02256A5C
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x75
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x73
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _02256944 ; =0x04001000
	ldr r0, _02256948 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #4
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov47_022568A8
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02256940: .word 0x02256A5C
_02256944: .word 0x04001000
_02256948: .word 0xFFFFE0FF
	thumb_func_end ov47_022568BC

	thumb_func_start ov47_0225694C
ov47_0225694C: ; 0x0225694C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl ov47_022568A8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov47_0225694C

	thumb_func_start ov47_02256968
ov47_02256968: ; 0x02256968
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r4, [r5, #0]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _022569DE
	ldr r7, [r4, #0x24]
	lsl r6, r7, #2
	add r2, r4, r6
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	beq _022569A8
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x24
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r0, r6
	str r0, [sp]
	ldr r0, [r5, #0x20]
	ldr r1, [r1, r6]
	mov r2, #0
	bl ov25_0225591C
	ldr r0, [sp, #4]
	add r7, #8
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl ov25_022558C4
	b _022569CC
_022569A8:
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x24
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	ldrb r2, [r2, #0xe]
	add r0, r0, r6
	str r0, [sp]
	ldr r0, [r5, #0x20]
	ldr r1, [r1, r6]
	add r2, r2, #2
	bl ov25_0225591C
	ldr r0, [sp, #8]
	add r1, r7, #1
	ldr r0, [r0, r6]
	bl ov25_022558C4
_022569CC:
	add r2, r4, r6
	ldrb r1, [r2, #0xc]
	ldr r0, [sp]
	ldrb r2, [r2, #0xd]
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov25_02255900
_022569DE:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02256A48
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov25_02255DBC
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r0, [r5, #0x64]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov25_02255900
	mov r6, #0
	add r7, sp, #0x10
_02256A02:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _02256A36
	ldr r0, [r4, #0x40]
	add r1, r7, #0
	add r2, sp, #0xc
	bl ov25_02255E24
	cmp r0, #0
	ldr r0, [r5, #0x4c]
	beq _02256A2E
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov25_02255900
	ldr r0, [r5, #0x4c]
	mov r1, #0
	bl ov25_02255914
	b _02256A3E
_02256A2E:
	mov r1, #1
	bl ov25_02255914
	b _02256A3E
_02256A36:
	ldr r0, [r5, #0x4c]
	mov r1, #1
	bl ov25_02255914
_02256A3E:
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #6
	blo _02256A02
_02256A48:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov47_02256968

	.rodata


	.global Unk_ov47_02256A5C
Unk_ov47_02256A5C: ; 0x02256A5C
	.incbin "incbin/overlay47_rodata.bin", 0x10, 0x2C - 0x10

	.global Unk_ov47_02256A78
Unk_ov47_02256A78: ; 0x02256A78
	.incbin "incbin/overlay47_rodata.bin", 0x2C, 0x24

