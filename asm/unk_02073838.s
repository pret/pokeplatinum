	.include "macros/function.inc"
	.include "include/unk_02073838.inc"

	

	.text


	thumb_func_start sub_02073838
sub_02073838: ; 0x02073838
	mov r2, #0x14
	mov r1, #0
_0207383C:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0207383C
	bx lr
	; .align 2, 0
	thumb_func_end sub_02073838

	thumb_func_start sub_02073848
sub_02073848: ; 0x02073848
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02073838
	str r4, [r5, #4]
	mov r0, #0
	str r0, [r5, #0]
	add r0, r4, #0
	bl NNS_G3dGetMdlSet
	str r0, [r5, #8]
	cmp r0, #0
	beq _0207388E
	add r2, r0, #0
	add r2, #8
	beq _02073882
	ldrb r1, [r0, #9]
	cmp r6, r1
	bhs _02073882
	ldrh r3, [r0, #0xe]
	add r1, r2, r3
	ldrh r2, [r2, r3]
	add r1, r1, #4
	add r3, r2, #0
	mul r3, r6
	add r1, r1, r3
	b _02073884
_02073882:
	mov r1, #0
_02073884:
	cmp r1, #0
	beq _0207388E
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _02073890
_0207388E:
	mov r0, #0
_02073890:
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl NNS_G3dGetTex
	str r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02073848

	thumb_func_start sub_0207389C
sub_0207389C: ; 0x0207389C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	add r4, r1, #0
	add r1, r3, #0
	str r0, [sp]
	add r0, r2, #0
	ldr r3, [sp, #0x10]
	mov r2, #0
	bl sub_0200723C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02073848
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207389C

	thumb_func_start sub_020738C0
sub_020738C0: ; 0x020738C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0201CBCC
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	bl NNS_G3dBindMdlSet
	mov r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_020738C0

	thumb_func_start sub_020738D8
sub_020738D8: ; 0x020738D8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020738C0
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020738D8

	thumb_func_start sub_020738EC
sub_020738EC: ; 0x020738EC
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02073904 ; =sub_020738D8
	ldr r2, _02073908 ; =0x0000FFFF
	bl sub_0200DA04
	cmp r0, #0
	bne _02073900
	bl GF_AssertFail
_02073900:
	pop {r3, pc}
	nop
_02073904: .word sub_020738D8
_02073908: .word 0x0000FFFF
	thumb_func_end sub_020738EC

	thumb_func_start sub_0207390C
sub_0207390C: ; 0x0207390C
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02073918
	bl sub_020181C4
_02073918:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0207390C

	thumb_func_start sub_0207391C
sub_0207391C: ; 0x0207391C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02073950
	add r1, sp, #4
	add r2, sp, #0
	bl NNS_G3dTexReleaseTexKey
	ldr r1, _02073954 ; =0x02100DF0
	ldr r0, [sp, #4]
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _02073954 ; =0x02100DF0
	ldr r0, [sp]
	ldr r1, [r1, #0]
	blx r1
	ldr r0, [r4, #0x10]
	bl NNS_G3dPlttReleasePlttKey
	ldr r1, _02073958 ; =0x02100DF8
	ldr r1, [r1, #0]
	blx r1
	mov r0, #0
	str r0, [r4, #0x10]
_02073950:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02073954: .word 0x02100DF0
_02073958: .word 0x02100DF8
	thumb_func_end sub_0207391C

	thumb_func_start sub_0207395C
sub_0207395C: ; 0x0207395C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0207391C
	add r0, r4, #0
	bl sub_0207390C
	add r0, r4, #0
	bl sub_02073838
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207395C

	thumb_func_start sub_02073974
sub_02073974: ; 0x02073974
	ldr r3, _0207397C ; =memset
	mov r1, #0
	mov r2, #0x24
	bx r3
	; .align 2, 0
_0207397C: .word memset
	thumb_func_end sub_02073974

	thumb_func_start sub_02073980
sub_02073980: ; 0x02073980
	push {r4, lr}
	add r4, r0, #0
	bl sub_020739D8
	ldr r1, [r4, #0]
	mov r0, #1
	orr r0, r1
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073980

	thumb_func_start sub_02073994
sub_02073994: ; 0x02073994
	push {r4, lr}
	add r4, r0, #0
	bl sub_020739D8
	ldr r1, [r4, #0]
	mov r0, #1
	bic r1, r0
	str r1, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073994

	thumb_func_start sub_020739A8
sub_020739A8: ; 0x020739A8
	ldr r3, _020739B0 ; =sub_02073994
	ldr r1, [r1, #8]
	bx r3
	nop
_020739B0: .word sub_02073994
	thumb_func_end sub_020739A8

	thumb_func_start sub_020739B4
sub_020739B4: ; 0x020739B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	add r4, r1, #0
	add r1, r3, #0
	str r0, [sp]
	add r0, r2, #0
	ldr r3, [sp, #0x10]
	mov r2, #0
	bl sub_0200723C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02073980
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020739B4

	thumb_func_start sub_020739D8
sub_020739D8: ; 0x020739D8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02073974
	add r0, r4, #0
	mov r1, #0
	str r4, [r5, #8]
	bl NNS_G3dGetAnmByIdx
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020739D8

	thumb_func_start sub_020739F0
sub_020739F0: ; 0x020739F0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r0, #1
	tst r0, r1
	beq _02073A0A
	ldr r0, [r4, #8]
	bl sub_020181C4
	ldr r1, [r4, #0]
	mov r0, #1
	bic r1, r0
	str r1, [r4, #0]
_02073A0A:
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020739F0

	thumb_func_start sub_02073A14
sub_02073A14: ; 0x02073A14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	add r0, #0x14
	mov r2, #4
	bl sub_020182CC
	add r0, r5, #0
	ldr r1, [r5, #0xc]
	add r0, #0x14
	add r2, r4, #0
	bl NNS_G3dAllocAnmObj
	str r0, [r5, #0x10]
	cmp r0, #0
	bne _02073A3A
	bl GF_AssertFail
_02073A3A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02073A14

	thumb_func_start sub_02073A3C
sub_02073A3C: ; 0x02073A3C
	ldr r3, _02073A44 ; =sub_02073A14
	ldr r1, [r1, #0xc]
	bx r3
	nop
_02073A44: .word sub_02073A14
	thumb_func_end sub_02073A3C

	thumb_func_start sub_02073A48
sub_02073A48: ; 0x02073A48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0xc]
	add r2, r4, #0
	bl NNS_G3dAnmObjInit
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02073A48

	thumb_func_start sub_02073A5C
sub_02073A5C: ; 0x02073A5C
	ldr r3, _02073A68 ; =sub_02073A48
	add r2, r1, #0
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #0x10]
	bx r3
	nop
_02073A68: .word sub_02073A48
	thumb_func_end sub_02073A5C

	thumb_func_start sub_02073A6C
sub_02073A6C: ; 0x02073A6C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	add r5, r0, #0
	bl sub_020739A8
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02073A3C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02073A5C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02073A6C

	thumb_func_start sub_02073A90
sub_02073A90: ; 0x02073A90
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02073AA4
	add r0, #0x14
	bl NNS_G3dFreeAnmObj
	mov r0, #0
	str r0, [r4, #0x10]
_02073AA4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073A90

	thumb_func_start sub_02073AA8
sub_02073AA8: ; 0x02073AA8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02073A90
	add r0, r4, #0
	bl sub_020739F0
	add r0, r4, #0
	bl sub_02073974
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073AA8

	thumb_func_start sub_02073AC0
sub_02073AC0: ; 0x02073AC0
	push {r3, r4, r5, r6}
	ldr r3, [r0, #0x10]
	ldr r6, [r0, #4]
	ldr r3, [r3, #8]
	mov r4, #0
	ldrh r3, [r3, #4]
	add r6, r6, r1
	add r5, r4, #0
	str r6, [r0, #4]
	lsl r3, r3, #0xc
	cmp r1, #0
	ldr r1, [r0, #4]
	ble _02073AEE
	cmp r1, r3
	blt _02073B00
	mov r5, #1
	cmp r2, #1
	bne _02073AEA
	sub r1, r1, r3
	str r1, [r0, #4]
	b _02073B00
_02073AEA:
	str r3, [r0, #4]
	b _02073B00
_02073AEE:
	cmp r1, #0
	bgt _02073B00
	mov r5, #1
	cmp r2, #1
	bne _02073AFE
	add r1, r1, r3
	str r1, [r0, #4]
	b _02073B00
_02073AFE:
	str r4, [r0, #4]
_02073B00:
	ldr r2, [r0, #4]
	ldr r1, [r0, #0x10]
	cmp r5, #1
	str r2, [r1, #0]
	ldr r2, [r0, #0]
	bne _02073B14
	mov r1, #2
	orr r1, r2
	str r1, [r0, #0]
	b _02073B1A
_02073B14:
	mov r1, #2
	bic r2, r1
	str r2, [r0, #0]
_02073B1A:
	add r0, r5, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_02073AC0

	thumb_func_start sub_02073B20
sub_02073B20: ; 0x02073B20
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_02073B20

	thumb_func_start sub_02073B24
sub_02073B24: ; 0x02073B24
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02073B24

	thumb_func_start sub_02073B28
sub_02073B28: ; 0x02073B28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _02073B36
	bl GF_AssertFail
_02073B36:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	pop {r4, pc}
	thumb_func_end sub_02073B28

	thumb_func_start sub_02073B40
sub_02073B40: ; 0x02073B40
	ldr r1, [r0, #0]
	mov r0, #2
	tst r0, r1
	beq _02073B4C
	mov r0, #1
	bx lr
_02073B4C:
	mov r0, #0
	bx lr
	thumb_func_end sub_02073B40

	thumb_func_start sub_02073B50
sub_02073B50: ; 0x02073B50
	ldr r3, _02073B58 ; =memset
	mov r1, #0
	mov r2, #0x54
	bx r3
	; .align 2, 0
_02073B58: .word memset
	thumb_func_end sub_02073B50

	thumb_func_start sub_02073B5C
sub_02073B5C: ; 0x02073B5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02073B50
	add r0, r5, #0
	add r1, r4, #0
	bl NNS_G3dRenderObjInit
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02073B5C

	thumb_func_start sub_02073B70
sub_02073B70: ; 0x02073B70
	ldr r3, _02073B78 ; =sub_02073B5C
	ldr r1, [r1, #0xc]
	bx r3
	nop
_02073B78: .word sub_02073B5C
	thumb_func_end sub_02073B70

	thumb_func_start sub_02073B7C
sub_02073B7C: ; 0x02073B7C
	ldr r3, _02073B80 ; =NNS_G3dRenderObjAddAnmObj
	bx r3
	; .align 2, 0
_02073B80: .word NNS_G3dRenderObjAddAnmObj
	thumb_func_end sub_02073B7C

	thumb_func_start sub_02073B84
sub_02073B84: ; 0x02073B84
	ldr r3, _02073B8C ; =sub_02073B7C
	ldr r1, [r1, #0x10]
	bx r3
	nop
_02073B8C: .word sub_02073B7C
	thumb_func_end sub_02073B84

	thumb_func_start sub_02073B90
sub_02073B90: ; 0x02073B90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02073B70
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02073B84
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02073B90

	thumb_func_start sub_02073BA4
sub_02073BA4: ; 0x02073BA4
	push {r4, lr}
	add r4, r2, #0
	add r2, r3, #0
	add r3, r4, #0
	bl sub_0201CA74
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073BA4

	thumb_func_start sub_02073BB4
sub_02073BB4: ; 0x02073BB4
	push {r3, lr}
	ldr r2, _02073BC0 ; =0x020F0544
	ldr r3, _02073BC4 ; =0x020F0550
	bl sub_02073BA4
	pop {r3, pc}
	; .align 2, 0
_02073BC0: .word 0x020F0544
_02073BC4: .word 0x020F0550
	thumb_func_end sub_02073BB4

	thumb_func_start sub_02073BC8
sub_02073BC8: ; 0x02073BC8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	add r0, sp, #0
	bl sub_0201E2E0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, sp, #0
	bl sub_02073BA4
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02073BC8

	thumb_func_start sub_02073BF0
sub_02073BF0: ; 0x02073BF0
	push {r4, r5, lr}
	sub sp, #0x24
	add r3, r2, #0
	add r4, r1, #0
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	add r5, r0, #0
	ldrh r3, [r3, #4]
	add r0, sp, #0
	bl sub_0201E2E0
	ldr r2, _02073C18 ; =0x020F0544
	add r0, r5, #0
	add r1, r4, #0
	add r3, sp, #0
	bl sub_02073BA4
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_02073C18: .word 0x020F0544
	thumb_func_end sub_02073BF0

	thumb_func_start sub_02073C1C
sub_02073C1C: ; 0x02073C1C
	push {r4, lr}
	add r4, r2, #0
	add r2, r3, #0
	add r3, r4, #0
	bl sub_0201CAB0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073C1C

	.rodata


	.global Unk_020F0544
Unk_020F0544: ; 0x020F0544
	.incbin "incbin/arm9_rodata.bin", 0xB904, 0xB910 - 0xB904

	.global Unk_020F0550
Unk_020F0550: ; 0x020F0550
	.incbin "incbin/arm9_rodata.bin", 0xB910, 0x24

