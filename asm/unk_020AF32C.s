	.include "macros/function.inc"
	.include "include/unk_020AF32C.inc"

	

	.text


	arm_func_start NNS_G3dGlbInit
NNS_G3dGlbInit: ; 0x020AF32C
	stmfd sp!, {r3, lr}
	ldr r2, _020AF440 ; =0x17101610
	ldr r1, _020AF444 ; =0x021C5A8C
	mov r0, #0
	str r2, [r1, #0]
	str r0, [r1, #4]
	mov r2, #2
	ldr r0, _020AF448 ; =0x32323232
	str r2, [r1, #0x48]
	ldr r2, _020AF44C ; =0x60293130
	str r0, [r1, #0x7c]
	ldr r0, _020AF450 ; =0x33333333
	str r2, [r1, #0x90]
	ldr r2, _020AF454 ; =0x002A1B19
	str r0, [r1, #0xa4]
	ldr r0, _020AF458 ; =0x021C5AD8
	str r2, [r1, #0xb8]
	bl MTX_Identity43_
	ldr r0, _020AF45C ; =0x021C5A94
	bl MTX_Identity44_
	ldr ip, _020AF460 ; =0x40000200
	ldr r3, _020AF464 ; =0xC0080000
	ldr r2, _020AF468 ; =0x2D8B62D8
	ldr r1, _020AF444 ; =0x021C5A8C
	sub r0, ip, #-0x3fffffff
	str r2, [r1, #0x80]
	str ip, [r1, #0x84]
	str r0, [r1, #0x88]
	ldr r2, _020AF46C ; =0x4210C210
	str r3, [r1, #0x8c]
	str r2, [r1, #0x94]
	ldr r0, _020AF470 ; =0x001F008F
	str r2, [r1, #0x98]
	str r0, [r1, #0x9c]
	sub r2, r3, #0x90000
	ldr r0, _020AF474 ; =0x00007FFF
	str r2, [r1, #0xa0]
	str r0, [r1, #0xa8]
	mov r2, #0x4000001f
	ldr r0, _020AF478 ; =0x800003E0
	str r2, [r1, #0xac]
	str r0, [r1, #0xb0]
	rsb r0, ip, #0x7e00
	str r0, [r1, #0xb4]
	mov r2, #0
	str r2, [r1, #0xe0]
	str r2, [r1, #0xe4]
	ldr r0, _020AF47C ; =0x021C5B48
	str r2, [r1, #0xe8]
	bl MTX_Identity33_
	mov r1, #0
	ldr r0, _020AF444 ; =0x021C5A8C
	mov r2, #0x1000
	str r2, [r0, #0xec]
	str r2, [r0, #0xf0]
	str r2, [r0, #0xf4]
	str r1, [r0, #0xf8]
	str r1, [r0, #0xfc]
	str r1, [r0, #0x248]
	str r1, [r0, #0x244]
	str r1, [r0, #0x240]
	str r1, [r0, #0x254]
	str r1, [r0, #0x24c]
	str r2, [r0, #0x250]
	str r1, [r0, #0x25c]
	str r1, [r0, #0x258]
	sub r1, r1, #0x1000
	str r1, [r0, #0x260]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AF440: .word 0x17101610
_020AF444: .word 0x021C5A8C
_020AF448: .word 0x32323232
_020AF44C: .word 0x60293130
_020AF450: .word 0x33333333
_020AF454: .word 0x002A1B19
_020AF458: .word 0x021C5AD8
_020AF45C: .word 0x021C5A94
_020AF460: .word 0x40000200
_020AF464: .word 0xC0080000
_020AF468: .word 0x2D8B62D8
_020AF46C: .word 0x4210C210
_020AF470: .word 0x001F008F
_020AF474: .word 0x00007FFF
_020AF478: .word 0x800003E0
_020AF47C: .word 0x021C5B48
	arm_func_end NNS_G3dGlbInit

	arm_func_start NNS_G3dGlbFlushP
NNS_G3dGlbFlushP: ; 0x020AF480
	stmfd sp!, {r3, lr}
	ldr r0, _020AF4B4 ; =0x021C5A8C
	ldr r1, _020AF4B8 ; =0x021C5A8C
	ldr r0, [r0, #0]
	add r1, r1, #4
	mov r2, #0x3e
	bl NNS_G3dGeBufferOP_N
	ldr r0, _020AF4B4 ; =0x021C5A8C
	ldr r1, [r0, #0xfc]
	bic r1, r1, #1
	bic r1, r1, #2
	str r1, [r0, #0xfc]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AF4B4: .word 0x021C5A8C
_020AF4B8: .word 0x021C5A8C
	arm_func_end NNS_G3dGlbFlushP

	arm_func_start NNS_G3dGlbSetBaseTrans
NNS_G3dGlbSetBaseTrans: ; 0x020AF4BC
	cmp r0, #0
	bxeq lr
	ldr r3, _020AF4E4 ; =0x021C5B6C
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, _020AF4E8 ; =0x021C5A8C
	ldr r1, [r0, #0xfc]
	bic r1, r1, #0xa4
	str r1, [r0, #0xfc]
	bx lr
	; .align 2, 0
_020AF4E4: .word 0x021C5B6C
_020AF4E8: .word 0x021C5A8C
	arm_func_end NNS_G3dGlbSetBaseTrans

	arm_func_start NNS_G3dGlbSetBaseScale
NNS_G3dGlbSetBaseScale: ; 0x020AF4EC
	cmp r0, #0
	bxeq lr
	ldr r3, _020AF514 ; =0x021C5B78
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, _020AF518 ; =0x021C5A8C
	ldr r1, [r0, #0xfc]
	bic r1, r1, #0xa4
	str r1, [r0, #0xfc]
	bx lr
	; .align 2, 0
_020AF514: .word 0x021C5B78
_020AF518: .word 0x021C5A8C
	arm_func_end NNS_G3dGlbSetBaseScale

	arm_func_start NNS_G3dGlbLightVector
NNS_G3dGlbLightVector: ; 0x020AF51C
	stmfd sp!, {r3, lr}
	ldr ip, _020AF550 ; =0x000003FF
	mov r2, r2, asr #3
	mov lr, r3, asr #3
	and r3, ip, r1, asr #3
	mov r1, r2, lsl #0x16
	mov r2, lr, lsl #0x16
	orr r1, r3, r1, lsr #12
	orr r2, r1, r2, lsr #2
	ldr r1, _020AF554 ; =0x021C5B0C
	orr r2, r2, r0, lsl #30
	str r2, [r1, r0, lsl #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AF550: .word 0x000003FF
_020AF554: .word 0x021C5B0C
	arm_func_end NNS_G3dGlbLightVector

	arm_func_start NNS_G3dGlbLightColor
NNS_G3dGlbLightColor: ; 0x020AF558
	ldr r2, _020AF568 ; =0x021C5B34
	orr r1, r1, r0, lsl #30
	str r1, [r2, r0, lsl #2]
	bx lr
	; .align 2, 0
_020AF568: .word 0x021C5B34
	arm_func_end NNS_G3dGlbLightColor

	arm_func_start NNS_G3dGlbMaterialColorDiffAmb
NNS_G3dGlbMaterialColorDiffAmb: ; 0x020AF56C
	cmp r2, #0
	movne r2, #1
	orr r1, r0, r1, lsl #16
	moveq r2, #0
	ldr r0, _020AF58C ; =0x021C5A8C
	orr r1, r1, r2, lsl #15
	str r1, [r0, #0x94]
	bx lr
	; .align 2, 0
_020AF58C: .word 0x021C5A8C
	arm_func_end NNS_G3dGlbMaterialColorDiffAmb

	arm_func_start NNS_G3dGlbMaterialColorSpecEmi
NNS_G3dGlbMaterialColorSpecEmi: ; 0x020AF590
	cmp r2, #0
	movne r2, #1
	orr r1, r0, r1, lsl #16
	moveq r2, #0
	ldr r0, _020AF5B0 ; =0x021C5A8C
	orr r1, r1, r2, lsl #15
	str r1, [r0, #0x98]
	bx lr
	; .align 2, 0
_020AF5B0: .word 0x021C5A8C
	arm_func_end NNS_G3dGlbMaterialColorSpecEmi

	arm_func_start NNS_G3dGlbPolygonAttr
NNS_G3dGlbPolygonAttr: ; 0x020AF5B4
	orr r0, r0, r1, lsl #4
	ldr r1, [sp, #4]
	orr r0, r0, r2, lsl #6
	orr r0, r1, r0
	ldr r2, [sp]
	orr r1, r0, r3, lsl #24
	ldr r0, _020AF5DC ; =0x021C5A8C
	orr r1, r1, r2, lsl #16
	str r1, [r0, #0x9c]
	bx lr
	; .align 2, 0
_020AF5DC: .word 0x021C5A8C
	arm_func_end NNS_G3dGlbPolygonAttr

	arm_func_start NNS_G3dGlbGetInvV
NNS_G3dGlbGetInvV: ; 0x020AF5E0
	stmfd sp!, {r3, lr}
	ldr r0, _020AF618 ; =0x021C5A8C
	ldr r0, [r0, #0xfc]
	tst r0, #8
	bne _020AF610
	ldr r0, _020AF61C ; =0x021C5AD8
	ldr r1, _020AF620 ; =0x021C5B8C
	bl MTX_Inverse43
	ldr r0, _020AF618 ; =0x021C5A8C
	ldr r1, [r0, #0xfc]
	orr r1, r1, #8
	str r1, [r0, #0xfc]
_020AF610:
	ldr r0, _020AF620 ; =0x021C5B8C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AF618: .word 0x021C5A8C
_020AF61C: .word 0x021C5AD8
_020AF620: .word 0x021C5B8C
	arm_func_end NNS_G3dGlbGetInvV

	arm_func_start calcSrtCameraMtx_
calcSrtCameraMtx_: ; 0x020AF624
	stmfd sp!, {r3, lr}
	ldr r0, _020AF668 ; =0x021C5B48
	ldr r1, _020AF66C ; =0x021C5AD8
	ldr r2, _020AF670 ; =0x021C5BBC
	bl MTX_Concat43
	ldr r3, _020AF674 ; =0x021C5A8C
	ldr r0, _020AF670 ; =0x021C5BBC
	ldr r2, [r3, #0xf4]
	mov r1, r0
	str r2, [sp]
	ldr r2, [r3, #0xec]
	ldr r3, [r3, #0xf0]
	bl MTX_ScaleApply43
	ldr r0, _020AF670 ; =0x021C5BBC
	ldr r1, _020AF678 ; =0x021C5BEC
	bl MTX_Inverse43
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AF668: .word 0x021C5B48
_020AF66C: .word 0x021C5AD8
_020AF670: .word 0x021C5BBC
_020AF674: .word 0x021C5A8C
_020AF678: .word 0x021C5BEC
	arm_func_end calcSrtCameraMtx_

	arm_func_start NNS_G3dGlbGetWV
NNS_G3dGlbGetWV: ; 0x020AF67C
	stmfd sp!, {r3, lr}
	ldr r0, _020AF6AC ; =0x021C5A8C
	ldr r0, [r0, #0xfc]
	tst r0, #0x80
	bne _020AF6A4
	bl calcSrtCameraMtx_
	ldr r0, _020AF6AC ; =0x021C5A8C
	ldr r1, [r0, #0xfc]
	orr r1, r1, #0x80
	str r1, [r0, #0xfc]
_020AF6A4:
	ldr r0, _020AF6B0 ; =0x021C5BBC
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AF6AC: .word 0x021C5A8C
_020AF6B0: .word 0x021C5BBC
	arm_func_end NNS_G3dGlbGetWV

	arm_func_start NNS_G3dGlbGetInvWV
NNS_G3dGlbGetInvWV: ; 0x020AF6B4
	stmfd sp!, {r3, lr}
	ldr r0, _020AF6E4 ; =0x021C5A8C
	ldr r0, [r0, #0xfc]
	tst r0, #0x80
	bne _020AF6DC
	bl calcSrtCameraMtx_
	ldr r0, _020AF6E4 ; =0x021C5A8C
	ldr r1, [r0, #0xfc]
	orr r1, r1, #0x80
	str r1, [r0, #0xfc]
_020AF6DC:
	ldr r0, _020AF6E8 ; =0x021C5BEC
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AF6E4: .word 0x021C5A8C
_020AF6E8: .word 0x021C5BEC
	arm_func_end NNS_G3dGlbGetInvWV

	arm_func_start NNS_G3dGlbGetViewPort
NNS_G3dGlbGetViewPort: ; 0x020AF6EC
	cmp r0, #0
	beq _020AF704
	ldr ip, _020AF75C ; =0x021C5A8C
	ldr ip, [ip, #0xa0]
	and ip, ip, #0xff
	str ip, [r0]
_020AF704:
	cmp r1, #0
	beq _020AF720
	ldr r0, _020AF75C ; =0x021C5A8C
	ldr r0, [r0, #0xa0]
	mov r0, r0, lsr #8
	and r0, r0, #0xff
	str r0, [r1, #0]
_020AF720:
	cmp r2, #0
	beq _020AF73C
	ldr r0, _020AF75C ; =0x021C5A8C
	ldr r0, [r0, #0xa0]
	mov r0, r0, lsr #0x10
	and r0, r0, #0xff
	str r0, [r2, #0]
_020AF73C:
	cmp r3, #0
	bxeq lr
	ldr r0, _020AF75C ; =0x021C5A8C
	ldr r0, [r0, #0xa0]
	mov r0, r0, lsr #0x18
	and r0, r0, #0xff
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
_020AF75C: .word 0x021C5A8C
	arm_func_end NNS_G3dGlbGetViewPort

	.bss


	.global Unk_021C5A8C
Unk_021C5A8C: ; 0x021C5A8C
	.space 0x264

