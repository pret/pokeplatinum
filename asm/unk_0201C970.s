	.include "macros/function.inc"
	.include "include/unk_0201C970.inc"

	

	.text


	thumb_func_start sub_0201C970
sub_0201C970: ; 0x0201C970
	push {r3, r4, r5, lr}
	add r5, r3, #0
	add r4, r2, #0
	bl sub_02017A40
	str r0, [r5, #0]
	bl NNS_G3dGetTex
	cmp r0, #0
	beq _0201C99A
	bl sub_0201CA5C
	cmp r0, #0
	bne _0201C99A
	ldr r0, [r5, #0]
	ldr r1, [r0, #8]
	bl DC_FlushRange
	ldr r0, [r5, #0]
	bl NNS_G3dResDefaultSetup
_0201C99A:
	ldr r0, [r5, #0]
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _0201C9C4
	add r2, r0, #0
	add r2, #8
	beq _0201C9B8
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _0201C9B8
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0201C9BA
_0201C9B8:
	mov r1, #0
_0201C9BA:
	cmp r1, #0
	beq _0201C9C4
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _0201C9C6
_0201C9C4:
	mov r0, #0
_0201C9C6:
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201C970

	thumb_func_start sub_0201C9CC
sub_0201C9CC: ; 0x0201C9CC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl NNS_G3dGetTex
	cmp r0, #0
	beq _0201C9F2
	bl sub_0201CA5C
	cmp r0, #0
	bne _0201C9F2
	ldr r0, [r5, #0]
	ldr r1, [r0, #8]
	bl DC_FlushRange
	ldr r0, [r5, #0]
	bl NNS_G3dResDefaultSetup
_0201C9F2:
	ldr r0, [r5, #0]
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _0201CA1C
	add r2, r0, #0
	add r2, #8
	beq _0201CA10
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _0201CA10
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0201CA12
_0201CA10:
	mov r1, #0
_0201CA12:
	cmp r1, #0
	beq _0201CA1C
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _0201CA1E
_0201CA1C:
	mov r0, #0
_0201CA1E:
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201C9CC

	thumb_func_start sub_0201CA24
sub_0201CA24: ; 0x0201CA24
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r2, #0
	ldr r3, [sp, #0x10]
	add r2, r4, #0
	bl sub_0201C970
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl NNS_G3dRenderObjInit
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201CA24

	thumb_func_start sub_0201CA3C
sub_0201CA3C: ; 0x0201CA3C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r2, #0
	bl sub_0201C9CC
	cmp r4, #0
	bne _0201CA52
	bl GF_AssertFail
_0201CA52:
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl NNS_G3dRenderObjInit
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201CA3C

	thumb_func_start sub_0201CA5C
sub_0201CA5C: ; 0x0201CA5C
	ldrh r2, [r0, #0x10]
	mov r1, #1
	tst r2, r1
	bne _0201CA6A
	ldrh r0, [r0, #0x20]
	tst r0, r1
	beq _0201CA6E
_0201CA6A:
	mov r0, #1
	bx lr
_0201CA6E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201CA5C

	thumb_func_start sub_0201CA74
sub_0201CA74: ; 0x0201CA74
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl NNS_G3dGlbSetBaseTrans
	ldr r1, _0201CAA8 ; =0x021C5B48
	add r0, r4, #0
	bl MI_Copy36B
	ldr r1, _0201CAAC ; =0x021C5B0C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, r6, #0
	str r2, [r1, #0x7c]
	bl NNS_G3dGlbSetBaseScale
	bl NNS_G3dGlbFlushP
	add r0, r5, #0
	bl NNS_G3dDraw
	pop {r4, r5, r6, pc}
	nop
_0201CAA8: .word 0x021C5B48
_0201CAAC: .word 0x021C5B0C
	thumb_func_end sub_0201CA74

	thumb_func_start sub_0201CAB0
sub_0201CAB0: ; 0x0201CAB0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl NNS_G3dGlbSetBaseTrans
	ldr r1, _0201CAEC ; =0x021C5B48
	add r0, r4, #0
	bl MI_Copy36B
	ldr r1, _0201CAF0 ; =0x021C5B0C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
	add r0, r6, #0
	bl NNS_G3dGlbSetBaseScale
	bl NNS_G3dGlbFlushP
	mov r1, #0
	ldr r0, [r5, #4]
	add r2, r1, #0
	mov r3, #1
	bl NNS_G3dDraw1Mat1Shp
	bl NNS_G3dGeFlushBuffer
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0201CAEC: .word 0x021C5B48
_0201CAF0: .word 0x021C5B0C
	thumb_func_end sub_0201CAB0

	thumb_func_start sub_0201CAF4
sub_0201CAF4: ; 0x0201CAF4
	push {r3, lr}
	sub sp, #8
	mov r1, #4
	str r1, [sp]
	ldr r1, _0201CB14 ; =sub_0201CB1C
	mov r2, #2
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02024220
	ldr r1, _0201CB18 ; =0x021BFB0C
	str r0, [r1, #0]
	add sp, #8
	pop {r3, pc}
	nop
_0201CB14: .word sub_0201CB1C
_0201CB18: .word 0x021BFB0C
	thumb_func_end sub_0201CAF4

	thumb_func_start sub_0201CB1C
sub_0201CB1C: ; 0x0201CB1C
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _0201CB88 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0201CB8C ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0201CB90 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _0201CB94 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _0201CB98 ; =0xBFFF0000
	ldr r0, _0201CB9C ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0201CB88: .word 0x04000008
_0201CB8C: .word 0xFFFFCFFD
_0201CB90: .word 0x0000CFFB
_0201CB94: .word 0x00007FFF
_0201CB98: .word 0xBFFF0000
_0201CB9C: .word 0x04000580
	thumb_func_end sub_0201CB1C

	thumb_func_start sub_0201CBA0
sub_0201CBA0: ; 0x0201CBA0
	ldr r0, _0201CBA8 ; =0x021BFB0C
	ldr r3, _0201CBAC ; =sub_020242C4
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_0201CBA8: .word 0x021BFB0C
_0201CBAC: .word sub_020242C4
	thumb_func_end sub_0201CBA0

	thumb_func_start sub_0201CBB0
sub_0201CBB0: ; 0x0201CBB0
	push {r4, lr}
	add r4, r1, #0
	bl NNS_G3dGetMdlSet
	cmp r4, #0
	beq _0201CBC6
	add r1, r4, #0
	bl NNS_G3dBindMdlSet
	mov r0, #1
	pop {r4, pc}
_0201CBC6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201CBB0

	thumb_func_start sub_0201CBCC
sub_0201CBCC: ; 0x0201CBCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bne _0201CBDA
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201CBDA:
	mov r1, #0
	str r1, [r5, #8]
	mov r1, #1
	str r1, [sp, #8]
	str r1, [sp, #4]
	str r1, [sp]
	cmp r5, #0
	beq _0201CCD8
	bl NNS_G3dTexGetRequiredSize
	add r6, r0, #0
	add r0, r5, #0
	bl NNS_G3dTex4x4GetRequiredSize
	add r4, r0, #0
	add r0, r5, #0
	bl NNS_G3dPlttGetRequiredSize
	str r0, [sp, #0xc]
	cmp r6, #0
	beq _0201CC1A
	ldr r3, _0201CCE0 ; =0x02100DEC
	mov r1, #0
	ldr r3, [r3, #0]
	add r0, r6, #0
	add r2, r1, #0
	blx r3
	add r7, r0, #0
	bne _0201CC1C
	mov r0, #0
	str r0, [sp, #8]
	b _0201CC1C
_0201CC1A:
	mov r7, #0
_0201CC1C:
	cmp r4, #0
	beq _0201CC36
	ldr r3, _0201CCE0 ; =0x02100DEC
	add r0, r4, #0
	ldr r3, [r3, #0]
	mov r1, #1
	mov r2, #0
	blx r3
	add r6, r0, #0
	bne _0201CC38
	mov r0, #0
	str r0, [sp, #4]
	b _0201CC38
_0201CC36:
	mov r6, #0
_0201CC38:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0201CC58
	ldr r3, _0201CCE4 ; =0x02100DF4
	mov r1, #2
	ldrh r2, [r5, #0x20]
	lsl r1, r1, #0xe
	ldr r3, [r3, #0]
	and r1, r2
	mov r2, #0
	blx r3
	add r4, r0, #0
	bne _0201CC5A
	mov r0, #0
	str r0, [sp]
	b _0201CC5A
_0201CC58:
	mov r4, #0
_0201CC5A:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0201CC76
	ldr r1, _0201CCE8 ; =0x02100DF0
	add r0, r7, #0
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	beq _0201CC70
	bl GF_AssertFail
_0201CC70:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201CC76:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0201CC92
	ldr r1, _0201CCE8 ; =0x02100DF0
	add r0, r6, #0
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	beq _0201CC8C
	bl GF_AssertFail
_0201CC8C:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201CC92:
	ldr r0, [sp]
	cmp r0, #0
	bne _0201CCAE
	ldr r1, _0201CCEC ; =0x02100DF8
	add r0, r4, #0
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	beq _0201CCA8
	bl GF_AssertFail
_0201CCA8:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201CCAE:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl NNS_G3dTexSetTexKey
	add r0, r5, #0
	add r1, r4, #0
	bl NNS_G3dPlttSetPlttKey
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl DC_FlushRange
	add r0, r5, #0
	mov r1, #1
	bl NNS_G3dTexLoad
	add r0, r5, #0
	mov r1, #1
	bl NNS_G3dPlttLoad
_0201CCD8:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201CCE0: .word 0x02100DEC
_0201CCE4: .word 0x02100DF4
_0201CCE8: .word 0x02100DF0
_0201CCEC: .word 0x02100DF8
	thumb_func_end sub_0201CBCC

	.bss


	.global Unk_021BFB0C
Unk_021BFB0C: ; 0x021BFB0C
	.space 0x4

