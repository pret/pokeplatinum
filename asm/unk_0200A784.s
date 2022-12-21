	.include "macros/function.inc"
	.include "include/unk_0200A784.inc"

	

	.text


	thumb_func_start sub_0200A784
sub_0200A784: ; 0x0200A784
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	cmp r4, #4
	bge _0200A798
	mov r0, #4
	cmp r1, #0x7c
	ble _0200A798
	sub r4, r0, r4
	sub r1, r1, r4
_0200A798:
	cmp r2, #1
	bge _0200A7A8
	mov r4, #1
	cmp r3, #0x1e
	ble _0200A7AA
	sub r2, r4, r2
	sub r3, r3, r2
	b _0200A7AA
_0200A7A8:
	add r4, r2, #0
_0200A7AA:
	ldr r2, [sp, #0x20]
	str r2, [sp]
	ldr r2, [sp, #0x24]
	str r2, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x30]
	str r2, [sp, #0x10]
	add r2, r4, #0
	bl sub_0200A7C8
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end sub_0200A784

	thumb_func_start sub_0200A7C8
sub_0200A7C8: ; 0x0200A7C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0200A854 ; =0x021BF430
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0200A7E0
	bl sub_02022974
_0200A7E0:
	ldr r0, [sp, #0x30]
	mov r1, #0x3c
	bl sub_02018144
	ldr r1, _0200A854 ; =0x021BF430
	cmp r0, #0
	str r0, [r1, #0]
	bne _0200A7F4
	bl sub_02022974
_0200A7F4:
	ldr r1, _0200A854 ; =0x021BF430
	lsl r3, r6, #0x10
	ldr r2, [sp, #0x30]
	ldr r0, [r1, #0]
	lsr r3, r3, #0x10
	str r2, [r0, #0x38]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r1, #0]
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_020A7A04
	cmp r0, #0
	bne _0200A820
	bl sub_02022974
_0200A820:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0200A854 ; =0x021BF430
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	ldr r0, [r0, #0]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x1c
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_020A7A04
	cmp r0, #0
	bne _0200A850
	bl sub_02022974
_0200A850:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200A854: .word 0x021BF430
	thumb_func_end sub_0200A7C8

	thumb_func_start sub_0200A858
sub_0200A858: ; 0x0200A858
	push {r3, lr}
	ldr r0, _0200A874 ; =0x021BF430
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0200A870
	bl sub_020A8124
	ldr r0, _0200A874 ; =0x021BF430
	ldr r0, [r0, #0]
	add r0, #0x1c
	bl sub_020A8124
_0200A870:
	pop {r3, pc}
	nop
_0200A874: .word 0x021BF430
	thumb_func_end sub_0200A858

	thumb_func_start sub_0200A878
sub_0200A878: ; 0x0200A878
	push {r3, lr}
	ldr r0, _0200A8AC ; =0x021BF430
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0200A886
	bl sub_02022974
_0200A886:
	ldr r0, _0200A8AC ; =0x021BF430
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	bl sub_0200A93C
	ldr r0, _0200A8AC ; =0x021BF430
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	bl sub_0200A944
	ldr r0, _0200A8AC ; =0x021BF430
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0200A8AC ; =0x021BF430
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	nop
_0200A8AC: .word 0x021BF430
	thumb_func_end sub_0200A878

	thumb_func_start sub_0200A8B0
sub_0200A8B0: ; 0x0200A8B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, _0200A8FC ; =0x021BF430
	add r7, r1, #0
	ldr r0, [r0, #0]
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _0200A8C8
	bl sub_02022974
_0200A8C8:
	cmp r5, #1
	bne _0200A8E4
	ldr r0, _0200A900 ; =sub_020230F0
	ldr r2, _0200A904 ; =sub_0200A94C
	str r0, [sp]
	str r5, [sp, #4]
	ldr r3, _0200A908 ; =sub_0200A990
	add r0, r6, #0
	add r1, r7, #0
	str r4, [sp, #8]
	bl sub_020230AC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0200A8E4:
	ldr r0, _0200A900 ; =sub_020230F0
	ldr r2, _0200A90C ; =sub_0200A96C
	str r0, [sp]
	str r5, [sp, #4]
	ldr r3, _0200A910 ; =sub_0200A9B4
	add r0, r6, #0
	add r1, r7, #0
	str r4, [sp, #8]
	bl sub_020230AC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0200A8FC: .word 0x021BF430
_0200A900: .word sub_020230F0
_0200A904: .word sub_0200A94C
_0200A908: .word sub_0200A990
_0200A90C: .word sub_0200A96C
_0200A910: .word sub_0200A9B4
	thumb_func_end sub_0200A8B0

	thumb_func_start sub_0200A914
sub_0200A914: ; 0x0200A914
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0200A938 ; =0x021BF430
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0200A924
	bl sub_02022974
_0200A924:
	cmp r4, #0
	bne _0200A92E
	ldr r0, _0200A938 ; =0x021BF430
	ldr r0, [r0, #0]
	pop {r4, pc}
_0200A92E:
	ldr r0, _0200A938 ; =0x021BF430
	ldr r0, [r0, #0]
	add r0, #0x1c
	pop {r4, pc}
	nop
_0200A938: .word 0x021BF430
	thumb_func_end sub_0200A914

	thumb_func_start sub_0200A93C
sub_0200A93C: ; 0x0200A93C
	ldr r3, _0200A940 ; =sub_02022014
	bx r3
	; .align 2, 0
_0200A940: .word sub_02022014
	thumb_func_end sub_0200A93C

	thumb_func_start sub_0200A944
sub_0200A944: ; 0x0200A944
	ldr r3, _0200A948 ; =sub_0202204C
	bx r3
	; .align 2, 0
_0200A948: .word sub_0202204C
	thumb_func_end sub_0200A944

	thumb_func_start sub_0200A94C
sub_0200A94C: ; 0x0200A94C
	push {r4, lr}
	add r3, r0, #0
	ldr r0, _0200A968 ; =0x021BF430
	add r2, r1, #0
	ldr r0, [r0, #0]
	add r1, r3, #0
	bl sub_020A7C50
	add r4, r0, #0
	bne _0200A964
	bl sub_02022974
_0200A964:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0200A968: .word 0x021BF430
	thumb_func_end sub_0200A94C

	thumb_func_start sub_0200A96C
sub_0200A96C: ; 0x0200A96C
	push {r4, lr}
	add r3, r0, #0
	ldr r0, _0200A98C ; =0x021BF430
	add r2, r1, #0
	ldr r0, [r0, #0]
	add r1, r3, #0
	add r0, #0x1c
	bl sub_020A7C50
	add r4, r0, #0
	bne _0200A986
	bl sub_02022974
_0200A986:
	add r0, r4, #0
	pop {r4, pc}
	nop
_0200A98C: .word 0x021BF430
	thumb_func_end sub_0200A96C

	thumb_func_start sub_0200A990
sub_0200A990: ; 0x0200A990
	push {r4, lr}
	add r1, r0, #0
	ldr r0, _0200A9AC ; =0x021BF430
	ldr r0, [r0, #0]
	bl sub_020A7D34
	add r4, r0, #0
	ldr r0, _0200A9B0 ; =0x0000FFFE
	cmp r4, r0
	bne _0200A9A8
	bl sub_02022974
_0200A9A8:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0200A9AC: .word 0x021BF430
_0200A9B0: .word 0x0000FFFE
	thumb_func_end sub_0200A990

	thumb_func_start sub_0200A9B4
sub_0200A9B4: ; 0x0200A9B4
	push {r4, lr}
	add r1, r0, #0
	ldr r0, _0200A9D4 ; =0x021BF430
	ldr r0, [r0, #0]
	add r0, #0x1c
	bl sub_020A7D34
	add r4, r0, #0
	ldr r0, _0200A9D8 ; =0x0000FFFE
	cmp r4, r0
	bne _0200A9CE
	bl sub_02022974
_0200A9CE:
	add r0, r4, #0
	pop {r4, pc}
	nop
_0200A9D4: .word 0x021BF430
_0200A9D8: .word 0x0000FFFE
	thumb_func_end sub_0200A9B4

	.bss


	.global Unk_021BF430
Unk_021BF430: ; 0x021BF430
	.space 0x4

