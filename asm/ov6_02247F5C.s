	.include "macros/function.inc"
	.include "include/ov6_02247F5C.inc"

	

	.text


	thumb_func_start ov6_02247F5C
ov6_02247F5C: ; 0x02247F5C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206ADEC
	cmp r0, #0
	bne _02247F8C
	mov r0, #0x1f
	ldr r2, [r4, #0x50]
	lsl r0, r0, #4
	mov r1, #1
	bl ov5_021D3DE4
	add r4, r0, #0
	mov r1, #1
	bl ov5_021D3F08
	add r0, r4, #0
	mov r1, #1
	bl ov5_021D3E40
	pop {r4, pc}
_02247F8C:
	mov r0, #0x1f
	ldr r2, [r4, #0x50]
	lsl r0, r0, #4
	mov r1, #0
	bl ov5_021D3DE4
	mov r1, #1
	bl ov5_021D3E40
	mov r0, #0x1f
	ldr r2, [r4, #0x50]
	lsl r0, r0, #4
	mov r1, #1
	bl ov5_021D3DE4
	add r4, r0, #0
	bl ov5_021D3E9C
	add r0, r4, #0
	mov r1, #1
	bl ov5_021D3E40
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02247F5C

	thumb_func_start ov6_02247FBC
ov6_02247FBC: ; 0x02247FBC
	ldr r3, _02247FC8 ; =sub_02050944
	ldr r0, [r0, #0x10]
	ldr r1, _02247FCC ; =ov6_02247FD0
	mov r2, #0
	bx r3
	nop
_02247FC8: .word sub_02050944
_02247FCC: .word ov6_02247FD0
	thumb_func_end ov6_02247FBC

	thumb_func_start ov6_02247FD0
ov6_02247FD0: ; 0x02247FD0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02247FF2
	cmp r0, #1
	beq _02248018
	cmp r0, #2
	beq _02248032
	b _0224804A
_02247FF2:
	mov r0, #0x1f
	ldr r2, [r5, #0x50]
	lsl r0, r0, #4
	mov r1, #0
	bl ov5_021D3DE4
	add r5, r0, #0
	bl ov5_021D3E4C
	cmp r0, #0
	beq _0224804A
	add r0, r5, #0
	mov r1, #1
	bl ov5_021D3E40
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224804A
_02248018:
	mov r0, #0x1f
	ldr r2, [r5, #0x50]
	lsl r0, r0, #4
	mov r1, #1
	bl ov5_021D3DE4
	mov r1, #0
	bl ov5_021D3E40
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224804A
_02248032:
	mov r0, #0x1f
	ldr r2, [r5, #0x50]
	lsl r0, r0, #4
	mov r1, #1
	bl ov5_021D3DE4
	bl ov5_021D3F70
	cmp r0, #0
	beq _0224804A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224804A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov6_02247FD0