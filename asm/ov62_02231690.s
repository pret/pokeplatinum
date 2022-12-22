	.include "macros/function.inc"
	.include "include/ov62_02231690.inc"

	

	.text


	thumb_func_start ov62_02231690
ov62_02231690: ; 0x02231690
	ldr r3, _0223169C ; =sub_0200B368
	add r2, r0, #0
	mov r0, #4
	mov r1, #0x40
	bx r3
	nop
_0223169C: .word sub_0200B368
	thumb_func_end ov62_02231690

	thumb_func_start ov62_022316A0
ov62_022316A0: ; 0x022316A0
	push {r3, r4, r5}
	sub sp, #0x1c
	ldr r4, _022316CC ; =0x02248944
	add r5, r0, #0
	ldmia r4!, {r0, r1}
	add r3, sp, #0
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r5, #0x5c
	str r0, [r3, #0]
	ldrb r0, [r5]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	add sp, #0x1c
	pop {r3, r4, r5}
	bx lr
	nop
_022316CC: .word 0x02248944
	thumb_func_end ov62_022316A0

	thumb_func_start ov62_022316D0
ov62_022316D0: ; 0x022316D0
	push {r3, r4, r5}
	sub sp, #0x1c
	ldr r4, _02231708 ; =0x0224897C
	add r5, r0, #0
	ldmia r4!, {r0, r1}
	add r3, sp, #0
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _022316FA
	add sp, #0x1c
	ldr r0, _0223170C ; =0x00007E05
	pop {r3, r4, r5}
	bx lr
_022316FA:
	add r5, #0x5c
	ldrb r0, [r5]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	add sp, #0x1c
	pop {r3, r4, r5}
	bx lr
	; .align 2, 0
_02231708: .word 0x0224897C
_0223170C: .word 0x00007E05
	thumb_func_end ov62_022316D0

	thumb_func_start ov62_02231710
ov62_02231710: ; 0x02231710
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	ldr r4, _022317BC ; =0x02248998
	add r5, r0, #0
	add r2, r1, #0
	add r3, sp, #0x58
	ldmia r4!, {r0, r1}
	str r3, [sp]
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r4, _022317C0 ; =0x02248928
	str r0, [r3, #0]
	add r3, sp, #0x3c
	ldmia r4!, {r0, r1}
	mov ip, r3
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r4, _022317C4 ; =0x022489B4
	str r0, [r3, #0]
	add r3, sp, #0x20
	ldmia r4!, {r0, r1}
	add r7, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r4, _022317C8 ; =0x02248960
	str r0, [r3, #0]
	add r3, sp, #4
	ldmia r4!, {r0, r1}
	add r6, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r5, #0x5c
	str r0, [r3, #0]
	ldrb r0, [r5]
	cmp r2, #3
	bhi _022317B0
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02231784: ; jump table
	.short _0223178C - _02231784 - 2 ; case 0
	.short _02231796 - _02231784 - 2 ; case 1
	.short _022317A0 - _02231784 - 2 ; case 2
	.short _022317A8 - _02231784 - 2 ; case 3
_0223178C:
	lsl r1, r0, #2
	ldr r0, [sp]
	add sp, #0x74
	ldr r0, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_02231796:
	lsl r1, r0, #2
	mov r0, ip
	add sp, #0x74
	ldr r0, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_022317A0:
	lsl r0, r0, #2
	add sp, #0x74
	ldr r0, [r7, r0]
	pop {r4, r5, r6, r7, pc}
_022317A8:
	lsl r0, r0, #2
	add sp, #0x74
	ldr r0, [r6, r0]
	pop {r4, r5, r6, r7, pc}
_022317B0:
	bl sub_02022974
	ldr r0, [sp, #0x58]
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_022317BC: .word 0x02248998
_022317C0: .word 0x02248928
_022317C4: .word 0x022489B4
_022317C8: .word 0x02248960
	thumb_func_end ov62_02231710

	thumb_func_start ov62_022317CC
ov62_022317CC: ; 0x022317CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r1, [r5, #0x18]
	ldr r4, [r5, #0x28]
	str r1, [sp, #0x18]
	ldr r7, [r5, #0x1c]
	ldr r6, [r5, #0x14]
	mov r1, #3
	bl ov62_02231710
	add r2, r0, #0
	mov r1, #0
	mov r0, #0x12
	str r1, [sp]
	lsl r0, r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r4, #0
	mov r1, #0xa2
	mov r3, #0x66
	bl sub_02003050
	add r0, r5, #0
	mov r1, #3
	bl ov62_02231710
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x12
	lsl r0, r0, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xa2
	mov r3, #0x66
	bl sub_02003050
	add r0, r5, #0
	mov r1, #0
	bl ov62_02231710
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xa2
	mov r3, #0x66
	bl sub_02003050
	add r0, r5, #0
	mov r1, #0
	bl ov62_02231710
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xa2
	mov r3, #0x66
	bl sub_02003050
	add r1, r5, #0
	mov r0, #0x6f
	add r1, #0x5c
	lsl r0, r0, #4
	ldrb r1, [r1]
	ldr r0, [r5, r0]
	bl sub_0208B63C
	add r1, r5, #0
	mov r0, #0x6f
	add r1, #0x5c
	lsl r0, r0, #4
	ldrb r1, [r1]
	ldr r0, [r5, r0]
	bl sub_0208B63C
	ldr r1, _022318E0 ; =0x0000270F
	add r0, r7, #0
	bl sub_0200D080
	ldr r1, _022318E4 ; =0x00002710
	add r0, r7, #0
	bl sub_0200D080
	add r0, r5, #0
	mov r1, #2
	bl ov62_02231710
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _022318E0 ; =0x0000270F
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #2
	add r3, r7, #0
	bl sub_0200CDC4
	add r0, r5, #0
	mov r1, #2
	bl ov62_02231710
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _022318E4 ; =0x00002710
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r3, r7, #0
	bl sub_0200CDC4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022318E0: .word 0x0000270F
_022318E4: .word 0x00002710
	thumb_func_end ov62_022317CC

	thumb_func_start ov62_022318E8
ov62_022318E8: ; 0x022318E8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x58]
	ldr r2, _02231944 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r1, #2
	mov r3, #0
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	mov r1, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _02231944 ; =0x0000FFFF
	add r3, r1, #0
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02231944 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r1, #3
	mov r3, #0
	bl sub_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02231944 ; =0x0000FFFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r1, #1
	mov r3, #0
	bl sub_02003A2C
	add sp, #4
	pop {r3, r4, pc}
	nop
_02231944: .word 0x0000FFFF
	thumb_func_end ov62_022318E8

	thumb_func_start ov62_02231948
ov62_02231948: ; 0x02231948
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #0
	add r3, r0, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0x4b
	mov r1, #0xd
	bl sub_02007068
	ldr r1, [sp, #8]
	lsr r1, r1, #1
	str r1, [r4, #0]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02231948

	thumb_func_start ov62_0223196C
ov62_0223196C: ; 0x0223196C
	mov r2, #0x87
	lsl r2, r2, #4
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov62_0223196C

	thumb_func_start ov62_02231974
ov62_02231974: ; 0x02231974
	mov r1, #0x87
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov62_02231974

	thumb_func_start ov62_0223197C
ov62_0223197C: ; 0x0223197C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r4, _02231A10 ; =0x000008A4
	add r6, r1, #0
	add r5, r0, #0
	sub r1, r4, #4
	ldr r1, [r5, r1]
	cmp r1, #1
	beq _02231A0C
	mov r2, #1
	sub r1, r4, #4
	str r2, [r5, r1]
	mov r1, #6
	mov r2, #0
	bl ov62_022302A8
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, _02231A14 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	mov r0, #6
	bl sub_02019060
	add r0, r5, r4
	bl sub_0201A7A0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r5, r4
	mov r2, #6
	mov r3, #1
	bl sub_0201A7E8
	ldr r0, [r5, #0x48]
	add r1, r6, #0
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, r4
	mov r1, #0xcc
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231A18 ; =0x000F0D0C
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, r4
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
_02231A0C:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02231A10: .word 0x000008A4
_02231A14: .word 0x04001050
_02231A18: .word 0x000F0D0C
	thumb_func_end ov62_0223197C

	thumb_func_start ov62_02231A1C
ov62_02231A1C: ; 0x02231A1C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x8a
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02231A78
	mov r1, #0
	str r1, [r4, r0]
	add r0, r0, #4
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _02231A7C ; =0x000008A4
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #6
	mov r1, #2
	bl sub_02019060
	mov r0, #8
	str r0, [sp]
	ldr r0, _02231A80 ; =0x04000050
	mov r1, #4
	mov r2, #0x12
	mov r3, #7
	bl G2x_SetBlendAlpha_
	mov r0, #8
	str r0, [sp]
	ldr r0, _02231A84 ; =0x04001050
	mov r1, #4
	mov r2, #0x12
	mov r3, #7
	bl G2x_SetBlendAlpha_
_02231A78:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02231A7C: .word 0x000008A4
_02231A80: .word 0x04000050
_02231A84: .word 0x04001050
	thumb_func_end ov62_02231A1C

	thumb_func_start ov62_02231A88
ov62_02231A88: ; 0x02231A88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02231AA8 ; =0x000008A4
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _02231AA8 ; =0x000008A4
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	pop {r4, pc}
	nop
_02231AA8: .word 0x000008A4
	thumb_func_end ov62_02231A88

	thumb_func_start ov62_02231AAC
ov62_02231AAC: ; 0x02231AAC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r4, _02231B34 ; =0x000008A4
	add r6, r1, #0
	add r5, r0, #0
	sub r1, r4, #4
	ldr r1, [r5, r1]
	cmp r1, #1
	beq _02231B30
	mov r2, #1
	sub r1, r4, #4
	str r2, [r5, r1]
	mov r1, #2
	mov r2, #0
	bl ov62_022302A8
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	add r0, r5, r4
	bl sub_0201A7A0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r5, r4
	mov r2, #2
	mov r3, #1
	bl sub_0201A7E8
	ldr r0, [r5, #0x48]
	add r1, r6, #0
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, r4
	mov r1, #0xcc
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231B38 ; =0x000F0D0C
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, r4
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
_02231B30:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02231B34: .word 0x000008A4
_02231B38: .word 0x000F0D0C
	thumb_func_end ov62_02231AAC

	thumb_func_start ov62_02231B3C
ov62_02231B3C: ; 0x02231B3C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, _02231B84 ; =0x000008A4
	add r5, r0, #0
	sub r0, r6, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02231B80
	ldr r0, [r5, #0x48]
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, r6
	mov r1, #0xcc
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231B88 ; =0x000F0D0C
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, r6
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, r6
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_020237BC
_02231B80:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02231B84: .word 0x000008A4
_02231B88: .word 0x000F0D0C
	thumb_func_end ov62_02231B3C

	thumb_func_start ov62_02231B8C
ov62_02231B8C: ; 0x02231B8C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x8a
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02231BBE
	mov r1, #0
	str r1, [r4, r0]
	add r0, r0, #4
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _02231BC0 ; =0x000008A4
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
_02231BBE:
	pop {r4, pc}
	; .align 2, 0
_02231BC0: .word 0x000008A4
	thumb_func_end ov62_02231B8C

	thumb_func_start ov62_02231BC4
ov62_02231BC4: ; 0x02231BC4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r4, _02231C6C ; =0x000008A4
	add r5, r0, #0
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r6, r1, #0
	cmp r0, #1
	beq _02231C66
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	cmp r0, #1
	beq _02231C66
	mov r1, #1
	sub r0, r4, #4
	str r1, [r5, r0]
	add r0, r4, #0
	sub r0, #8
	str r1, [r5, r0]
	ldr r0, _02231C70 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	mov r0, #6
	bl sub_02019060
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl ov62_022302A8
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	add r0, r5, r4
	bl sub_0201A7A0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r5, r4
	mov r2, #6
	mov r3, #1
	bl sub_0201A7E8
	ldr r0, [r5, #0x48]
	add r1, r6, #0
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, r4
	mov r1, #0xcc
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231C74 ; =0x000F0D0C
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, r4
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
_02231C66:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02231C6C: .word 0x000008A4
_02231C70: .word 0x04001050
_02231C74: .word 0x000F0D0C
	thumb_func_end ov62_02231BC4

	thumb_func_start ov62_02231C78
ov62_02231C78: ; 0x02231C78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xd8
	ldr r3, _02232004 ; =0x02248A28
	add r7, r1, #0
	str r0, [sp, #0x14]
	add r2, sp, #0x88
	mov r1, #0x28
_02231C86:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02231C86
	ldr r4, _02232008 ; =0x022489F8
	add r3, sp, #0x58
	mov r2, #6
_02231C98:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02231C98
	mov r0, #1
	str r0, [sp, #0x24]
	mov r0, #0
	ldr r4, [sp, #0x14]
	str r0, [sp, #0x28]
	add r0, sp, #0x58
	add r4, #0xc
	str r0, [sp, #0x1c]
	add r5, sp, #0x88
_02231CB2:
	ldr r1, [sp, #0x1c]
	ldr r0, [r7, #0x48]
	ldr r1, [r1, #0]
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0201A7A0
	mov r0, #2
	ldrsh r0, [r5, r0]
	mov r3, #0
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #4
	ldrsh r0, [r5, r0]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #6
	ldrsh r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrsh r3, [r5, r3]
	ldr r0, [r7, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r1, r6, #0
	bl ov62_0223429C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201A9A4
	mov r0, #4
	ldrsh r1, [r5, r0]
	mov r0, #6
	ldrsh r0, [r5, r0]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x24]
	add r0, r0, r2
	str r0, [sp, #0x24]
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	add r4, #0x10
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #8
	blt _02231CB2
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	str r0, [sp, #0x20]
	mov r0, #0x66
	bl ov62_02231690
	add r4, r0, #0
	ldr r5, [sp, #0x14]
	ldr r0, [sp, #0x20]
	mov r1, #0x66
	add r5, #0xc
	bl sub_02030B94
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x2c]
	add r0, r7, #0
	bl ov62_022349A8
	ldr r0, [r7, #0x48]
	mov r1, #0xd
	bl sub_0200B1EC
	str r0, [sp, #0x30]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0200B48C
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r6, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C ; =0x000F0D00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A9A4
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	ldr r0, [sp, #0x30]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200C41C
	ldr r0, [sp, #0x20]
	bl sub_02030CCC
	str r0, [sp, #0x34]
	ldr r5, [sp, #0x14]
	ldr r0, [r7, #0x48]
	mov r1, #0xf
	add r5, #0x2c
	bl sub_0200B1EC
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x20]
	mov r1, #0x66
	bl sub_02030B94
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0x3c]
	add r0, r7, #0
	bl ov62_022349A8
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r6, r0, #0
	ldr r2, [sp, #0x34]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200C2E0
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r6, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C ; =0x000F0D00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A9A4
	ldr r0, [sp, #0x38]
	bl sub_020237BC
	ldr r0, [sp, #0x3c]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200C41C
	ldr r5, [sp, #0x14]
	ldr r0, [r7, #0x48]
	add r5, #0x3c
	mov r1, #0x10
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r6, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C ; =0x000F0D00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x20]
	bl sub_02030BFC
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_02030C08
	ldr r5, [sp, #0x14]
	str r0, [sp, #0x40]
	add r5, #0x4c
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	cmp r6, #0
	bne _02231F18
	ldr r0, [r7, #0x48]
	mov r1, #0x15
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C ; =0x000F0D00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	b _02231FD2
_02231F18:
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x44]
	ldr r0, [r7, #0x48]
	mov r1, #0x16
	bl sub_0200B1EC
	str r0, [sp, #0x48]
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0200BDD0
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x48]
	add r0, r4, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C ; =0x000F0D00
	ldr r2, [sp, #0x44]
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A9A4
	ldr r0, [sp, #0x44]
	bl sub_020237BC
	ldr r0, [sp, #0x48]
	bl sub_020237BC
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _02231FD2
	ldr r0, [sp, #0x14]
	mov r1, #0
	str r0, [sp, #0x18]
	add r0, #0x5c
	str r0, [sp, #0x18]
	bl sub_0201ADA4
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r5, r0, #0
	ldr r0, [r7, #0x48]
	mov r1, #0x17
	bl sub_0200B1EC
	str r0, [sp, #0x4c]
	ldr r3, [sp, #0x40]
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0200BE08
	ldr r2, [sp, #0x4c]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r3, #4
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	bl sub_0201A9A4
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, [sp, #0x4c]
	bl sub_020237BC
_02231FD2:
	add r0, r4, #0
	bl sub_0200C41C
	ldr r5, [sp, #0x14]
	ldr r0, [r7, #0x48]
	add r5, #0x6c
	mov r1, #0x11
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r6, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C ; =0x000F0D00
	b _02232010
	; .align 2, 0
_02232004: .word 0x02248A28
_02232008: .word 0x022489F8
_0223200C: .word 0x000F0D00
_02232010:
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	add r1, sp, #0x50
	add r0, #0x7c
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	mov r2, #0x66
	bl sub_02030C28
	add r5, r0, #0
	bne _02232046
	add r0, sp, #0x50
	mov r1, #0x66
	bl sub_02014B34
	add r5, r0, #0
_02232046:
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223207C ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_0201A9A4
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B3F0
	add sp, #0xd8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223207C: .word 0x000F0D00
	thumb_func_end ov62_02231C78

	thumb_func_start ov62_02232080
ov62_02232080: ; 0x02232080
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0xc
_02232088:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _02232088
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02232080

	thumb_func_start ov62_022320A0
ov62_022320A0: ; 0x022320A0
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022320AC
	bl sub_0200D3F4
_022320AC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_022320A0

	thumb_func_start ov62_022320B0
ov62_022320B0: ; 0x022320B0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r1, _022320E8 ; =0x000186A0
	bl sub_0200D070
	ldr r0, [r5, #0x1c]
	ldr r1, _022320E8 ; =0x000186A0
	bl sub_0200D080
	ldr r0, [r5, #0x1c]
	ldr r1, _022320E8 ; =0x000186A0
	bl sub_0200D090
	ldr r0, [r5, #0x1c]
	ldr r1, _022320E8 ; =0x000186A0
	bl sub_0200D0A0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022320E4
	bl sub_0200D0F4
	mov r0, #0
	str r0, [r4, #4]
_022320E4:
	pop {r3, r4, r5, pc}
	nop
_022320E8: .word 0x000186A0
	thumb_func_end ov62_022320B0

	thumb_func_start ov62_022320EC
ov62_022320EC: ; 0x022320EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	add r0, r1, #0
	ldr r6, [r1, #0x18]
	ldr r4, [r0, #0x1c]
	ldr r7, [r0, #0x28]
	str r1, [sp, #0x18]
	bl sub_02079FD0
	mov r1, #0x13
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _022321F0 ; =0x000186A0
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_0200CD7C
	str r0, [sp, #0x1c]
	bl sub_02079FDC
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _022321F0 ; =0x000186A0
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x13
	bl sub_0200CE0C
	bl sub_02079FE8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _022321F0 ; =0x000186A0
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x13
	bl sub_0200CE3C
	ldr r0, [r5, #0]
	bl sub_02030BBC
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl sub_02030BCC
	str r0, [sp, #0x20]
	ldr r0, [r5, #0]
	bl sub_02030BEC
	str r0, [sp, #0x24]
	cmp r7, #0
	beq _022321EC
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r7, #0
	bl sub_02079D8C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022321F0 ; =0x000186A0
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #0x13
	bl sub_0200D888
	mov r1, #0x4c
	add r0, sp, #0x28
	strh r1, [r0]
	mov r1, #0x3c
	strh r1, [r0, #2]
	mov r2, #0
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, _022321F0 ; =0x000186A0
	mov r1, #1
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	sub r0, r1, #2
	str r1, [sp, #0x38]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x30]
	str r2, [sp, #0x34]
	str r2, [sp, #0x54]
	str r2, [sp, #0x58]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	add r2, sp, #0x28
	bl sub_0200CE6C
	str r0, [r5, #4]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	add r0, r7, #0
	bl sub_02079EDC
	add r2, r0, #0
	ldr r1, [sp, #0x1c]
	ldr r0, [r5, #4]
	add r1, r1, r2
	bl sub_0200D430
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0200D364
_022321EC:
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022321F0: .word 0x000186A0
	thumb_func_end ov62_022320EC

	thumb_func_start ov62_022321F4
ov62_022321F4: ; 0x022321F4
	ldr r3, _022321FC ; =sub_0200D3F4
	ldr r0, [r0, #8]
	bx r3
	nop
_022321FC: .word sub_0200D3F4
	thumb_func_end ov62_022321F4

	thumb_func_start ov62_02232200
ov62_02232200: ; 0x02232200
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _02232230 ; =0x0002869F
	bl sub_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _02232230 ; =0x0002869F
	bl sub_0200D080
	ldr r0, [r4, #0x1c]
	ldr r1, _02232230 ; =0x0002869F
	bl sub_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _02232230 ; =0x0002869F
	bl sub_0200D0A0
	ldr r0, [r5, #8]
	bl sub_0200D0F4
	pop {r3, r4, r5, pc}
	nop
_02232230: .word 0x0002869F
	thumb_func_end ov62_02232200

	thumb_func_start ov62_02232234
ov62_02232234: ; 0x02232234
	push {r4, lr}
	add r4, r1, #0
	cmp r0, #0x10
	bgt _02232240
	cmp r0, #0
	bge _02232246
_02232240:
	bl sub_02022974
	mov r0, #0
_02232246:
	cmp r4, #4
	bne _02232252
	mov r1, #0x4f
	lsl r1, r1, #2
	add r0, r0, r1
	pop {r4, pc}
_02232252:
	cmp r4, #5
	blt _0223225A
	mov r0, #0
	pop {r4, pc}
_0223225A:
	lsl r2, r0, #4
	ldr r0, _02232268 ; =0x02248AD8
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, pc}
	nop
_02232268: .word 0x02248AD8
	thumb_func_end ov62_02232234

	thumb_func_start ov62_0223226C
ov62_0223226C: ; 0x0223226C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	mov r0, #0xe
	str r0, [sp, #0x20]
	ldr r0, [r5, #0]
	str r1, [sp, #0x18]
	mov r7, #0xd
	bl sub_02030BAC
	ldr r1, [sp, #0x18]
	ldr r2, _02232370 ; =0x0000086C
	ldr r6, [r1, #0x18]
	ldr r4, [r1, #0x1c]
	ldr r1, [r1, #0x28]
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x18]
	ldr r1, [r1, r2]
	cmp r1, #0
	bne _022322A0
	cmp r0, #1
	bne _022322C4
	mov r0, #0x10
	mov r7, #0xf
	str r0, [sp, #0x20]
	b _022322C4
_022322A0:
	ldr r0, [r5, #0]
	bl sub_02030CDC
	str r0, [sp, #0x1c]
	cmp r0, #0x10
	blt _022322B0
	mov r0, #0
	str r0, [sp, #0x1c]
_022322B0:
	ldr r0, [sp, #0x1c]
	mov r1, #2
	bl ov62_02232234
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	mov r1, #3
	bl ov62_02232234
	str r0, [sp, #0x20]
_022322C4:
	mov r0, #0x92
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02232374 ; =0x0002869F
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	add r3, r4, #0
	bl sub_0200CD7C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02232374 ; =0x0002869F
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x92
	mov r3, #9
	bl sub_0200CE0C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02232374 ; =0x0002869F
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x92
	mov r3, #0xa
	bl sub_0200CE3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02232374 ; =0x0002869F
	ldr r3, [sp, #0x20]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x92
	bl sub_0200D888
	mov r1, #0x28
	add r0, sp, #0x28
	strh r1, [r0]
	mov r1, #0x3c
	strh r1, [r0, #2]
	mov r2, #0
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, _02232374 ; =0x0002869F
	mov r1, #1
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	sub r0, r1, #2
	str r1, [sp, #0x38]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x30]
	str r2, [sp, #0x34]
	str r2, [sp, #0x54]
	str r2, [sp, #0x58]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	add r2, sp, #0x28
	bl sub_0200CE6C
	str r0, [r5, #8]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [r5, #8]
	bl sub_0200D330
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02232370: .word 0x0000086C
_02232374: .word 0x0002869F
	thumb_func_end ov62_0223226C

	thumb_func_start ov62_02232378
ov62_02232378: ; 0x02232378
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov62_02231C78
	add r0, r5, #0
	add r1, r4, #0
	bl ov62_0223226C
	add r0, r5, #0
	add r1, r4, #0
	bl ov62_022320EC
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02232378

	thumb_func_start ov62_02232394
ov62_02232394: ; 0x02232394
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov62_02232080
	add r0, r5, #0
	mov r1, #0
	bl ov62_022323B8
	add r0, r5, #0
	add r1, r4, #0
	bl ov62_02232200
	add r0, r5, #0
	add r1, r4, #0
	bl ov62_022320B0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02232394

	thumb_func_start ov62_022323B8
ov62_022323B8: ; 0x022323B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov62_022320A0
	add r0, r5, #0
	add r1, r4, #0
	bl ov62_022321F4
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_022323B8

	thumb_func_start ov62_022323CC
ov62_022323CC: ; 0x022323CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _02232498 ; =0x0000088C
	add r4, r1, #0
	ldr r0, [r4, r0]
	bl sub_02030BFC
	str r0, [sp, #0x10]
	ldr r0, _02232498 ; =0x0000088C
	ldr r0, [r4, r0]
	bl sub_02030C08
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	add r5, #0x18
	cmp r0, #0
	bne _02232400
	cmp r6, #0
	bne _02232400
	ldr r0, [r4, #0x48]
	mov r1, #0x7d
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	b _0223246C
_02232400:
	mov r0, #0x66
	bl ov62_02231690
	add r7, r0, #0
	cmp r6, #0
	beq _02232438
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x48]
	mov r1, #0x17
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	mov r1, #0
	add r3, r6, #0
	bl sub_0200BE08
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0200C388
	b _02232460
_02232438:
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x48]
	mov r1, #0x16
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	mov r1, #0
	bl sub_0200BDD0
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0200C388
_02232460:
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B3F0
_0223246C:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223249C ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A9A4
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232498: .word 0x0000088C
_0223249C: .word 0x000F0D00
	thumb_func_end ov62_022323CC

	thumb_func_start ov62_022324A0
ov62_022324A0: ; 0x022324A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r0, [sp, #0x18]
	add r0, #0x18
	add r4, r2, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	str r1, [sp, #0x14]
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r5, #0xc]
	ldr r0, [r4, #0x24]
	str r0, [r5, #0x10]
	str r4, [r5, #0x28]
	add r0, r1, #0
	ldr r0, [r0, #0x48]
	str r0, [r5, #0x34]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x10]
	bl _s32_div_f
	add r0, r0, #1
	str r0, [r5, #0x14]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bge _022324E6
	str r1, [r5, #0x10]
	sub r0, r1, #1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x10]
	sub r0, r0, #1
	str r0, [r5, #0x44]
_022324E6:
	ldr r0, [sp, #0x18]
	bl sub_0201A7A0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, [r4, #0x20]
	ldr r3, [r4, #0xc]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x24]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r0, [sp, #0x18]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x10]
	mov r7, #0
	cmp r0, #0
	ble _02232584
	add r6, r7, #0
_02232538:
	ldr r1, [r4, #0]
	ldr r0, [r5, #0x34]
	ldr r1, [r1, r6]
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
	ldr r0, [r4, #8]
	mov r1, #0
	lsl r0, r0, #4
	mul r0, r7
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232590 ; =0x000F0D00
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r3, r1, #0
	bl sub_0201D78C
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [r4, #0]
	ldr r0, [r0, r6]
	cmp r0, #0x10
	bne _0223257A
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov62_022323CC
_0223257A:
	ldr r0, [r5, #0x10]
	add r7, r7, #1
	add r6, #0x10
	cmp r7, r0
	blt _02232538
_02232584:
	ldr r0, [sp, #0x18]
	bl sub_0201A9A4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232590: .word 0x000F0D00
	thumb_func_end ov62_022324A0

	thumb_func_start ov62_02232594
ov62_02232594: ; 0x02232594
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	str r0, [sp, #0x20]
	add r0, #0x18
	add r5, r3, #0
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	str r1, [sp, #0x14]
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x24]
	cmp r2, #0
	str r0, [r4, #0x10]
	str r5, [r4, #0x28]
	beq _022325BC
	str r2, [r4, #0x34]
	b _022325C2
_022325BC:
	add r0, r1, #0
	ldr r0, [r0, #0x48]
	str r0, [r4, #0x34]
_022325C2:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	add r0, r0, #1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x10]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #0x44]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bge _022325F6
	str r1, [r4, #0x10]
	sub r0, r1, #1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x44]
_022325F6:
	ldr r0, [sp, #0x20]
	bl sub_0201A7A0
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #0x20]
	ldr r3, [r5, #0xc]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x24]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r0, [sp, #0x20]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0223268C
	ldr r0, [r4, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _0223268A
	add r7, r6, #0
_0223264E:
	ldr r1, [r5, #0]
	ldr r0, [r4, #0x34]
	ldr r1, [r1, r7]
	bl sub_0200B1EC
	str r0, [sp, #0x24]
	ldr r0, [r5, #8]
	mov r1, #0
	lsl r0, r0, #4
	mul r0, r6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232770 ; =0x000F0D00
	ldr r2, [sp, #0x24]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r3, r1, #0
	bl sub_0201D78C
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	ldr r0, [r4, #0x10]
	add r6, r6, #1
	add r7, #0x10
	cmp r6, r0
	blt _0223264E
_0223268A:
	b _02232766
_0223268C:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ble _02232766
	ldr r0, [sp, #0x14]
	mov r5, #4
	str r0, [sp, #0x1c]
_0223269C:
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x14]
	mov r1, #0x63
	ldr r0, [r0, #0x48]
	bl sub_0200B1EC
	str r0, [sp, #0x28]
	mov r0, #1
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r1, #1
	mov r2, #2
	mov r3, #1
	bl sub_020238A0
	ldr r2, [sp, #0x1c]
	ldr r1, _02232774 ; =0x00002608
	add r0, r7, #0
	ldr r1, [r2, r1]
	bl sub_02023D28
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	bl ov62_022349A8
	mov r0, #0
	ldr r1, [sp, #0x2c]
	add r2, r0, #0
	bl sub_02002D7C
	mov ip, r0
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232770 ; =0x000F0D00
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	mov r3, #0x10
	mov r6, ip
	mov r1, #0
	sub r3, r3, r6
	bl sub_0201D78C
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232770 ; =0x000F0D00
	ldr r2, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	mov r1, #0
	mov r3, #0x10
	bl sub_0201D78C
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232770 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r2, r7, #0
	mov r3, #0x16
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	ldr r1, [r4, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r5, #0x18
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r1
	blt _0223269C
_02232766:
	ldr r0, [sp, #0x20]
	bl sub_0201A9A4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02232770: .word 0x000F0D00
_02232774: .word 0x00002608
	thumb_func_end ov62_02232594

	thumb_func_start ov62_02232778
ov62_02232778: ; 0x02232778
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xe0
	add r4, r0, #0
	ldr r0, [sp, #0x2f4]
	add r5, r3, #0
	str r0, [sp, #0x2f4]
	ldr r0, [sp, #0x2f8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x2f8]
	mov r0, #0
	str r0, [sp, #0x40]
	add r6, sp, #0x264
	add r1, r0, #0
	mov r3, #7
_02232796:
	stmia r6!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r3, r3, #1
	bne _02232796
	stmia r6!, {r0, r1}
	add r0, r4, #0
	str r0, [sp, #0x50]
	add r0, #0x18
	str r0, [sp, #0x50]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x24]
	cmp r2, #0
	str r0, [r4, #0x10]
	str r5, [r4, #0x28]
	beq _022327C0
	str r2, [r4, #0x34]
	b _022327C6
_022327C0:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x48]
	str r0, [r4, #0x34]
_022327C6:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	add r0, r0, #1
	str r0, [r4, #0x14]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bge _022327E6
	str r1, [r4, #0x10]
	sub r0, r1, #1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x44]
_022327E6:
	ldr r1, [r4, #0x10]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x10]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #0x44]
	ldr r0, [sp, #0x50]
	bl sub_0201A7A0
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #0x50]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #0x20]
	ldr r3, [r5, #0xc]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x24]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r0, [sp, #0x50]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x66
	bl ov62_02231690
	add r2, sp, #0x58
	ldr r3, _02232AA4 ; =0x022488F8
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r6, #1
	str r0, [r2, #0]
	ldr r0, [r4, #0x28]
	ldr r1, [r0, #0]
	ldr r0, [r1, #8]
	str r0, [sp, #0x38]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [sp, #0x264]
	ldr r0, [sp, #0x2f4]
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	cmp r1, #1
	ble _022328B0
	add r0, r1, #0
	mov r2, #0x10
	add r3, sp, #0x268
	mov ip, r0
_0223287C:
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0]
	add r0, r0, r2
	ldr r1, [r0, #0xc]
	ldr r7, [r0, #8]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x54]
	eor r1, r0
	ldr r0, [sp, #0x38]
	eor r0, r7
	orr r0, r1
	bne _0223289A
	ldr r0, [sp, #0x40]
	str r0, [r3, #0]
	b _022328A4
_0223289A:
	ldr r0, [sp, #0x54]
	str r7, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r6, [r3, #0]
	str r6, [sp, #0x40]
_022328A4:
	add r6, r6, #1
	mov r0, ip
	add r2, #0x10
	add r3, r3, #4
	cmp r6, r0
	blt _0223287C
_022328B0:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bgt _022328BC
	b _02232A90
_022328BC:
	add r0, sp, #0x264
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x2f4]
	ldr r6, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r0, #0x58
	str r0, [sp, #0x1c]
_022328CA:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0x48]
	bl sub_0200B1EC
	str r0, [sp, #0x4c]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x48]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2f4]
	cmp r0, #0
	beq _02232904
	cmp r0, #1
	beq _0223292A
	cmp r0, #2
	beq _0223294A
	b _02232984
_02232904:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x34]
	ldr r1, [r1, #0]
	add r1, r1, r6
	ldr r1, [r1, #4]
	bl sub_0200B1EC
	str r0, [sp, #0x44]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x44]
	add r0, r5, #0
	mov r1, #1
	mov r3, #0
	bl sub_0200B48C
	b _02232984
_0223292A:
	ldr r0, [r4, #0x28]
	mov r1, #0x66
	ldr r0, [r0, #0]
	add r0, r0, r6
	ldr r0, [r0, #4]
	str r0, [sp, #0x30]
	mov r0, #0xff
	bl sub_02023790
	str r0, [sp, #0x44]
	ldr r2, [sp, #0x30]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200C2E0
	b _02232984
_0223294A:
	ldr r0, [r4, #0x28]
	mov r1, #0x66
	ldr r0, [r0, #0]
	add r0, r0, r6
	ldr r0, [r0, #4]
	str r0, [sp, #0x2c]
	mov r0, #0xff
	bl sub_02023790
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x2c]
	mov r1, #0x66
	add r2, sp, #0x64
	bl sub_0200B274
	ldr r0, [sp, #0x44]
	add r1, sp, #0x64
	bl sub_02023D28
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x44]
	add r0, r5, #0
	mov r1, #1
	mov r3, #0
	bl sub_0200B48C
_02232984:
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0]
	add r1, r0, r6
	ldr r0, [r1, #8]
	str r0, [sp, #0x24]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl ov62_0223438C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	bl sub_020239D4
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x48]
	ldr r1, [r1, #0]
	mov r2, #2
	add r1, r1, #1
	mov r3, #1
	bl sub_020238A0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x48]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_0200B48C
	ldr r2, [sp, #0x4c]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0200C388
	ldr r0, [r4, #0x28]
	add r2, r7, #0
	ldr r0, [r0, #8]
	lsl r1, r0, #4
	ldr r0, [sp, #0x18]
	mul r1, r0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232AA8 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x50]
	add r3, r1, #0
	bl sub_0201D78C
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #8]
	cmp r0, #2
	bne _02232A56
	ldr r0, [sp, #0x2f8]
	cmp r0, #0
	beq _02232A56
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	add r0, r5, #0
	mov r1, #2
	mov r3, #0
	bl sub_0200B48C
	ldr r2, [sp, #0x2f8]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0200C388
	ldr r0, [r4, #0x28]
	add r2, r7, #0
	ldr r0, [r0, #8]
	mov r3, #0x10
	lsl r1, r0, #4
	ldr r0, [sp, #0x18]
	mul r1, r0
	add r1, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232AA8 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x50]
	bl sub_0201D78C
_02232A56:
	ldr r0, [sp, #0x4c]
	bl sub_020237BC
	ldr r0, [sp, #0x48]
	bl sub_020237BC
	ldr r0, [sp, #0x44]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x34]
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0200C41C
	ldr r0, [sp, #0x20]
	ldr r1, [r4, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r6, #0x10
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r1
	bge _02232A90
	b _022328CA
_02232A90:
	ldr r0, [sp, #0x50]
	bl sub_0201A9A4
	add r0, r5, #0
	bl sub_0200B3F0
	add sp, #0x1fc
	add sp, #0xe0
	pop {r4, r5, r6, r7, pc}
	nop
_02232AA4: .word 0x022488F8
_02232AA8: .word 0x000F0D00
	thumb_func_end ov62_02232778

	thumb_func_start ov62_02232AAC
ov62_02232AAC: ; 0x02232AAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	str r0, [sp, #0x14]
	add r0, #0x18
	add r7, r2, #0
	str r0, [sp, #0x14]
	ldr r0, [r7, #4]
	add r4, r1, #0
	str r0, [r6, #4]
	mov r0, #0
	str r0, [r6, #0]
	str r0, [r6, #0xc]
	ldr r0, [r7, #0x24]
	add r5, r3, #0
	str r0, [r6, #0x10]
	str r7, [r6, #0x28]
	ldr r0, [r4, #0x48]
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	bl _s32_div_f
	add r0, r0, #1
	str r0, [r6, #0x14]
	ldr r1, [r6, #0x10]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r6, #0x40]
	ldr r1, [r6, #0x10]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r6, #0x44]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	bge _02232B06
	str r1, [r6, #0x10]
	sub r0, r1, #1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x10]
	sub r0, r0, #1
	str r0, [r6, #0x44]
_02232B06:
	mov r0, #1
	str r0, [r6, #0x48]
	ldr r0, [sp, #0x14]
	bl sub_0201A7A0
	ldr r0, [r7, #0x10]
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r7, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r7, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, [r7, #0x20]
	ldr r3, [r7, #0xc]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r4, #0x24]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r6, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _02232BA6
_02232B58:
	ldr r0, [r7, #8]
	mov r1, #0
	lsl r0, r0, #3
	mul r0, r4
	add r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232BB0 ; =0x000F0D00
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #0]
	bl sub_0201D78C
	ldr r0, [r7, #8]
	mov r1, #0
	lsl r0, r0, #3
	mul r0, r4
	add r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232BB0 ; =0x000F0D00
	mov r3, #0x88
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #4]
	bl sub_0201D78C
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _02232B58
_02232BA6:
	ldr r0, [sp, #0x14]
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02232BB0: .word 0x000F0D00
	thumb_func_end ov62_02232AAC

	thumb_func_start ov62_02232BB4
ov62_02232BB4: ; 0x02232BB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0x38]
	ldr r0, [r5, #0xc]
	add r4, r2, #0
	cmp r1, r0
	bne _02232BCA
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232BCA:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _02232BD8
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232BD8:
	add r7, r5, #0
	add r7, #0x18
	add r0, r7, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r3, [r5, #0x40]
	ldr r1, [r5, #0x3c]
	mov r0, #0
	cmp r1, r3
	blt _02232C00
	ldr r2, [r5, #0x38]
	ldr r1, [r5, #4]
	sub r0, r2, r3
	add r3, r3, #1
	sub r3, r1, r3
	cmp r2, r3
	blt _02232C00
	ldr r0, [r5, #0x10]
	sub r0, r1, r0
_02232C00:
	ldr r1, [r5, #0x10]
	mov r6, #0
	cmp r1, #0
	ble _02232C62
	lsl r0, r0, #3
	add r4, r4, r0
_02232C0C:
	ldr r2, [r4, #0]
	cmp r2, #0
	beq _02232C58
	ldr r0, [r5, #0x28]
	mov r1, #0
	ldr r0, [r0, #8]
	add r3, r1, #0
	lsl r0, r0, #3
	mul r0, r6
	add r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232C74 ; =0x000F0D00
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_0201D78C
	ldr r0, [r5, #0x28]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r3, #0x88
	lsl r0, r0, #3
	mul r0, r6
	add r0, r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232C74 ; =0x000F0D00
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	add r0, r7, #0
	bl sub_0201D78C
_02232C58:
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _02232C0C
_02232C62:
	add r0, r7, #0
	bl sub_0201A954
	ldr r0, [r5, #0x38]
	str r0, [r5, #0xc]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232C74: .word 0x000F0D00
	thumb_func_end ov62_02232BB4

	thumb_func_start ov62_02232C78
ov62_02232C78: ; 0x02232C78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xe8
	add r4, r0, #0
	ldr r0, [sp, #0x2f8]
	str r1, [sp, #0x10]
	str r0, [sp, #0x2f8]
	mov r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	str r3, [sp, #0x14]
	cmp r1, r0
	bne _02232C9A
	add sp, #0x1fc
	add sp, #0xe8
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02232C9A:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _02232CAA
	add sp, #0x1fc
	add sp, #0xe8
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02232CAA:
	add r0, r4, #0
	str r0, [sp, #0x58]
	add r0, #0x18
	str r0, [sp, #0x58]
	mov r0, #0x66
	bl ov62_02231690
	add r5, r0, #0
	ldr r0, [sp, #0x58]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp, #0x44]
	str r0, [sp, #0x40]
	mov r0, #8
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x10]
	add r3, sp, #0x26c
	str r0, [sp, #0x18]
	add r0, r0, r1
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x44]
	mov r2, #7
	add r1, r0, #0
_02232CDC:
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02232CDC
	stmia r3!, {r0, r1}
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x34]
	cmp r0, r1
	blt _02232CF6
	ldr r0, [r4, #0x10]
	str r1, [sp, #0x34]
	sub r0, r1, r0
	str r0, [sp, #0x18]
_02232CF6:
	ldr r3, _02232F60 ; =0x02248904
	add r2, sp, #0x60
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r6, #1
	str r0, [r2, #0]
	ldr r0, [r4, #0x28]
	ldr r1, [r0, #0]
	ldr r0, [r1, #8]
	str r0, [sp, #0x38]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [sp, #0x26c]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	cmp r1, #1
	ble _02232D5C
	add r0, r1, #0
	mov r2, #0x10
	add r3, sp, #0x270
	mov ip, r0
_02232D28:
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0]
	add r0, r0, r2
	ldr r1, [r0, #0xc]
	ldr r7, [r0, #8]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x5c]
	eor r1, r0
	ldr r0, [sp, #0x38]
	eor r0, r7
	orr r0, r1
	bne _02232D46
	ldr r0, [sp, #0x40]
	str r0, [r3, #0]
	b _02232D50
_02232D46:
	ldr r0, [sp, #0x5c]
	str r7, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r6, [r3, #0]
	str r6, [sp, #0x40]
_02232D50:
	add r6, r6, #1
	mov r0, ip
	add r2, #0x10
	add r3, r3, #4
	cmp r6, r0
	blt _02232D28
_02232D5C:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x34]
	cmp r1, r0
	blt _02232D66
	b _02232F46
_02232D66:
	add r0, r1, #0
	lsl r6, r0, #4
	add r1, sp, #0x26c
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	add r0, #0x58
	str r0, [sp, #0x1c]
_02232D7A:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0x48]
	bl sub_0200B1EC
	str r0, [sp, #0x54]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x50]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02232DB4
	cmp r0, #1
	beq _02232DDA
	cmp r0, #2
	beq _02232DFA
	b _02232E34
_02232DB4:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x34]
	ldr r1, [r1, #0]
	add r1, r1, r6
	ldr r1, [r1, #4]
	bl sub_0200B1EC
	str r0, [sp, #0x4c]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x4c]
	add r0, r5, #0
	mov r1, #1
	mov r3, #0
	bl sub_0200B48C
	b _02232E34
_02232DDA:
	ldr r0, [r4, #0x28]
	mov r1, #0x66
	ldr r0, [r0, #0]
	add r0, r0, r6
	ldr r0, [r0, #4]
	str r0, [sp, #0x30]
	mov r0, #0xff
	bl sub_02023790
	str r0, [sp, #0x4c]
	ldr r2, [sp, #0x30]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200C2E0
	b _02232E34
_02232DFA:
	ldr r0, [r4, #0x28]
	mov r1, #0x66
	ldr r0, [r0, #0]
	add r0, r0, r6
	ldr r0, [r0, #4]
	str r0, [sp, #0x2c]
	mov r0, #0xff
	bl sub_02023790
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x2c]
	mov r1, #0x66
	add r2, sp, #0x6c
	bl sub_0200B274
	ldr r0, [sp, #0x4c]
	add r1, sp, #0x6c
	bl sub_02023D28
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x4c]
	add r0, r5, #0
	mov r1, #1
	mov r3, #0
	bl sub_0200B48C
_02232E34:
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0]
	add r1, r0, r6
	ldr r0, [r1, #8]
	str r0, [sp, #0x24]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl ov62_0223438C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	bl sub_020239D4
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x50]
	ldr r1, [r1, #0]
	mov r2, #2
	add r1, r1, #1
	mov r3, #1
	bl sub_020238A0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x50]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_0200B48C
	ldr r2, [sp, #0x54]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0200C388
	ldr r0, [r4, #0x28]
	add r2, r7, #0
	ldr r0, [r0, #8]
	lsl r1, r0, #4
	ldr r0, [sp, #0x44]
	mul r1, r0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232F64 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x58]
	add r3, r1, #0
	bl sub_0201D78C
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #8]
	cmp r0, #2
	bne _02232F06
	ldr r0, [sp, #0x2f8]
	cmp r0, #0
	beq _02232F06
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x48]
	add r0, r5, #0
	mov r1, #2
	mov r3, #0
	bl sub_0200B48C
	ldr r2, [sp, #0x2f8]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0200C388
	ldr r0, [r4, #0x28]
	add r2, r7, #0
	ldr r0, [r0, #8]
	mov r3, #0x10
	lsl r1, r0, #4
	ldr r0, [sp, #0x44]
	mul r1, r0
	add r1, #0x10
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232F64 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x58]
	bl sub_0201D78C
_02232F06:
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x54]
	bl sub_020237BC
	ldr r0, [sp, #0x50]
	bl sub_020237BC
	ldr r0, [sp, #0x4c]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x48]
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0200C41C
	ldr r0, [sp, #0x20]
	add r6, #0x10
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r1, r0, #1
	ldr r0, [sp, #0x34]
	str r1, [sp, #0x18]
	cmp r1, r0
	bge _02232F46
	b _02232D7A
_02232F46:
	ldr r0, [sp, #0x58]
	bl sub_0201A9A4
	add r0, r5, #0
	bl sub_0200B3F0
	mov r0, #8
	ldrsh r0, [r4, r0]
	str r0, [r4, #0xc]
	mov r0, #0
	add sp, #0x1fc
	add sp, #0xe8
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02232F60: .word 0x02248904
_02232F64: .word 0x000F0D00
	thumb_func_end ov62_02232C78

	thumb_func_start ov62_02232F68
ov62_02232F68: ; 0x02232F68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x28]
	add r7, r1, #0
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02232FB6
	ldr r0, [r5, #0x10]
	ldr r6, [sp, #0x1c]
	cmp r0, #0
	ble _02232FB6
	add r4, r6, #0
_02232F86:
	ldr r0, [r5, #0x28]
	ldr r0, [r0, #0x28]
	add r0, r0, r4
	bl sub_02022760
	cmp r0, #0
	beq _02232FAC
	add r0, r7, #0
	bl ov62_02234520
	mov r1, #8
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #0x28]
	add r1, r1, r6
	ldr r0, [r0, #0]
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r0, [r0, #4]
	str r0, [sp, #0x1c]
_02232FAC:
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _02232F86
_02232FB6:
	mov r0, #8
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bne _02232FC6
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02232FC6:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _02232FD4
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02232FD4:
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x18
	mov r1, #0
	str r0, [sp, #0x18]
	bl sub_0201ADA4
	mov r0, #8
	ldrsh r0, [r5, r0]
	ldr r2, [r5, #0x10]
	ldr r1, [r5, #4]
	str r0, [sp, #0x10]
	add r0, r0, r2
	mov r6, #0
	str r0, [sp, #0x14]
	cmp r0, r1
	blt _02232FFC
	sub r0, r1, r2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
_02232FFC:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bge _0223304E
	add r0, r1, #0
	lsl r4, r0, #4
_02233008:
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x34]
	ldr r1, [r1, #0]
	ldr r1, [r1, r4]
	bl sub_0200B1EC
	add r7, r0, #0
	ldr r0, [r5, #0x28]
	mov r1, #0
	ldr r0, [r0, #8]
	add r2, r7, #0
	lsl r0, r0, #4
	mul r0, r6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02233060 ; =0x000F0D00
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	add r4, #0x10
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _02233008
_0223304E:
	ldr r0, [sp, #0x18]
	bl sub_0201A954
	mov r0, #8
	ldrsh r0, [r5, r0]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233060: .word 0x000F0D00
	thumb_func_end ov62_02232F68

	thumb_func_start ov62_02233064
ov62_02233064: ; 0x02233064
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r1, [r0, #0x38]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	bne _0223307A
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0223307A:
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #4]
	cmp r1, r0
	bne _0223308A
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0223308A:
	ldr r0, [sp, #0x10]
	mov r1, #0
	str r0, [sp, #0x28]
	add r0, #0x18
	str r0, [sp, #0x28]
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x40]
	ldr r1, [r1, #0x3c]
	cmp r1, r0
	blt _022330C4
	ldr r1, [sp, #0x10]
	ldr r2, [r1, #0x38]
	sub r1, r2, r0
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	add r0, r0, #1
	ldr r1, [r1, #4]
	sub r0, r1, r0
	cmp r2, r0
	blt _022330C4
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	sub r0, r1, r0
	str r0, [sp, #0x1c]
_022330C4:
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ble _022331AE
	ldr r0, [sp, #0x1c]
	mov r4, #4
	lsl r1, r0, #2
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	str r0, [sp, #0x18]
_022330DC:
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r5, r0, #0
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0x63
	ldr r0, [r0, #0x48]
	bl sub_0200B1EC
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	add r1, r2, r1
	add r1, r1, #1
	mov r2, #2
	mov r3, #1
	bl sub_020238A0
	ldr r2, [sp, #0x18]
	ldr r1, _022331C0 ; =0x00002608
	add r0, r5, #0
	ldr r1, [r2, r1]
	bl sub_02023D28
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	bl ov62_022349A8
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov ip, r0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022331C4 ; =0x000F0D00
	mov r3, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r6, ip
	ldr r0, [sp, #0x28]
	mov r1, #0
	add r2, r7, #0
	sub r3, r3, r6
	bl sub_0201D78C
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022331C4 ; =0x000F0D00
	ldr r2, [sp, #0x24]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	mov r1, #0
	mov r3, #0x10
	bl sub_0201D78C
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022331C4 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	add r2, r5, #0
	mov r3, #0x16
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	add r4, #0x18
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #0x20]
	cmp r0, r1
	blt _022330DC
_022331AE:
	ldr r0, [sp, #0x28]
	bl sub_0201A954
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x38]
	str r1, [r0, #0xc]
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022331C0: .word 0x00002608
_022331C4: .word 0x000F0D00
	thumb_func_end ov62_02233064

	thumb_func_start ov62_022331C8
ov62_022331C8: ; 0x022331C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0xff
	cmp r1, #0
	bge _022331E8
	ldr r0, [r5, #0x38]
	cmp r0, #0
	ble _02233200
	sub r0, r0, #1
	str r0, [r5, #0x38]
	ldr r0, _022332A8 ; =0x0000055A
	add r6, r4, #0
	bl sub_02005748
	b _02233200
_022331E8:
	ble _02233200
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x38]
	sub r0, r0, #1
	cmp r1, r0
	bge _02233200
	add r0, r1, #1
	str r0, [r5, #0x38]
	ldr r0, _022332A8 ; =0x0000055A
	mov r6, #1
	bl sub_02005748
_02233200:
	cmp r6, #0
	beq _0223320A
	cmp r6, #1
	beq _02233246
	b _0223326A
_0223320A:
	ldr r2, [r5, #0x44]
	ldr r1, [r5, #0x38]
	cmp r1, r2
	bge _02233218
	lsl r0, r1, #0x10
	asr r4, r0, #0x10
	b _0223326A
_02233218:
	ldr r0, [r5, #4]
	sub r0, r0, r2
	cmp r1, r0
	blt _02233234
	add r2, r2, #1
	lsl r2, r2, #0x10
	asr r4, r2, #0x10
	cmp r1, r0
	blt _0223326A
	sub r0, r1, r0
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _0223326A
_02233234:
	lsl r0, r2, #0x10
	asr r4, r0, #0x10
	cmp r1, r2
	bgt _0223326A
	sub r0, r1, r2
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _0223326A
_02233246:
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0x40]
	cmp r0, r2
	bgt _02233254
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _0223326A
_02233254:
	lsl r1, r2, #0x10
	asr r4, r1, #0x10
	ldr r1, [r5, #4]
	sub r1, r1, r2
	cmp r0, r1
	blt _0223326A
	sub r1, r1, #1
	sub r0, r0, r1
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_0223326A:
	cmp r4, #0
	bge _02233272
	bl sub_02022974
_02233272:
	cmp r6, #0xff
	beq _02233278
	str r4, [r5, #0x3c]
_02233278:
	ldr r2, [r5, #0x40]
	ldr r0, [r5, #0x3c]
	mov r3, #0
	cmp r0, r2
	blt _0223329C
	ldr r1, [r5, #0x38]
	sub r0, r1, r2
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	ldr r0, [r5, #4]
	add r2, r2, #1
	sub r2, r0, r2
	cmp r1, r2
	blt _0223329C
	ldr r1, [r5, #0x10]
	sub r0, r0, r1
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
_0223329C:
	add r0, r5, #0
	strh r3, [r5, #8]
	bl ov62_0223349C
	pop {r4, r5, r6, pc}
	nop
_022332A8: .word 0x0000055A
	thumb_func_end ov62_022331C8

	thumb_func_start ov62_022332AC
ov62_022332AC: ; 0x022332AC
	push {r4, lr}
	add r4, r0, #0
	mov r2, #8
	ldrsh r0, [r4, r2]
	add r1, r0, r1
	strh r1, [r4, #8]
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _022332C2
	mov r1, #0
	strh r1, [r4, #8]
_022332C2:
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #4]
	cmp r2, r1
	bne _022332CE
	mov r1, #0
	strh r1, [r4, #8]
_022332CE:
	mov r1, #8
	ldrsh r1, [r4, r1]
	ldr r3, [r4, #0x10]
	ldr r2, [r4, #4]
	add r1, r1, r3
	cmp r1, r2
	ble _022332E0
	sub r1, r2, r3
	strh r1, [r4, #8]
_022332E0:
	mov r1, #8
	ldrsh r1, [r4, r1]
	cmp r0, r1
	beq _022332EE
	ldr r0, _022332F8 ; =0x0000055A
	bl sub_02005748
_022332EE:
	add r0, r4, #0
	bl ov62_02233454
	pop {r4, pc}
	nop
_022332F8: .word 0x0000055A
	thumb_func_end ov62_022332AC

	thumb_func_start ov62_022332FC
ov62_022332FC: ; 0x022332FC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x18
	bl sub_0201ACF4
	add r4, #0x18
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	thumb_func_end ov62_022332FC

	thumb_func_start ov62_02233310
ov62_02233310: ; 0x02233310
	ldr r3, _02233318 ; =memset
	mov r1, #0
	mov r2, #0x50
	bx r3
	; .align 2, 0
_02233318: .word memset
	thumb_func_end ov62_02233310

	thumb_func_start ov62_0223331C
ov62_0223331C: ; 0x0223331C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	ldr r7, [r4, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x18]
	add r6, r2, #0
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp]
	ldr r0, _02233428 ; =0x00030D40
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r7, #0
	mov r3, #0x7f
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02233428 ; =0x00030D40
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r3, #0x7e
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02233428 ; =0x00030D40
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r3, #0x7d
	bl sub_0200CE54
	mov r1, #0x80
	add r0, sp, #0x14
	strh r1, [r0]
	mov r1, #0x60
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	mov r0, #1
	str r0, [sp, #0x1c]
	str r0, [sp, #0x40]
	sub r0, r0, #2
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	ldr r0, _02233428 ; =0x00030D40
	str r1, [sp, #0x20]
	str r6, [sp, #0x24]
	str r1, [sp, #0x44]
	str r0, [sp, #0x28]
	str r0, [sp, #0x30]
	str r0, [sp, #0x34]
	cmp r6, #1
	bne _022333A2
	ldr r0, _0223342C ; =0x0000270F
	str r0, [sp, #0x2c]
	b _022333A6
_022333A2:
	ldr r0, _02233430 ; =0x00002710
	str r0, [sp, #0x2c]
_022333A6:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	add r2, sp, #0x14
	bl sub_0200CE6C
	str r0, [r5, #0x2c]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	add r2, sp, #0x14
	bl sub_0200CE6C
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x2c]
	mov r1, #2
	bl sub_0200D41C
	ldr r0, [r5, #0x30]
	mov r1, #2
	bl sub_0200D41C
	ldr r0, [r5, #0x2c]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl sub_0200D364
	ldr r0, [r5, #0x2c]
	bl sub_0200D330
	ldr r0, [r5, #0x30]
	bl sub_0200D330
	ldr r0, [r5, #0x30]
	mov r1, #2
	bl sub_0200D7D4
	cmp r6, #1
	ldr r0, [r5, #0x2c]
	bne _0223340C
	mov r1, #0x80
	mov r2, #0x18
	bl sub_0200D4C4
	ldr r0, [r5, #0x30]
	mov r1, #0x80
	mov r2, #0x78
	bl sub_0200D4C4
	b _0223341E
_0223340C:
	mov r1, #0x80
	mov r2, #0x58
	bl sub_0200D4C4
	ldr r0, [r5, #0x30]
	mov r1, #0x80
	mov r2, #0xb8
	bl sub_0200D4C4
_0223341E:
	add r0, r5, #0
	bl ov62_02233454
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233428: .word 0x00030D40
_0223342C: .word 0x0000270F
_02233430: .word 0x00002710
	thumb_func_end ov62_0223331C

	thumb_func_start ov62_02233434
ov62_02233434: ; 0x02233434
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r3, r1, #0
	add r5, r2, #0
	ldr r0, [r4, #0x2c]
	mov r1, #0x80
	add r2, r3, #0
	bl sub_0200D4C4
	ldr r0, [r4, #0x30]
	mov r1, #0x80
	add r2, r5, #0
	bl sub_0200D4C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02233434

	thumb_func_start ov62_02233454
ov62_02233454: ; 0x02233454
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _02233478
	ldr r0, [r4, #0x2c]
	mov r1, #0
	bl sub_0200D3F4
_02233478:
	mov r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x10]
	add r1, r1, r0
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _0223348E
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D3F4
_0223348E:
	ldr r0, [r4, #0x2c]
	bl sub_0200D33C
	ldr r0, [r4, #0x30]
	bl sub_0200D33C
	pop {r4, pc}
	thumb_func_end ov62_02233454

	thumb_func_start ov62_0223349C
ov62_0223349C: ; 0x0223349C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _022334C0
	ldr r0, [r4, #0x2c]
	mov r1, #0
	bl sub_0200D3F4
_022334C0:
	mov r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x10]
	add r1, r1, r0
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _022334D6
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D3F4
_022334D6:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _022334EE
	ldr r0, [r4, #0x2c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200D3F4
_022334EE:
	ldr r0, [r4, #0x2c]
	bl sub_0200D33C
	ldr r0, [r4, #0x30]
	bl sub_0200D33C
	pop {r4, pc}
	thumb_func_end ov62_0223349C

	thumb_func_start ov62_022334FC
ov62_022334FC: ; 0x022334FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _02233528 ; =0x00030D40
	bl sub_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _02233528 ; =0x00030D40
	bl sub_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _02233528 ; =0x00030D40
	bl sub_0200D0A0
	ldr r0, [r5, #0x2c]
	bl sub_0200D0F4
	ldr r0, [r5, #0x30]
	bl sub_0200D0F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02233528: .word 0x00030D40
	thumb_func_end ov62_022334FC

	thumb_func_start ov62_0223352C
ov62_0223352C: ; 0x0223352C
	push {r4, r5, lr}
	sub sp, #0x34
	add r4, r3, #0
	mov r3, #0x80
	add r0, sp, #0
	strh r3, [r0]
	mov r3, #0x60
	strh r3, [r0, #2]
	mov r3, #0
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	mov r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0x2c]
	sub r0, r0, #2
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, _02233590 ; =0x00002E94
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x30]
	str r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	cmp r2, #1
	bne _02233566
	ldr r0, _02233594 ; =0x0000270F
	str r0, [sp, #0x18]
	b _0223356A
_02233566:
	ldr r0, _02233598 ; =0x00002710
	str r0, [sp, #0x18]
_0223356A:
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	add r2, sp, #0
	bl sub_0200CE6C
	add r5, r0, #0
	mov r1, #2
	bl sub_0200D41C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D364
	add r0, r5, #0
	bl sub_0200D330
	add r0, r5, #0
	add sp, #0x34
	pop {r4, r5, pc}
	; .align 2, 0
_02233590: .word 0x00002E94
_02233594: .word 0x0000270F
_02233598: .word 0x00002710
	thumb_func_end ov62_0223352C

	thumb_func_start ov62_0223359C
ov62_0223359C: ; 0x0223359C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_0200D0F4
	ldr r0, [r4, #0x1c]
	bl sub_0200D0F4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_0223359C

	thumb_func_start ov62_022335B0
ov62_022335B0: ; 0x022335B0
	ldr r3, _022335B8 ; =ov62_022335BC
	mov r2, #5
	bx r3
	nop
_022335B8: .word ov62_022335BC
	thumb_func_end ov62_022335B0

	thumb_func_start ov62_022335BC
ov62_022335BC: ; 0x022335BC
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	mov r2, #2
	add r3, r6, #0
	bl ov62_0223352C
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	add r3, r6, #0
	bl ov62_0223352C
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	mov r1, #0x18
	mov r2, #0x88
	bl sub_0200D4C4
	ldr r0, [r5, #0x1c]
	mov r1, #0xe8
	mov r2, #0x88
	bl sub_0200D4C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov62_022335BC

	thumb_func_start ov62_022335F4
ov62_022335F4: ; 0x022335F4
	ldr r3, _022335FC ; =memset
	mov r1, #0
	mov r2, #0x20
	bx r3
	; .align 2, 0
_022335FC: .word memset
	thumb_func_end ov62_022335F4

	thumb_func_start ov62_02233600
ov62_02233600: ; 0x02233600
	ldr r3, _02233604 ; =ov62_0223359C
	bx r3
	; .align 2, 0
_02233604: .word ov62_0223359C
	thumb_func_end ov62_02233600

	thumb_func_start ov62_02233608
ov62_02233608: ; 0x02233608
	push {r3, r4}
	ldr r2, [r0, #0xc]
	sub r4, r1, r2
	add r3, r4, #0
	mov r2, #1
	mul r3, r4
	lsl r2, r2, #8
	cmp r3, r2
	blt _0223362E
	cmp r4, #0
	bge _02233624
	mov r2, #0
	mvn r2, r2
	b _02233626
_02233624:
	mov r2, #1
_02233626:
	strh r2, [r0, #0x10]
	str r1, [r0, #0xc]
	pop {r3, r4}
	bx lr
_0223362E:
	mov r1, #0
	strh r1, [r0, #0x10]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov62_02233608

	thumb_func_start ov62_02233638
ov62_02233638: ; 0x02233638
	ldr r2, [r1, #0x48]
	cmp r2, #0
	beq _02233650
	ldr r1, [r1, #4]
	cmp r1, #2
	bge _0223364A
	mov r1, #0
	str r1, [r0, #0x14]
	bx lr
_0223364A:
	mov r1, #1
	str r1, [r0, #0x14]
	bx lr
_02233650:
	ldr r2, [r1, #0x10]
	ldr r1, [r1, #4]
	cmp r2, r1
	blt _0223365E
	mov r1, #0
	str r1, [r0, #0x14]
	bx lr
_0223365E:
	mov r1, #1
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end ov62_02233638

	thumb_func_start ov62_02233664
ov62_02233664: ; 0x02233664
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	mov r4, #0
	bl sub_020227A4
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _02233688
	ldr r0, [r5, #0x18]
	bl sub_0200D33C
	ldr r0, [r5, #0x1c]
	bl sub_0200D33C
_02233688:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _022336A2
	cmp r6, #0
	bne _022336A2
	mov r0, #0
	str r0, [r5, #4]
	str r0, [r5, #0]
	str r0, [r5, #8]
	str r0, [r5, #0xc]
	add sp, #8
	strh r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
_022336A2:
	ldr r0, _022336FC ; =0x022488F0
	bl sub_02022734
	cmp r0, #0
	bne _022336B6
	ldr r0, _02233700 ; =0x022488F4
	bl sub_02022734
	cmp r0, #0
	beq _022336B8
_022336B6:
	mov r4, #1
_022336B8:
	cmp r4, #0
	ldr r0, [r5, #4]
	beq _022336E8
	cmp r0, #0
	bne _022336D6
	mov r0, #1
	str r0, [r5, #4]
	ldr r0, [sp, #4]
	str r0, [r5, #8]
	ldr r0, [sp]
	add sp, #8
	str r0, [r5, #0xc]
	mov r0, #2
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_022336D6:
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	ldr r1, [sp]
	add r0, r5, #0
	bl ov62_02233608
	add sp, #8
	pop {r4, r5, r6, pc}
_022336E8:
	cmp r0, #0
	beq _022336F6
	mov r0, #0
	str r0, [r5, #4]
	str r0, [r5, #0]
	str r0, [r5, #8]
	str r0, [r5, #0xc]
_022336F6:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022336FC: .word 0x022488F0
_02233700: .word 0x022488F4
	thumb_func_end ov62_02233664

	thumb_func_start ov62_02233704
ov62_02233704: ; 0x02233704
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x83
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl sub_0202CD88
	add r1, r4, #0
	bl sub_0202CFEC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02233704

	thumb_func_start ov62_0223371C
ov62_0223371C: ; 0x0223371C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x77
	add r2, sp, #4
	bl sub_0202F1F8
	ldr r1, _0223374C ; =0x000008B4
	mov r3, #0
	ldr r0, [r4, r1]
	sub r1, #0x84
	ldr r1, [r4, r1]
	add r2, r0, #0
	str r1, [sp]
	add r1, r0, #0
	add r1, #0x80
	add r2, #0xe4
	bl sub_0202FE20
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0223374C: .word 0x000008B4
	thumb_func_end ov62_0223371C

	thumb_func_start ov62_02233750
ov62_02233750: ; 0x02233750
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov62_0222F824
	bl sub_02039720
	mov r0, #1
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02233750

	thumb_func_start ov62_0223376C
ov62_0223376C: ; 0x0223376C
	ldr r2, _02233784 ; =0x0000052C
	add r3, r0, #0
	str r1, [r3, r2]
	mov r1, #0
	add r0, r2, #4
	str r1, [r3, r0]
	add r1, r3, r2
	ldr r3, _02233788 ; =sub_0200DA04
	ldr r0, _0223378C ; =ov62_02233750
	mov r2, #4
	bx r3
	nop
_02233784: .word 0x0000052C
_02233788: .word sub_0200DA04
_0223378C: .word ov62_02233750
	thumb_func_end ov62_0223376C

	thumb_func_start ov62_02233790
ov62_02233790: ; 0x02233790
	mov r1, #0x53
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov62_02233790

	thumb_func_start ov62_02233798
ov62_02233798: ; 0x02233798
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _022337CE
	add r0, r4, #0
	bl ov62_02234534
	cmp r0, #1
	beq _022337CE
	ldr r0, _022337D0 ; =0x00000524
	ldr r1, [r4, r0]
	cmp r1, #1
	beq _022337CE
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, #0x64]
	bl sub_02008A94
	ldr r0, [r4, #0x1c]
	bl sub_0200C7EC
	bl sub_0200C800
	ldr r0, _022337D0 ; =0x00000524
	mov r1, #0
	str r1, [r4, r0]
_022337CE:
	pop {r4, pc}
	; .align 2, 0
_022337D0: .word 0x00000524
	thumb_func_end ov62_02233798

	thumb_func_start ov62_022337D4
ov62_022337D4: ; 0x022337D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022337E8 ; =ov62_02233798
	add r1, r4, #0
	mov r2, #5
	bl sub_0200DA04
	ldr r1, _022337EC ; =0x0000416C
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_022337E8: .word ov62_02233798
_022337EC: .word 0x0000416C
	thumb_func_end ov62_022337D4

	thumb_func_start ov62_022337F0
ov62_022337F0: ; 0x022337F0
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, _02233818 ; =0x00000836
	add r3, r0, #0
	add r0, r3, r4
	str r0, [sp]
	sub r0, r4, #6
	ldr r0, [r3, r0]
	sub r4, r4, #2
	add r3, r3, r4
	bl ov62_02248598
	cmp r0, #1
	bls _02233812
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_02233812:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02233818: .word 0x00000836
	thumb_func_end ov62_022337F0

	thumb_func_start ov62_0223381C
ov62_0223381C: ; 0x0223381C
	ldr r2, _02233824 ; =0x00000874
	str r1, [r0, r2]
	bx lr
	nop
_02233824: .word 0x00000874
	thumb_func_end ov62_0223381C

	thumb_func_start ov62_02233828
ov62_02233828: ; 0x02233828
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _02233894 ; =0x000008B4
	add r2, r0, #0
	ldr r1, [r1, #0]
	add r7, r2, r3
	str r0, [sp]
	cmp r1, #1
	beq _02233892
	bl ov62_0224112C
	ldr r1, _02233898 ; =0x00001D54
	mov r2, #0x1e
	add r1, r7, r1
	bl ov61_0222BE20
	ldr r1, _0223389C ; =0x00003884
	mov r4, #0
	str r0, [r7, r1]
	ldr r0, [r7, r1]
	cmp r0, #0
	ble _02233892
	ldr r5, [sp]
	mov r1, #0x9a
	lsl r1, r1, #6
	add r0, r5, #0
	add r6, r0, r1
_0223385C:
	ldr r0, _022338A0 ; =0x00002608
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02233868
	bl sub_02022974
_02233868:
	ldr r0, _022338A0 ; =0x00002608
	add r1, r6, #0
	ldr r0, [r5, r0]
	mov r2, #0xe4
	bl MI_CpuCopy8
	ldr r0, _022338A0 ; =0x00002608
	ldr r1, [sp]
	ldr r0, [r5, r0]
	add r2, r1, r4
	add r0, #0xa7
	ldrb r0, [r0]
	ldr r1, _022338A4 ; =0x0000413C
	add r4, r4, #1
	strb r0, [r2, r1]
	ldr r0, _0223389C ; =0x00003884
	add r5, r5, #4
	ldr r0, [r7, r0]
	add r6, #0xe4
	cmp r4, r0
	blt _0223385C
_02233892:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233894: .word 0x000008B4
_02233898: .word 0x00001D54
_0223389C: .word 0x00003884
_022338A0: .word 0x00002608
_022338A4: .word 0x0000413C
	thumb_func_end ov62_02233828

	thumb_func_start ov62_022338A8
ov62_022338A8: ; 0x022338A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r5, #0
	add r4, r6, #0
	add r7, r5, #0
_022338B4:
	mov r0, #0x83
	str r5, [sp]
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #0x66
	add r2, sp, #4
	mov r3, #0
	bl sub_0202F298
	ldr r0, [sp, #4]
	cmp r0, #3
	bhi _02233980
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022338D8: ; jump table
	.short _022338E0 - _022338D8 - 2 ; case 0
	.short _02233950 - _022338D8 - 2 ; case 1
	.short _02233904 - _022338D8 - 2 ; case 2
	.short _0223392A - _022338D8 - 2 ; case 3
_022338E0:
	ldr r0, _02233998 ; =0x0000087C
	str r7, [r4, r0]
	add r0, #0x10
	str r7, [r4, r0]
	cmp r5, #0
	bne _02233980
	mov r0, #0x66
	bl sub_02030A80
	ldr r1, _0223399C ; =0x0000088C
	str r0, [r4, r1]
	add r0, r1, #0
	sub r1, #0x5c
	ldr r0, [r4, r0]
	ldr r1, [r6, r1]
	bl sub_02030AA0
	b _02233980
_02233904:
	ldr r0, _02233998 ; =0x0000087C
	mov r1, #0
	str r1, [r4, r0]
	add r0, #0x10
	str r1, [r4, r0]
	cmp r5, #0
	bne _02233980
	mov r0, #0x66
	bl sub_02030A80
	ldr r1, _0223399C ; =0x0000088C
	str r0, [r4, r1]
	add r0, r1, #0
	sub r1, #0x5c
	ldr r0, [r4, r0]
	ldr r1, [r6, r1]
	bl sub_02030AA0
	b _02233980
_0223392A:
	ldr r0, _02233998 ; =0x0000087C
	mov r1, #0
	str r1, [r4, r0]
	add r0, #0x10
	str r1, [r4, r0]
	cmp r5, #0
	bne _02233980
	mov r0, #0x66
	bl sub_02030A80
	ldr r1, _0223399C ; =0x0000088C
	str r0, [r4, r1]
	add r0, r1, #0
	sub r1, #0x5c
	ldr r0, [r4, r0]
	ldr r1, [r6, r1]
	bl sub_02030AA0
	b _02233980
_02233950:
	mov r0, #0x66
	bl sub_0202FD88
	ldr r1, _02233998 ; =0x0000087C
	cmp r5, #0
	str r0, [r4, r1]
	bne _02233976
	mov r0, #0x66
	bl sub_02030A80
	ldr r1, _0223399C ; =0x0000088C
	str r0, [r4, r1]
	add r0, r1, #0
	sub r1, #0x5c
	ldr r0, [r4, r0]
	ldr r1, [r6, r1]
	bl sub_02030AA0
	b _02233980
_02233976:
	mov r0, #0x66
	bl sub_0202FDB8
	ldr r1, _0223399C ; =0x0000088C
	str r0, [r4, r1]
_02233980:
	bl sub_0202F250
	cmp r0, #1
	bne _0223398C
	bl sub_0202F22C
_0223398C:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _022338B4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233998: .word 0x0000087C
_0223399C: .word 0x0000088C
	thumb_func_end ov62_022338A8

	thumb_func_start ov62_022339A0
ov62_022339A0: ; 0x022339A0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	add r7, r4, #0
_022339AA:
	ldr r0, _022339D4 ; =0x0000087C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022339BA
	bl sub_020181C4
	ldr r0, _022339D4 ; =0x0000087C
	str r6, [r5, r0]
_022339BA:
	ldr r0, _022339D8 ; =0x0000088C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022339CA
	bl sub_020181C4
	ldr r0, _022339D8 ; =0x0000088C
	str r7, [r5, r0]
_022339CA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _022339AA
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022339D4: .word 0x0000087C
_022339D8: .word 0x0000088C
	thumb_func_end ov62_022339A0

	thumb_func_start ov62_022339DC
ov62_022339DC: ; 0x022339DC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	ldr r6, [r0, #0x28]
	bl sub_02079FD0
	mov r1, #0x13
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _02233A40 ; =0x000186A0
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0200CD7C
	bl sub_02079FDC
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02233A40 ; =0x000186A0
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x13
	bl sub_0200CE0C
	bl sub_02079FE8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02233A40 ; =0x000186A0
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x13
	bl sub_0200CE3C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02233A40: .word 0x000186A0
	thumb_func_end ov62_022339DC

	thumb_func_start ov62_02233A44
ov62_02233A44: ; 0x02233A44
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _02233A64 ; =0x000186A0
	bl sub_0200D080
	ldr r0, [r4, #0x1c]
	ldr r1, _02233A64 ; =0x000186A0
	bl sub_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _02233A64 ; =0x000186A0
	bl sub_0200D0A0
	pop {r4, pc}
	nop
_02233A64: .word 0x000186A0
	thumb_func_end ov62_02233A44

	thumb_func_start ov62_02233A68
ov62_02233A68: ; 0x02233A68
	ldr r3, _02233A70 ; =sub_02006C24
	mov r0, #0x13
	mov r1, #0x66
	bx r3
	; .align 2, 0
_02233A70: .word sub_02006C24
	thumb_func_end ov62_02233A68

	thumb_func_start ov62_02233A74
ov62_02233A74: ; 0x02233A74
	ldr r3, _02233A78 ; =sub_02006CA8
	bx r3
	; .align 2, 0
_02233A78: .word sub_02006CA8
	thumb_func_end ov62_02233A74

	thumb_func_start ov62_02233A7C
ov62_02233A7C: ; 0x02233A7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r2, #0
	str r1, [sp, #0xc]
	add r4, r3, #0
	ldr r7, [r0, #0x18]
	ldr r6, [r0, #0x1c]
	bne _02233A92
	add sp, #0x4c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02233A92:
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x64]
	ldr r2, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl sub_02079D8C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02233B20 ; =0x000186A0
	ldr r2, [sp, #0xc]
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0200D8E8
	mov r1, #0
	add r0, sp, #0x18
	add r2, r1, #0
	strh r1, [r0]
	sub r2, #0x30
	strh r2, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	mov r0, #1
	str r0, [sp, #0x28]
	sub r0, r0, #2
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	ldr r1, _02233B20 ; =0x000186A0
	str r0, [sp, #0x3c]
	add r2, r5, r1
	str r2, [sp, #0x2c]
	str r0, [sp, #0x40]
	str r1, [sp, #0x30]
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	add r0, r7, #0
	add r1, r6, #0
	add r2, sp, #0x18
	bl sub_0200CE6C
	add r5, r0, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	bl sub_02079EDC
	add r1, r0, #0
	add r0, r5, #0
	add r1, r1, #4
	bl sub_0200D430
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D364
	add r0, r5, #0
	bl sub_0200D330
	add r0, r5, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02233B20: .word 0x000186A0
	thumb_func_end ov62_02233A7C

	thumb_func_start ov62_02233B24
ov62_02233B24: ; 0x02233B24
	push {r4, lr}
	add r4, r2, #0
	beq _02233B3A
	ldr r2, _02233B3C ; =0x000186A0
	ldr r0, [r0, #0x1c]
	add r1, r1, r2
	bl sub_0200D070
	add r0, r4, #0
	bl sub_0200D0F4
_02233B3A:
	pop {r4, pc}
	; .align 2, 0
_02233B3C: .word 0x000186A0
	thumb_func_end ov62_02233B24

	thumb_func_start ov62_02233B40
ov62_02233B40: ; 0x02233B40
	push {r3, lr}
	cmp r2, #0
	beq _02233B4C
	add r0, r2, #0
	bl sub_0200D0F4
_02233B4C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_02233B40

	thumb_func_start ov62_02233B50
ov62_02233B50: ; 0x02233B50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	ldr r3, _02233E7C ; =0x022489D0
	add r7, r1, #0
	str r0, [sp, #0x14]
	add r2, sp, #0x74
	mov r1, #0x14
_02233B5E:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02233B5E
	ldr r3, _02233E80 ; =0x02248910
	add r2, sp, #0x5c
	str r2, [sp, #0x20]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #1
	ldr r5, [sp, #0x14]
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [sp, #0x40]
	add r4, sp, #0x74
	add r5, #0x3c
_02233B8A:
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0xff
	beq _02233C3E
	ldr r1, [sp, #0x20]
	ldr r0, [r7, #0x48]
	ldr r1, [r1, #0]
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0201A7A0
	mov r0, #2
	ldrsh r0, [r4, r0]
	mov r3, #0
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #4
	ldrsh r0, [r4, r0]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #6
	ldrsh r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrsh r3, [r4, r3]
	ldr r0, [r7, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r6, #0
	bl ov62_0223429C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02233E84 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A9A4
	mov r0, #4
	ldrsh r1, [r4, r0]
	mov r0, #6
	ldrsh r0, [r4, r0]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x3c]
	add r0, r0, r2
	str r0, [sp, #0x3c]
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x20]
	add r4, #8
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x40]
	add r5, #0x10
	add r0, r0, #1
	str r0, [sp, #0x40]
	cmp r0, #5
	blt _02233B8A
_02233C3E:
	ldr r0, [sp, #0x14]
	ldr r6, [r0, #0]
	mov r0, #0x66
	bl ov62_02231690
	ldr r5, [sp, #0x14]
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x66
	add r5, #0x3c
	bl sub_02030B94
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x44]
	add r0, r7, #0
	bl ov62_022349A8
	ldr r0, [r7, #0x48]
	mov r1, #7
	bl sub_0200B1EC
	str r0, [sp, #0x48]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x44]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0200B48C
	ldr r2, [sp, #0x48]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r6, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02233E84 ; =0x000F0D00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A9A4
	ldr r0, [sp, #0x44]
	bl sub_020237BC
	ldr r0, [sp, #0x48]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200C41C
	ldr r0, [sp, #0x14]
	mov r1, #3
	ldr r0, [r0, #4]
	mov r2, #0
	bl sub_0202FE98
	add r1, r0, #0
	ldr r5, [sp, #0x14]
	ldr r0, [r7, #0x48]
	add r1, #0x84
	add r5, #0x4c
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02233E84 ; =0x000F0D00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200C41C
	ldr r0, [sp, #0x14]
	mov r1, #2
	ldr r0, [r0, #4]
	mov r2, #0
	bl sub_0202FE98
	str r0, [sp, #0x4c]
	cmp r0, #0
	beq _02233DD0
	ldr r5, [sp, #0x14]
	mov r0, #0xff
	mov r1, #0x66
	add r5, #0x5c
	bl sub_02023790
	str r0, [sp, #0x50]
	ldr r0, [r7, #0x48]
	mov r1, #9
	bl sub_0200B1EC
	str r0, [sp, #0x54]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x4c]
	mov r2, #4
	mov r3, #0
	bl sub_020238A0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x50]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0200B48C
	ldr r2, [sp, #0x54]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r6, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02233E84 ; =0x000F0D00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A9A4
	ldr r0, [sp, #0x50]
	bl sub_020237BC
	ldr r0, [sp, #0x54]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200C41C
	b _02233DE2
_02233DD0:
	ldr r5, [sp, #0x14]
	mov r1, #0
	add r5, #0x6c
	add r0, r5, #0
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201A9A4
_02233DE2:
	ldr r0, [sp, #0x14]
	mov r1, #4
	ldr r0, [r0, #4]
	mov r2, #0
	bl sub_0202FE98
	add r5, r0, #0
	str r1, [sp, #0x1c]
	add r6, r1, #0
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x38]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x34]
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	add r0, #0x7c
	str r0, [sp, #0x14]
	ldr r2, _02233E88 ; =0x000186A0
	add r0, r5, #0
	mov r3, #0
	bl _ull_mod
	str r0, [sp, #0x2c]
	ldr r2, _02233E88 ; =0x000186A0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl _ull_div
	ldr r2, _02233E88 ; =0x000186A0
	str r0, [sp, #0x58]
	mov r3, #0
	add r6, r1, #0
	bl _ull_mod
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x58]
	ldr r2, _02233E88 ; =0x000186A0
	add r1, r6, #0
	mov r3, #0
	bl _ull_div
	mov r1, #0xa
	str r0, [sp, #0x24]
	bl _u32_div_f
	mov r1, #0xa
	bl _u32_div_f
	cmp r1, #0
	bne _02233E8C
	ldr r0, [sp, #0x1c]
	mov r1, #0
	eor r1, r0
	mov r2, #0
	add r0, r5, #0
	eor r0, r2
	orr r0, r1
	beq _02233E8C
	ldr r0, [r7, #0x48]
	mov r1, #0xc
	bl sub_0200B1EC
	add r6, r0, #0
	b _02233E96
	nop
_02233E7C: .word 0x022489D0
_02233E80: .word 0x02248910
_02233E84: .word 0x000F0D00
_02233E88: .word 0x000186A0
_02233E8C:
	ldr r0, [r7, #0x48]
	mov r1, #0xb
	bl sub_0200B1EC
	add r6, r0, #0
_02233E96:
	mov r0, #0xff
	mov r1, #0x66
	bl sub_02023790
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x2c]
	mov r2, #5
	mov r3, #2
	bl sub_020238A0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x28]
	mov r2, #5
	mov r3, #2
	bl sub_020238A0
	mov r0, #1
	str r0, [sp]
	mov r2, #2
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x24]
	add r3, r2, #0
	bl sub_020238A0
	mov r0, #1
	str r0, [sp]
	mov r1, #2
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	mov r3, #0
	str r1, [sp, #4]
	bl sub_0200B48C
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	add r0, r4, #0
	mov r3, #0
	bl sub_0200B48C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0200C388
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02233F70 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_0201A9A4
	ldr r0, [sp, #0x38]
	bl sub_020237BC
	ldr r0, [sp, #0x34]
	bl sub_020237BC
	ldr r0, [sp, #0x30]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200C41C
	add r0, r4, #0
	bl sub_0200B3F0
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	nop
_02233F70: .word 0x000F0D00
	thumb_func_end ov62_02233B50

	thumb_func_start ov62_02233F74
ov62_02233F74: ; 0x02233F74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x3c
_02233F7C:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #5
	blt _02233F7C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02233F74

	thumb_func_start ov62_02233F94
ov62_02233F94: ; 0x02233F94
	push {r3, lr}
	mov r1, #3
	mov r2, #0
	bl sub_0202FE98
	cmp r0, #0x1a
	bgt _02233FCC
	bge _02233FD8
	add r1, r0, #0
	sub r1, #0xe
	cmp r1, #9
	bhi _02233FDC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02233FB8: ; jump table
	.short _02233FD8 - _02233FB8 - 2 ; case 0
	.short _02233FDC - _02233FB8 - 2 ; case 1
	.short _02233FDC - _02233FB8 - 2 ; case 2
	.short _02233FD8 - _02233FB8 - 2 ; case 3
	.short _02233FDC - _02233FB8 - 2 ; case 4
	.short _02233FDC - _02233FB8 - 2 ; case 5
	.short _02233FD8 - _02233FB8 - 2 ; case 6
	.short _02233FDC - _02233FB8 - 2 ; case 7
	.short _02233FDC - _02233FB8 - 2 ; case 8
	.short _02233FD8 - _02233FB8 - 2 ; case 9
_02233FCC:
	cmp r0, #0x1d
	bgt _02233FD4
	beq _02233FD8
	b _02233FDC
_02233FD4:
	cmp r0, #0x20
	bne _02233FDC
_02233FD8:
	mov r0, #1
	pop {r3, pc}
_02233FDC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov62_02233F94

	thumb_func_start ov62_02233FE0
ov62_02233FE0: ; 0x02233FE0
	ldr r3, _02233FE8 ; =ov62_02233F94
	ldr r0, [r0, #4]
	bx r3
	nop
_02233FE8: .word ov62_02233F94
	thumb_func_end ov62_02233FE0

	thumb_func_start ov62_02233FEC
ov62_02233FEC: ; 0x02233FEC
	push {r3, lr}
	bl ov62_02233FE0
	cmp r0, #1
	bne _02233FFA
	mov r0, #0x51
	pop {r3, pc}
_02233FFA:
	mov r0, #0x52
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_02233FEC

	thumb_func_start ov62_02234000
ov62_02234000: ; 0x02234000
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x140
	str r0, [sp, #0x18]
	mov r0, #0
	str r1, [sp, #0x1c]
	ldr r3, _0223420C ; =0x02248A78
	str r0, [sp, #0x44]
	add r2, sp, #0xe0
	mov r1, #0x30
_02234012:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02234012
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x18]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x1c]
	ldr r4, [r0, #0x28]
	bl sub_02079FD0
	mov r1, #0x13
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _02234210 ; =0x000186A0
	ldr r2, [sp, #0x3c]
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x38]
	add r0, r4, #0
	mov r1, #2
	bl sub_0200CD7C
	bl sub_02079FDC
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02234210 ; =0x000186A0
	ldr r1, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r2, #0x13
	bl sub_0200CE0C
	bl sub_02079FE8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02234210 ; =0x000186A0
	ldr r1, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r2, #0x13
	bl sub_0200CE3C
	mov r0, #6
	mov r6, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	str r6, [sp, #0x30]
	str r6, [sp, #0x40]
	bl ov62_02233FE0
	cmp r0, #1
	bne _022340A4
	mov r0, #3
	str r0, [sp, #0x34]
	str r0, [sp, #0x2c]
	mov r0, #1
	str r0, [sp, #0x40]
_022340A4:
	ldr r4, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	cmp r1, r0
	bge _022340EA
	lsl r1, r6, #2
	add r0, sp, #0x7c
	add r5, r0, r1
	add r0, sp, #0x4c
	add r7, r0, r1
_022340B8:
	mov r0, #0xff
	str r0, [r5, #0]
	ldr r0, [sp, #0x18]
	mov r1, #0
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl sub_0202FE98
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x18]
	mov r1, #1
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl sub_0202FE98
	ldr r1, [sp, #0x48]
	cmp r1, #0
	beq _022340E2
	stmia r5!, {r1}
	stmia r7!, {r0}
	add r6, r6, #1
_022340E2:
	ldr r0, [sp, #0x2c]
	add r4, r4, #1
	cmp r4, r0
	blt _022340B8
_022340EA:
	ldr r1, [sp, #0x2c]
	add r0, r6, #0
	cmp r6, r1
	bge _0223410C
	lsl r2, r6, #2
	add r1, sp, #0x7c
	add r3, r1, r2
	add r1, sp, #0x4c
	add r4, r1, r2
	mov r2, #0
_022340FE:
	stmia r3!, {r2}
	ldr r1, [sp, #0x2c]
	add r0, r0, #1
	stmia r4!, {r2}
	add r6, r6, #1
	cmp r0, r1
	blt _022340FE
_0223410C:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r0, r1, r0
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x34]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	cmp r0, #0xc
	ble _022340A4
	add r0, sp, #0x7c
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x40]
	mov r1, #0x30
	add r2, sp, #0xe0
	mul r1, r0
	ldr r5, [sp, #0x18]
	mov r6, #0
	add r7, sp, #0x4c
	add r4, r2, r1
_02234134:
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [sp, #0x28]
	ldr r0, [r0, #0]
	str r0, [sp, #0x20]
	cmp r0, #0
	beq _022341F2
	ldr r0, [r7, #0]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x24]
	bl sub_02079D8C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r1, [sp, #0x44]
	ldr r0, _02234210 ; =0x000186A0
	mov r2, #0x13
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	bl sub_0200D888
	mov r0, #0
	ldrsh r1, [r4, r0]
	add r0, sp, #0xac
	add r2, sp, #0xac
	add r1, #8
	strh r1, [r0]
	mov r0, #2
	ldrsh r1, [r4, r0]
	add r0, sp, #0xac
	sub r1, #0xc
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	add r0, r1, #0
	str r0, [sp, #0xb4]
	str r0, [sp, #0xb8]
	mov r0, #1
	str r0, [sp, #0xbc]
	add r0, r1, #0
	str r0, [sp, #0xd8]
	str r0, [sp, #0xdc]
	ldr r1, [sp, #0x44]
	ldr r0, _02234210 ; =0x000186A0
	add r0, r1, r0
	str r0, [sp, #0xc0]
	ldr r0, _02234210 ; =0x000186A0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0xc4]
	str r0, [sp, #0xc8]
	str r0, [sp, #0xcc]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0xd0]
	str r0, [sp, #0xd4]
	ldr r0, [sp, #0x1c]
	ldr r1, [r1, #0x1c]
	ldr r0, [r0, #0x18]
	bl sub_0200CE6C
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	mov r2, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	add r1, r1, #4
	bl sub_0200D430
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [r5, #0xc]
	bl sub_0200D330
	mov r1, #0xc
	ldr r0, [r5, #0xc]
	sub r1, r1, r6
	bl sub_0200D474
	ldr r0, [sp, #0x44]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0x44]
_022341F2:
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x28]
	add r7, r7, #4
	add r0, r0, #4
	add r4, r4, #4
	str r0, [sp, #0x28]
	cmp r6, #0xc
	blt _02234134
	add sp, #0x140
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223420C: .word 0x02248A78
_02234210: .word 0x000186A0
	thumb_func_end ov62_02234000

	thumb_func_start ov62_02234214
ov62_02234214: ; 0x02234214
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov62_02233B50
	add r0, r5, #0
	add r1, r4, #0
	bl ov62_02234000
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02234214

	thumb_func_start ov62_02234228
ov62_02234228: ; 0x02234228
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [r6, #0x1c]
	ldr r1, _02234278 ; =0x000186A0
	bl sub_0200D080
	ldr r0, [r6, #0x1c]
	ldr r1, _02234278 ; =0x000186A0
	bl sub_0200D090
	ldr r0, [r6, #0x1c]
	ldr r1, _02234278 ; =0x000186A0
	bl sub_0200D0A0
	mov r4, #0
	ldr r5, [sp]
	add r7, r4, #0
_0223424C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _02234264
	ldr r1, _02234278 ; =0x000186A0
	ldr r0, [r6, #0x1c]
	add r1, r4, r1
	bl sub_0200D070
	ldr r0, [r5, #0xc]
	bl sub_0200D0F4
	str r7, [r5, #0xc]
_02234264:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc
	blt _0223424C
	ldr r0, [sp]
	add r1, r6, #0
	bl ov62_02233F74
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234278: .word 0x000186A0
	thumb_func_end ov62_02234228

	thumb_func_start ov62_0223427C
ov62_0223427C: ; 0x0223427C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_02234284:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _02234290
	add r1, r6, #0
	bl sub_0200D3F4
_02234290:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc
	blt _02234284
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov62_0223427C

	thumb_func_start ov62_0223429C
ov62_0223429C: ; 0x0223429C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201C294
	lsl r0, r0, #3
	sub r1, r0, r4
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223429C

	thumb_func_start ov62_022342BC
ov62_022342BC: ; 0x022342BC
	ldr r1, _022342C8 ; =0x00000834
	mov r2, #0
	strh r2, [r0, r1]
	add r1, r1, #2
	strh r2, [r0, r1]
	bx lr
	; .align 2, 0
_022342C8: .word 0x00000834
	thumb_func_end ov62_022342BC

	thumb_func_start ov62_022342CC
ov62_022342CC: ; 0x022342CC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0202783C
	add r1, sp, #4
	str r1, [sp]
	ldr r1, _02234310 ; =0x0000086C
	add r2, sp, #0xc
	ldr r1, [r5, r1]
	add r3, sp, #8
	add r1, r1, #2
	add r4, r0, #0
	bl sub_020279A8
	add r0, sp, #4
	ldrb r0, [r0]
	mov r2, #0
	mvn r2, r2
	str r0, [sp]
	ldr r1, _02234310 ; =0x0000086C
	add r0, r4, #0
	ldr r1, [r5, r1]
	add r3, r2, #0
	add r1, r1, #2
	bl sub_020279D0
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02234310: .word 0x0000086C
	thumb_func_end ov62_022342CC

	thumb_func_start ov62_02234314
ov62_02234314: ; 0x02234314
	push {r3, lr}
	mov r0, #0
	mov r1, #1
	bl sub_02019060
	mov r0, #1
	mov r1, #3
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #1
	bl sub_02019060
	mov r0, #4
	mov r1, #1
	bl sub_02019060
	mov r0, #5
	mov r1, #3
	bl sub_02019060
	mov r0, #6
	mov r1, #0
	bl sub_02019060
	mov r0, #7
	mov r1, #1
	bl sub_02019060
	pop {r3, pc}
	thumb_func_end ov62_02234314

	thumb_func_start ov62_02234358
ov62_02234358: ; 0x02234358
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0x44]
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	bne _0223436E
	add r0, r5, #0
	mov r1, #1
	bl sub_0208B9E0
_0223436E:
	add r0, r5, #0
	mov r1, #1
	bl sub_0208B8B0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0208B948
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0208B8B8
	pop {r4, r5, r6, pc}
	thumb_func_end ov62_02234358

	thumb_func_start ov62_0223438C
ov62_0223438C: ; 0x0223438C
	push {r4, r5, r6, lr}
	mov r3, #0
	mov r2, #1
	mov r5, #1
	sub r2, r2, r0
	sbc r3, r1
	bhs _022343B2
	mov r4, #0xa
	mov r6, #0
_0223439E:
	add r2, r4, #0
	add r3, r6, #0
	bl _ull_div
	mov r2, #0
	mov r3, #1
	add r5, r5, #1
	sub r3, r3, r0
	sbc r2, r1
	blo _0223439E
_022343B2:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov62_0223438C

	thumb_func_start ov62_022343B8
ov62_022343B8: ; 0x022343B8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	add r3, r2, #0
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	bl sub_0200710C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov62_022343B8

	thumb_func_start ov62_022343D8
ov62_022343D8: ; 0x022343D8
	push {r4, lr}
	ldr r2, _02234438 ; =0x00004160
	add r4, r1, #0
	ldr r1, [r4, r2]
	add r1, r1, #1
	str r1, [r4, r2]
	ldr r1, [r4, r2]
	cmp r1, #7
	blt _02234422
	bl sub_0200DA58
	ldr r0, _02234438 ; =0x00004160
	mov r2, #0
	str r2, [r4, r0]
	sub r1, r0, #4
	str r2, [r4, r1]
	add r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0208BA54
	ldr r0, _0223443C ; =0x00004164
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	ldr r0, _0223443C ; =0x00004164
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0208B8B0
	ldr r0, _0223443C ; =0x00004164
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	pop {r4, pc}
_02234422:
	lsl r0, r1, #1
	add r0, r0, #6
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	add r0, r2, #4
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208BA08
	pop {r4, pc}
	nop
_02234438: .word 0x00004160
_0223443C: .word 0x00004164
	thumb_func_end ov62_022343D8

	thumb_func_start ov62_02234440
ov62_02234440: ; 0x02234440
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _02234508 ; =0x0000415C
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _02234460
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223445A
	bl sub_0200DA58
_0223445A:
	ldr r0, _0223450C ; =0x00004168
	mov r1, #0
	str r1, [r4, r0]
_02234460:
	ldr r0, _02234510 ; =0x021BF6DC
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0223446C
	ldr r0, _02234514 ; =0x000006F4
	b _02234470
_0223446C:
	mov r0, #0x6f
	lsl r0, r0, #4
_02234470:
	ldr r1, [r4, r0]
	ldr r0, _02234518 ; =0x00004164
	str r1, [r4, r0]
	ldr r0, _02234508 ; =0x0000415C
	mov r1, #1
	str r1, [r4, r0]
	mov r1, #0
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, sp, #4
	add r1, sp, #0
	bl sub_020227C0
	ldr r0, _02234518 ; =0x00004164
	ldr r0, [r4, r0]
	bl sub_0208BA30
	ldr r0, _02234518 ; =0x00004164
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0208B8B0
	ldr r0, _02234518 ; =0x00004164
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	ldr r0, _02234518 ; =0x00004164
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0208B8B8
	ldr r0, _02234518 ; =0x00004164
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0208B948
	mov r2, #1
	ldr r0, _0223451C ; =ov62_022343D8
	add r1, r4, #0
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	ldr r2, _0223450C ; =0x00004168
	str r0, [r4, r2]
	ldr r0, [r4, r2]
	cmp r0, #0
	beq _022344EE
	add r1, r4, #0
	bl ov62_022343D8
	add sp, #8
	pop {r4, pc}
_022344EE:
	add r0, r2, #0
	mov r1, #0
	sub r0, #0xc
	str r1, [r4, r0]
	sub r0, r2, #4
	ldr r0, [r4, r0]
	bl sub_0208B9E0
	bl sub_02022974
	add sp, #8
	pop {r4, pc}
	nop
_02234508: .word 0x0000415C
_0223450C: .word 0x00004168
_02234510: .word 0x021BF6DC
_02234514: .word 0x000006F4
_02234518: .word 0x00004164
_0223451C: .word ov62_022343D8
	thumb_func_end ov62_02234440

	thumb_func_start ov62_02234520
ov62_02234520: ; 0x02234520
	push {r3, lr}
	bl ov62_02234440
	ldr r0, _02234530 ; =0x00000563
	bl sub_02005748
	pop {r3, pc}
	nop
_02234530: .word 0x00000563
	thumb_func_end ov62_02234520

	thumb_func_start ov62_02234534
ov62_02234534: ; 0x02234534
	ldr r1, _0223453C ; =0x00000528
	ldr r0, [r0, r1]
	bx lr
	nop
_0223453C: .word 0x00000528
	thumb_func_end ov62_02234534

	thumb_func_start ov62_02234540
ov62_02234540: ; 0x02234540
	ldr r2, _02234548 ; =0x00000528
	str r1, [r0, r2]
	bx lr
	nop
_02234548: .word 0x00000528
	thumb_func_end ov62_02234540

	thumb_func_start ov62_0223454C
ov62_0223454C: ; 0x0223454C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r1, r6, #0
	add r7, r3, #0
	bl ov62_022313E0
	add r1, r5, #0
	str r0, [r4, #4]
	add r0, r4, #0
	add r1, #0x14
	add r2, r6, #0
	bl ov62_0223118C
	add r5, #0x14
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov62_0223124C
	add r3, sp, #8
	mov r1, #0x10
	mov r2, #0x14
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #4]
	bl sub_0200D4C4
	add r3, sp, #8
	mov r1, #0x18
	mov r2, #0x1c
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	bl sub_020128C4
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x2c]
	bl sub_020129D0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x28]
	bl sub_0200D364
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov62_0223454C

	thumb_func_start ov62_022345A8
ov62_022345A8: ; 0x022345A8
	push {r4, lr}
	add r4, r0, #0
	bl ov62_022312B0
	ldr r0, [r4, #4]
	bl sub_0200D0F4
	pop {r4, pc}
	thumb_func_end ov62_022345A8

	thumb_func_start ov62_022345B8
ov62_022345B8: ; 0x022345B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r1, r2, #0
	add r0, r3, #0
	ldr r2, [r5, #4]
	ldr r3, _02234878 ; =0x00000504
	str r2, [r5, r3]
	ldr r4, [r5, #8]
	add r2, r3, #4
	str r4, [r5, r2]
	ldr r2, [r5, #0x10]
	ldr r4, [r2, #0]
	add r2, r3, #0
	add r2, #8
	str r4, [r5, r2]
	mov r2, #1
	add r3, #0x18
	mov r4, #0xc2
	str r2, [r5, r3]
	cmp r0, #0
	beq _022345EE
	cmp r0, #1
	beq _0223465E
	cmp r0, #2
	beq _022346B0
	b _022348AE
_022345EE:
	cmp r1, #0xe
	bhi _02234658
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022345FE: ; jump table
	.short _0223461C - _022345FE - 2 ; case 0
	.short _02234620 - _022345FE - 2 ; case 1
	.short _02234624 - _022345FE - 2 ; case 2
	.short _02234628 - _022345FE - 2 ; case 3
	.short _0223462C - _022345FE - 2 ; case 4
	.short _02234630 - _022345FE - 2 ; case 5
	.short _02234634 - _022345FE - 2 ; case 6
	.short _02234638 - _022345FE - 2 ; case 7
	.short _0223463C - _022345FE - 2 ; case 8
	.short _02234640 - _022345FE - 2 ; case 9
	.short _02234644 - _022345FE - 2 ; case 10
	.short _02234648 - _022345FE - 2 ; case 11
	.short _0223464C - _022345FE - 2 ; case 12
	.short _02234650 - _022345FE - 2 ; case 13
	.short _02234654 - _022345FE - 2 ; case 14
_0223461C:
	mov r4, #0xf4
	b _022348AE
_02234620:
	mov r4, #0xf5
	b _022348AE
_02234624:
	mov r4, #0xf6
	b _022348AE
_02234628:
	mov r4, #0xf7
	b _022348AE
_0223462C:
	mov r4, #0xf8
	b _022348AE
_02234630:
	mov r4, #0xf9
	b _022348AE
_02234634:
	mov r4, #0xfa
	b _022348AE
_02234638:
	mov r4, #0xfb
	b _022348AE
_0223463C:
	mov r4, #0xfc
	b _022348AE
_02234640:
	mov r4, #0xfd
	b _022348AE
_02234644:
	mov r4, #0xfe
	b _022348AE
_02234648:
	mov r4, #0xff
	b _022348AE
_0223464C:
	add r4, #0x3e
	b _022348AE
_02234650:
	add r4, #0x3f
	b _022348AE
_02234654:
	add r4, #0x40
	b _022348AE
_02234658:
	bl sub_02022974
	b _022348AE
_0223465E:
	cmp r1, #9
	bhi _022346AA
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223466E: ; jump table
	.short _02234682 - _0223466E - 2 ; case 0
	.short _02234686 - _0223466E - 2 ; case 1
	.short _0223468A - _0223466E - 2 ; case 2
	.short _0223468E - _0223466E - 2 ; case 3
	.short _02234692 - _0223466E - 2 ; case 4
	.short _02234696 - _0223466E - 2 ; case 5
	.short _0223469A - _0223466E - 2 ; case 6
	.short _0223469E - _0223466E - 2 ; case 7
	.short _022346A2 - _0223466E - 2 ; case 8
	.short _022346A6 - _0223466E - 2 ; case 9
_02234682:
	add r4, #0x41
	b _022348AE
_02234686:
	add r4, #0x42
	b _022348AE
_0223468A:
	add r4, #0x43
	b _022348AE
_0223468E:
	add r4, #0x44
	b _022348AE
_02234692:
	add r4, #0x45
	b _022348AE
_02234696:
	add r4, #0x46
	b _022348AE
_0223469A:
	add r4, #0x47
	b _022348AE
_0223469E:
	add r4, #0x48
	b _022348AE
_022346A2:
	add r4, #0x49
	b _022348AE
_022346A6:
	add r4, #0x4a
	b _022348AE
_022346AA:
	bl sub_02022974
	b _022348AE
_022346B0:
	cmp r6, #8
	bls _022346B6
	b _022348AA
_022346B6:
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022346C2: ; jump table
	.short _022346D4 - _022346C2 - 2 ; case 0
	.short _0223470C - _022346C2 - 2 ; case 1
	.short _0223473A - _022346C2 - 2 ; case 2
	.short _0223477A - _022346C2 - 2 ; case 3
	.short _022347A8 - _022346C2 - 2 ; case 4
	.short _022347C8 - _022346C2 - 2 ; case 5
	.short _02234802 - _022346C2 - 2 ; case 6
	.short _02234848 - _022346C2 - 2 ; case 7
	.short _0223487C - _022346C2 - 2 ; case 8
_022346D4:
	cmp r1, #5
	bhi _02234706
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022346E4: ; jump table
	.short _022346F0 - _022346E4 - 2 ; case 0
	.short _022346F2 - _022346E4 - 2 ; case 1
	.short _022346F6 - _022346E4 - 2 ; case 2
	.short _022346FA - _022346E4 - 2 ; case 3
	.short _022346FE - _022346E4 - 2 ; case 4
	.short _02234702 - _022346E4 - 2 ; case 5
_022346F0:
	b _022348AE
_022346F2:
	mov r4, #0xc3
	b _022348AE
_022346F6:
	mov r4, #0xc4
	b _022348AE
_022346FA:
	mov r4, #0xc5
	b _022348AE
_022346FE:
	mov r4, #0xc6
	b _022348AE
_02234702:
	mov r4, #0xc7
	b _022348AE
_02234706:
	bl sub_02022974
	b _022348AE
_0223470C:
	cmp r1, #3
	bhi _02234734
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223471C: ; jump table
	.short _02234724 - _0223471C - 2 ; case 0
	.short _02234728 - _0223471C - 2 ; case 1
	.short _0223472C - _0223471C - 2 ; case 2
	.short _02234730 - _0223471C - 2 ; case 3
_02234724:
	mov r4, #0xc8
	b _022348AE
_02234728:
	mov r4, #0xc9
	b _022348AE
_0223472C:
	mov r4, #0xca
	b _022348AE
_02234730:
	mov r4, #0xcb
	b _022348AE
_02234734:
	bl sub_02022974
	b _022348AE
_0223473A:
	cmp r1, #6
	bhi _02234774
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223474A: ; jump table
	.short _02234758 - _0223474A - 2 ; case 0
	.short _0223475C - _0223474A - 2 ; case 1
	.short _02234760 - _0223474A - 2 ; case 2
	.short _02234764 - _0223474A - 2 ; case 3
	.short _02234768 - _0223474A - 2 ; case 4
	.short _0223476C - _0223474A - 2 ; case 5
	.short _02234770 - _0223474A - 2 ; case 6
_02234758:
	mov r4, #0xcc
	b _022348AE
_0223475C:
	mov r4, #0xcd
	b _022348AE
_02234760:
	mov r4, #0xce
	b _022348AE
_02234764:
	mov r4, #0xcf
	b _022348AE
_02234768:
	mov r4, #0xd0
	b _022348AE
_0223476C:
	mov r4, #0xd1
	b _022348AE
_02234770:
	mov r4, #0xd2
	b _022348AE
_02234774:
	bl sub_02022974
	b _022348AE
_0223477A:
	cmp r1, #3
	bhi _022347A2
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223478A: ; jump table
	.short _02234792 - _0223478A - 2 ; case 0
	.short _02234796 - _0223478A - 2 ; case 1
	.short _0223479A - _0223478A - 2 ; case 2
	.short _0223479E - _0223478A - 2 ; case 3
_02234792:
	mov r4, #0xd3
	b _022348AE
_02234796:
	mov r4, #0xd4
	b _022348AE
_0223479A:
	mov r4, #0xd5
	b _022348AE
_0223479E:
	mov r4, #0xd6
	b _022348AE
_022347A2:
	bl sub_02022974
	b _022348AE
_022347A8:
	cmp r1, #0
	beq _022347B6
	cmp r1, #1
	beq _022347BA
	cmp r1, #2
	beq _022347BE
	b _022347C2
_022347B6:
	mov r4, #0xd7
	b _022348AE
_022347BA:
	mov r4, #0xd8
	b _022348AE
_022347BE:
	mov r4, #0xd9
	b _022348AE
_022347C2:
	bl sub_02022974
	b _022348AE
_022347C8:
	cmp r1, #5
	bhi _022347FC
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022347D8: ; jump table
	.short _022347E4 - _022347D8 - 2 ; case 0
	.short _022347E8 - _022347D8 - 2 ; case 1
	.short _022347EC - _022347D8 - 2 ; case 2
	.short _022347F0 - _022347D8 - 2 ; case 3
	.short _022347F4 - _022347D8 - 2 ; case 4
	.short _022347F8 - _022347D8 - 2 ; case 5
_022347E4:
	mov r4, #0xda
	b _022348AE
_022347E8:
	mov r4, #0xdb
	b _022348AE
_022347EC:
	mov r4, #0xdc
	b _022348AE
_022347F0:
	mov r4, #0xdd
	b _022348AE
_022347F4:
	mov r4, #0xde
	b _022348AE
_022347F8:
	mov r4, #0xdf
	b _022348AE
_022347FC:
	bl sub_02022974
	b _022348AE
_02234802:
	cmp r1, #7
	bhi _02234842
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234812: ; jump table
	.short _02234822 - _02234812 - 2 ; case 0
	.short _02234826 - _02234812 - 2 ; case 1
	.short _0223482A - _02234812 - 2 ; case 2
	.short _0223482E - _02234812 - 2 ; case 3
	.short _02234832 - _02234812 - 2 ; case 4
	.short _02234836 - _02234812 - 2 ; case 5
	.short _0223483A - _02234812 - 2 ; case 6
	.short _0223483E - _02234812 - 2 ; case 7
_02234822:
	mov r4, #0xe0
	b _022348AE
_02234826:
	mov r4, #0xe1
	b _022348AE
_0223482A:
	mov r4, #0xe2
	b _022348AE
_0223482E:
	mov r4, #0xe3
	b _022348AE
_02234832:
	mov r4, #0xe4
	b _022348AE
_02234836:
	mov r4, #0xe5
	b _022348AE
_0223483A:
	mov r4, #0xe6
	b _022348AE
_0223483E:
	mov r4, #0xe7
	b _022348AE
_02234842:
	bl sub_02022974
	b _022348AE
_02234848:
	cmp r1, #3
	bhi _02234870
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234858: ; jump table
	.short _02234860 - _02234858 - 2 ; case 0
	.short _02234864 - _02234858 - 2 ; case 1
	.short _02234868 - _02234858 - 2 ; case 2
	.short _0223486C - _02234858 - 2 ; case 3
_02234860:
	mov r4, #0xe8
	b _022348AE
_02234864:
	mov r4, #0xe9
	b _022348AE
_02234868:
	mov r4, #0xea
	b _022348AE
_0223486C:
	mov r4, #0xeb
	b _022348AE
_02234870:
	bl sub_02022974
	b _022348AE
	nop
_02234878: .word 0x00000504
_0223487C:
	cmp r1, #3
	bhi _022348A4
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223488C: ; jump table
	.short _02234894 - _0223488C - 2 ; case 0
	.short _02234898 - _0223488C - 2 ; case 1
	.short _0223489C - _0223488C - 2 ; case 2
	.short _022348A0 - _0223488C - 2 ; case 3
_02234894:
	mov r4, #0xec
	b _022348AE
_02234898:
	mov r4, #0xed
	b _022348AE
_0223489C:
	mov r4, #0xee
	b _022348AE
_022348A0:
	mov r4, #0xef
	b _022348AE
_022348A4:
	bl sub_02022974
	b _022348AE
_022348AA:
	bl sub_02022974
_022348AE:
	mov r0, #0x51
	lsl r0, r0, #4
	str r4, [r5, r0]
	ldr r0, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov62_022345B8

	thumb_func_start ov62_022348B8
ov62_022348B8: ; 0x022348B8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r5, [r4, #4]
	ldr r7, _022348F8 ; =0x00000504
	str r5, [r4, r7]
	ldr r6, [r4, #8]
	add r5, r7, #4
	str r6, [r4, r5]
	ldr r5, [r4, #0x10]
	ldr r6, [r5, #0]
	add r5, r7, #0
	add r5, #8
	str r6, [r4, r5]
	add r5, r7, #0
	mov r6, #0
	add r5, #0x10
	str r6, [r4, r5]
	add r7, #0x14
	str r6, [r4, r7]
	bl ov62_022345B8
	mov r1, #0x51
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0xc
	str r0, [r4, r1]
	ldr r0, [r4, #0x10]
	mov r1, #0x12
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022348F8: .word 0x00000504
	thumb_func_end ov62_022348B8

	thumb_func_start ov62_022348FC
ov62_022348FC: ; 0x022348FC
	push {r4, lr}
	ldr r2, _0223496C ; =0x00000514
	add r4, r0, #0
	ldr r1, [r4, r2]
	cmp r1, #0
	beq _0223490E
	cmp r1, #1
	beq _02234934
	b _0223494C
_0223490E:
	add r1, r2, #4
	ldr r1, [r4, r1]
	cmp r1, #8
	bge _02234922
	add r0, r2, #4
	ldr r0, [r4, r0]
	add r1, r0, #1
	add r0, r2, #4
	str r1, [r4, r0]
	pop {r4, pc}
_02234922:
	sub r1, r2, #4
	ldr r1, [r4, r1]
	bl ov62_02231AAC
	ldr r0, _0223496C ; =0x00000514
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, pc}
_02234934:
	bl sub_02022798
	cmp r0, #0
	beq _02234968
	add r0, r4, #0
	bl ov62_02231B8C
	ldr r0, _0223496C ; =0x00000514
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, pc}
_0223494C:
	add r0, r2, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _02234960
	add r0, r2, #4
	ldr r0, [r4, r0]
	sub r1, r0, #1
	add r0, r2, #4
	str r1, [r4, r0]
	pop {r4, pc}
_02234960:
	sub r2, #8
	ldr r1, [r4, r2]
	ldr r0, [r4, #0x10]
	str r1, [r0, #0]
_02234968:
	pop {r4, pc}
	nop
_0223496C: .word 0x00000514
	thumb_func_end ov62_022348FC

	thumb_func_start ov62_02234970
ov62_02234970: ; 0x02234970
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #1
	add r5, r0, #4
_0223497A:
	ldr r0, _022349A4 ; =0x0000087C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02234996
	mov r1, #4
	mov r2, #0
	bl sub_0202FE98
	eor r1, r7
	eor r0, r6
	orr r0, r1
	bne _02234996
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02234996:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223497A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022349A4: .word 0x0000087C
	thumb_func_end ov62_02234970

	thumb_func_start ov62_022349A8
ov62_022349A8: ; 0x022349A8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl ov62_0224112C
	mov r1, #0x51
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0x40
	bl sub_02023790
	add r6, r0, #0
	mov r0, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02002DB4
	cmp r0, #0
	bne _022349DA
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov62_022349E4
_022349DA:
	add r0, r6, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov62_022349A8

	thumb_func_start ov62_022349E4
ov62_022349E4: ; 0x022349E4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl sub_020237E8
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xa
	add r3, r5, #0
	bl sub_0200B144
	mov r1, #0x53
	add r5, r0, #0
	lsl r1, r1, #2
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r5, #0
	bl sub_0200B190
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_022349E4

	.rodata


	.global Unk_ov62_022488F0
Unk_ov62_022488F0: ; 0x022488F0
	.incbin "incbin/overlay62_rodata.bin", 0x1C4, 0x1CC - 0x1C4

	.global Unk_ov62_022488F8
Unk_ov62_022488F8: ; 0x022488F8
	.incbin "incbin/overlay62_rodata.bin", 0x1CC, 0x1D8 - 0x1CC

	.global Unk_ov62_02248904
Unk_ov62_02248904: ; 0x02248904
	.incbin "incbin/overlay62_rodata.bin", 0x1D8, 0x1E4 - 0x1D8

	.global Unk_ov62_02248910
Unk_ov62_02248910: ; 0x02248910
	.incbin "incbin/overlay62_rodata.bin", 0x1E4, 0x1FC - 0x1E4

	.global Unk_ov62_02248928
Unk_ov62_02248928: ; 0x02248928
	.incbin "incbin/overlay62_rodata.bin", 0x1FC, 0x218 - 0x1FC

	.global Unk_ov62_02248944
Unk_ov62_02248944: ; 0x02248944
	.incbin "incbin/overlay62_rodata.bin", 0x218, 0x234 - 0x218

	.global Unk_ov62_02248960
Unk_ov62_02248960: ; 0x02248960
	.incbin "incbin/overlay62_rodata.bin", 0x234, 0x250 - 0x234

	.global Unk_ov62_0224897C
Unk_ov62_0224897C: ; 0x0224897C
	.incbin "incbin/overlay62_rodata.bin", 0x250, 0x26C - 0x250

	.global Unk_ov62_02248998
Unk_ov62_02248998: ; 0x02248998
	.incbin "incbin/overlay62_rodata.bin", 0x26C, 0x288 - 0x26C

	.global Unk_ov62_022489B4
Unk_ov62_022489B4: ; 0x022489B4
	.incbin "incbin/overlay62_rodata.bin", 0x288, 0x2A4 - 0x288

	.global Unk_ov62_022489D0
Unk_ov62_022489D0: ; 0x022489D0
	.incbin "incbin/overlay62_rodata.bin", 0x2A4, 0x2CC - 0x2A4

	.global Unk_ov62_022489F8
Unk_ov62_022489F8: ; 0x022489F8
	.incbin "incbin/overlay62_rodata.bin", 0x2CC, 0x2FC - 0x2CC

	.global Unk_ov62_02248A28
Unk_ov62_02248A28: ; 0x02248A28
	.incbin "incbin/overlay62_rodata.bin", 0x2FC, 0x34C - 0x2FC

	.global Unk_ov62_02248A78
Unk_ov62_02248A78: ; 0x02248A78
	.incbin "incbin/overlay62_rodata.bin", 0x34C, 0x3AC - 0x34C

	.global Unk_ov62_02248AD8
Unk_ov62_02248AD8: ; 0x02248AD8
	.incbin "incbin/overlay62_rodata.bin", 0x3AC, 0x100

