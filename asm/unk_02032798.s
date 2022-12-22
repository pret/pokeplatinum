	.include "macros/function.inc"
	.include "include/unk_02032798.inc"

	

	.text


	thumb_func_start sub_02032798
sub_02032798: ; 0x02032798
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _020327DC ; =0x021C07B0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	cmp r0, #0
	bne _020327B4
	mov r0, #0xf
	mov r1, #0x18
	bl sub_02018144
	ldr r1, _020327DC ; =0x021C07B0
	str r0, [r1, #0]
_020327B4:
	ldr r0, _020327DC ; =0x021C07B0
	mov r3, #0
	ldr r1, [r0, #0]
	add r2, r3, #0
	str r5, [r1, #0]
	ldr r1, [r0, #0]
	str r4, [r1, #4]
	ldr r1, [r0, #0]
	str r6, [r1, #8]
_020327C6:
	ldr r1, [r0, #0]
	add r1, r1, r3
	add r3, r3, #1
	strb r2, [r1, #0xc]
	cmp r3, #8
	blt _020327C6
	ldr r0, _020327DC ; =0x021C07B0
	ldr r0, [r0, #0]
	strb r2, [r0, #0x14]
	pop {r4, r5, r6, pc}
	nop
_020327DC: .word 0x021C07B0
	thumb_func_end sub_02032798

	thumb_func_start sub_020327E0
sub_020327E0: ; 0x020327E0
	push {r3, lr}
	ldr r0, _020327F8 ; =0x021C07B0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020327F4
	bl sub_020181C4
	ldr r0, _020327F8 ; =0x021C07B0
	mov r1, #0
	str r1, [r0, #0]
_020327F4:
	pop {r3, pc}
	nop
_020327F8: .word 0x021C07B0
	thumb_func_end sub_020327E0

	thumb_func_start sub_020327FC
sub_020327FC: ; 0x020327FC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0x16
	bge _02032814
	mov r0, #0xc
	mul r1, r0
	ldr r0, _02032860 ; =0x020E5D64
	ldr r4, [r0, r1]
	b _0203283C
_02032814:
	ldr r0, _02032864 ; =0x021C07B0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02032820
	bl GF_AssertFail
_02032820:
	ldr r0, _02032864 ; =0x021C07B0
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	add r0, #0x16
	cmp r4, r0
	ble _02032832
	bl sub_020363BC
	pop {r3, r4, r5, r6, r7, pc}
_02032832:
	ldr r1, [r1, #0]
	sub r4, #0x16
	mov r0, #0xc
	mul r0, r4
	ldr r4, [r1, r0]
_0203283C:
	cmp r4, #0
	beq _0203285E
	ldr r0, _02032864 ; =0x021C07B0
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _02032854
	ldr r3, [r3, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	blx r4
	pop {r3, r4, r5, r6, r7, pc}
_02032854:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	blx r4
_0203285E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02032860: .word 0x020E5D64
_02032864: .word 0x021C07B0
	thumb_func_end sub_020327FC

	thumb_func_start sub_02032868
sub_02032868: ; 0x02032868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0x16
	bge _0203287E
	mov r0, #0xc
	add r1, r5, #0
	mul r1, r0
	ldr r0, _020328C8 ; =0x020E5D68
	ldr r0, [r0, r1]
	b _020328BA
_0203287E:
	ldr r0, _020328CC ; =0x021C07B0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0203288A
	bl GF_AssertFail
_0203288A:
	ldr r0, _020328CC ; =0x021C07B0
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _0203289A
	bl sub_020363BC
	mov r0, #0
	pop {r3, r4, r5, pc}
_0203289A:
	ldr r0, [r1, #4]
	add r0, #0x16
	cmp r5, r0
	ble _020328AE
	bl GF_AssertFail
	bl sub_020363BC
	mov r0, #0
	pop {r3, r4, r5, pc}
_020328AE:
	ldr r1, [r1, #0]
	sub r5, #0x16
	mov r0, #0xc
	mul r0, r5
	add r0, r1, r0
	ldr r0, [r0, #4]
_020328BA:
	cmp r0, #0
	beq _020328C2
	blx r0
	add r4, r0, #0
_020328C2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_020328C8: .word 0x020E5D68
_020328CC: .word 0x021C07B0
	thumb_func_end sub_02032868

	thumb_func_start sub_020328D0
sub_020328D0: ; 0x020328D0
	cmp r0, #0x16
	bge _020328E8
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02032904 ; =0x020E5D6C
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _020328E4
	mov r0, #1
	bx lr
_020328E4:
	mov r0, #0
	bx lr
_020328E8:
	ldr r1, _02032908 ; =0x021C07B0
	sub r0, #0x16
	ldr r1, [r1, #0]
	ldr r2, [r1, #0]
	mov r1, #0xc
	mul r1, r0
	add r0, r2, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02032900
	mov r0, #1
	bx lr
_02032900:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032904: .word 0x020E5D6C
_02032908: .word 0x021C07B0
	thumb_func_end sub_020328D0

	thumb_func_start sub_0203290C
sub_0203290C: ; 0x0203290C
	push {r3, r4, r5, lr}
	add r3, r0, #0
	cmp r3, #0x16
	bge _02032924
	mov r4, #0xc
	mul r4, r3
	ldr r3, _0203293C ; =0x020E5D6C
	add r0, r1, #0
	ldr r3, [r3, r4]
	mov r1, #0
	blx r3
	pop {r3, r4, r5, pc}
_02032924:
	ldr r0, _02032940 ; =0x021C07B0
	sub r3, #0x16
	ldr r4, [r0, #0]
	add r0, r1, #0
	ldr r1, [r4, #8]
	ldr r5, [r4, #0]
	mov r4, #0xc
	mul r4, r3
	add r3, r5, r4
	ldr r3, [r3, #8]
	blx r3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203293C: .word 0x020E5D6C
_02032940: .word 0x021C07B0
	thumb_func_end sub_0203290C

	thumb_func_start sub_02032944
sub_02032944: ; 0x02032944
	ldr r0, _02032948 ; =0x0000FFFF
	bx lr
	; .align 2, 0
_02032948: .word 0x0000FFFF
	thumb_func_end sub_02032944

	thumb_func_start sub_0203294C
sub_0203294C: ; 0x0203294C
	mov r0, #0
	bx lr
	thumb_func_end sub_0203294C

	thumb_func_start sub_02032950
sub_02032950: ; 0x02032950
	mov r0, #1
	bx lr
	thumb_func_end sub_02032950

	thumb_func_start sub_02032954
sub_02032954: ; 0x02032954
	mov r0, #2
	bx lr
	thumb_func_end sub_02032954

	thumb_func_start sub_02032958
sub_02032958: ; 0x02032958
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203608C
	cmp r0, #0
	bne _02032996
	ldr r4, _02032998 ; =0x021C07B0
	mov r1, #1
	ldr r0, [r4, #0]
	add r0, r0, r5
	strb r1, [r0, #0xc]
	mov r5, #0
_02032970:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02032986
	ldr r0, [r4, #0]
	add r0, r0, r5
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _02032996
_02032986:
	add r5, r5, #1
	cmp r5, #8
	blt _02032970
	mov r1, #0
	mov r0, #0xe
	add r2, r1, #0
	bl sub_02035AC4
_02032996:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02032998: .word 0x021C07B0
	thumb_func_end sub_02032958

	thumb_func_start sub_0203299C
sub_0203299C: ; 0x0203299C
	ldr r0, _020329BC ; =0x021C07B0
	mov r3, #0
	ldr r1, [r0, #0]
	str r3, [r1, #0]
	ldr r1, [r0, #0]
	str r3, [r1, #4]
	ldr r1, [r0, #0]
	str r3, [r1, #8]
	ldr r0, [r0, #0]
	mov r1, #1
	strb r1, [r0, #0x14]
	ldr r3, _020329C0 ; =sub_020360D0
	mov r0, #0xf
	add r1, r2, #0
	bx r3
	nop
_020329BC: .word 0x021C07B0
_020329C0: .word sub_020360D0
	thumb_func_end sub_0203299C

	thumb_func_start sub_020329C4
sub_020329C4: ; 0x020329C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	cmp r0, #0
	bne _020329DA
	ldr r0, _020329DC ; =0x021C07B0
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, r4
	strb r1, [r0, #0xc]
_020329DA:
	pop {r4, pc}
	; .align 2, 0
_020329DC: .word 0x021C07B0
	thumb_func_end sub_020329C4

	.rodata


	.global Unk_020E5D64
Unk_020E5D64: ; 0x020E5D64
	.incbin "incbin/arm9_rodata.bin", 0x1124, 0x108



	.bss


	.global Unk_021C07B0
Unk_021C07B0: ; 0x021C07B0
	.space 0x4

