	.include "macros/function.inc"
	.include "include/unk_0205C22C.inc"

	

	.text


	thumb_func_start sub_0205C22C
sub_0205C22C: ; 0x0205C22C
	push {r3, r4, r5, lr}
	ldr r1, _0205C298 ; =0x000004E8
	add r5, r0, #0
	mov r0, #0x1f
	bl sub_02018144
	add r4, r0, #0
	ldr r2, _0205C298 ; =0x000004E8
	mov r0, #0
	add r1, r4, #0
	bl MIi_CpuClearFast
	mov r0, #0x4e
	str r5, [r4, #0]
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _0205C29C ; =sub_0205C304
	add r1, r4, #0
	mov r2, #0xb
	bl sub_0200D9E8
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0205B770
	ldr r1, _0205C2A0 ; =0x000004D4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #9
	ldr r0, [r0, #0xc]
	bl sub_020245BC
	ldr r1, _0205C2A4 ; =0x000004D8
	ldr r2, _0205C2A8 ; =0x00002710
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	mov r1, #0x59
	ldr r0, [r0, #0x3c]
	str r0, [r4, #8]
	mov r0, #0xb
	bl sub_02017FD4
	mov r0, #0x59
	bl sub_0205C95C
	ldr r1, _0205C2AC ; =0x000004DC
	str r0, [r4, r1]
	add r0, r4, #0
	bl sub_0205C2C8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205C298: .word 0x000004E8
_0205C29C: .word sub_0205C304
_0205C2A0: .word 0x000004D4
_0205C2A4: .word 0x000004D8
_0205C2A8: .word 0x00002710
_0205C2AC: .word 0x000004DC
	thumb_func_end sub_0205C22C

	thumb_func_start sub_0205C2B0
sub_0205C2B0: ; 0x0205C2B0
	mov r3, #0
	mov r1, #3
_0205C2B4:
	ldrb r2, [r0, #0xd]
	cmp r2, #0
	beq _0205C2BC
	strb r1, [r0, #0xc]
_0205C2BC:
	add r3, r3, #1
	add r0, #0x18
	cmp r3, #0x33
	blt _0205C2B4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205C2B0

	thumb_func_start sub_0205C2C8
sub_0205C2C8: ; 0x0205C2C8
	mov r2, #0
	add r1, r2, #0
_0205C2CC:
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	add r2, r2, #1
	add r0, #0x18
	cmp r2, #0x33
	blt _0205C2CC
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205C2C8

	thumb_func_start sub_0205C2E0
sub_0205C2E0: ; 0x0205C2E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0200DA58
	ldr r0, _0205C300 ; =0x000004DC
	ldr r0, [r4, r0]
	bl sub_0205C970
	mov r0, #0x59
	bl sub_0201807C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
_0205C300: .word 0x000004DC
	thumb_func_end sub_0205C2E0

	thumb_func_start sub_0205C304
sub_0205C304: ; 0x0205C304
	push {r3, r4, r5, lr}
	ldr r0, _0205C33C ; =0x000004D4
	add r5, r1, #0
	ldr r0, [r5, r0]
	ldr r4, [r5, #0]
	bl sub_020509A4
	cmp r0, #0
	bne _0205C33A
	ldr r3, _0205C33C ; =0x000004D4
	add r1, r4, #0
	ldr r0, [r5, r3]
	ldr r0, [r0, #0x3c]
	str r0, [r5, #8]
	ldr r2, [r5, r3]
	add r3, r3, #4
	ldr r2, [r2, #0x38]
	ldr r3, [r5, r3]
	add r0, r5, #0
	bl sub_0205C44C
	ldr r1, _0205C33C ; =0x000004D4
	add r0, r5, #0
	ldr r1, [r5, r1]
	ldr r1, [r1, #0x38]
	bl sub_0205C51C
_0205C33A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205C33C: .word 0x000004D4
	thumb_func_end sub_0205C304

	thumb_func_start sub_0205C340
sub_0205C340: ; 0x0205C340
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r5, #0
	str r0, [sp]
	str r3, [sp, #4]
	cmp r2, #0
	bne _0205C374
	ldr r0, _0205C440 ; =0x020ED570
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	ldr r0, [sp]
	mov r6, #3
	add r0, #0xc
	str r0, [sp]
_0205C35C:
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205C444
	add r5, r5, #1
	add r4, r4, #1
	cmp r5, #4
	blt _0205C35C
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0205C374:
	add r0, r2, #0
	str r0, [sp, #0xc]
	add r0, #0x50
	str r0, [sp, #0xc]
	add r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, [r2, #0x50]
	mov r2, #0x18
	add r3, r1, #0
	mul r3, r2
	ldr r2, [sp]
	add r2, r2, r3
	ldr r2, [r2, #0x18]
	cmp r0, r2
	beq _0205C3B8
	ldr r0, _0205C440 ; =0x020ED570
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	ldr r0, [sp]
	mov r6, #3
	add r0, #0xc
	str r0, [sp]
_0205C3A0:
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205C444
	add r5, r5, #1
	add r4, r4, #1
	cmp r5, #4
	blt _0205C3A0
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0205C3B8:
	ldr r0, _0205C440 ; =0x020ED570
	lsl r1, r1, #1
	ldrh r7, [r0, r1]
	ldr r0, [sp, #0xc]
	add r6, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	str r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
_0205C3CC:
	mov r0, #0x18
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp]
	add r4, r0, r1
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0205C3E6
	cmp r0, #2
	beq _0205C40C
	cmp r0, #4
	beq _0205C426
	b _0205C42A
_0205C3E6:
	ldr r0, [sp, #0xc]
	add r1, r0, r6
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _0205C42A
	mov r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r1, #0x18]
	mov r0, #0x7f
	and r0, r1
	strb r0, [r4, #0x14]
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, [r1, #0]
	bl sub_020280E0
	strb r0, [r4, #0xe]
	mov r5, #1
	b _0205C42A
_0205C40C:
	ldr r0, [sp, #0xc]
	add r0, r0, r6
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _0205C422
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #3
	bl sub_0205C444
	b _0205C42A
_0205C422:
	mov r5, #1
	b _0205C42A
_0205C426:
	mov r0, #0
	strb r0, [r4, #0xc]
_0205C42A:
	ldr r0, [sp, #8]
	add r6, r6, #1
	add r0, r0, #4
	add r7, r7, #1
	str r0, [sp, #8]
	cmp r6, #4
	blt _0205C3CC
	add r0, r5, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0205C440: .word 0x020ED570
	thumb_func_end sub_0205C340

	thumb_func_start sub_0205C444
sub_0205C444: ; 0x0205C444
	mov r3, #0x18
	mul r3, r1
	strb r2, [r0, r3]
	bx lr
	thumb_func_end sub_0205C444

	thumb_func_start sub_0205C44C
sub_0205C44C: ; 0x0205C44C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r5, r0, #0
	str r0, [sp, #0x10]
	add r0, #0xc
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r4, #0
	str r0, [sp, #0x10]
_0205C460:
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_0205B774
	add r6, r0, #0
	beq _0205C47A
	add r7, r6, #0
	add r7, #0x50
	add r0, r7, #0
	str r0, [sp, #0xc]
	add r0, #0x10
	str r0, [sp, #0xc]
	b _0205C480
_0205C47A:
	mov r7, #0
	add r0, r7, #0
	str r0, [sp, #0xc]
_0205C480:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0205C490
	cmp r0, #2
	beq _0205C4CC
	cmp r0, #4
	beq _0205C50A
	b _0205C50E
_0205C490:
	cmp r6, #0
	beq _0205C50E
	ldr r0, [sp, #0xc]
	bl sub_02025F8C
	strb r0, [r5, #0x14]
	ldr r0, [sp, #0xc]
	bl sub_02025F20
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_020280E0
	strb r0, [r5, #0xe]
	ldr r0, [r7, #0]
	ldr r3, [sp, #8]
	str r0, [r5, #0x18]
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205C340
	cmp r0, #0
	beq _0205C4C6
	mov r0, #2
	strb r0, [r5, #0xc]
	b _0205C50E
_0205C4C6:
	mov r0, #1
	strb r0, [r5, #0xc]
	b _0205C50E
_0205C4CC:
	cmp r6, #0
	bne _0205C4DC
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	mov r2, #3
	bl sub_0205C444
	b _0205C4EE
_0205C4DC:
	ldr r1, [r7, #0]
	ldr r0, [r5, #0x18]
	cmp r1, r0
	beq _0205C4EE
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	mov r2, #3
	bl sub_0205C444
_0205C4EE:
	ldr r0, [sp]
	ldr r3, [sp, #8]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205C340
	cmp r0, #0
	beq _0205C50E
	ldrb r0, [r5, #0x15]
	cmp r0, #1
	bne _0205C50E
	mov r0, #3
	strb r0, [r5, #0xc]
	b _0205C50E
_0205C50A:
	mov r0, #0
	strb r0, [r5, #0xc]
_0205C50E:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #0xa
	blt _0205C460
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205C44C

	thumb_func_start sub_0205C51C
sub_0205C51C: ; 0x0205C51C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0, #8]
	str r1, [sp, #4]
	cmp r0, #0
	bne _0205C52E
	bl GF_AssertFail
_0205C52E:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl sub_0205EABC
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl sub_0205EAC8
	ldr r4, [sp]
	str r0, [sp, #8]
	add r6, r4, #0
	mov r7, #0
	add r6, #0xc
_0205C54A:
	ldr r0, [sp, #4]
	add r1, r7, #1
	bl sub_0206251C
	add r5, r0, #0
	bne _0205C55A
	bl GF_AssertFail
_0205C55A:
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bhi _0205C64E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205C56C: ; jump table
	.short _0205C576 - _0205C56C - 2 ; case 0
	.short _0205C596 - _0205C56C - 2 ; case 1
	.short _0205C5F6 - _0205C56C - 2 ; case 2
	.short _0205C61E - _0205C56C - 2 ; case 3
	.short _0205C64A - _0205C56C - 2 ; case 4
_0205C576:
	add r0, r5, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0205C64E
	ldrb r0, [r4, #0xc]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0205C64E
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0205C6E0
	b _0205C64E
_0205C596:
	add r0, r5, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0205C64E
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0205C5B6
	mov r0, #0
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
	add r0, r6, #0
	mov r1, #1
	bl sub_0205C680
	b _0205C64E
_0205C5B6:
	add r0, r5, #0
	bl sub_020656AC
	add r0, r5, #0
	mov r1, #0
	bl sub_02062DB4
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0205C5EC
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _0205C5EC
	add r0, r5, #0
	mov r1, #3
	bl sub_020633A8
	add r0, r5, #0
	mov r1, #1
	bl sub_020629FC
	add r0, r5, #0
	mov r1, #1
	bl sub_02062A04
	mov r0, #1
	strb r0, [r4, #0x15]
_0205C5EC:
	mov r0, #2
	strb r0, [r4, #0xd]
	mov r0, #0
	strb r0, [r4, #0xc]
	b _0205C64E
_0205C5F6:
	add r0, r5, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0205C64E
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0205C7BC
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0205C616
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0205C788
_0205C616:
	add r0, r6, #0
	bl sub_0205C6BC
	b _0205C64E
_0205C61E:
	add r0, r5, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0205C64E
	add r0, r5, #0
	bl sub_020656AC
	mov r0, #4
	strb r0, [r4, #0xd]
	mov r0, #0
	strb r0, [r4, #0xc]
	strb r0, [r4, #0x15]
	add r0, r5, #0
	mov r1, #1
	bl sub_02062D64
	add r0, r5, #0
	mov r1, #0
	bl sub_02062D80
	b _0205C64E
_0205C64A:
	mov r0, #0
	strb r0, [r4, #0xd]
_0205C64E:
	add r7, r7, #1
	add r4, #0x18
	add r6, #0x18
	cmp r7, #0x32
	bge _0205C65A
	b _0205C54A
_0205C65A:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl sub_0205EB3C
	add r1, r0, #0
	ldr r2, _0205C67C ; =0x000004BC
	ldr r0, [sp]
	add r0, r0, r2
	bl sub_0205C7BC
	ldr r1, _0205C67C ; =0x000004BC
	ldr r0, [sp]
	add r0, r0, r1
	bl sub_0205C6BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205C67C: .word 0x000004BC
	thumb_func_end sub_0205C51C

	thumb_func_start sub_0205C680
sub_0205C680: ; 0x0205C680
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	cmp r0, #0
	beq _0205C69E
	bl sub_020714F0
	cmp r0, #0
	beq _0205C69A
	ldr r0, [r5, #0x10]
	bl sub_0207136C
_0205C69A:
	mov r0, #0
	str r0, [r5, #0x10]
_0205C69E:
	cmp r4, #0
	beq _0205C6BA
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0205C6BA
	bl sub_020714F0
	cmp r0, #0
	beq _0205C6B6
	ldr r0, [r5, #0x14]
	bl sub_0207136C
_0205C6B6:
	mov r0, #0
	str r0, [r5, #0x14]
_0205C6BA:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205C680

	thumb_func_start sub_0205C6BC
sub_0205C6BC: ; 0x0205C6BC
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #4]
	cmp r1, #0
	beq _0205C6DC
	ldrh r1, [r4, #6]
	sub r1, r1, #1
	strh r1, [r4, #6]
	ldrh r1, [r4, #6]
	cmp r1, #0
	bne _0205C6DC
	mov r1, #0
	bl sub_0205C680
	mov r0, #0
	strb r0, [r4, #4]
_0205C6DC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205C6BC

	thumb_func_start sub_0205C6E0
sub_0205C6E0: ; 0x0205C6E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_02062FF0
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02062FF8
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02063000
	add r6, r0, #0
	ldr r0, [sp, #4]
	cmp r7, r0
	bne _0205C710
	ldr r0, [sp, #8]
	cmp r6, r0
	beq _0205C780
_0205C710:
	ldr r0, _0205C784 ; =0x0000064F
	bl sub_02005748
	ldrb r1, [r5, #8]
	add r0, r4, #0
	bl sub_02061AD4
	add r0, r5, #0
	mov r1, #0
	bl sub_0205C680
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	add r3, r6, #0
	bl sub_02063340
	add r0, r4, #0
	mov r1, #1
	bl sub_0206296C
	add r0, r4, #0
	mov r1, #0x44
	bl sub_02065638
	add r0, r4, #0
	mov r1, #0
	bl sub_02062D64
	add r0, r4, #0
	mov r1, #1
	bl sub_02062D80
	mov r1, #1
	strb r1, [r5, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0205C780
	cmp r0, #1
	bne _0205C76E
	add r0, r4, #0
	bl ov5_021F16D4
	str r0, [r5, #0x14]
	b _0205C77C
_0205C76E:
	cmp r0, #2
	blo _0205C77C
	add r0, r4, #0
	mov r1, #2
	bl ov5_021F16D4
	str r0, [r5, #0x14]
_0205C77C:
	mov r0, #0
	strb r0, [r5, #2]
_0205C780:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205C784: .word 0x0000064F
	thumb_func_end sub_0205C6E0

	thumb_func_start sub_0205C788
sub_0205C788: ; 0x0205C788
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x43
	bl sub_02065638
	add r0, r5, #0
	mov r1, #1
	bl sub_02062DB4
	add r0, r5, #0
	mov r1, #0
	bl sub_020633A8
	add r0, r4, #0
	mov r1, #1
	bl sub_0205C680
	mov r0, #0
	strb r0, [r4, #4]
	strh r0, [r4, #6]
	mov r0, #3
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205C788

	thumb_func_start sub_0205C7BC
sub_0205C7BC: ; 0x0205C7BC
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _0205C7E0
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0205C7E0
	add r0, r1, #0
	bl ov5_021F6094
	str r0, [r4, #0x10]
	mov r0, #0x1e
	strh r0, [r4, #6]
	mov r0, #0
	strb r0, [r4, #3]
	mov r0, #1
	strb r0, [r4, #4]
_0205C7E0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205C7BC

	thumb_func_start sub_0205C7E4
sub_0205C7E4: ; 0x0205C7E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r7, r0, #0
	cmp r5, r6
	bge _0205C81E
_0205C7F0:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0206251C
	add r4, r0, #0
	bne _0205C800
	bl GF_AssertFail
_0205C800:
	add r0, r4, #0
	mov r1, #1
	bl sub_02062D64
	add r0, r4, #0
	mov r1, #0
	bl sub_02062D80
	add r0, r4, #0
	mov r1, #1
	bl sub_02062DB4
	add r5, r5, #1
	cmp r5, r6
	blt _0205C7F0
_0205C81E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205C7E4

	thumb_func_start sub_0205C820
sub_0205C820: ; 0x0205C820
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	add r7, r0, #0
	bl sub_0206251C
	add r4, r0, #0
	bne _0205C834
	bl GF_AssertFail
_0205C834:
	add r0, r4, #0
	bl sub_020655F4
	cmp r0, #1
	bne _0205C8DA
	bl sub_02036AA0
	cmp r0, #0
	bne _0205C84E
	bl sub_02036A68
	cmp r0, #0
	beq _0205C8D0
_0205C84E:
	mov r6, #0
	add r5, #0xc
_0205C852:
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _0205C8BC
	add r0, r7, #0
	add r1, r6, #1
	bl sub_0206251C
	add r4, r0, #0
	bne _0205C868
	bl GF_AssertFail
_0205C868:
	ldrb r1, [r5, #8]
	add r0, r4, #0
	bl sub_02061AD4
	add r0, r4, #0
	mov r1, #1
	bl sub_0206296C
	add r0, r4, #0
	mov r1, #0x44
	bl sub_02065638
	add r0, r4, #0
	mov r1, #0
	bl sub_02062D64
	add r0, r4, #0
	mov r1, #1
	bl sub_02062D80
	mov r0, #1
	strb r0, [r5, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0205C8BC
	cmp r0, #1
	bne _0205C8AA
	add r0, r4, #0
	mov r1, #1
	bl ov5_021F16D4
	str r0, [r5, #0x14]
	b _0205C8B8
_0205C8AA:
	cmp r0, #2
	blo _0205C8B8
	add r0, r4, #0
	mov r1, #2
	bl ov5_021F16D4
	str r0, [r5, #0x14]
_0205C8B8:
	mov r0, #0
	strb r0, [r5, #2]
_0205C8BC:
	add r6, r6, #1
	add r5, #0x18
	cmp r6, #0xa
	blt _0205C852
	add r0, r7, #0
	mov r1, #0xb
	mov r2, #0x33
	bl sub_0205C7E4
	pop {r3, r4, r5, r6, r7, pc}
_0205C8D0:
	add r0, r7, #0
	mov r1, #1
	mov r2, #0x33
	bl sub_0205C7E4
_0205C8DA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205C820

	thumb_func_start sub_0205C8DC
sub_0205C8DC: ; 0x0205C8DC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	mov r1, #0x59
	bl sub_02023790
	str r0, [r4, #0]
	mov r1, #0
	add r0, r4, #0
	str r1, [r4, #4]
	add r0, #0x14
	str r1, [r4, #8]
	bl sub_02014A9C
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end sub_0205C8DC

	thumb_func_start sub_0205C900
sub_0205C900: ; 0x0205C900
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0205C908:
	add r0, r5, #0
	bl sub_0205C8DC
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #0x1e
	blt _0205C908
	mov r0, #0xd2
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	add r0, r0, #4
	str r1, [r6, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205C900

	thumb_func_start sub_0205C924
sub_0205C924: ; 0x0205C924
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0205C938
	bl sub_020237BC
_0205C938:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0205C942
	bl sub_020237BC
_0205C942:
	pop {r4, pc}
	thumb_func_end sub_0205C924

	thumb_func_start sub_0205C944
sub_0205C944: ; 0x0205C944
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0205C94A:
	add r0, r5, #0
	bl sub_0205C924
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #0x1e
	blt _0205C94A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205C944

	thumb_func_start sub_0205C95C
sub_0205C95C: ; 0x0205C95C
	push {r4, lr}
	mov r1, #0x35
	lsl r1, r1, #4
	bl sub_02018144
	add r4, r0, #0
	bl sub_0205C900
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0205C95C

	thumb_func_start sub_0205C970
sub_0205C970: ; 0x0205C970
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C944
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0205C970