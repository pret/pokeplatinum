	.include "macros/function.inc"


	.text

	thumb_func_start ov57_021D0D80
ov57_021D0D80: ; 0x021D0D80
	push {r3, lr}
	mov r2, #2
	mov r0, #3
	mov r1, #0x4d
	lsl r2, r2, #0x10
	bl sub_02017FC8
	bl sub_02001028
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov57_021D0D80

	thumb_func_start ov57_021D0D98
ov57_021D0D98: ; 0x021D0D98
	push {r3, lr}
	bl sub_02006840
	ldr r1, [r0, #8]
	mov r0, #0x4d
	bl ov57_021D0F44
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov57_021D0D98

	thumb_func_start ov57_021D0DAC
ov57_021D0DAC: ; 0x021D0DAC
	push {r3, lr}
	mov r0, #0x4d
	bl sub_0201807C
	mov r0, #0
	ldr r1, _021D0DC4 ; =0x020F6824
	mvn r0, r0
	bl sub_02000EC4
	mov r0, #1
	pop {r3, pc}
	nop
_021D0DC4: .word 0x020F6824
	thumb_func_end ov57_021D0DAC

	thumb_func_start ov57_021D0DC8
ov57_021D0DC8: ; 0x021D0DC8
	push {r3, lr}
	mov r2, #2
	mov r0, #3
	mov r1, #0x4d
	lsl r2, r2, #0x10
	bl sub_02017FC8
	bl sub_02001028
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov57_021D0DC8

	thumb_func_start ov57_021D0DE0
ov57_021D0DE0: ; 0x021D0DE0
	push {r4, lr}
	bl sub_02006840
	ldr r4, [r0, #8]
	mov r0, #0x4d
	add r1, r4, #0
	mov r2, #1
	bl ov57_021D0EAC
	add r0, r4, #0
	bl sub_02025E5C
	bl sub_02017434
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov57_021D0DE0

	thumb_func_start ov57_021D0E00
ov57_021D0E00: ; 0x021D0E00
	push {r3, lr}
	mov r0, #0x4d
	bl sub_0201807C
	mov r0, #0
	ldr r1, _021D0E18 ; =0x020EA10C
	mvn r0, r0
	bl sub_02000EC4
	mov r0, #1
	pop {r3, pc}
	nop
_021D0E18: .word 0x020EA10C
	thumb_func_end ov57_021D0E00

	thumb_func_start ov57_021D0E1C
ov57_021D0E1C: ; 0x021D0E1C
	push {r3, lr}
	mov r2, #2
	mov r0, #3
	mov r1, #0x4d
	lsl r2, r2, #0x10
	bl sub_02017FC8
	bl sub_02001028
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov57_021D0E1C

	thumb_func_start ov57_021D0E34
ov57_021D0E34: ; 0x021D0E34
	push {r3, r4, r5, lr}
	bl sub_02006840
	ldr r4, [r0, #8]
	add r0, r4, #0
	bl sub_02025CCC
	add r5, r0, #0
	mov r0, #0x4d
	add r1, r4, #0
	bl ov57_021D0F30
	add r0, r4, #0
	mov r1, #0
	bl sub_02027A68
	add r0, r5, #0
	bl sub_02025D10
	cmp r0, #0
	beq _021D0E68
	add r0, r5, #0
	bl sub_02025D40
	cmp r0, #0
	bne _021D0E82
_021D0E68:
	add r0, r4, #0
	bl sub_02025CD8
	bl sub_02025DE8
	add r0, r5, #0
	bl sub_02025CE4
	add r0, r4, #0
	bl sub_0207A268
	bl sub_02077B8C
_021D0E82:
	add r0, r4, #0
	bl sub_02025E5C
	bl sub_02017434
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov57_021D0E34

	thumb_func_start ov57_021D0E90
ov57_021D0E90: ; 0x021D0E90
	push {r3, lr}
	mov r0, #0x4d
	bl sub_0201807C
	mov r0, #0
	ldr r1, _021D0EA8 ; =0x020EA11C
	mvn r0, r0
	bl sub_02000EC4
	mov r0, #1
	pop {r3, pc}
	nop
_021D0EA8: .word 0x020EA11C
	thumb_func_end ov57_021D0E90

	thumb_func_start ov57_021D0EAC
ov57_021D0EAC: ; 0x021D0EAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	add r6, r2, #0
	bl sub_02025CCC
	bl sub_02025CE4
	add r0, r5, #0
	bl sub_02025CD8
	bl sub_02025D84
	add r0, r5, #0
	bl sub_0202B4A0
	add r4, r0, #0
	bl sub_0201D35C
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_0202B40C
	add r0, r5, #0
	bl sub_0206C008
	add r0, r5, #0
	bl sub_02025E38
	add r4, r0, #0
	bl sub_0201D35C
	add r7, r0, #0
	cmp r6, #0
	beq _021D0EFE
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02025F1C
_021D0EFE:
	add r0, r4, #0
	bl sub_02025F30
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0
	bl sub_0205C9BC
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02025F90
	add r0, r5, #0
	bl sub_02027854
	ldr r1, [sp]
	ldr r2, _021D0F2C ; =0x021D0FA0
	mov r3, #0x76
	bl sub_02027B90
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D0F2C: .word 0x021D0FA0
	thumb_func_end ov57_021D0EAC

	thumb_func_start ov57_021D0F30
ov57_021D0F30: ; 0x021D0F30
	push {r3, lr}
	add r0, r1, #0
	bl sub_020246A8
	cmp r0, #0
	bne _021D0F42
	mov r0, #0
	bl sub_020C3EE4
_021D0F42:
	pop {r3, pc}
	thumb_func_end ov57_021D0F30

	thumb_func_start ov57_021D0F44
ov57_021D0F44: ; 0x021D0F44
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0202479C
	add r0, r4, #0
	bl sub_0203D1A8
	add r0, r4, #0
	bl sub_02025E38
	ldr r1, _021D0F6C ; =0x00000BB8
	bl sub_02025F78
	add r0, r4, #0
	bl sub_020507E4
	bl sub_0206A92C
	pop {r4, pc}
	; .align 2, 0
_021D0F6C: .word 0x00000BB8
	thumb_func_end ov57_021D0F44
	; 0x021D0F70
