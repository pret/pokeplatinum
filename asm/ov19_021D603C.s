	.include "macros/function.inc"
	.include "include/ov19_021D603C.inc"

	

	.text


	thumb_func_start ov19_021D603C
ov19_021D603C: ; 0x021D603C
	push {r3, r4, r5, r6}
	ldr r4, _021D60A4 ; =ov19_021D6104
	add r6, r0, #0
	str r4, [r0, #0x30]
	mov r4, #0
	str r4, [r0, #0x1c]
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
	str r2, [r0, #0x18]
	str r1, [r0, #4]
	add r4, r0, #0
	str r2, [r0, #8]
	lsl r2, r2, #0x18
	mov r5, #0xfe
	add r4, #0x28
	strb r5, [r4]
	lsl r4, r1, #0x18
	lsr r4, r4, #0x18
	add r6, #0x29
	strb r4, [r6]
	add r6, r0, #0
	lsr r2, r2, #0x18
	add r6, #0x2a
	strb r2, [r6]
	add r6, r0, #0
	add r6, #0x2b
	strb r3, [r6]
	add r3, r0, #0
	add r3, #0x2c
	strb r5, [r3]
	add r3, r0, #0
	add r3, #0x2d
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0x2e
	strb r2, [r3]
	add r2, r0, #0
	add r2, #0x2f
	ldr r3, [sp, #0x10]
	cmp r1, #0x80
	strb r3, [r2]
	bge _021D609A
	mov r1, #1
	str r1, [r0, #0x24]
	pop {r3, r4, r5, r6}
	bx lr
_021D609A:
	sub r5, #0xff
	str r5, [r0, #0x24]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_021D60A4: .word ov19_021D6104
	thumb_func_end ov19_021D603C

	thumb_func_start ov19_021D60A8
ov19_021D60A8: ; 0x021D60A8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x2c
	bl sub_02022734
	cmp r0, #1
	bne _021D60E8
	add r0, r5, #0
	add r0, #0x28
	bl sub_02022734
	cmp r0, #0
	bne _021D60E8
	ldr r0, [r5, #0x1c]
	mov r4, #1
	cmp r0, #0
	bne _021D60D0
	add r6, r4, #0
	b _021D60D2
_021D60D0:
	mov r6, #0
_021D60D2:
	add r0, sp, #4
	add r1, sp, #0
	bl sub_020227A4
	cmp r0, #0
	beq _021D60EC
	ldr r0, [sp, #4]
	str r0, [r5, #0x14]
	ldr r0, [sp]
	str r0, [r5, #0x18]
	b _021D60EC
_021D60E8:
	mov r4, #0
	add r6, r4, #0
_021D60EC:
	str r4, [r5, #0x1c]
	ldr r3, [r5, #0x30]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	blx r3
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021D60A8

	thumb_func_start ov19_021D60FC
ov19_021D60FC: ; 0x021D60FC
	mov r2, #0
	str r2, [r0, #0]
	str r1, [r0, #0x30]
	bx lr
	thumb_func_end ov19_021D60FC

	thumb_func_start ov19_021D6104
ov19_021D6104: ; 0x021D6104
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _021D612C
	cmp r2, #0
	beq _021D612C
	ldr r1, [r4, #0x14]
	str r1, [r4, #4]
	ldr r2, [r4, #0x18]
	str r2, [r4, #8]
	ldr r1, [r4, #4]
	bl ov19_021D6164
	strh r0, [r4, #0x20]
	ldr r1, _021D6130 ; =ov19_021D6134
	add r0, r4, #0
	bl ov19_021D60FC
	mov r0, #1
	pop {r4, pc}
_021D612C:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D6130: .word ov19_021D6134
	thumb_func_end ov19_021D6104

	thumb_func_start ov19_021D6134
ov19_021D6134: ; 0x021D6134
	push {r3, lr}
	cmp r1, #0
	bne _021D6144
	ldr r1, _021D6148 ; =ov19_021D6104
	bl ov19_021D60FC
	mov r0, #3
	pop {r3, pc}
_021D6144:
	mov r0, #2
	pop {r3, pc}
	; .align 2, 0
_021D6148: .word ov19_021D6104
	thumb_func_end ov19_021D6134

	thumb_func_start ov19_021D614C
ov19_021D614C: ; 0x021D614C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl ov19_021D6164
	add r2, r0, #0
	ldrh r1, [r4, #0x20]
	add r0, r4, #0
	bl ov19_021D617C
	pop {r4, pc}
	thumb_func_end ov19_021D614C

	thumb_func_start ov19_021D6164
ov19_021D6164: ; 0x021D6164
	add r3, r0, #0
	ldr r0, [r3, #0x10]
	sub r0, r2, r0
	ldr r2, [r3, #0xc]
	ldr r3, _021D6178 ; =FX_Atan2Idx
	sub r1, r1, r2
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	bx r3
	nop
_021D6178: .word FX_Atan2Idx
	thumb_func_end ov19_021D6164

	thumb_func_start ov19_021D617C
ov19_021D617C: ; 0x021D617C
	push {r4, r5}
	sub r2, r2, r1
	bpl _021D618A
	mov r4, #0
	mvn r4, r4
	mul r2, r4
	b _021D618C
_021D618A:
	mov r4, #1
_021D618C:
	ldr r5, _021D61AC ; =0x021DFE44
	mov r3, #0
_021D6190:
	ldrh r1, [r5]
	cmp r2, r1
	blt _021D619E
	add r3, r3, #1
	add r5, r5, #2
	cmp r3, #2
	blo _021D6190
_021D619E:
	ldr r1, [r0, #0x24]
	add r0, r3, #0
	mul r0, r4
	mul r0, r1
	pop {r4, r5}
	bx lr
	nop
_021D61AC: .word 0x021DFE44
	thumb_func_end ov19_021D617C

	.rodata


	.global Unk_ov19_021DFE44
Unk_ov19_021DFE44: ; 0x021DFE44
	.incbin "incbin/overlay19_rodata.bin", 0x54, 0x4

