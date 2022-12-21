	.include "macros/function.inc"
	.include "include/unk_020916B4.inc"

	

	.text


	thumb_func_start sub_020916B4
sub_020916B4: ; 0x020916B4
	push {r3, r4, lr}
	sub sp, #4
	bl sub_020B28CC
	bl sub_020BF9AC
	bl sub_020BFB4C
	ldr r0, _02091734 ; =0x04000060
	ldr r1, _02091738 ; =0xFFFFCFFD
	ldrh r2, [r0]
	ldr r3, _0209173C ; =0x0000CFFB
	and r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r4, [r0]
	add r1, r1, #2
	sub r3, #0x1c
	and r4, r2
	mov r2, #8
	orr r2, r4
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r0, #0
	ldr r2, _02091740 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _02091744 ; =0x04000540
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, _02091748 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r1, _0209174C ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strh r0, [r1]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02091734: .word 0x04000060
_02091738: .word 0xFFFFCFFD
_0209173C: .word 0x0000CFFB
_02091740: .word 0x00007FFF
_02091744: .word 0x04000540
_02091748: .word 0xBFFF0000
_0209174C: .word 0x04000008
	thumb_func_end sub_020916B4

	thumb_func_start sub_02091750
sub_02091750: ; 0x02091750
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020917A4 ; =0x000006A4
	ldrsb r0, [r4, r0]
	cmp r0, #4
	bne _0209178E
	bl sub_020241B4
	bl sub_020203EC
	ldr r2, _020917A8 ; =0x04000440
	mov r3, #0
	add r1, r2, #0
	str r3, [r2, #0]
	add r1, #0x14
	str r3, [r1, #0]
	mov r0, #2
	str r0, [r2, #0]
	str r3, [r1, #0]
	bl sub_020AF480
	mov r0, #0x2f
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_02091850
	bl sub_020AF480
	add r0, r4, #0
	bl sub_020918EC
_0209178E:
	bl sub_020A73C0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007768
	ldr r0, _020917AC ; =0x04000540
	mov r1, #1
	str r1, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
_020917A4: .word 0x000006A4
_020917A8: .word 0x04000440
_020917AC: .word 0x04000540
	thumb_func_end sub_02091750

	thumb_func_start sub_020917B0
sub_020917B0: ; 0x020917B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020203B8
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02016114
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02015FB8
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007B6C
	pop {r4, pc}
	thumb_func_end sub_020917B0

	thumb_func_start sub_020917E0
sub_020917E0: ; 0x020917E0
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r3, _02091848 ; =0x020F4FF0
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, sp, #8
	str r0, [r2, #0]
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	mov r0, #0x13
	bl sub_020203AC
	mov r1, #0xad
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r2, #1
	str r2, [sp]
	ldr r0, [r4, r1]
	lsl r1, r2, #0x10
	str r0, [sp, #4]
	ldr r3, _0209184C ; =0x000005C1
	add r0, sp, #0x10
	add r2, sp, #8
	bl sub_02020738
	mov r2, #0xad
	lsl r2, r2, #2
	mov r1, #0x19
	ldr r2, [r4, r2]
	mov r0, #0
	lsl r1, r1, #0xe
	bl sub_020206BC
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020206B0
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020203D4
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_02091848: .word 0x020F4FF0
_0209184C: .word 0x000005C1
	thumb_func_end sub_020917E0

	thumb_func_start sub_02091850
sub_02091850: ; 0x02091850
	push {r4, r5, r6, r7}
	add r4, r0, #0
	ldr r0, _020918B8 ; =0x121400C0
	ldr r1, _020918BC ; =0x040004A4
	ldr r2, _020918C0 ; =0x00003FE8
	str r0, [r1, #0]
	mov r0, #1
	str r0, [r1, #0x5c]
	ldr r0, _020918C4 ; =0x0400048C
	mov r3, #0
	sub r1, #0x24
_02091866:
	str r2, [r1, #0]
	ldrh r7, [r4, #2]
	ldrh r5, [r4]
	ldrh r6, [r4, #4]
	lsl r7, r7, #0x10
	orr r5, r7
	str r5, [r0, #0]
	str r6, [r0, #0]
	str r2, [r1, #0]
	ldrh r7, [r4, #8]
	ldrh r5, [r4, #6]
	ldrh r6, [r4, #0xa]
	lsl r7, r7, #0x10
	orr r5, r7
	str r5, [r0, #0]
	str r6, [r0, #0]
	str r2, [r1, #0]
	ldrh r7, [r4, #0x14]
	ldrh r5, [r4, #0x12]
	ldrh r6, [r4, #0x16]
	lsl r7, r7, #0x10
	orr r5, r7
	str r5, [r0, #0]
	str r6, [r0, #0]
	str r2, [r1, #0]
	ldrh r7, [r4, #0xe]
	ldrh r5, [r4, #0xc]
	ldrh r6, [r4, #0x10]
	lsl r7, r7, #0x10
	orr r5, r7
	str r5, [r0, #0]
	add r3, r3, #1
	add r4, #0x18
	str r6, [r0, #0]
	cmp r3, #4
	blo _02091866
	ldr r0, _020918C8 ; =0x04000504
	mov r1, #0
	str r1, [r0, #0]
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_020918B8: .word 0x121400C0
_020918BC: .word 0x040004A4
_020918C0: .word 0x00003FE8
_020918C4: .word 0x0400048C
_020918C8: .word 0x04000504
	thumb_func_end sub_02091850

	thumb_func_start sub_020918CC
sub_020918CC: ; 0x020918CC
	mov r2, #0
	ldrsh r3, [r0, r2]
	ldrsh r2, [r1, r2]
	add r2, r3, r2
	strh r2, [r0]
	mov r2, #2
	ldrsh r3, [r0, r2]
	ldrsh r2, [r1, r2]
	add r2, r3, r2
	strh r2, [r0, #2]
	mov r2, #4
	ldrsh r3, [r0, r2]
	ldrsh r1, [r1, r2]
	add r1, r3, r1
	strh r1, [r0, #4]
	bx lr
	thumb_func_end sub_020918CC

	thumb_func_start sub_020918EC
sub_020918EC: ; 0x020918EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r2, #0x41
	lsl r2, r2, #4
	add r1, r0, #0
	ldr r1, [r1, r2]
	str r0, [sp]
	cmp r1, #4
	bne _02091906
	bl sub_0208FCD4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02091906:
	cmp r1, #3
	bne _02091932
	add r6, r0, #0
	add r7, r2, #0
	mov r0, #0x2f
	mov r5, #0
	sub r7, #0x60
	lsl r0, r0, #4
_02091916:
	add r4, r6, r7
	add r3, r6, r0
	mov r2, #0xc
_0209191C:
	ldrh r1, [r4]
	add r4, r4, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0209191C
	add r5, r5, #1
	add r6, #0x18
	cmp r5, #4
	blo _02091916
	b _020919BC
_02091932:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	sub r2, #0xc0
	add r0, r0, r2
	str r0, [sp, #0x14]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r1, [sp]
	add r2, r0, #0
	add r1, r1, r0
	str r1, [sp, #0x10]
	ldr r1, [sp]
	add r2, #0x66
	add r1, r1, r2
	str r1, [sp, #0xc]
	ldr r1, [sp]
	add r2, r0, #6
	add r1, r1, r2
	str r1, [sp, #8]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x6c
	add r7, r1, r2
	add r2, r0, #0
	add r2, #0xc
	add r6, r1, r2
	add r2, r0, #0
	add r2, #0x72
	add r0, #0x12
	add r4, r1, r2
	add r5, r1, r0
_02091972:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl sub_020918CC
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_020918CC
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020918CC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020918CC
	ldr r0, [sp, #0x14]
	add r7, #0x18
	add r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r6, #0x18
	add r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r4, #0x18
	add r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r5, #0x18
	add r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blo _02091972
_020919BC:
	mov r1, #0x41
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp]
	str r2, [r0, r1]
	ldr r0, [r0, r1]
	cmp r0, #4
	bne _020919DC
	ldr r0, [sp]
	mov r1, #1
	bl sub_0208FB54
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_020919DC:
	ldr r0, [sp]
	mov r1, #0
	bl sub_0208FB54
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020918EC

	thumb_func_start sub_020919E8
sub_020919E8: ; 0x020919E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r1, _02091B68 ; =0x000006A4
	ldrsb r1, [r0, r1]
	cmp r1, #4
	beq _020919F6
	b _02091B62
_020919F6:
	ldr r7, _02091B6C ; =0x020F5030
	mov r4, #0x2f
	ldrh r2, [r7, #8]
	add r1, sp, #0
	lsl r4, r4, #4
	strh r2, [r1, #0x12]
	ldrh r2, [r7, #0xa]
	add r5, r4, #2
	strh r2, [r1, #0x14]
	ldrh r2, [r7, #0xc]
	strh r2, [r1, #0x16]
	ldrh r3, [r1, #0x12]
	strh r3, [r0, r4]
	ldrh r2, [r1, #0x14]
	strh r2, [r0, r5]
	ldrh r6, [r1, #0x16]
	add r5, r4, #4
	strh r6, [r0, r5]
	add r5, r4, #6
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #8
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0xa
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0xc
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #0xe
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0x10
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0x12
	strh r3, [r0, r5]
	add r3, r4, #0
	add r3, #0x14
	strh r2, [r0, r3]
	add r2, r4, #0
	add r2, #0x16
	strh r6, [r0, r2]
	ldrh r2, [r7, #0x3e]
	ldr r7, _02091B70 ; =0x020F5070
	add r5, r4, #0
	strh r2, [r1, #0xc]
	ldrh r2, [r7]
	add r5, #0x1a
	strh r2, [r1, #0xe]
	ldrh r2, [r7, #2]
	strh r2, [r1, #0x10]
	add r2, r4, #0
	ldrh r3, [r1, #0xc]
	add r2, #0x18
	strh r3, [r0, r2]
	ldrh r2, [r1, #0xe]
	strh r2, [r0, r5]
	add r5, r4, #0
	ldrh r6, [r1, #0x10]
	add r5, #0x1c
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0x1e
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #0x20
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0x22
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0x24
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #0x26
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0x28
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0x2a
	strh r3, [r0, r5]
	add r3, r4, #0
	add r3, #0x2c
	strh r2, [r0, r3]
	add r2, r4, #0
	add r2, #0x2e
	strh r6, [r0, r2]
	ldrh r2, [r7, #0x34]
	add r5, r4, #0
	add r5, #0x32
	strh r2, [r1, #6]
	ldrh r2, [r7, #0x36]
	strh r2, [r1, #8]
	ldrh r2, [r7, #0x38]
	strh r2, [r1, #0xa]
	add r2, r4, #0
	ldrh r3, [r1, #6]
	add r2, #0x30
	strh r3, [r0, r2]
	ldrh r2, [r1, #8]
	strh r2, [r0, r5]
	add r5, r4, #0
	ldrh r6, [r1, #0xa]
	add r5, #0x34
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0x36
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #0x38
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0x3a
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0x3c
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #0x3e
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0x40
	strh r6, [r0, r5]
	add r5, r4, #0
	add r5, #0x42
	strh r3, [r0, r5]
	add r3, r4, #0
	add r3, #0x44
	strh r2, [r0, r3]
	add r2, r4, #0
	add r2, #0x46
	strh r6, [r0, r2]
	ldr r2, _02091B74 ; =0x020F50B0
	add r5, r4, #0
	ldrh r3, [r2, #0x2a]
	add r5, #0x4a
	strh r3, [r1]
	ldrh r3, [r2, #0x2c]
	strh r3, [r1, #2]
	ldrh r2, [r2, #0x2e]
	strh r2, [r1, #4]
	add r2, r4, #0
	ldrh r3, [r1]
	add r2, #0x48
	strh r3, [r0, r2]
	ldrh r2, [r1, #2]
	strh r2, [r0, r5]
	add r5, r4, #0
	ldrh r1, [r1, #4]
	add r5, #0x4c
	strh r1, [r0, r5]
	add r5, r4, #0
	add r5, #0x4e
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #0x50
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0x52
	strh r1, [r0, r5]
	add r5, r4, #0
	add r5, #0x54
	strh r3, [r0, r5]
	add r5, r4, #0
	add r5, #0x56
	strh r2, [r0, r5]
	add r5, r4, #0
	add r5, #0x58
	strh r1, [r0, r5]
	add r5, r4, #0
	add r5, #0x5a
	strh r3, [r0, r5]
	add r3, r4, #0
	add r3, #0x5c
	strh r2, [r0, r3]
	add r4, #0x5e
	strh r1, [r0, r4]
	bl sub_02091D50
_02091B62:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02091B68: .word 0x000006A4
_02091B6C: .word 0x020F5030
_02091B70: .word 0x020F5070
_02091B74: .word 0x020F50B0
	thumb_func_end sub_020919E8

	thumb_func_start sub_02091B78
sub_02091B78: ; 0x02091B78
	push {r4, r5}
	cmp r2, #0xff
	bne _02091B8E
	ldrh r2, [r0]
	strh r2, [r1]
	ldrh r2, [r0, #2]
	strh r2, [r1, #2]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
	pop {r4, r5}
	bx lr
_02091B8E:
	cmp r2, #0
	bne _02091BA2
	ldrh r2, [r0, #6]
	strh r2, [r1]
	ldrh r2, [r0, #8]
	strh r2, [r1, #2]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #4]
	pop {r4, r5}
	bx lr
_02091BA2:
	mov r3, #6
	ldrsh r5, [r0, r3]
	mov r3, #0xc
	ldrsh r3, [r0, r3]
	add r4, r3, #0
	mul r4, r2
	add r3, r5, r4
	strh r3, [r1]
	mov r3, #8
	ldrsh r5, [r0, r3]
	mov r3, #0xe
	ldrsh r3, [r0, r3]
	add r4, r3, #0
	mul r4, r2
	add r3, r5, r4
	strh r3, [r1, #2]
	mov r3, #0xa
	ldrsh r4, [r0, r3]
	mov r3, #0x10
	ldrsh r0, [r0, r3]
	mul r2, r0
	add r0, r4, r2
	strh r0, [r1, #4]
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02091B78

	thumb_func_start sub_02091BD4
sub_02091BD4: ; 0x02091BD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r0]
	add r6, r2, #0
	sub r7, r1, r0
	add r0, r7, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	mov r1, #0
	bl sub_020E1108
	bls _02091C28
	add r0, r7, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _02091D48 ; =0x45800000
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	b _02091C4E
_02091C28:
	add r0, r7, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _02091D48 ; =0x45800000
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
	bl sub_020E1740
_02091C4E:
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	strh r0, [r6]
	mov r0, #2
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r0]
	sub r7, r1, r0
	add r0, r7, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	mov r1, #0
	bl sub_020E1108
	bls _02091CA0
	add r0, r7, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _02091D48 ; =0x45800000
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	b _02091CC6
_02091CA0:
	add r0, r7, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _02091D48 ; =0x45800000
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
	bl sub_020E1740
_02091CC6:
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	strh r0, [r6, #2]
	mov r0, #4
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r0]
	sub r4, r1, r0
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	mov r1, #0
	bl sub_020E1108
	bls _02091D18
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _02091D48 ; =0x45800000
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	bl sub_020E1740
	b _02091D3E
_02091D18:
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _02091D48 ; =0x45800000
	bl sub_020E1304
	ldr r1, _02091D4C ; =0x40800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _02091D48 ; =0x45800000
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
	bl sub_020E1740
_02091D3E:
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	strh r0, [r6, #4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02091D48: .word 0x45800000
_02091D4C: .word 0x40800000
	thumb_func_end sub_02091BD4

	thumb_func_start sub_02091D50
sub_02091D50: ; 0x02091D50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _02091F18 ; =0x00000295
	add r5, r0, #0
	mov r1, #0x3b
	lsl r1, r1, #4
	ldrb r2, [r5, r2]
	ldr r0, _02091F1C ; =0x020F4FFC
	add r1, r5, r1
	bl sub_02091B78
	ldr r2, _02091F20 ; =0x00000296
	ldr r1, _02091F24 ; =0x000003B6
	ldrb r2, [r5, r2]
	ldr r0, _02091F28 ; =0x020F500E
	add r1, r5, r1
	bl sub_02091B78
	ldr r2, _02091F2C ; =0x00000297
	ldr r1, _02091F30 ; =0x000003C2
	ldrb r2, [r5, r2]
	ldr r0, _02091F34 ; =0x020F5020
	add r1, r5, r1
	bl sub_02091B78
	mov r1, #0xef
	lsl r1, r1, #2
	ldr r0, _02091F38 ; =0x020F5032
	add r1, r5, r1
	mov r2, #0
	bl sub_02091B78
	ldr r2, _02091F3C ; =0x00000299
	mov r1, #0xf2
	lsl r1, r1, #2
	ldrb r2, [r5, r2]
	ldr r0, _02091F40 ; =0x020F5044
	add r1, r5, r1
	bl sub_02091B78
	ldr r2, _02091F18 ; =0x00000295
	ldr r1, _02091F44 ; =0x000003CE
	ldrb r2, [r5, r2]
	ldr r0, _02091F48 ; =0x020F5056
	add r1, r5, r1
	bl sub_02091B78
	ldr r1, _02091F4C ; =0x000003DA
	ldr r0, _02091F50 ; =0x020F5068
	add r1, r5, r1
	mov r2, #0
	bl sub_02091B78
	mov r2, #0xa6
	lsl r2, r2, #2
	mov r1, #0xf5
	lsl r1, r1, #2
	ldrb r2, [r5, r2]
	ldr r0, _02091F54 ; =0x020F507A
	add r1, r5, r1
	bl sub_02091B78
	ldr r2, _02091F3C ; =0x00000299
	mov r1, #0x3e
	lsl r1, r1, #4
	ldrb r2, [r5, r2]
	ldr r0, _02091F58 ; =0x020F508C
	add r1, r5, r1
	bl sub_02091B78
	ldr r1, _02091F5C ; =0x000003E6
	ldr r0, _02091F60 ; =0x020F509E
	add r1, r5, r1
	mov r2, #0
	bl sub_02091B78
	ldr r2, _02091F2C ; =0x00000297
	ldr r1, _02091F64 ; =0x000003F2
	ldrb r2, [r5, r2]
	ldr r0, _02091F68 ; =0x020F50B0
	add r1, r5, r1
	bl sub_02091B78
	mov r2, #0xa6
	lsl r2, r2, #2
	mov r1, #0xfb
	lsl r1, r1, #2
	ldrb r2, [r5, r2]
	ldr r0, _02091F6C ; =0x020F50C2
	add r1, r5, r1
	bl sub_02091B78
	mov r1, #0xfe
	lsl r1, r1, #2
	ldr r0, _02091F70 ; =0x020F50D4
	add r1, r5, r1
	mov r2, #0
	bl sub_02091B78
	ldr r2, _02091F20 ; =0x00000296
	ldr r1, _02091F74 ; =0x000003FE
	ldrb r2, [r5, r2]
	ldr r0, _02091F78 ; =0x020F50E6
	add r1, r5, r1
	bl sub_02091B78
	ldr r2, _02091F2C ; =0x00000297
	ldr r1, _02091F7C ; =0x0000040A
	ldrb r2, [r5, r2]
	ldr r0, _02091F80 ; =0x020F50F8
	add r1, r5, r1
	bl sub_02091B78
	mov r2, #0xa6
	lsl r2, r2, #2
	ldr r1, _02091F84 ; =0x00000404
	ldrb r2, [r5, r2]
	ldr r0, _02091F88 ; =0x020F510A
	add r1, r5, r1
	bl sub_02091B78
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #0x35
	lsl r0, r0, #4
	add r1, r5, r0
	str r1, [sp, #0x20]
	add r1, r0, #0
	add r1, #0x60
	add r1, r5, r1
	str r1, [sp, #0x1c]
	add r1, r0, #0
	sub r1, #0x60
	add r1, r5, r1
	str r1, [sp, #0x18]
	add r1, r0, #6
	add r1, r5, r1
	str r1, [sp, #0x14]
	add r1, r0, #0
	add r1, #0x66
	add r1, r5, r1
	str r1, [sp, #0x10]
	add r1, r0, #0
	sub r1, #0x5a
	add r1, r5, r1
	str r1, [sp, #0xc]
	add r1, r0, #0
	add r1, #0xc
	add r1, r5, r1
	str r1, [sp, #8]
	add r1, r0, #0
	add r1, #0x6c
	add r1, r5, r1
	str r1, [sp, #4]
	add r1, r0, #0
	sub r1, #0x54
	add r1, r5, r1
	str r1, [sp]
	add r1, r0, #0
	add r1, #0x12
	add r7, r5, r1
	add r1, r0, #0
	add r1, #0x72
	sub r0, #0x4e
	add r6, r5, r1
	add r4, r5, r0
_02091E9C:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	bl sub_02091BD4
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_02091BD4
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl sub_02091BD4
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02091BD4
	ldr r0, [sp, #0x20]
	add r7, #0x18
	add r0, #0x18
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r6, #0x18
	add r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r4, #0x18
	add r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #4
	blo _02091E9C
	mov r0, #0x41
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02091F18: .word 0x00000295
_02091F1C: .word 0x020F4FFC
_02091F20: .word 0x00000296
_02091F24: .word 0x000003B6
_02091F28: .word 0x020F500E
_02091F2C: .word 0x00000297
_02091F30: .word 0x000003C2
_02091F34: .word 0x020F5020
_02091F38: .word 0x020F5032
_02091F3C: .word 0x00000299
_02091F40: .word 0x020F5044
_02091F44: .word 0x000003CE
_02091F48: .word 0x020F5056
_02091F4C: .word 0x000003DA
_02091F50: .word 0x020F5068
_02091F54: .word 0x020F507A
_02091F58: .word 0x020F508C
_02091F5C: .word 0x000003E6
_02091F60: .word 0x020F509E
_02091F64: .word 0x000003F2
_02091F68: .word 0x020F50B0
_02091F6C: .word 0x020F50C2
_02091F70: .word 0x020F50D4
_02091F74: .word 0x000003FE
_02091F78: .word 0x020F50E6
_02091F7C: .word 0x0000040A
_02091F80: .word 0x020F50F8
_02091F84: .word 0x00000404
_02091F88: .word 0x020F510A
	thumb_func_end sub_02091D50

	thumb_func_start sub_02091F8C
sub_02091F8C: ; 0x02091F8C
	push {r4, lr}
	sub sp, #0x20
	add r4, r0, #0
	mov r0, #0x13
	bl sub_0200762C
	mov r1, #0xae
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl sub_0208DD48
	add r1, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x11]
	cmp r0, #2
	add r0, sp, #0x10
	bne _02091FBE
	mov r2, #2
	mov r3, #0
	bl sub_02075F0C
	b _02091FC4
_02091FBE:
	mov r2, #2
	bl sub_02075EF4
_02091FC4:
	mov r2, #0xaf
	lsl r2, r2, #2
	mov r0, #0x6a
	add r1, r4, r2
	sub r2, #0x60
	lsl r0, r0, #4
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r3, #1
	bl sub_020789BC
	mov r1, #0x97
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	add r1, #0x42
	ldrh r1, [r4, r1]
	mov r2, #0x1c
	bl sub_020759CC
	mov r1, #1
	eor r0, r1
	mov r1, #0xbb
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	mov r2, #0
	str r2, [sp]
	sub r0, #0x30
	str r2, [sp, #4]
	add r0, r4, r0
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	sub r1, #0x34
	ldr r0, [r4, r1]
	add r1, sp, #0x10
	mov r2, #0x34
	mov r3, #0x68
	bl sub_02007C34
	mov r2, #0xba
	lsl r2, r2, #2
	str r0, [r4, r2]
	ldr r0, [r4, r2]
	add r2, r2, #4
	ldr r2, [r4, r2]
	mov r1, #0x23
	bl sub_02007DEC
	add sp, #0x20
	pop {r4, pc}
	thumb_func_end sub_02091F8C

	thumb_func_start sub_02092028
sub_02092028: ; 0x02092028
	push {r3, r4, lr}
	sub sp, #0xc
	mov r2, #0x2a
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _02092062
	mov r0, #2
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x4c
	ldr r0, [r4, r0]
	add r1, r2, #0
	str r0, [sp, #4]
	mov r3, #0
	mov r0, #0x6a
	str r3, [sp, #8]
	lsl r0, r0, #4
	add r1, #0x44
	add r2, #0x48
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl sub_020789F4
	add sp, #0xc
	pop {r3, r4, pc}
_02092062:
	add r2, #0x48
	ldr r0, [r4, r2]
	mov r1, #1
	bl sub_02007B98
	mov r3, #0xbb
	lsl r3, r3, #2
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, r3]
	add r1, r3, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	sub r2, r3, #4
	mov r0, #0x6a
	sub r3, #0x90
	lsl r0, r0, #4
	sub r1, #8
	ldrh r3, [r4, r3]
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl sub_020789F4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02092028

	thumb_func_start sub_02092098
sub_02092098: ; 0x02092098
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02016114
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007B6C
	add r0, r4, #0
	bl sub_02091F8C
	add r0, r4, #0
	bl sub_02092028
	pop {r4, pc}
	thumb_func_end sub_02092098

	.rodata


	.global Unk_020F4FF0
Unk_020F4FF0: ; 0x020F4FF0
	.incbin "incbin/arm9_rodata.bin", 0x103B0, 0x103BC - 0x103B0

	.global Unk_020F4FFC
Unk_020F4FFC: ; 0x020F4FFC
	.incbin "incbin/arm9_rodata.bin", 0x103BC, 0x120

