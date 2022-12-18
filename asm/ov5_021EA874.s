	.include "macros/function.inc"
	.include "include/ov5_021EA874.inc"

	

	.text


	thumb_func_start ov5_021EA874
ov5_021EA874: ; 0x021EA874
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_0202B370
	mov r1, #0
	bl sub_0202AED8
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x4c
	mov r2, #4
	bl sub_020391DC
	cmp r0, #0
	bne _021EA89C
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_021EA89C:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x8c
	str r1, [r0, #0]
	ldr r0, [r4, #0x34]
	bl sub_02025E44
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	ldr r2, _021EA8E8 ; =0x000001E2
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xa
	bl sub_0200DD0C
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	ldr r2, _021EA8EC ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #1
	str r0, [r4, #0x48]
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_021EA8E8: .word 0x000001E2
_021EA8EC: .word 0x000003D9
	thumb_func_end ov5_021EA874

	thumb_func_start ov5_021EA8F0
ov5_021EA8F0: ; 0x021EA8F0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0
	add r6, r0, #0
	mvn r1, r1
	add r0, #0x8c
	str r1, [r0, #0]
	mov r4, #0
	bl sub_02035E18
	cmp r0, #0
	ble _021EA92C
	add r5, r6, #0
_021EA90A:
	ldr r0, [r5, #0x4c]
	cmp r0, #2
	bne _021EA920
	add r0, r6, #0
	add r0, #0x8c
	str r4, [r0, #0]
	lsl r0, r4, #2
	mov r1, #0
	add r0, r6, r0
	str r1, [r0, #0x4c]
	b _021EA92C
_021EA920:
	add r5, r5, #4
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _021EA90A
_021EA92C:
	add r0, r6, #0
	add r0, #0x8c
	ldr r1, [r0, #0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _021EA940
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021EA940:
	ldr r0, [r6, #0x34]
	bl sub_0207D990
	ldr r1, _021EA9B8 ; =0x000001B5
	mov r2, #1
	mov r3, #4
	bl sub_0207D688
	cmp r0, #1
	bne _021EA97A
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r6, #0x38]
	mov r1, #0
	bl sub_0200B498
	add r0, r6, #0
	mov r1, #0x39
	bl ov5_021EAE78
	mov r0, #2
	str r0, [r6, #0x48]
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021EA97A:
	ldr r0, [r6, #0x34]
	bl sub_0202B370
	add r4, r0, #0
	mov r5, #0
_021EA984:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0202AF78
	cmp r0, #0
	bne _021EA9A6
	mov r0, #0
	add r1, r6, #0
	str r0, [sp]
	add r1, #0x8c
	ldr r0, [r6, #0x34]
	ldr r1, [r1, #0]
	add r2, r5, #0
	mov r3, #4
	bl sub_02039298
	b _021EA9AC
_021EA9A6:
	add r5, r5, #1
	cmp r5, #0x20
	blt _021EA984
_021EA9AC:
	mov r0, #1
	str r0, [r6, #0x48]
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021EA9B8: .word 0x000001B5
	thumb_func_end ov5_021EA8F0

	thumb_func_start ov5_021EA9BC
ov5_021EA9BC: ; 0x021EA9BC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021EA9E8
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _021EA9F0 ; =0x021FAF00
	ldr r0, [r0, #8]
	ldr r2, _021EA9F4 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x44]
	mov r0, #3
	str r0, [r4, #0x48]
_021EA9E8:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EA9F0: .word 0x021FAF00
_021EA9F4: .word 0x000003D9
	thumb_func_end ov5_021EA9BC

	thumb_func_start ov5_021EA9F8
ov5_021EA9F8: ; 0x021EA9F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021EAA14
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021EAA14:
	cmp r0, #0
	bne _021EAA60
	ldr r0, [r6, #0x34]
	bl sub_0202B370
	add r5, r0, #0
	mov r4, #0
_021EAA22:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202AF78
	cmp r0, #0
	bne _021EAA44
	mov r0, #0
	add r1, r6, #0
	str r0, [sp]
	add r1, #0x8c
	ldr r0, [r6, #0x34]
	ldr r1, [r1, #0]
	add r2, r4, #0
	mov r3, #4
	bl sub_02039298
	b _021EAA4A
_021EAA44:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021EAA22
_021EAA4A:
	cmp r4, #0x20
	bne _021EAA60
	add r0, r6, #0
	mov r1, #0x3a
	bl ov5_021EAE78
	mov r0, #4
	str r0, [r6, #0x48]
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021EAA60:
	mov r0, #1
	str r0, [r6, #0x48]
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021EA9F8

	thumb_func_start ov5_021EAA6C
ov5_021EAA6C: ; 0x021EAA6C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021EAA98
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _021EAAA0 ; =0x021FAF00
	ldr r0, [r0, #8]
	ldr r2, _021EAAA4 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x44]
	mov r0, #5
	str r0, [r4, #0x48]
_021EAA98:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EAAA0: .word 0x021FAF00
_021EAAA4: .word 0x000003D9
	thumb_func_end ov5_021EAA6C

	thumb_func_start ov5_021EAAA8
ov5_021EAAA8: ; 0x021EAAA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021EAAC0
	mov r0, #0
	pop {r4, pc}
_021EAAC0:
	cmp r0, #0
	bne _021EAAC8
	mov r0, #8
	b _021EAAE6
_021EAAC8:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl sub_0200B498
	add r0, r4, #0
	mov r1, #0x3b
	bl ov5_021EAE78
	mov r0, #6
_021EAAE6:
	str r0, [r4, #0x48]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021EAAA8

	thumb_func_start ov5_021EAAEC
ov5_021EAAEC: ; 0x021EAAEC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021EAB18
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _021EAB20 ; =0x021FAF00
	ldr r0, [r0, #8]
	ldr r2, _021EAB24 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x44]
	mov r0, #7
	str r0, [r4, #0x48]
_021EAB18:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EAB20: .word 0x021FAF00
_021EAB24: .word 0x000003D9
	thumb_func_end ov5_021EAAEC

	thumb_func_start ov5_021EAB28
ov5_021EAB28: ; 0x021EAB28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021EAB40
	mov r0, #0
	pop {r4, pc}
_021EAB40:
	cmp r0, #0
	bne _021EAB48
	mov r0, #0xc
	b _021EAB52
_021EAB48:
	add r0, r4, #0
	mov r1, #0x3a
	bl ov5_021EAE78
	mov r0, #4
_021EAB52:
	str r0, [r4, #0x48]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021EAB28

	thumb_func_start ov5_021EAB58
ov5_021EAB58: ; 0x021EAB58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_0202B370
	add r6, r0, #0
	bl sub_0202AF94
	add r7, r0, #0
	add r0, r7, #1
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0]
	mov r0, #1
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _021EAC34 ; =0x000001AB
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x30]
	add r1, #0x20
	ldr r0, [r0, #8]
	mov r2, #3
	mov r3, #0x13
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _021EAC38 ; =0x000003D9
	add r0, #0x20
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r4, #0
_021EABAA:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202AF78
	cmp r0, #0
	beq _021EABD0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202AEF0
	add r1, r0, #0
	ldr r0, [r5, #8]
	bl sub_02023D28
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	add r2, r4, #0
	bl sub_02013A6C
_021EABD0:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021EABAA
	mov r2, #0xb
	add r3, r2, #0
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x3c]
	sub r3, #0xd
	bl sub_02013A4C
	ldr r4, _021EAC3C ; =0x021FAF08
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r7, #1
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	mov r1, #5
	strh r1, [r0, #0x12]
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x20
	str r0, [sp, #0x20]
	ldr r0, _021EAC40 ; =ov5_021EAF90
	str r5, [sp, #0x30]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r2, r1, #0
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #4]
	add r0, r5, #0
	add r0, #0x20
	bl sub_0201A954
	mov r0, #9
	str r0, [r5, #0x48]
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021EAC34: .word 0x000001AB
_021EAC38: .word 0x000003D9
_021EAC3C: .word 0x021FAF08
_021EAC40: .word ov5_021EAF90
	thumb_func_end ov5_021EAB58

	thumb_func_start ov5_021EAC44
ov5_021EAC44: ; 0x021EAC44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_02001288
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _021EAC62
	add r0, r0, #1
	cmp r4, r0
	bne _021EAC8A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EAC62:
	ldr r0, _021EACF8 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl sub_0200B498
	add r0, r5, #0
	mov r1, #0x3b
	bl ov5_021EAE78
	mov r0, #6
	str r0, [r5, #0x48]
	b _021EACD2
_021EAC8A:
	ldr r0, _021EACF8 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r0, #0x90
	str r4, [r0, #0]
	ldr r0, [r5, #0x34]
	bl sub_0202B370
	add r7, r0, #0
	mov r0, #4
	bl sub_02025E6C
	add r6, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202AEF0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02025EC0
	ldr r0, [r5, #0x38]
	mov r1, #0
	add r2, r6, #0
	bl sub_0200B498
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #0x3c
	bl ov5_021EAE78
	mov r0, #0xa
	str r0, [r5, #0x48]
_021EACD2:
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0
	bl sub_0200DC9C
	add r0, r5, #0
	add r0, #0x20
	bl sub_0201A8FC
	mov r1, #0
	ldr r0, [r5, #4]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, [r5, #0]
	bl sub_02013A3C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021EACF8: .word 0x000005DC
	thumb_func_end ov5_021EAC44

	thumb_func_start ov5_021EACFC
ov5_021EACFC: ; 0x021EACFC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021EAD28
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _021EAD30 ; =0x021FAF00
	ldr r0, [r0, #8]
	ldr r2, _021EAD34 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x44]
	mov r0, #0xb
	str r0, [r4, #0x48]
_021EAD28:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EAD30: .word 0x021FAF00
_021EAD34: .word 0x000003D9
	thumb_func_end ov5_021EACFC

	thumb_func_start ov5_021EAD38
ov5_021EAD38: ; 0x021EAD38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_0202B370
	add r4, r0, #0
	ldr r0, [r5, #0x44]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021EAD58
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EAD58:
	cmp r0, #0
	bne _021EAD90
	ldr r0, [r5, #0x34]
	bl sub_0203068C
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1, #0]
	bl sub_02030788
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl sub_0202AFD4
	mov r0, #0
	add r1, r5, #0
	str r0, [sp]
	add r1, #0x8c
	ldr r0, [r5, #0x34]
	ldr r1, [r1, #0]
	mov r2, #0x1f
	mov r3, #4
	bl sub_02039298
	mov r0, #1
	b _021EADAE
_021EAD90:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl sub_0200B498
	add r0, r5, #0
	mov r1, #0x3b
	bl ov5_021EAE78
	mov r0, #6
_021EADAE:
	str r0, [r5, #0x48]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EAD38

	thumb_func_start ov5_021EADB4
ov5_021EADB4: ; 0x021EADB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	ldr r0, [r4, #0x48]
	cmp r0, #0xc
	bhi _021EAE74
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EADD6: ; jump table
	.short _021EADF0 - _021EADD6 - 2 ; case 0
	.short _021EAE00 - _021EADD6 - 2 ; case 1
	.short _021EAE10 - _021EADD6 - 2 ; case 2
	.short _021EAE18 - _021EADD6 - 2 ; case 3
	.short _021EAE20 - _021EADD6 - 2 ; case 4
	.short _021EAE28 - _021EADD6 - 2 ; case 5
	.short _021EAE30 - _021EADD6 - 2 ; case 6
	.short _021EAE38 - _021EADD6 - 2 ; case 7
	.short _021EAE40 - _021EADD6 - 2 ; case 8
	.short _021EAE48 - _021EADD6 - 2 ; case 9
	.short _021EAE50 - _021EADD6 - 2 ; case 10
	.short _021EAE58 - _021EADD6 - 2 ; case 11
	.short _021EAE60 - _021EADD6 - 2 ; case 12
_021EADF0:
	add r0, r4, #0
	bl ov5_021EA874
	cmp r0, #0
	beq _021EAE74
	mov r0, #0xc
	str r0, [r4, #0x48]
	b _021EAE74
_021EAE00:
	add r0, r4, #0
	bl ov5_021EA8F0
	cmp r0, #0
	beq _021EAE74
	mov r0, #0xc
	str r0, [r4, #0x48]
	b _021EAE74
_021EAE10:
	add r0, r4, #0
	bl ov5_021EA9BC
	b _021EAE74
_021EAE18:
	add r0, r4, #0
	bl ov5_021EA9F8
	b _021EAE74
_021EAE20:
	add r0, r4, #0
	bl ov5_021EAA6C
	b _021EAE74
_021EAE28:
	add r0, r4, #0
	bl ov5_021EAAA8
	b _021EAE74
_021EAE30:
	add r0, r4, #0
	bl ov5_021EAAEC
	b _021EAE74
_021EAE38:
	add r0, r4, #0
	bl ov5_021EAB28
	b _021EAE74
_021EAE40:
	add r0, r4, #0
	bl ov5_021EAB58
	b _021EAE74
_021EAE48:
	add r0, r4, #0
	bl ov5_021EAC44
	b _021EAE74
_021EAE50:
	add r0, r4, #0
	bl ov5_021EACFC
	b _021EAE74
_021EAE58:
	add r0, r4, #0
	bl ov5_021EAD38
	b _021EAE74
_021EAE60:
	add r0, r4, #0
	bl ov5_021EAF1C
	add r0, r4, #0
	bl sub_020181C4
	bl sub_0203D140
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EAE74:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EADB4

	thumb_func_start ov5_021EAE78
ov5_021EAE78: ; 0x021EAE78
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x10
	add r5, r1, #0
	bl sub_0201A7CC
	cmp r0, #0
	beq _021EAE90
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A8FC
_021EAE90:
	ldr r0, [r4, #0x3c]
	ldr r2, [r4, #8]
	add r1, r5, #0
	bl sub_0200B1B8
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #8]
	bl sub_0200C388
	ldr r0, [r4, #0x30]
	add r1, r4, #0
	ldr r0, [r0, #8]
	add r1, #0x10
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x10
	bl sub_0205D944
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	mov r3, #1
	bl sub_0205D994
	str r0, [r4, #0x40]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EAE78

	thumb_func_start ov5_021EAEE0
ov5_021EAEE0: ; 0x021EAEE0
	push {r4, lr}
	mov r1, #0
	mov r2, #0x94
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #4
	bl sub_0200B358
	str r0, [r4, #0x38]
	ldr r2, _021EAF18 ; =0x000002A3
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	str r0, [r4, #0x3c]
	mov r0, #0x6e
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0xc]
	mov r0, #0x6e
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
_021EAF18: .word 0x000002A3
	thumb_func_end ov5_021EAEE0

	thumb_func_start ov5_021EAF1C
ov5_021EAF1C: ; 0x021EAF1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0200B190
	ldr r0, [r4, #0x38]
	bl sub_0200B3F0
	ldr r0, [r4, #0xc]
	bl sub_020237BC
	ldr r0, [r4, #8]
	bl sub_020237BC
	add r0, r4, #0
	add r0, #0x10
	bl sub_0201A7CC
	cmp r0, #0
	beq _021EAF4C
	add r4, #0x10
	add r0, r4, #0
	bl sub_0201A8FC
_021EAF4C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021EAF1C

	thumb_func_start ov5_021EAF50
ov5_021EAF50: ; 0x021EAF50
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r5, [r6, #0x10]
	mov r0, #0xb
	mov r1, #0x94
	bl sub_02018184
	add r4, r0, #0
	bl ov5_021EAEE0
	str r6, [r4, #0x30]
	ldr r0, [r6, #0xc]
	str r0, [r4, #0x34]
	mov r0, #0
	str r0, [r4, #0x48]
	cmp r5, #0
	bne _021EAF7E
	ldr r1, _021EAF8C ; =ov5_021EADB4
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050904
	pop {r4, r5, r6, pc}
_021EAF7E:
	ldr r1, _021EAF8C ; =ov5_021EADB4
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_021EAF8C: .word ov5_021EADB4
	thumb_func_end ov5_021EAF50

	thumb_func_start ov5_021EAF90
ov5_021EAF90: ; 0x021EAF90
	push {r3, lr}
	cmp r2, #0
	bne _021EAF9C
	ldr r0, _021EAFA0 ; =0x000005DC
	bl sub_02005748
_021EAF9C:
	pop {r3, pc}
	nop
_021EAFA0: .word 0x000005DC
	thumb_func_end ov5_021EAF90

	.rodata


	.global Unk_ov5_021FAF00
Unk_ov5_021FAF00: ; 0x021FAF00
	.incbin "incbin/overlay5_rodata.bin", 0x25EC, 0x25F4 - 0x25EC

	.global Unk_ov5_021FAF08
Unk_ov5_021FAF08: ; 0x021FAF08
	.incbin "incbin/overlay5_rodata.bin", 0x25F4, 0x20

