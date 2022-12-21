	.include "macros/function.inc"
	.include "include/unk_0203A7D8.inc"

	

	.text


	thumb_func_start sub_0203A7D8
sub_0203A7D8: ; 0x0203A7D8
	push {r3, lr}
	cmp r0, #0
	ble _0203A7E2
	cmp r0, #0x14
	bls _0203A7E8
_0203A7E2:
	bl sub_02022974
	mov r0, #1
_0203A7E8:
	sub r0, r0, #1
	pop {r3, pc}
	thumb_func_end sub_0203A7D8

	thumb_func_start sub_0203A7EC
sub_0203A7EC: ; 0x0203A7EC
	mov r0, #1
	bx lr
	thumb_func_end sub_0203A7EC

	thumb_func_start sub_0203A7F0
sub_0203A7F0: ; 0x0203A7F0
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203A7D8
	lsl r1, r0, #4
	ldr r0, _0203A818 ; =0x020E97BA
	ldrh r0, [r0, r1]
	str r0, [r4, #0]
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	ldr r0, _0203A81C ; =0x020E97BC
	ldrh r0, [r0, r1]
	str r0, [r4, #8]
	ldr r0, _0203A820 ; =0x020E97BE
	ldrh r0, [r0, r1]
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
	; .align 2, 0
_0203A818: .word 0x020E97BA
_0203A81C: .word 0x020E97BC
_0203A820: .word 0x020E97BE
	thumb_func_end sub_0203A7F0

	thumb_func_start sub_0203A824
sub_0203A824: ; 0x0203A824
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203A7D8
	lsl r1, r0, #4
	ldr r0, _0203A84C ; =0x020E97B4
	ldrh r0, [r0, r1]
	str r0, [r4, #0]
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	ldr r0, _0203A850 ; =0x020E97B6
	ldrh r0, [r0, r1]
	str r0, [r4, #8]
	ldr r0, _0203A854 ; =0x020E97B8
	ldrh r0, [r0, r1]
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	; .align 2, 0
_0203A84C: .word 0x020E97B4
_0203A850: .word 0x020E97B6
_0203A854: .word 0x020E97B8
	thumb_func_end sub_0203A824

	thumb_func_start sub_0203A858
sub_0203A858: ; 0x0203A858
	ldr r3, _0203A878 ; =0x020E97B4
	mov r2, #0
_0203A85C:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0203A86C
	ldrb r1, [r3, #0xc]
	cmp r1, #0
	beq _0203A86C
	add r0, r2, #1
	bx lr
_0203A86C:
	add r2, r2, #1
	add r3, #0x10
	cmp r2, #0x14
	blo _0203A85C
	mov r0, #0
	bx lr
	; .align 2, 0
_0203A878: .word 0x020E97B4
	thumb_func_end sub_0203A858

	thumb_func_start sub_0203A87C
sub_0203A87C: ; 0x0203A87C
	ldr r3, _0203A89C ; =0x020E97B4
	mov r2, #0
_0203A880:
	ldrh r1, [r3, #6]
	cmp r0, r1
	bne _0203A890
	ldrb r1, [r3, #0xc]
	cmp r1, #0
	beq _0203A890
	add r0, r2, #1
	bx lr
_0203A890:
	add r2, r2, #1
	add r3, #0x10
	cmp r2, #0x14
	blo _0203A880
	mov r0, #0
	bx lr
	; .align 2, 0
_0203A89C: .word 0x020E97B4
	thumb_func_end sub_0203A87C

	thumb_func_start sub_0203A8A0
sub_0203A8A0: ; 0x0203A8A0
	push {r3, r4, r5, r6}
	asr r3, r1, #4
	lsr r3, r3, #0x1b
	add r3, r1, r3
	asr r1, r2, #4
	lsr r1, r1, #0x1b
	add r1, r2, r1
	mov r4, #0
	asr r2, r1, #5
	ldr r5, _0203A8E4 ; =0x020E97B4
	asr r3, r3, #5
	add r1, r4, #0
_0203A8B8:
	ldrh r6, [r5, #6]
	cmp r0, r6
	bne _0203A8D6
	ldrh r6, [r5, #8]
	add r4, r1, #1
	lsr r6, r6, #5
	cmp r3, r6
	bne _0203A8D6
	ldrh r6, [r5, #0xa]
	lsr r6, r6, #5
	cmp r2, r6
	bne _0203A8D6
	add r0, r4, #0
	pop {r3, r4, r5, r6}
	bx lr
_0203A8D6:
	add r1, r1, #1
	add r5, #0x10
	cmp r1, #0x14
	blo _0203A8B8
	add r0, r4, #0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_0203A8E4: .word 0x020E97B4
	thumb_func_end sub_0203A8A0

	thumb_func_start sub_0203A8E8
sub_0203A8E8: ; 0x0203A8E8
	push {r4, lr}
	ldr r3, _0203A918 ; =0x020E97B4
	mov r4, #0
_0203A8EE:
	ldrh r2, [r3, #6]
	cmp r1, r2
	bne _0203A90E
	ldrb r2, [r3, #0xd]
	cmp r2, #0
	beq _0203A90E
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r2, _0203A91C ; =0x020E97C2
	lsl r3, r4, #4
	ldrh r2, [r2, r3]
	mov r1, #1
	bl sub_0206AF3C
	pop {r4, pc}
_0203A90E:
	add r4, r4, #1
	add r3, #0x10
	cmp r4, #0x14
	blo _0203A8EE
	pop {r4, pc}
	; .align 2, 0
_0203A918: .word 0x020E97B4
_0203A91C: .word 0x020E97C2
	thumb_func_end sub_0203A8E8

	thumb_func_start sub_0203A920
sub_0203A920: ; 0x0203A920
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0203A7D8
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	ldr r2, _0203A940 ; =0x020E97C2
	lsl r3, r4, #4
	ldrh r2, [r2, r3]
	mov r1, #2
	bl sub_0206AF3C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203A940: .word 0x020E97C2
	thumb_func_end sub_0203A920

	.rodata


	.global Unk_020E97B4
Unk_020E97B4: ; 0x020E97B4
	.incbin "incbin/arm9_rodata.bin", 0x4B74, 0x140

