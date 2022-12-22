	.include "macros/function.inc"
	.include "include/unk_0206A780.inc"

	

	.text


	thumb_func_start sub_0206A780
sub_0206A780: ; 0x0206A780
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r3, _0206A838 ; =0x020EF9EC
	add r2, sp, #0x10
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x5b
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x5b
	add r7, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	add r0, r7, #0
	add r1, sp, #0x10
	mov r2, #2
	mov r3, #0xb
	bl ov5_021D3190
	mov r0, #0x55
	add r1, r4, #0
	bl sub_02006C24
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0206A83C ; =0x000034D8
	mov r2, #0
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	add r3, r2, #0
	bl ov5_021D32E8
	ldr r0, _0206A83C ; =0x000034D8
	ldr r1, [sp, #0xc]
	str r0, [sp]
	add r0, r7, #0
	mov r2, #2
	mov r3, #0
	bl ov5_021D3374
	ldr r0, _0206A83C ; =0x000034D8
	ldr r1, [sp, #0xc]
	str r0, [sp]
	add r0, r7, #0
	mov r2, #3
	mov r3, #0
	bl ov5_021D339C
	mov r2, #1
	ldr r0, _0206A83C ; =0x000034D8
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	mov r3, #0
	bl ov5_021D3414
	ldr r4, _0206A840 ; =0x020EFA04
	mov r6, #0
	add r5, r7, #0
_0206A812:
	add r0, r7, #0
	add r1, r4, #0
	bl ov5_021D3584
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r6, r6, #1
	add r4, #0x34
	add r5, r5, #4
	cmp r6, #2
	blo _0206A812
	ldr r0, [sp, #0xc]
	bl sub_02006CA8
	add r0, r7, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206A838: .word 0x020EF9EC
_0206A83C: .word 0x000034D8
_0206A840: .word 0x020EFA04
	thumb_func_end sub_0206A780

	thumb_func_start sub_0206A844
sub_0206A844: ; 0x0206A844
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0x59
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #2
_0206A850:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0206A85A
	bl sub_0200D0F4
_0206A85A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0206A850
	add r0, r7, #0
	bl ov5_021D375C
	add r0, r7, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206A844

	thumb_func_start sub_0206A870
sub_0206A870: ; 0x0206A870
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	mov r6, #0x59
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	lsl r7, r7, #0xc
	lsl r6, r6, #2
_0206A880:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0206A88E
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl sub_02021E2C
_0206A88E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0206A880
	ldr r0, [sp]
	ldr r0, [r0, #0]
	bl sub_020219F8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206A870

	thumb_func_start sub_0206A8A0
sub_0206A8A0: ; 0x0206A8A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r6, r3, #0
	bl sub_0200D4C4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200D4C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206A8A0

	thumb_func_start sub_0206A8C4
sub_0206A8C4: ; 0x0206A8C4
	push {r3, lr}
	cmp r1, #2
	bhs _0206A8DA
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r2, #0
	bl sub_0200D3F4
_0206A8DA:
	pop {r3, pc}
	thumb_func_end sub_0206A8C4

	.rodata


	.global Unk_020EF9EC
Unk_020EF9EC: ; 0x020EF9EC
	.incbin "incbin/arm9_rodata.bin", 0xADAC, 0xADC4 - 0xADAC

	.global Unk_020EFA04
Unk_020EFA04: ; 0x020EFA04
	.incbin "incbin/arm9_rodata.bin", 0xADC4, 0x68

