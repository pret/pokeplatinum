	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov70_0225C858
ov70_0225C858: ; 0x0225C858
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0x23
	mov r1, #0x2a
	add r2, r5, #0
	bl ov63_0222BCE8
	str r0, [r4, #0]
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	mov r0, #0xae
	add r2, r1, #0
	add r3, r5, #0
	bl sub_02006FE8
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov63_0222BD50
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225C858

	thumb_func_start ov70_0225C894
ov70_0225C894: ; 0x0225C894
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov63_0222BD30
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_0225C894

	thumb_func_start ov70_0225C8A8
ov70_0225C8A8: ; 0x0225C8A8
	mov r0, #0x23
	bx lr
	thumb_func_end ov70_0225C8A8

	thumb_func_start ov70_0225C8AC
ov70_0225C8AC: ; 0x0225C8AC
	ldr r3, _0225C8B4 ; =ov63_0222BDAC
	ldr r0, [r0, #0]
	bx r3
	nop
_0225C8B4: .word ov63_0222BDAC
	thumb_func_end ov70_0225C8AC

	thumb_func_start ov70_0225C8B8
ov70_0225C8B8: ; 0x0225C8B8
	push {r3, lr}
	ldr r0, [r0, #0]
	bl ov63_0222BDE4
	lsr r0, r0, #0xf
	pop {r3, pc}
	thumb_func_end ov70_0225C8B8

	thumb_func_start ov70_0225C8C4
ov70_0225C8C4: ; 0x0225C8C4
	push {r3, lr}
	ldr r0, [r0, #0]
	bl ov63_0222BDE4
	ldr r1, _0225C8D4 ; =0x00007FFF
	and r0, r1
	pop {r3, pc}
	nop
_0225C8D4: .word 0x00007FFF
	thumb_func_end ov70_0225C8C4

	thumb_func_start ov70_0225C8D8
ov70_0225C8D8: ; 0x0225C8D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r5, #0
	ldr r7, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
_0225C8EA:
	ldr r0, [sp, #0x10]
	mov r4, #0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_0225C8F2:
	lsl r1, r4, #0x10
	ldr r0, [sp]
	lsr r1, r1, #0x10
	add r2, r6, #0
	bl ov70_0225C8B8
	ldr r1, [sp, #4]
	cmp r0, r1
	bne _0225C91A
	cmp r5, r7
	blo _0225C918
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	strh r4, [r0]
	ldr r0, [sp, #0xc]
	add sp, #0x14
	strh r1, [r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225C918:
	add r5, r5, #1
_0225C91A:
	add r4, r4, #1
	cmp r4, #0x23
	blt _0225C8F2
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x2a
	blt _0225C8EA
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225C8D8

	thumb_func_start ov70_0225C930
ov70_0225C930: ; 0x0225C930
	ldr r3, _0225C94C ; =0x0226D4DC
	mov r2, #0
_0225C934:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0225C93E
	mov r0, #1
	bx lr
_0225C93E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #0x20
	blo _0225C934
	mov r0, #0
	bx lr
	nop
_0225C94C: .word 0x0226D4DC
	thumb_func_end ov70_0225C930

	thumb_func_start ov70_0225C950
ov70_0225C950: ; 0x0225C950
	ldr r3, _0225C96C ; =0x0226D4CC
	mov r2, #0
_0225C954:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0225C95E
	mov r0, #1
	bx lr
_0225C95E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #3
	blo _0225C954
	mov r0, #0
	bx lr
	nop
_0225C96C: .word 0x0226D4CC
	thumb_func_end ov70_0225C950

	thumb_func_start ov70_0225C970
ov70_0225C970: ; 0x0225C970
	ldr r3, _0225C98C ; =0x0226D4D4
	mov r2, #0
_0225C974:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0225C97E
	mov r0, #1
	bx lr
_0225C97E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #7
	blo _0225C974
	mov r0, #0
	bx lr
	nop
_0225C98C: .word 0x0226D4D4
	thumb_func_end ov70_0225C970

	thumb_func_start ov70_0225C990
ov70_0225C990: ; 0x0225C990
	ldr r3, _0225C9AC ; =0x0226D4D0
	mov r2, #0
_0225C994:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0225C99E
	mov r0, #1
	bx lr
_0225C99E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #4
	blo _0225C994
	mov r0, #0
	bx lr
	nop
_0225C9AC: .word 0x0226D4D0
	thumb_func_end ov70_0225C990

	thumb_func_start ov70_0225C9B0
ov70_0225C9B0: ; 0x0225C9B0
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov70_0225C9B0

	.rodata


	.global Unk_ov70_0226D4CC
Unk_ov70_0226D4CC: ; 0x0226D4CC
	.incbin "incbin/overlay70_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov70_0226D4D0
Unk_ov70_0226D4D0: ; 0x0226D4D0
	.incbin "incbin/overlay70_rodata.bin", 0x4, 0x8 - 0x4

	.global Unk_ov70_0226D4D4
Unk_ov70_0226D4D4: ; 0x0226D4D4
	.incbin "incbin/overlay70_rodata.bin", 0x8, 0x10 - 0x8

	.global Unk_ov70_0226D4DC
Unk_ov70_0226D4DC: ; 0x0226D4DC
	.incbin "incbin/overlay70_rodata.bin", 0x10, 0x20

