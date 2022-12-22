	.include "macros/function.inc"
	.include "include/ov5_021D37AC.inc"

	

	.text


	thumb_func_start ov5_021D37AC
ov5_021D37AC: ; 0x021D37AC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0
	ldr r1, [r7, #0x18]
	mvn r0, r0
	add r4, r3, #0
	cmp r1, r0
	bne _021D37C4
	bl GF_AssertFail
_021D37C4:
	mov r0, #0
	add r1, r6, #0
_021D37C8:
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _021D37DE
	ldr r2, [r1, #0xc]
	cmp r4, r2
	bne _021D37DE
	ldr r2, [r1, #4]
	cmp r2, r5
	bne _021D37DE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D37DE:
	add r0, r0, #1
	add r1, #0x10
	cmp r0, #2
	blt _021D37C8
	mov r2, #0
	add r1, r6, #0
_021D37EA:
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _021D3800
	lsl r1, r2, #4
	mov r0, #1
	str r0, [r6, r1]
	add r0, r6, r1
	str r4, [r0, #0xc]
	str r7, [r0, #8]
	str r5, [r0, #4]
	b _021D3808
_021D3800:
	add r2, r2, #1
	add r1, #0x10
	cmp r2, #2
	blt _021D37EA
_021D3808:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D37AC

	thumb_func_start ov5_021D380C
ov5_021D380C: ; 0x021D380C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	add r7, r2, #0
	add r5, r3, #0
	cmp r4, r0
	bne _021D3822
	bl GF_AssertFail
_021D3822:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_02006CB8
	add r4, r0, #0
	bne _021D3834
	bl GF_AssertFail
_021D3834:
	add r0, r4, #0
	mov r1, #0
	bl NNS_G3dGetAnmByIdx
	add r6, r0, #0
	bne _021D3844
	bl GF_AssertFail
_021D3844:
	ldr r0, [sp, #0x1c]
	add r1, r6, #0
	add r2, r7, #0
	bl NNS_G3dAllocAnmObj
	str r0, [r5, #0]
	cmp r5, #0
	bne _021D3858
	bl GF_AssertFail
_021D3858:
	ldr r0, [r5, #0]
	ldr r3, [sp, #0x18]
	add r1, r6, #0
	add r2, r7, #0
	bl NNS_G3dAnmObjInit
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D380C

	thumb_func_start ov5_021D3868
ov5_021D3868: ; 0x021D3868
	push {r3, lr}
	cmp r1, #0
	bne _021D3872
	mov r0, #0
	pop {r3, pc}
_021D3872:
	cmp r0, #0
	bne _021D387A
	mov r0, #0
	pop {r3, pc}
_021D387A:
	bl NNS_G3dRenderObjRemoveAnmObj
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021D3868

	thumb_func_start ov5_021D3884
ov5_021D3884: ; 0x021D3884
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021D388C:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D38AE
	ldr r0, [r5, #8]
	bl ov5_021D3F70
	cmp r0, #0
	beq _021D38AE
	ldr r1, [r5, #8]
	ldr r0, [r5, #4]
	ldr r1, [r1, #0]
	bl ov5_021D3868
	str r6, [r5, #0]
	str r6, [r5, #0xc]
	str r6, [r5, #8]
	str r6, [r5, #4]
_021D38AE:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blt _021D388C
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021D3884

	thumb_func_start ov5_021D38B8
ov5_021D38B8: ; 0x021D38B8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xae
	mov r0, #4
	lsl r1, r1, #2
	bl sub_02018144
	add r7, r0, #0
	mov r1, #0
	add r2, r7, #0
	add r6, r1, #0
	sub r0, r1, #1
_021D38CE:
	str r6, [r2, #0x14]
	str r6, [r2, #0x20]
	str r6, [r2, #0x10]
	str r6, [r2, #0x18]
	str r6, [r2, #0x1c]
	str r6, [r2, #0x24]
	str r0, [r2, #0x28]
	str r6, [r2, #0x2c]
	str r6, [r2, #0x30]
	str r6, [r2, #0x34]
	add r1, r1, #1
	add r2, #0x28
	cmp r1, #0x10
	blt _021D38CE
	mov r0, #0x29
	lsl r0, r0, #4
	add r2, r0, #0
	add r3, r0, #0
	add r5, r7, #0
	mov r4, #0
	add r1, r0, #4
	add r2, #8
	add r3, #0xc
_021D38FC:
	str r4, [r5, r0]
	str r4, [r5, r1]
	str r4, [r5, r2]
	str r4, [r5, r3]
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #2
	blt _021D38FC
	mov r1, #4
	add r0, r7, #0
	add r2, r1, #0
	bl sub_020182CC
	mov r0, #0x6e
	mov r1, #4
	bl sub_02006C24
	mov r1, #0x2b
	lsl r1, r1, #4
	str r0, [r7, r1]
	mov r0, #0x6f
	mov r1, #4
	bl sub_02006C24
	mov r1, #0xad
	lsl r1, r1, #2
	str r0, [r7, r1]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D38B8

	thumb_func_start ov5_021D3938
ov5_021D3938: ; 0x021D3938
	cmp r0, #0
	bne _021D3940
	mov r0, #0
	bx lr
_021D3940:
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov5_021D3938

	thumb_func_start ov5_021D3944
ov5_021D3944: ; 0x021D3944
	mov r1, #1
	and r0, r1
	cmp r0, #1
	beq _021D394E
	mov r1, #0
_021D394E:
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021D3944

	thumb_func_start ov5_021D3954
ov5_021D3954: ; 0x021D3954
	asr r1, r0, #1
	mov r0, #1
	and r1, r0
	cmp r1, #1
	beq _021D3960
	mov r0, #0
_021D3960:
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021D3954

	thumb_func_start ov5_021D3964
ov5_021D3964: ; 0x021D3964
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _021D3972
	bl GF_AssertFail
_021D3972:
	ldr r0, [r4, #0x1c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D3964

	thumb_func_start ov5_021D3978
ov5_021D3978: ; 0x021D3978
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	mov r0, #0xad
	ldr r7, [sp, #0x4c]
	lsl r0, r0, #2
	add r4, r1, #0
	str r2, [sp, #8]
	ldr r0, [r7, r0]
	add r1, r6, #0
	add r2, sp, #0x10
	add r5, r3, #0
	bl sub_02006D28
	cmp r4, #4
	blt _021D399C
	bl GF_AssertFail
_021D399C:
	lsl r1, r4, #2
	add r0, sp, #0x14
	ldr r0, [r0, r1]
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0xc]
	cmp r0, r1
	bne _021D39B2
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D39B2:
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	bl ov5_021D3944
	ldr r1, [sp, #0x40]
	cmp r1, r0
	beq _021D39C6
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D39C6:
	mov r6, #0
	add r4, r7, #0
_021D39CA:
	cmp r5, #0
	beq _021D39D8
	ldr r0, [r4, #0x34]
	cmp r5, r0
	bne _021D39D8
	bl GF_AssertFail
_021D39D8:
	add r6, r6, #1
	add r4, #0x28
	cmp r6, #0x10
	blt _021D39CA
	mov r2, #0
	add r1, r7, #0
_021D39E4:
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bne _021D3A3C
	add r4, r2, #0
	mov r0, #0x28
	mul r4, r0
	mov r1, #1
	add r0, r7, r4
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x3c]
	add r6, r7, #0
	str r1, [r0, #0x20]
	add r6, #0x10
	mov r1, #0
	str r1, [r6, r4]
	str r1, [r0, #0x18]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x44]
	str r1, [r0, #0x1c]
	ldr r1, [sp, #0x38]
	add r3, r6, r4
	str r1, [r0, #0x30]
	str r5, [r0, #0x34]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	mov r0, #0x2b
	str r7, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	bl ov5_021D380C
	add r1, r7, r4
	str r0, [r1, #0x24]
	ldr r0, [sp, #8]
	str r0, [r1, #0x28]
	mov r0, #1
	str r0, [r1, #0x2c]
	add r0, r6, r4
	bl ov5_021D3E7C
	add sp, #0x24
	add r0, r6, r4
	pop {r4, r5, r6, r7, pc}
_021D3A3C:
	add r2, r2, #1
	add r1, #0x28
	cmp r2, #0x10
	blt _021D39E4
	bl GF_AssertFail
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D3978

	thumb_func_start ov5_021D3A50
ov5_021D3A50: ; 0x021D3A50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r0, #0
	mov r0, #0xad
	add r6, r3, #0
	lsl r0, r0, #2
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r6, r0]
	add r1, r4, #0
	add r2, sp, #0x20
	bl sub_02006D28
	add r0, sp, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D3B20
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	str r0, [sp, #0x10]
_021D3A7A:
	ldr r0, [sp, #0x10]
	mov r1, #0
	ldr r0, [r0, #4]
	mvn r1, r1
	str r0, [sp, #0x18]
	cmp r0, r1
	beq _021D3B20
	add r0, sp, #0x20
	ldrb r0, [r0, #1]
	bl ov5_021D3944
	cmp r0, #0
	bne _021D3B20
	mov r4, #0
	add r1, r6, #0
_021D3A98:
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bne _021D3B00
	mov r0, #0x28
	add r7, r4, #0
	mul r7, r0
	add r5, r6, r7
	mov r0, #1
	str r0, [r5, #0x14]
	mov r1, #0
	str r1, [r5, #0x20]
	str r1, [r5, #0x10]
	ldr r0, [sp, #0x18]
	str r1, [r5, #0x18]
	str r0, [r5, #0x1c]
	add r0, r6, #0
	str r0, [sp, #0x1c]
	add r0, #0x10
	str r0, [sp, #0x1c]
	str r1, [r5, #0x30]
	str r1, [r5, #0x34]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0x2b
	str r6, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #8]
	add r3, r3, r7
	bl ov5_021D380C
	str r0, [r5, #0x24]
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #0x28]
	mov r0, #1
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x1c]
	add r0, r0, r7
	bl ov5_021D3E7C
	add r0, sp, #0x20
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021D3B08
	add r1, r5, #0
	mov r0, #1
	str r0, [r1, #0x20]
	str r0, [r1, #0x28]
	b _021D3B08
_021D3B00:
	add r4, r4, #1
	add r1, #0x28
	cmp r4, #0x10
	blt _021D3A98
_021D3B08:
	cmp r4, #0x10
	bne _021D3B10
	bl GF_AssertFail
_021D3B10:
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _021D3A7A
_021D3B20:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D3A50

	thumb_func_start ov5_021D3B24
ov5_021D3B24: ; 0x021D3B24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, [sp, #0x30]
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r6, #0
	bne _021D3B40
	bl GF_AssertFail
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3B40:
	add r0, r6, #0
	bl ov5_021D3F84
	cmp r5, r0
	blt _021D3B50
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3B50:
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r5, #0
	add r2, sp, #4
	bl sub_02006D28
	cmp r4, #4
	blt _021D3B66
	bl GF_AssertFail
_021D3B66:
	lsl r1, r4, #2
	add r0, sp, #8
	ldr r5, [r0, r1]
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021D3B7A
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3B7A:
	add r0, sp, #4
	ldrb r0, [r0, #1]
	bl ov5_021D3954
	cmp r7, r0
	beq _021D3B8C
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3B8C:
	mov r4, #0
	add r1, r6, #0
_021D3B90:
	ldr r0, [r1, #0x1c]
	cmp r5, r0
	bne _021D3BD4
	add r0, sp, #4
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021D3BBA
	add r2, r6, #0
	mov r3, #0x28
	mov r0, #0x29
	lsl r0, r0, #4
	add r2, #0x10
	mul r3, r4
	add r2, r2, r3
	lsl r3, r5, #0x18
	ldr r1, [sp]
	add r0, r6, r0
	lsr r3, r3, #0x18
	bl ov5_021D37AC
	b _021D3BBC
_021D3BBA:
	mov r0, #1
_021D3BBC:
	cmp r0, #0
	beq _021D3BCE
	mov r1, #0x28
	mul r1, r4
	add r1, r6, r1
	ldr r0, [sp]
	ldr r1, [r1, #0x10]
	bl NNS_G3dRenderObjAddAnmObj
_021D3BCE:
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3BD4:
	add r4, r4, #1
	add r1, #0x28
	cmp r4, #0x10
	blt _021D3B90
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D3B24

	thumb_func_start ov5_021D3BE4
ov5_021D3BE4: ; 0x021D3BE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, _021D3CA8 ; =0x00000000
	str r1, [sp, #0xc]
	add r4, r2, #0
	str r0, [sp]
	bne _021D3BF8
	bl GF_AssertFail
_021D3BF8:
	add r0, r4, #0
	bl ov5_021D3F84
	cmp r5, r0
	blt _021D3C08
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D3C08:
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	add r2, sp, #0x10
	bl sub_02006D28
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	bl ov5_021D3954
	cmp r0, #0
	beq _021D3C28
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D3C28:
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	str r0, [sp, #8]
	add r0, #0x10
	add r7, sp, #0x10
	str r0, [sp, #8]
_021D3C36:
	mov r0, #0
	ldr r3, [r7, #4]
	mvn r0, r0
	cmp r3, r0
	bne _021D3C46
	ldr r0, [sp]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021D3C46:
	mov r5, #0
	add r1, r4, #0
_021D3C4A:
	ldr r0, [r1, #0x1c]
	cmp r3, r0
	bne _021D3C8E
	add r0, sp, #0x10
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021D3C74
	mov r2, #0x28
	add r6, r5, #0
	mov r0, #0x29
	mul r6, r2
	ldr r2, [sp, #8]
	lsl r0, r0, #4
	lsl r3, r3, #0x18
	ldr r1, [sp, #0xc]
	add r0, r4, r0
	add r2, r2, r6
	lsr r3, r3, #0x18
	bl ov5_021D37AC
	b _021D3C76
_021D3C74:
	mov r0, #1
_021D3C76:
	cmp r0, #0
	beq _021D3C96
	mov r1, #0x28
	mul r1, r5
	add r1, r4, r1
	ldr r0, [sp, #0xc]
	ldr r1, [r1, #0x10]
	bl NNS_G3dRenderObjAddAnmObj
	mov r0, #1
	str r0, [sp]
	b _021D3C96
_021D3C8E:
	add r5, r5, #1
	add r1, #0x28
	cmp r5, #0x10
	blt _021D3C4A
_021D3C96:
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _021D3C36
	ldr r0, [sp]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3CA8: .word 0x00000000
	thumb_func_end ov5_021D3BE4

	thumb_func_start ov5_021D3CAC
ov5_021D3CAC: ; 0x021D3CAC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	beq _021D3CE0
	mov r4, #0
	add r5, r6, #0
	add r7, r4, #0
_021D3CB8:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021D3CD8
	cmp r0, #1
	bne _021D3CD2
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl NNS_G3dFreeAnmObj
	str r7, [r5, #0x10]
	ldr r0, [r5, #0x24]
	bl sub_020181C4
_021D3CD2:
	mov r0, #0
	str r0, [r5, #0x14]
	str r0, [r5, #0x34]
_021D3CD8:
	add r4, r4, #1
	add r5, #0x28
	cmp r4, #0x10
	blt _021D3CB8
_021D3CE0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D3CAC

	thumb_func_start ov5_021D3CE4
ov5_021D3CE4: ; 0x021D3CE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _021D3D16
	cmp r5, #0
	bne _021D3CF4
	bl GF_AssertFail
_021D3CF4:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021D3D16
	cmp r0, #1
	bne _021D3D10
	ldr r1, [r5, #0]
	add r0, r4, #0
	bl NNS_G3dFreeAnmObj
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [r5, #0x14]
	bl sub_020181C4
_021D3D10:
	mov r0, #0
	str r0, [r5, #4]
	str r0, [r5, #0x24]
_021D3D16:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D3CE4

	thumb_func_start ov5_021D3D18
ov5_021D3D18: ; 0x021D3D18
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0xad
	lsl r0, r0, #2
	add r6, r1, #0
	add r1, r2, #0
	ldr r0, [r4, r0]
	add r2, sp, #0
	add r5, r3, #0
	bl sub_02006D28
	cmp r5, #4
	blt _021D3D38
	bl GF_AssertFail
_021D3D38:
	lsl r1, r5, #2
	add r0, sp, #4
	ldr r5, [r0, r1]
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021D3D4A
	bl GF_AssertFail
_021D3D4A:
	mov r0, #0
	mov r2, #0x28
_021D3D4E:
	add r1, r0, #0
	mul r1, r2
	add r1, r4, r1
	ldr r3, [r1, #0x14]
	cmp r3, #1
	bne _021D3D6C
	ldr r3, [r1, #0x1c]
	cmp r5, r3
	bne _021D3D6C
	ldr r1, [r1, #0x10]
	add r0, r6, #0
	bl ov5_021D3868
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021D3D6C:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x10
	blo _021D3D4E
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021D3D18

	thumb_func_start ov5_021D3D7C
ov5_021D3D7C: ; 0x021D3D7C
	push {r4, lr}
	add r4, r0, #0
	beq _021D3D9C
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02006CA8
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02006CA8
	add r0, r4, #0
	bl sub_020181C4
_021D3D9C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D3D7C

	thumb_func_start ov5_021D3DA0
ov5_021D3DA0: ; 0x021D3DA0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _021D3DAE
	bl GF_AssertFail
_021D3DAE:
	mov r6, #0
	add r1, r6, #0
	add r2, r4, #0
_021D3DB4:
	ldr r0, [r2, #0x34]
	cmp r5, r0
	bne _021D3DCE
	mov r0, #0x28
	add r4, #0x10
	mul r0, r1
	add r6, r4, r0
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _021D3DD6
	bl GF_AssertFail
	b _021D3DD6
_021D3DCE:
	add r1, r1, #1
	add r2, #0x28
	cmp r1, #0x10
	blt _021D3DB4
_021D3DD6:
	cmp r6, #0
	bne _021D3DDE
	bl GF_AssertFail
_021D3DDE:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021D3DA0

	thumb_func_start ov5_021D3DE4
ov5_021D3DE4: ; 0x021D3DE4
	push {r4, r5, lr}
	sub sp, #0x14
	add r3, r0, #0
	mov r0, #0xad
	add r5, r2, #0
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r1, r3, #0
	add r2, sp, #0
	bl sub_02006D28
	cmp r4, #4
	blt _021D3E04
	bl GF_AssertFail
_021D3E04:
	lsl r1, r4, #2
	add r0, sp, #4
	mov r4, #0
	ldr r1, [r0, r1]
	add r2, r4, #0
	add r3, r5, #0
_021D3E10:
	ldr r0, [r3, #0x1c]
	cmp r1, r0
	bne _021D3E2A
	mov r0, #0x28
	add r5, #0x10
	mul r0, r2
	add r4, r5, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021D3E32
	bl GF_AssertFail
	b _021D3E32
_021D3E2A:
	add r2, r2, #1
	add r3, #0x28
	cmp r2, #0x10
	blt _021D3E10
_021D3E32:
	cmp r4, #0
	bne _021D3E3A
	bl GF_AssertFail
_021D3E3A:
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov5_021D3DE4

	thumb_func_start ov5_021D3E40
ov5_021D3E40: ; 0x021D3E40
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov5_021D3E40

	thumb_func_start ov5_021D3E44
ov5_021D3E44: ; 0x021D3E44
	mov r1, #1
	str r1, [r0, #0x1c]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021D3E44

	thumb_func_start ov5_021D3E4C
ov5_021D3E4C: ; 0x021D3E4C
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0]
	cmp r1, #0
	bne _021D3E6E
	ldr r2, [r0, #0]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r1, r0
	cmp r2, r0
	blt _021D3E6A
	mov r0, #1
	bx lr
_021D3E6A:
	mov r0, #0
	bx lr
_021D3E6E:
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D3E78
	mov r0, #1
	bx lr
_021D3E78:
	mov r0, #0
	bx lr
	thumb_func_end ov5_021D3E4C

	thumb_func_start ov5_021D3E7C
ov5_021D3E7C: ; 0x021D3E7C
	ldr r1, [r0, #0x20]
	cmp r1, #0
	bne _021D3E8A
	ldr r0, [r0, #0]
	mov r1, #0
	str r1, [r0, #0]
	bx lr
_021D3E8A:
	ldr r2, [r0, #0]
	ldr r0, [r2, #8]
	ldrh r0, [r0, #4]
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r2, #0]
	bx lr
	thumb_func_end ov5_021D3E7C

	thumb_func_start ov5_021D3E9C
ov5_021D3E9C: ; 0x021D3E9C
	ldr r1, [r0, #0x20]
	cmp r1, #0
	bne _021D3EB4
	ldr r2, [r0, #0]
	ldr r0, [r2, #8]
	ldrh r0, [r0, #4]
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r2, #0]
	bx lr
_021D3EB4:
	ldr r0, [r0, #0]
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov5_021D3E9C

	thumb_func_start ov5_021D3EBC
ov5_021D3EBC: ; 0x021D3EBC
	ldr r1, [r0, #0x20]
	cmp r1, #0
	bne _021D3EE2
	ldr r3, [r0, #0]
	mov r1, #1
	ldr r2, [r3, #0]
	lsl r1, r1, #0xc
	add r1, r2, r1
	str r1, [r3, #0]
	ldr r2, [r0, #0]
	ldr r0, [r2, #8]
	ldr r1, [r2, #0]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _021D3F02
	mov r0, #0
	str r0, [r2, #0]
	bx lr
_021D3EE2:
	ldr r0, [r0, #0]
	ldr r2, [r0, #0]
	cmp r2, #0
	bgt _021D3EFA
	ldr r1, [r0, #8]
	ldrh r1, [r1, #4]
	lsl r2, r1, #0xc
	mov r1, #1
	lsl r1, r1, #0xc
	sub r1, r2, r1
	str r1, [r0, #0]
	bx lr
_021D3EFA:
	mov r1, #1
	lsl r1, r1, #0xc
	sub r1, r2, r1
	str r1, [r0, #0]
_021D3F02:
	bx lr
	thumb_func_end ov5_021D3EBC

	thumb_func_start ov5_021D3F04
ov5_021D3F04: ; 0x021D3F04
	str r1, [r0, #0x20]
	bx lr
	thumb_func_end ov5_021D3F04

	thumb_func_start ov5_021D3F08
ov5_021D3F08: ; 0x021D3F08
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end ov5_021D3F08

	thumb_func_start ov5_021D3F0C
ov5_021D3F0C: ; 0x021D3F0C
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end ov5_021D3F0C

	thumb_func_start ov5_021D3F10
ov5_021D3F10: ; 0x021D3F10
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	cmp r0, #0
	beq _021D3F6E
	mov r4, #0
	add r5, r0, #0
	add r5, #0x10
	add r6, r4, #0
	sub r7, r4, #1
_021D3F22:
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _021D3F5A
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _021D3F5A
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021D3F5A
	add r0, r5, #0
	bl ov5_021D3EBC
	ldr r0, [r5, #0x18]
	cmp r0, r7
	beq _021D3F5A
	add r0, r5, #0
	bl ov5_021D3E4C
	cmp r0, #0
	beq _021D3F5A
	ldr r0, [r5, #8]
	add r1, r0, #1
	ldr r0, [r5, #0x18]
	cmp r1, r0
	blt _021D3F58
	str r6, [r5, #0x1c]
	b _021D3F5A
_021D3F58:
	str r1, [r5, #8]
_021D3F5A:
	add r4, r4, #1
	add r5, #0x28
	cmp r4, #0x10
	blt _021D3F22
	mov r1, #0x29
	ldr r0, [sp]
	lsl r1, r1, #4
	add r0, r0, r1
	bl ov5_021D3884
_021D3F6E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D3F10

	thumb_func_start ov5_021D3F70
ov5_021D3F70: ; 0x021D3F70
	push {r3, lr}
	bl ov5_021D3964
	cmp r0, #0
	bne _021D3F7E
	mov r0, #1
	pop {r3, pc}
_021D3F7E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021D3F70

	thumb_func_start ov5_021D3F84
ov5_021D3F84: ; 0x021D3F84
	mov r1, #0xad
	lsl r1, r1, #2
	ldr r3, _021D3F90 ; =sub_02006E34
	ldr r0, [r0, r1]
	bx r3
	nop
_021D3F90: .word sub_02006E34
	thumb_func_end ov5_021D3F84

	thumb_func_start ov5_021D3F94
ov5_021D3F94: ; 0x021D3F94
	push {lr}
	sub sp, #0x14
	mov r2, #0xad
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	add r2, sp, #0
	bl sub_02006D28
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D3FB2
	add sp, #0x14
	mov r0, #0
	pop {pc}
_021D3FB2:
	mov r0, #0
	add r3, sp, #0
	sub r1, r0, #1
_021D3FB8:
	lsl r2, r0, #2
	add r2, r3, r2
	ldr r2, [r2, #4]
	cmp r2, r1
	beq _021D3FCC
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	blo _021D3FB8
_021D3FCC:
	add sp, #0x14
	pop {pc}
	thumb_func_end ov5_021D3F94

	thumb_func_start ov5_021D3FD0
ov5_021D3FD0: ; 0x021D3FD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _021D3FDC
	bl GF_AssertFail
_021D3FDC:
	mov r1, #0x10
	mov r0, #0
	mov r2, #0x38
_021D3FE2:
	cmp r1, #0x10
	bne _021D3FF6
	add r3, r0, #0
	mul r3, r2
	add r3, r5, r3
	add r3, #0x34
	ldrb r3, [r3]
	cmp r3, #0
	bne _021D3FF6
	add r1, r0, #0
_021D3FF6:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x10
	blo _021D3FE2
	cmp r1, #0x10
	beq _021D4012
	mov r0, #0x38
	add r2, r1, #0
	mul r2, r0
	add r0, r5, r2
	add r0, #0x34
	strb r4, [r0]
	b _021D401A
_021D4012:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D401A:
	add r0, r5, r2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021D3FD0

	thumb_func_start ov5_021D4020
ov5_021D4020: ; 0x021D4020
	add r1, r0, #0
	mov r3, #0
	add r1, #0x34
	strb r3, [r1]
	str r3, [r0, #0x30]
	str r3, [r0, #0x2c]
	add r2, r3, #0
_021D402E:
	lsl r1, r3, #2
	add r1, r0, r1
	str r2, [r1, #0x14]
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #6
	blo _021D402E
	bx lr
	thumb_func_end ov5_021D4020

	thumb_func_start ov5_021D4040
ov5_021D4040: ; 0x021D4040
	push {r4, r5}
	mov r4, #0
	add r3, r4, #0
	add r5, r0, #0
_021D4048:
	add r2, r5, #0
	add r2, #0x34
	ldrb r2, [r2]
	cmp r1, r2
	bne _021D405A
	mov r1, #0x38
	mul r1, r3
	add r4, r0, r1
	b _021D4062
_021D405A:
	add r3, r3, #1
	add r5, #0x38
	cmp r3, #0x10
	blt _021D4048
_021D4062:
	add r0, r4, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ov5_021D4040

	thumb_func_start ov5_021D4068
ov5_021D4068: ; 0x021D4068
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #4
	ble _021D4078
	bl GF_AssertFail
_021D4078:
	cmp r5, #0
	beq _021D407E
	str r5, [r6, #0x14]
_021D407E:
	str r4, [r6, #0x10]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021D4068

	thumb_func_start ov5_021D4084
ov5_021D4084: ; 0x021D4084
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	add r6, r2, #0
	cmp r4, r0
	blt _021D4096
	bl GF_AssertFail
_021D4096:
	lsl r0, r4, #2
	str r6, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021D4084

	thumb_func_start ov5_021D409C
ov5_021D409C: ; 0x021D409C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	cmp r4, r0
	blt _021D40AE
	bl GF_AssertFail
_021D40AE:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	bl ov5_021D3938
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	bl ov5_021D3938
	add r7, r0, #0
	mov r4, #0
_021D40C4:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _021D40DC
	add r1, r7, #0
	bl ov5_021D3868
	ldr r0, [r6, #0x14]
	ldr r1, [sp]
	bl NNS_G3dRenderObjAddAnmObj
_021D40DC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021D40C4
	ldr r0, [sp, #4]
	str r0, [r5, #0x2c]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D409C

	thumb_func_start ov5_021D40F0
ov5_021D40F0: ; 0x021D40F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x4c]
	str r2, [sp, #0x20]
	str r0, [sp, #0x4c]
	add r0, r3, #0
	mov r5, #0
	str r3, [sp, #0x24]
	ldr r6, [sp, #0x44]
	ldr r7, [sp, #0x48]
	cmp r0, #0
	ble _021D4148
_021D4110:
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x40]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	mov r3, #0
	str r7, [sp, #0x14]
	bl ov5_021D3978
	add r4, r0, #0
	bne _021D4136
	bl GF_AssertFail
_021D4136:
	ldr r0, [sp, #0x4c]
	add r1, r5, #0
	add r2, r4, #0
	bl ov5_021D4084
	ldr r0, [sp, #0x24]
	add r5, r5, #1
	cmp r5, r0
	blt _021D4110
_021D4148:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D40F0

	thumb_func_start ov5_021D414C
ov5_021D414C: ; 0x021D414C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [r6, #0x2c]
	bl ov5_021D3938
	add r7, r0, #0
	mov r4, #0
	add r5, r6, #0
_021D415E:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021D416A
	add r1, r7, #0
	bl ov5_021D3868
_021D416A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _021D415E
	ldr r0, [r6, #0x10]
	mov r5, #0
	cmp r0, #0
	ble _021D4190
	add r4, r6, #0
	add r7, r5, #0
_021D417E:
	ldr r0, [r4, #0]
	ldr r1, [sp]
	bl ov5_021D3CE4
	stmia r4!, {r7}
	ldr r0, [r6, #0x10]
	add r5, r5, #1
	cmp r5, r0
	blt _021D417E
_021D4190:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D414C

	thumb_func_start ov5_021D4194
ov5_021D4194: ; 0x021D4194
	push {r4, lr}
	mov r1, #0xe
	mov r0, #4
	lsl r1, r1, #6
	bl sub_02018144
	add r4, r0, #0
	mov r2, #0xe
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #6
	bl MIi_CpuClearFast
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021D4194

	thumb_func_start ov5_021D41B4
ov5_021D41B4: ; 0x021D41B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D41C6
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
_021D41C6:
	pop {r4, pc}
	thumb_func_end ov5_021D41B4

	thumb_func_start ov5_021D41C8
ov5_021D41C8: ; 0x021D41C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r0, r1, #0
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	add r6, r3, #0
	bl ov5_021D3FD0
	add r5, r0, #0
	bne _021D41E6
	bl GF_AssertFail
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D41E6:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x34]
	add r2, r5, #0
	bl ov5_021D4068
	add r0, sp, #0x38
	ldrb r4, [r0]
	cmp r4, #0
	bne _021D41FC
	bl GF_AssertFail
_021D41FC:
	cmp r4, #0
	bne _021D4202
	mov r4, #1
_021D4202:
	ldr r0, [sp, #0x3c]
	str r4, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	add r0, r6, #0
	str r5, [sp, #0xc]
	bl ov5_021D40F0
	str r6, [r5, #0x30]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D41C8

	thumb_func_start ov5_021D4220
ov5_021D4220: ; 0x021D4220
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	add r6, r3, #0
	cmp r4, #6
	blo _021D4232
	bl GF_AssertFail
_021D4232:
	add r0, r5, #0
	add r1, r7, #0
	bl ov5_021D4040
	add r5, r0, #0
	add r5, #0x14
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021D424A
	bl GF_AssertFail
_021D424A:
	str r6, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021D4220

	thumb_func_start ov5_021D4250
ov5_021D4250: ; 0x021D4250
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _021D4260
	bl GF_AssertFail
_021D4260:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021D4040
	add r1, r6, #0
	bl ov5_021D409C
	mov r1, #0
	bl ov5_021D3E40
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021D4250

	thumb_func_start ov5_021D4278
ov5_021D4278: ; 0x021D4278
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r5, #0
	bne _021D428A
	bl GF_AssertFail
_021D428A:
	add r0, r6, #0
	add r1, r5, #0
	bl ov5_021D4040
	add r1, r7, #0
	bl ov5_021D409C
	add r5, r0, #0
	cmp r4, #0
	beq _021D42A6
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
_021D42A6:
	add r0, r5, #0
	mov r1, #0
	bl ov5_021D3E40
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D4278

	thumb_func_start ov5_021D42B0
ov5_021D42B0: ; 0x021D42B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bne _021D42BE
	bl GF_AssertFail
_021D42BE:
	add r0, r4, #0
	add r1, r6, #0
	bl ov5_021D4040
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021D414C
	add r0, r4, #0
	bl ov5_021D4020
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021D42B0

	thumb_func_start ov5_021D42D8
ov5_021D42D8: ; 0x021D42D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _021D42E4
	bl GF_AssertFail
_021D42E4:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021D4040
	ldr r0, [r0, #0x2c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D42D8

	thumb_func_start ov5_021D42F0
ov5_021D42F0: ; 0x021D42F0
	push {r4, lr}
	bl ov5_021D42D8
	add r4, r0, #0
	bne _021D42FE
	bl GF_AssertFail
_021D42FE:
	add r0, r4, #0
	bl ov5_021D3F70
	cmp r0, #0
	beq _021D430C
	mov r0, #1
	pop {r4, pc}
_021D430C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021D42F0

	thumb_func_start ov5_021D4310
ov5_021D4310: ; 0x021D4310
	push {r3, lr}
	bl ov5_021D4040
	ldr r0, [r0, #0x30]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021D4310