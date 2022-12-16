	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov6_02246A30
ov6_02246A30: ; 0x02246A30
	mov r0, #1
	bx lr
	thumb_func_end ov6_02246A30

	thumb_func_start ov6_02246A34
ov6_02246A34: ; 0x02246A34
	mov r0, #0
	bx lr
	thumb_func_end ov6_02246A34

	thumb_func_start ov6_02246A38
ov6_02246A38: ; 0x02246A38
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #7
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246A38

	thumb_func_start ov6_02246A4C
ov6_02246A4C: ; 0x02246A4C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	add r2, r1, #0
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246A4C

	thumb_func_start ov6_02246A60
ov6_02246A60: ; 0x02246A60
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #9
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246A60

	thumb_func_start ov6_02246A74
ov6_02246A74: ; 0x02246A74
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0xa
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246A74

	thumb_func_start ov6_02246A88
ov6_02246A88: ; 0x02246A88
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0xb
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246A88

	thumb_func_start ov6_02246A9C
ov6_02246A9C: ; 0x02246A9C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x11
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246A9C

	thumb_func_start ov6_02246AB0
ov6_02246AB0: ; 0x02246AB0
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	bl sub_02025F58
	cmp r0, #5
	blt _02246AC4
	mov r0, #1
	pop {r3, pc}
_02246AC4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov6_02246AB0

	thumb_func_start ov6_02246AC8
ov6_02246AC8: ; 0x02246AC8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02026F0C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246AC8

	thumb_func_start ov6_02246AD8
ov6_02246AD8: ; 0x02246AD8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027520
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246AD8

	thumb_func_start ov6_02246AE8
ov6_02246AE8: ; 0x02246AE8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A954
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02246AE8

	thumb_func_start ov6_02246AF8
ov6_02246AF8: ; 0x02246AF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r4, _02246B38 ; =0x022494B0
	str r0, [sp]
	add r7, r1, #0
	mov r6, #0
	add r5, sp, #4
_02246B06:
	ldr r0, [sp]
	ldr r1, [r4, #0]
	blx r1
	add r6, r6, #1
	add r4, r4, #4
	stmia r5!, {r0}
	cmp r6, #0xc
	blo _02246B06
	mov r4, #0
	ldr r3, _02246B3C ; =0x02249878
	add r0, r4, #0
	add r2, sp, #4
_02246B1E:
	ldrb r1, [r3]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02246B2C
	strb r4, [r7, r0]
	add r0, r0, #1
_02246B2C:
	add r4, r4, #1
	add r3, r3, #1
	cmp r4, #0x23
	blo _02246B1E
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02246B38: .word 0x022494B0
_02246B3C: .word 0x02249878
	thumb_func_end ov6_02246AF8

	thumb_func_start ov6_02246B40
ov6_02246B40: ; 0x02246B40
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x24
	bl sub_020C4CF4
	add r0, r4, #0
	add r1, sp, #0
	bl ov6_02246AF8
	add r4, r0, #0
	bne _02246B62
	add sp, #0x24
	mov r0, #0
	pop {r3, r4, pc}
_02246B62:
	bl sub_0201D35C
	add r1, r4, #0
	bl sub_020E2178
	add r0, sp, #0
	ldrb r0, [r0, r1]
	add sp, #0x24
	pop {r3, r4, pc}
	thumb_func_end ov6_02246B40

	.rodata


	.global Unk_ov6_022494B0
Unk_ov6_022494B0: ; 0x022494B0
	.incbin "incbin/overlay6_rodata.bin", 0x69C, 0x30


	.data


	.global Unk_ov6_02249878
Unk_ov6_02249878: ; 0x02249878
	.incbin "incbin/overlay6_data.bin", 0x18, 0x23

