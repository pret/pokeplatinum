	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov66_0222DCE0
ov66_0222DCE0: ; 0x0222DCE0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0222DD64 ; =0x0000003F
	mov r1, #2
	bl sub_02006590
	bl sub_02099550
	bl sub_020995B4
	mov r2, #5
	mov r0, #3
	mov r1, #0x68
	lsl r2, r2, #0xc
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0x68
	bl sub_0200681C
	add r5, r0, #0
	add r2, r5, #0
	mov r1, #0x10
	mov r0, #0
_0222DD12:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0222DD12
	add r0, r4, #0
	bl sub_02006840
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0x68
	str r0, [r5, #0]
	bl ov66_0222DDF0
	str r0, [r5, #4]
	mov r0, #0x68
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0]
	ldr r3, [r5, #4]
	bl ov66_02230C44
	str r0, [r5, #8]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	ldr r0, _0222DD68 ; =ov66_0222DDDC
	add r1, r5, #0
	mov r2, #0
	bl sub_0200DA3C
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	bl ov66_02230CAC
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222DD64: .word 0x0000003F
_0222DD68: .word ov66_0222DDDC
	thumb_func_end ov66_0222DCE0

	thumb_func_start ov66_0222DD6C
ov66_0222DD6C: ; 0x0222DD6C
	push {r3, r4, r5, lr}
	bl sub_0200682C
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl ov66_02230CB8
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl ov66_0222DF58
	cmp r4, #1
	bne _0222DD8A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222DD8A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0222DD6C

	thumb_func_start ov66_0222DD90
ov66_0222DD90: ; 0x0222DD90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0200DA58
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	ldr r0, [r4, #8]
	bl ov66_02230C90
	ldr r0, [r4, #4]
	bl ov66_0222DEEC
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x68
	bl sub_0201807C
	ldr r0, _0222DDD8 ; =0x0000003F
	bl sub_02006514
	bl sub_020995C4
	bl sub_02099560
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222DDD8: .word 0x0000003F
	thumb_func_end ov66_0222DD90

	thumb_func_start ov66_0222DDDC
ov66_0222DDDC: ; 0x0222DDDC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	bl ov66_02230CE8
	ldr r0, [r4, #4]
	bl ov66_0222DFF4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_0222DDDC