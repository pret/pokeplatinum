	.include "macros/function.inc"
	.include "overlay017/ov17_02241270.inc"

	

	.text


	thumb_func_start ov17_02241270
ov17_02241270: ; 0x02241270
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r3, _022412B8 ; =0x000080FB
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x2a
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _022412BC ; =0x000080F6
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x2b
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _022412BC ; =0x000080F6
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x2c
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022412B8: .word 0x000080FB
_022412BC: .word 0x000080F6
	thumb_func_end ov17_02241270

	thumb_func_start ov17_022412C0
ov17_022412C0: ; 0x022412C0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	ldr r2, _022412EC ; =0x0225364C
	bl sub_0200CE6C
	mov r1, #0x58
	mul r1, r5
	add r1, #0x28
	lsl r1, r1, #0x10
	mov r3, #0x11
	add r4, r0, #0
	asr r1, r1, #0x10
	mov r2, #0x60
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_022412EC: .word 0x0225364C
	thumb_func_end ov17_022412C0

	thumb_func_start ov17_022412F0
ov17_022412F0: ; 0x022412F0
	push {r4, lr}
	ldr r1, _0224130C ; =0x000080FB
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _02241310 ; =0x000080F6
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _02241310 ; =0x000080F6
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0224130C: .word 0x000080FB
_02241310: .word 0x000080F6
	thumb_func_end ov17_022412F0

	thumb_func_start ov17_02241314
ov17_02241314: ; 0x02241314
	ldr r3, _02241318 ; =sub_0200D0F4
	bx r3
	; .align 2, 0
_02241318: .word sub_0200D0F4
	thumb_func_end ov17_02241314

	thumb_func_start ov17_0224131C
ov17_0224131C: ; 0x0224131C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r3, _02241364 ; =0x000080FA
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x2d
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241368 ; =0x000080F5
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x2e
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02241368 ; =0x000080F5
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x2f
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02241364: .word 0x000080FA
_02241368: .word 0x000080F5
	thumb_func_end ov17_0224131C

	thumb_func_start ov17_0224136C
ov17_0224136C: ; 0x0224136C
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r2, [sp, #0x10]
	add r6, r3, #0
	cmp r2, #0
	blt _02241380
	ldr r2, _022413A4 ; =0x02253618
	bl sub_0200CE6C
	b _02241386
_02241380:
	ldr r2, _022413A8 ; =0x02253680
	bl sub_0200CE6C
_02241386:
	add r4, r0, #0
	lsl r1, r5, #0x10
	lsl r2, r6, #0x10
	mov r3, #0x11
	add r0, r4, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022413A4: .word 0x02253618
_022413A8: .word 0x02253680
	thumb_func_end ov17_0224136C

	thumb_func_start ov17_022413AC
ov17_022413AC: ; 0x022413AC
	ldr r3, _022413B0 ; =sub_0200D0F4
	bx r3
	; .align 2, 0
_022413B0: .word sub_0200D0F4
	thumb_func_end ov17_022413AC

	thumb_func_start ov17_022413B4
ov17_022413B4: ; 0x022413B4
	push {r4, lr}
	ldr r1, _022413D0 ; =0x000080FA
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _022413D4 ; =0x000080F5
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _022413D4 ; =0x000080F5
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_022413D0: .word 0x000080FA
_022413D4: .word 0x000080F5
	thumb_func_end ov17_022413B4

	.rodata


	.global Unk_ov17_02253618
Unk_ov17_02253618: ; 0x02253618
	.incbin "incbin/overlay17_rodata.bin", 0x88C, 0x8C0 - 0x88C

	.global Unk_ov17_0225364C
Unk_ov17_0225364C: ; 0x0225364C
	.incbin "incbin/overlay17_rodata.bin", 0x8C0, 0x8F4 - 0x8C0

	.global Unk_ov17_02253680
Unk_ov17_02253680: ; 0x02253680
	.incbin "incbin/overlay17_rodata.bin", 0x8F4, 0x34

