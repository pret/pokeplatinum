	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021D5BC0
ov5_021D5BC0: ; 0x021D5BC0
	push {r4, lr}
	ldr r4, [r0, #0x18]
	cmp r4, #0
	bne _021D5BCC
	bl sub_02022974
_021D5BCC:
	cmp r4, #5
	blt _021D5BD4
	bl sub_02022974
_021D5BD4:
	sub r0, r4, #1
	pop {r4, pc}
	thumb_func_end ov5_021D5BC0

	thumb_func_start ov5_021D5BD8
ov5_021D5BD8: ; 0x021D5BD8
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021D5BC0
	add r1, r0, #0
	lsl r2, r1, #4
	ldr r1, _021D5BF0 ; =0x021F8C7C
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_021D5BF0: .word 0x021F8C7C
	thumb_func_end ov5_021D5BD8

	thumb_func_start ov5_021D5BF4
ov5_021D5BF4: ; 0x021D5BF4
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021D5BC0
	lsl r1, r0, #4
	ldr r0, _021D5C10 ; =0x021F8C80
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _021D5C0A
	mov r0, #1
	pop {r4, pc}
_021D5C0A:
	add r0, r4, #0
	blx r1
	pop {r4, pc}
	; .align 2, 0
_021D5C10: .word 0x021F8C80
	thumb_func_end ov5_021D5BF4

	thumb_func_start ov5_021D5C14
ov5_021D5C14: ; 0x021D5C14
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021D5BC0
	add r1, r0, #0
	lsl r2, r1, #4
	ldr r1, _021D5C2C ; =0x021F8C84
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_021D5C2C: .word 0x021F8C84
	thumb_func_end ov5_021D5C14

	thumb_func_start ov5_021D5C30
ov5_021D5C30: ; 0x021D5C30
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021D5BC0
	add r1, r0, #0
	lsl r2, r1, #4
	ldr r1, _021D5C48 ; =0x021F8C88
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_021D5C48: .word 0x021F8C88
	thumb_func_end ov5_021D5C30

	thumb_func_start ov5_021D5C4C
ov5_021D5C4C: ; 0x021D5C4C
	ldr r3, _021D5C50 ; =ov5_021EA728
	bx r3
	; .align 2, 0
_021D5C50: .word ov5_021EA728
	thumb_func_end ov5_021D5C4C

	thumb_func_start ov5_021D5C54
ov5_021D5C54: ; 0x021D5C54
	ldr r3, _021D5C58 ; =sub_0205A0BC
	bx r3
	; .align 2, 0
_021D5C58: .word sub_0205A0BC
	thumb_func_end ov5_021D5C54

	thumb_func_start ov5_021D5C5C
ov5_021D5C5C: ; 0x021D5C5C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D5C74 ; =0x00000038
	mov r1, #2
	bl sub_02006590
	add r0, r4, #0
	bl ov56_02256410
	add r4, #0x84
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_021D5C74: .word 0x00000038
	thumb_func_end ov5_021D5C5C

	thumb_func_start ov5_021D5C78
ov5_021D5C78: ; 0x021D5C78
	ldr r3, _021D5C7C ; =ov5_021EA790
	bx r3
	; .align 2, 0
_021D5C7C: .word ov5_021EA790
	thumb_func_end ov5_021D5C78

	thumb_func_start ov5_021D5C80
ov5_021D5C80: ; 0x021D5C80
	ldr r3, _021D5C84 ; =sub_0205A0A0
	bx r3
	; .align 2, 0
_021D5C84: .word sub_0205A0A0
	thumb_func_end ov5_021D5C80

	thumb_func_start ov5_021D5C88
ov5_021D5C88: ; 0x021D5C88
	push {r3, lr}
	add r0, #0x84
	ldr r0, [r0, #0]
	bl ov56_02256468
	ldr r0, _021D5C9C ; =0x00000038
	bl sub_02006514
	pop {r3, pc}
	nop
_021D5C9C: .word 0x00000038
	thumb_func_end ov5_021D5C88

	thumb_func_start ov5_021D5CA0
ov5_021D5CA0: ; 0x021D5CA0
	ldr r3, _021D5CA4 ; =ov5_021EA7CC
	bx r3
	; .align 2, 0
_021D5CA4: .word ov5_021EA7CC
	thumb_func_end ov5_021D5CA0

	thumb_func_start ov5_021D5CA8
ov5_021D5CA8: ; 0x021D5CA8
	mov r0, #1
	bx lr
	thumb_func_end ov5_021D5CA8

	thumb_func_start ov5_021D5CAC
ov5_021D5CAC: ; 0x021D5CAC
	mov r0, #1
	bx lr
	thumb_func_end ov5_021D5CAC

	.rodata


	.global Unk_ov5_021F8C7C
Unk_ov5_021F8C7C: ; 0x021F8C7C
	.incbin "incbin/overlay5_rodata.bin", 0x368, 0x40

