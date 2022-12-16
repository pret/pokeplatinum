	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov111_021D33F4
ov111_021D33F4: ; 0x021D33F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x73
	mov r1, #0x10
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_021D3410:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D3410
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	add r1, r6, #0
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov111_021D3280
	add r2, sp, #0x10
	str r0, [r4, #0xc]
	ldrb r0, [r2, #0x14]
	strb r0, [r4, #2]
	ldrh r2, [r2, #0x10]
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl ov111_021D3474
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov111_021D33F4

	thumb_func_start ov111_021D3448
ov111_021D3448: ; 0x021D3448
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02021BD4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov111_021D3448

	thumb_func_start ov111_021D345C
ov111_021D345C: ; 0x021D345C
	ldr r3, _021D3464 ; =sub_02021CAC
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3464: .word sub_02021CAC
	thumb_func_end ov111_021D345C

	thumb_func_start ov111_021D3468
ov111_021D3468: ; 0x021D3468
	ldr r3, _021D3470 ; =sub_02021F58
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3470: .word sub_02021F58
	thumb_func_end ov111_021D3468

	thumb_func_start ov111_021D3474
ov111_021D3474: ; 0x021D3474
	push {lr}
	sub sp, #0xc
	lsl r2, r2, #0xc
	lsl r1, r1, #0xc
	str r2, [sp, #4]
	str r1, [sp]
	ldrb r1, [r0, #2]
	cmp r1, #1
	bne _021D348E
	mov r1, #2
	lsl r1, r1, #0x14
	add r1, r2, r1
	str r1, [sp, #4]
_021D348E:
	ldr r0, [r0, #0xc]
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov111_021D3474

	thumb_func_start ov111_021D349C
ov111_021D349C: ; 0x021D349C
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02021D28
	ldr r2, [r0, #0]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	str r1, [r5, #0]
	ldr r1, [r0, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov111_021D349C

	thumb_func_start ov111_021D34C4
ov111_021D34C4: ; 0x021D34C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #1
	ldr r0, [r5, #0xc]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_02021DCC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov111_021D34C4

	thumb_func_start ov111_021D34E0
ov111_021D34E0: ; 0x021D34E0
	ldr r3, _021D34EC ; =sub_02021C80
	ldr r0, [r0, #0xc]
	ldr r1, _021D34F0 ; =0x021D3834
	mov r2, #1
	bx r3
	nop
_021D34EC: .word sub_02021C80
_021D34F0: .word 0x021D3834
	thumb_func_end ov111_021D34E0

	thumb_func_start ov111_021D34F4
ov111_021D34F4: ; 0x021D34F4
	ldr r3, _021D34FC ; =sub_02021C80
	ldr r0, [r0, #0xc]
	mov r2, #2
	bx r3
	; .align 2, 0
_021D34FC: .word sub_02021C80
	thumb_func_end ov111_021D34F4

	thumb_func_start ov111_021D3500
ov111_021D3500: ; 0x021D3500
	ldr r3, _021D3508 ; =sub_02021EC4
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3508: .word sub_02021EC4
	thumb_func_end ov111_021D3500

	thumb_func_start ov111_021D350C
ov111_021D350C: ; 0x021D350C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02021CC8
	mov r1, #1
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r4, #0xc]
	bl sub_02021E24
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02021D6C
	pop {r4, pc}
	thumb_func_end ov111_021D350C

	thumb_func_start ov111_021D3530
ov111_021D3530: ; 0x021D3530
	ldr r3, _021D3538 ; =sub_02021FA0
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3538: .word sub_02021FA0
	thumb_func_end ov111_021D3530

	thumb_func_start ov111_021D353C
ov111_021D353C: ; 0x021D353C
	ldr r3, _021D3544 ; =sub_02021FD0
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021D3544: .word sub_02021FD0
	thumb_func_end ov111_021D353C

	.rodata


	.global Unk_ov111_021D3834
Unk_ov111_021D3834: ; 0x021D3834
	.incbin "incbin/overlay111_rodata.bin", 0x234, 0x84

