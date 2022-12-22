	.include "macros/function.inc"
	.include "include/unk_02024220.inc"

	

	.text


	thumb_func_start sub_02024220
sub_02024220: ; 0x02024220
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #0xc
	add r6, r0, #0
	add r5, r2, #0
	str r3, [sp, #4]
	bl sub_02018144
	add r4, r0, #0
	str r6, [r4, #0]
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	mov r1, #2
	ldr r0, _020242C0 ; =0x04000540
	cmp r7, #0
	str r1, [r0, #0]
	bne _0202426C
	lsl r0, r5, #7
	bl NNS_GfdGetLnkTexVramManagerWorkSize
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl sub_02018144
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #8]
	lsl r0, r5, #0x11
	mov r1, #0
	add r3, r6, #0
	bl NNS_GfdInitLnkTexVramManager
	b _02024276
_0202426C:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	bl NNS_GfdInitFrmTexVramManager
_02024276:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020242A0
	ldr r0, [sp, #0x20]
	lsl r0, r0, #8
	bl NNS_GfdGetLnkPlttVramManagerWorkSize
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_02018144
	str r0, [r4, #4]
	ldr r0, [sp, #0x20]
	ldr r1, [r4, #4]
	lsl r0, r0, #0xd
	add r2, r5, #0
	mov r3, #1
	bl NNS_GfdInitLnkPlttVramManager
	b _020242AC
_020242A0:
	ldr r0, [sp, #0x20]
	mov r1, #1
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x10
	bl NNS_GfdInitFrmTexVramManager
_020242AC:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _020242B6
	blx r0
	b _020242BA
_020242B6:
	bl sub_020242DC
_020242BA:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020242C0: .word 0x04000540
	thumb_func_end sub_02024220

	thumb_func_start sub_020242C4
sub_020242C4: ; 0x020242C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_020242C4

	thumb_func_start sub_020242DC
sub_020242DC: ; 0x020242DC
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _02024340 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	strh r2, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _02024344 ; =0xFFFFCFFD
	and r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _02024348 ; =0x0000CFEF
	and r1, r2
	strh r1, [r0]
	add r1, r2, #0
	ldrh r3, [r0]
	add r1, #0xc
	and r1, r3
	strh r1, [r0]
	add r1, r2, #0
	ldrh r3, [r0]
	add r1, #8
	sub r2, #0x10
	and r1, r3
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
	ldr r2, _0202434C ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _02024350 ; =0xBFFF0000
	ldr r0, _02024354 ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_02024340: .word 0x04000008
_02024344: .word 0xFFFFCFFD
_02024348: .word 0x0000CFEF
_0202434C: .word 0x00007FFF
_02024350: .word 0xBFFF0000
_02024354: .word 0x04000580
	thumb_func_end sub_020242DC