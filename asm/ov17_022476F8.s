	.include "macros/function.inc"
	.include "include/ov17_022476F8.inc"

	

	.text


	thumb_func_start ov17_022476F8
ov17_022476F8: ; 0x022476F8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02247718
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02247732
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_02247718:
	bl sub_02007DC8
	add r6, r5, #0
	add r6, #0x48
	lsl r7, r4, #4
	ldr r0, [r6, r7]
	bl sub_020181C4
	lsl r0, r4, #2
	mov r1, #0
	add r0, r5, r0
	str r1, [r0, #8]
	str r1, [r6, r7]
_02247732:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_022476F8

	thumb_func_start ov17_02247734
ov17_02247734: ; 0x02247734
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0224773A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_022476F8
	add r4, r4, #1
	cmp r4, #4
	blt _0224773A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02247734

	thumb_func_start ov17_0224774C
ov17_0224774C: ; 0x0224774C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #1
	str r3, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r3, _02247794 ; =0x000080EA
	add r5, r0, #0
	str r3, [sp, #8]
	mov r3, #0x43
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02247794 ; =0x000080EA
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x44
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02247794 ; =0x000080EA
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0x45
	bl sub_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02247794: .word 0x000080EA
	thumb_func_end ov17_0224774C

	thumb_func_start ov17_02247798
ov17_02247798: ; 0x02247798
	push {r4, lr}
	ldr r1, _022477B4 ; =0x000080EA
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _022477B4 ; =0x000080EA
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _022477B4 ; =0x000080EA
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_022477B4: .word 0x000080EA
	thumb_func_end ov17_02247798

	thumb_func_start ov17_022477B8
ov17_022477B8: ; 0x022477B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x16
	mov r1, #0x18
	add r7, r2, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, _0224782C ; =0x022543F8
	bl sub_0200CE6C
	lsl r1, r6, #0x10
	lsl r2, r7, #0x10
	mov r3, #1
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	str r0, [r4, #4]
	bl sub_0200D500
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _022477FC
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0200D364
_022477FC:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	bl sub_0200D324
	lsl r0, r6, #8
	str r0, [r4, #8]
	lsl r0, r7, #8
	str r0, [r4, #0xc]
	ldr r0, _02247830 ; =0x000004F9
	ldr r2, _02247834 ; =0x0000C350
	add r1, r5, r0
	str r1, [r4, #0]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _02247838 ; =ov17_02247840
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r0, _0224783C ; =0x000006E1
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224782C: .word 0x022543F8
_02247830: .word 0x000004F9
_02247834: .word 0x0000C350
_02247838: .word ov17_02247840
_0224783C: .word 0x000006E1
	thumb_func_end ov17_022477B8

	thumb_func_start ov17_02247840
ov17_02247840: ; 0x02247840
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _022478AE
	ldr r0, [r4, #0x10]
	bl sub_0201D2B8
	lsl r1, r0, #3
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r5, r0, #0xc
	mov r0, #6
	mov r3, #1
	ldr r1, [r4, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	lsl r3, r3, #8
	sub r2, r0, r3
	str r2, [r4, #0xc]
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	asr r6, r1, #7
	lsr r6, r6, #0x18
	add r6, r1, r6
	asr r1, r6, #8
	add r1, r1, r5
	asr r5, r2, #7
	lsr r5, r5, #0x18
	add r5, r2, r5
	lsl r1, r1, #0x10
	lsl r2, r5, #8
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0xc
	bl sub_0200D500
	ldrh r0, [r4, #0x16]
	add r0, r0, #1
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x16]
	cmp r0, #0x3c
	bhs _022478A6
	ldr r1, [r4, #0xc]
	ldr r0, _022478CC ; =0xFFFFE000
	cmp r1, r0
	bgt _022478C8
_022478A6:
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_022478AE:
	ldr r0, [r4, #4]
	bl sub_0200D0F4
	ldr r1, [r4, #0]
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_022478C8:
	pop {r4, r5, r6, pc}
	nop
_022478CC: .word 0xFFFFE000
	thumb_func_end ov17_02247840

	thumb_func_start ov17_022478D0
ov17_022478D0: ; 0x022478D0
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	add r4, r1, #0
	cmp r0, #0
	beq _022478E2
	bl sub_02022974
_022478E2:
	mov r1, #0x30
	ldr r2, [r5, #0]
	mul r1, r4
	add r1, r2, r1
	ldrh r1, [r1, #0x1a]
	add r0, sp, #0x10
	bl sub_0207697C
	ldr r0, _02247914 ; =0xFFFFFDC0
	mov r2, #5
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	add r1, sp, #0x10
	lsl r2, r2, #6
	mov r3, #0x20
	bl sub_02007C34
	str r0, [r5, #0x24]
	add sp, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02247914: .word 0xFFFFFDC0
	thumb_func_end ov17_022478D0

	thumb_func_start ov17_02247918
ov17_02247918: ; 0x02247918
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0224792A
	bl sub_02007DC8
	mov r0, #0
	str r0, [r4, #0x24]
_0224792A:
	pop {r4, pc}
	thumb_func_end ov17_02247918

	thumb_func_start ov17_0224792C
ov17_0224792C: ; 0x0224792C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	beq _02247942
	cmp r6, #0
	bne _02247942
	bl sub_02022974
_02247942:
	cmp r4, #0
	beq _0224798C
	cmp r4, #1
	bne _02247988
	ldrb r4, [r6]
	ldr r3, [r5, #0]
	mov r0, #1
	lsl r2, r4, #2
	str r0, [sp]
	mov r0, #2
	add r2, r3, r2
	add r4, r3, r4
	mov r3, #0x42
	str r0, [sp, #4]
	lsl r3, r3, #2
	add r2, #0xe8
	ldrb r3, [r4, r3]
	ldr r0, [r5, #0x48]
	ldr r2, [r2, #0]
	mov r1, #0
	bl sub_0200B48C
	ldrb r0, [r6]
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_02247988:
	bl sub_02022974
_0224798C:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_0224792C

	thumb_func_start ov17_02247990
ov17_02247990: ; 0x02247990
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02247A00 ; =0x00000171
	add r7, r2, #0
	ldrb r0, [r1, r0]
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _022479B2
	ldr r0, _02247A04 ; =0x00001988
	ldr r0, [r1, r0]
	bl sub_02027AC0
	add r4, r0, #0
	b _022479B4
_022479B2:
	mov r4, #1
_022479B4:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	bl ov17_0224792C
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x34
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x4c]
	add r0, #0x34
	mov r1, #1
	bl sub_0201D738
	add r5, #0xd0
	strb r0, [r5]
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247A00: .word 0x00000171
_02247A04: .word 0x00001988
	thumb_func_end ov17_02247990

	thumb_func_start ov17_02247A08
ov17_02247A08: ; 0x02247A08
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #0xf
	blo _02247A1A
	bl sub_02022974
_02247A1A:
	str r4, [sp]
	ldr r2, _02247A34 ; =0x0225442C
	lsl r3, r5, #2
	ldr r4, _02247A38 ; =0x0225442E
	ldrh r2, [r2, r3]
	ldrb r3, [r4, r3]
	ldr r1, [r6, #0x44]
	add r0, r6, #0
	bl ov17_02247990
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02247A34: .word 0x0225442C
_02247A38: .word 0x0225442E
	thumb_func_end ov17_02247A08

	thumb_func_start ov17_02247A3C
ov17_02247A3C: ; 0x02247A3C
	ldr r3, _02247A44 ; =sub_0201D724
	add r0, #0xd0
	ldrb r0, [r0]
	bx r3
	; .align 2, 0
_02247A44: .word sub_0201D724
	thumb_func_end ov17_02247A3C

	.rodata


	.global Unk_ov17_022543EC
Unk_ov17_022543EC: ; 0x022543EC
	.incbin "incbin/overlay17_rodata.bin", 0x1660, 0x166C - 0x1660

	.global Unk_ov17_022543F8
Unk_ov17_022543F8: ; 0x022543F8
	.incbin "incbin/overlay17_rodata.bin", 0x166C, 0x16A0 - 0x166C

	.global Unk_ov17_0225442C
Unk_ov17_0225442C: ; 0x0225442C
	.incbin "incbin/overlay17_rodata.bin", 0x16A0, 0x3C

