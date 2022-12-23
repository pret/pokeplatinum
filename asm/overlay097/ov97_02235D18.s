	.include "macros/function.inc"
	.include "overlay097/ov97_02235D18.inc"

	

	.text


	thumb_func_start ov97_02235D18
ov97_02235D18: ; 0x02235D18
	push {r3, lr}
	mov r0, #1
	bl CTRDG_IdentifyAgbBackup
	cmp r0, #0
	bne _02235D28
	mov r0, #1
	pop {r3, pc}
_02235D28:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov97_02235D18

	thumb_func_start ov97_02235D2C
ov97_02235D2C: ; 0x02235D2C
	push {r3, lr}
	ldr r1, _02235D88 ; =0x0223F438
	str r0, [r1, #8]
	ldr r0, _02235D8C ; =0x0223EBFC
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02235D3E
	mov r0, #0xc
	pop {r3, pc}
_02235D3E:
	ldr r0, _02235D90 ; =0x0223D92C
	mov r1, #0x1e
	bl ov97_02235DC8
	cmp r0, #0
	bne _02235D86
	ldr r0, _02235D8C ; =0x0223EBFC
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _02235D6E
	mov r0, #0x89
	ldr r1, _02235D94 ; =0x0223F4B8
	lsl r0, r0, #4
	str r0, [r1, #0x20]
	mov r0, #0xeb
	lsl r0, r0, #6
	str r0, [r1, #0x24]
	ldr r2, _02235D98 ; =0x00001220
	ldr r0, _02235D88 ; =0x0223F438
	str r2, [r0, #0x68]
	mov r0, #9
	str r0, [r1, #0x30]
	b _02235D78
_02235D6E:
	ldr r0, _02235D9C ; =0x08000100
	ldr r1, _02235DA0 ; =0x0223F450
	mov r2, #0xfc
	bl CTRDG_CpuCopy32
_02235D78:
	bl ov97_02235D18
	cmp r0, #0
	bne _02235D84
	mov r0, #3
	pop {r3, pc}
_02235D84:
	mov r0, #0
_02235D86:
	pop {r3, pc}
	; .align 2, 0
_02235D88: .word 0x0223F438
_02235D8C: .word 0x0223EBFC
_02235D90: .word 0x0223D92C
_02235D94: .word 0x0223F4B8
_02235D98: .word 0x00001220
_02235D9C: .word 0x08000100
_02235DA0: .word 0x0223F450
	thumb_func_end ov97_02235D2C

	thumb_func_start ov97_02235DA4
ov97_02235DA4: ; 0x02235DA4
	ldr r0, _02235DAC ; =0x0223EBFC
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_02235DAC: .word 0x0223EBFC
	thumb_func_end ov97_02235DA4

	thumb_func_start ov97_02235DB0
ov97_02235DB0: ; 0x02235DB0
	ldr r0, _02235DB8 ; =0x0223EBFC
	ldr r0, [r0, #0]
	ldrb r0, [r0, #5]
	bx lr
	; .align 2, 0
_02235DB8: .word 0x0223EBFC
	thumb_func_end ov97_02235DB0

	thumb_func_start ov97_02235DBC
ov97_02235DBC: ; 0x02235DBC
	ldr r0, _02235DC4 ; =0x0223EBFC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #6]
	bx lr
	; .align 2, 0
_02235DC4: .word 0x0223EBFC
	thumb_func_end ov97_02235DBC

	thumb_func_start ov97_02235DC8
ov97_02235DC8: ; 0x02235DC8
	push {r3, r4, r5, lr}
	sub sp, #0xc0
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _02235E74 ; =0x0223EBFC
	mov r1, #0
	str r1, [r0, #0]
	bl CTRDG_IsAgbCartridge
	cmp r0, #0
	bne _02235DE4
	add sp, #0xc0
	mov r0, #1
	pop {r3, r4, r5, pc}
_02235DE4:
	bl CTRDG_GetAgbGameCode
	mov r2, #0
	cmp r4, #0
	ble _02235E08
	add r3, r5, #0
_02235DF0:
	ldr r1, [r3, #0]
	cmp r0, r1
	bne _02235E00
	lsl r0, r2, #3
	add r1, r5, r0
	ldr r0, _02235E74 ; =0x0223EBFC
	str r1, [r0, #0]
	b _02235E08
_02235E00:
	add r2, r2, #1
	add r3, #8
	cmp r2, r4
	blt _02235DF0
_02235E08:
	ldr r0, _02235E74 ; =0x0223EBFC
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02235E16
	add sp, #0xc0
	mov r0, #2
	pop {r3, r4, r5, pc}
_02235E16:
	mov r0, #1
	bl CTRDG_Enable
	add r4, sp, #0
	mov r0, #2
	lsl r0, r0, #0x1a
	add r1, r4, #0
	mov r2, #0xc0
	bl CTRDG_CpuCopy32
	ldr r3, _02235E78 ; =0x0223EC04
	mov r2, #0
_02235E2E:
	add r0, r4, r2
	ldrb r1, [r3]
	ldrb r0, [r0, #4]
	cmp r1, r0
	beq _02235E3E
	add sp, #0xc0
	mov r0, #4
	pop {r3, r4, r5, pc}
_02235E3E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #0x9c
	blo _02235E2E
	mov r2, #0
	mov r1, #0xa0
_02235E4A:
	ldrb r0, [r4, r1]
	add r1, r1, #1
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r1, #0xbc
	ble _02235E4A
	add r2, #0x19
	neg r0, r2
	lsl r0, r0, #0x18
	add r4, #0xbd
	lsr r1, r0, #0x18
	ldrb r0, [r4]
	cmp r0, r1
	beq _02235E6E
	add sp, #0xc0
	mov r0, #4
	pop {r3, r4, r5, pc}
_02235E6E:
	mov r0, #0
	add sp, #0xc0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02235E74: .word 0x0223EBFC
_02235E78: .word 0x0223EC04
	thumb_func_end ov97_02235DC8

	thumb_func_start ov97_02235E7C
ov97_02235E7C: ; 0x02235E7C
	push {r3, r4}
	mov r2, #0
	lsr r4, r1, #2
	add r3, r2, #0
	cmp r4, #0
	ble _02235E98
_02235E88:
	ldr r1, [r0, #0]
	add r0, r0, #4
	add r2, r2, r1
	add r1, r3, #1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	cmp r3, r4
	blt _02235E88
_02235E98:
	lsr r0, r2, #0x10
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	thumb_func_end ov97_02235E7C

	thumb_func_start ov97_02235EAC
ov97_02235EAC: ; 0x02235EAC
	push {r3, lr}
	lsl r0, r0, #0x10
	mov r3, #1
	add r2, r1, #0
	lsr r0, r0, #0x10
	mov r1, #0
	lsl r3, r3, #0xc
	bl CTRDG_ReadAgbFlash
	pop {r3, pc}
	thumb_func_end ov97_02235EAC

	thumb_func_start ov97_02235EC0
ov97_02235EC0: ; 0x02235EC0
	cmp r0, #0
	bne _02235ECE
	ldr r0, _02235EF4 ; =0x0223F4B8
	ldr r0, [r0, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_02235ECE:
	cmp r0, #4
	bne _02235EE2
	ldr r0, _02235EF4 ; =0x0223F4B8
	ldr r1, [r0, #0x24]
	mov r0, #0xba
	lsl r0, r0, #6
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_02235EE2:
	cmp r0, #0xd
	bne _02235EEC
	mov r0, #0x7d
	lsl r0, r0, #4
	bx lr
_02235EEC:
	mov r0, #0x3e
	lsl r0, r0, #6
	bx lr
	nop
_02235EF4: .word 0x0223F4B8
	thumb_func_end ov97_02235EC0

	thumb_func_start ov97_02235EF8
ov97_02235EF8: ; 0x02235EF8
	cmp r0, #0
	bne _02235F08
	ldr r0, _02235F48 ; =0x0223F438
	ldr r1, [r0, #8]
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	bx lr
_02235F08:
	cmp r0, #1
	blt _02235F26
	cmp r0, #4
	bgt _02235F26
	ldr r1, _02235F48 ; =0x0223F438
	ldr r2, [r1, #8]
	mov r1, #2
	lsl r1, r1, #0xc
	add r2, r2, r1
	sub r1, r0, #1
	mov r0, #0x3e
	lsl r0, r0, #6
	mul r0, r1
	add r0, r2, r0
	bx lr
_02235F26:
	cmp r0, #5
	blt _02235F44
	cmp r0, #0xe
	bge _02235F44
	ldr r1, _02235F48 ; =0x0223F438
	ldr r2, [r1, #8]
	mov r1, #6
	lsl r1, r1, #0xc
	add r2, r2, r1
	sub r1, r0, #5
	mov r0, #0x3e
	lsl r0, r0, #6
	mul r0, r1
	add r0, r2, r0
	bx lr
_02235F44:
	mov r0, #0
	bx lr
	; .align 2, 0
_02235F48: .word 0x0223F438
	thumb_func_end ov97_02235EF8

	thumb_func_start ov97_02235F4C
ov97_02235F4C: ; 0x02235F4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0
	add r5, r1, #0
	str r6, [sp, #4]
	add r1, r2, #0
	str r6, [r1, #0]
	ldr r1, _02235FE0 ; =0x0223F438
	add r7, r0, #0
	str r6, [r1, #4]
	mov r1, #0xe
	str r2, [sp]
	add r4, r6, #0
	mul r7, r1
_02235F68:
	add r0, r4, #0
	mov r1, #0xe
	bl _s32_div_f
	add r0, r1, r7
	add r1, r5, #0
	bl ov97_02235EAC
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl DC_FlushRange
	ldr r0, _02235FE4 ; =0x00000FF8
	ldr r1, [r5, r0]
	ldr r0, _02235FE8 ; =0x08012025
	cmp r1, r0
	bne _02235FBA
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02235FEC ; =0x00000FF4
	ldrh r0, [r5, r0]
	bl ov97_02235EC0
	add r1, r0, #0
	add r0, r5, #0
	bl ov97_02235E7C
	ldr r1, _02235FF0 ; =0x00000FF6
	ldrh r1, [r5, r1]
	cmp r1, r0
	bne _02235FBA
	ldr r0, _02235FF4 ; =0x00000FFC
	ldr r1, [r5, r0]
	ldr r0, [sp]
	str r1, [r0, #0]
	ldr r0, _02235FEC ; =0x00000FF4
	ldrh r1, [r5, r0]
	mov r0, #1
	lsl r0, r1
	orr r6, r0
_02235FBA:
	add r4, r4, #1
	cmp r4, #0xe
	blt _02235F68
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02235FD8
	ldr r0, _02235FF8 ; =0x00003FFF
	cmp r6, r0
	bne _02235FD2
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02235FD2:
	add sp, #8
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_02235FD8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02235FE0: .word 0x0223F438
_02235FE4: .word 0x00000FF8
_02235FE8: .word 0x08012025
_02235FEC: .word 0x00000FF4
_02235FF0: .word 0x00000FF6
_02235FF4: .word 0x00000FFC
_02235FF8: .word 0x00003FFF
	thumb_func_end ov97_02235F4C

	thumb_func_start ov97_02235FFC
ov97_02235FFC: ; 0x02235FFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	mov r0, #0
	add r1, r7, #0
	add r2, sp, #4
	bl ov97_02235F4C
	add r6, r0, #0
	mov r0, #1
	add r1, r7, #0
	add r2, sp, #0
	bl ov97_02235F4C
	cmp r6, #1
	bne _02236074
	cmp r0, #1
	bne _02236074
	mov r1, #0
	ldr r0, [sp, #4]
	mvn r1, r1
	cmp r0, r1
	bne _02236034
	ldr r3, [sp]
	cmp r3, #0
	beq _02236042
_02236034:
	cmp r0, #0
	bne _0223605A
	mov r1, #0
	ldr r3, [sp]
	mvn r1, r1
	cmp r3, r1
	bne _0223605A
_02236042:
	add r2, r0, #1
	add r1, r3, #1
	cmp r2, r1
	bhs _02236052
	str r3, [r4, #0]
	mov r0, #1
	str r0, [r5, #0]
	b _0223606E
_02236052:
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #0]
	b _0223606E
_0223605A:
	ldr r1, [sp]
	cmp r0, r1
	bhs _02236068
	str r1, [r4, #0]
	mov r0, #1
	str r0, [r5, #0]
	b _0223606E
_02236068:
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #0]
_0223606E:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02236074:
	cmp r6, #1
	bne _02236098
	cmp r0, #1
	beq _02236098
	ldr r1, [sp, #4]
	cmp r0, #0xff
	str r1, [r4, #0]
	bne _0223608E
	mov r0, #0
	str r0, [r5, #0]
	add sp, #8
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_0223608E:
	mov r0, #0
	str r0, [r5, #0]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02236098:
	cmp r0, #1
	bne _022360BA
	cmp r6, #1
	beq _022360BA
	ldr r0, [sp]
	cmp r6, #0xff
	str r0, [r4, #0]
	bne _022360B2
	mov r0, #1
	str r0, [r5, #0]
	add sp, #8
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_022360B2:
	mov r0, #1
	add sp, #8
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022360BA:
	cmp r6, #0
	bne _022360CC
	cmp r0, #0
	bne _022360CC
	mov r0, #0
	str r0, [r4, #0]
	add sp, #8
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022360CC:
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r5, #0]
	mov r0, #2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_02235FFC

	thumb_func_start ov97_022360D8
ov97_022360D8: ; 0x022360D8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0223618C ; =0x0223F438
	ldr r1, _02236190 ; =0x0223F438
	ldr r0, [r0, #8]
	ldr r2, _02236194 ; =0x0223F448
	bl ov97_02235FFC
	cmp r0, #1
	beq _02236102
	cmp r0, #0
	beq _022360FA
	cmp r0, #2
	beq _022360FE
	cmp r0, #0xff
	bne _02236102
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_022360FA:
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_022360FE:
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_02236102:
	ldr r7, _0223618C ; =0x0223F438
	ldr r0, [r7, #0]
	cmp r0, #1
	bhi _02236186
	mov r6, #0
	ldr r5, [r7, #8]
	add r4, r6, #0
_02236110:
	ldr r1, [r7, #0]
	mov r0, #0xe
	mul r0, r1
	add r0, r4, r0
	add r1, r5, #0
	bl ov97_02235EAC
	ldr r0, _02236198 ; =0x00000FF8
	ldr r1, [r5, r0]
	ldr r0, _0223619C ; =0x08012025
	cmp r1, r0
	bne _02236172
	ldr r0, _022361A0 ; =0x00000FF4
	ldrh r0, [r5, r0]
	bl ov97_02235EC0
	add r1, r0, #0
	add r0, r5, #0
	bl ov97_02235E7C
	ldr r1, _022361A4 ; =0x00000FF6
	ldrh r1, [r5, r1]
	cmp r1, r0
	bne _02236172
	ldr r0, _022361A8 ; =0x00000FFC
	mov r1, #1
	ldr r0, [r5, r0]
	str r0, [r7, #0x10]
	ldr r0, _022361A0 ; =0x00000FF4
	ldrh r0, [r5, r0]
	lsl r1, r0
	orr r6, r1
	bl ov97_02235EC0
	str r0, [sp]
	ldr r0, _022361A0 ; =0x00000FF4
	ldrh r0, [r5, r0]
	bl ov97_02235EF8
	add r1, r0, #0
	ldr r2, [sp]
	add r0, r5, #0
	bl MIi_CpuCopy32
	ldr r0, _022361A0 ; =0x00000FF4
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _02236172
	str r4, [r7, #0xc]
_02236172:
	add r4, r4, #1
	cmp r4, #0xe
	blt _02236110
	ldr r0, _022361AC ; =0x00003FFF
	cmp r6, r0
	bne _02236182
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02236182:
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_02236186:
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223618C: .word 0x0223F438
_02236190: .word 0x0223F438
_02236194: .word 0x0223F448
_02236198: .word 0x00000FF8
_0223619C: .word 0x08012025
_022361A0: .word 0x00000FF4
_022361A4: .word 0x00000FF6
_022361A8: .word 0x00000FFC
_022361AC: .word 0x00003FFF
	thumb_func_end ov97_022360D8

	thumb_func_start ov97_022361B0
ov97_022361B0: ; 0x022361B0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0223622C ; =0x0223F438
	mov r2, #1
	ldr r5, [r0, #8]
	str r2, [r0, #0x14]
	mov r0, #0
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl MIi_CpuClear32
	add r0, r6, #0
	bl ov97_02235EC0
	add r4, r0, #0
	add r0, r6, #0
	bl ov97_02235EF8
	add r1, r5, #0
	add r2, r4, #0
	bl MIi_CpuCopy32
	ldr r0, _0223622C ; =0x0223F438
	ldr r1, [r0, #0x10]
	ldr r0, _02236230 ; =0x00000FFC
	str r1, [r5, r0]
	add r1, r0, #0
	sub r1, #8
	strh r6, [r5, r1]
	ldr r1, _02236234 ; =0x08012025
	sub r0, r0, #4
	str r1, [r5, r0]
	add r0, r6, #0
	bl ov97_02235EC0
	add r1, r0, #0
	add r0, r5, #0
	bl ov97_02235E7C
	ldr r1, _02236238 ; =0x00000FF6
	strh r0, [r5, r1]
	ldr r0, _0223622C ; =0x0223F438
	mov r1, #0xe
	ldr r0, [r0, #0xc]
	add r0, r6, r0
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, _0223623C ; =0x0223EBFC
	ldr r3, _02236240 ; =ov97_02236244
	ldr r2, [r0, #4]
	mov r0, #0xe
	mul r0, r2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r5, #0
	mov r2, #4
	bl CTRDG_WriteAndVerifyAgbFlashAsync
	pop {r4, r5, r6, pc}
	nop
_0223622C: .word 0x0223F438
_02236230: .word 0x00000FFC
_02236234: .word 0x08012025
_02236238: .word 0x00000FF6
_0223623C: .word 0x0223EBFC
_02236240: .word ov97_02236244
	thumb_func_end ov97_022361B0

	thumb_func_start ov97_02236244
ov97_02236244: ; 0x02236244
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02236270
	ldr r1, _0223627C ; =0x0223F438
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
	cmp r0, #0xe
	blt _0223625E
	mov r0, #0
	str r0, [r1, #4]
	str r0, [r1, #0x14]
	bx lr
_0223625E:
	cmp r0, #0xd
	bne _0223626A
	mov r0, #2
	str r0, [r1, #0x14]
	mov r0, #0
	bx lr
_0223626A:
	mov r0, #3
	str r0, [r1, #0x14]
	b _02236276
_02236270:
	ldr r0, _0223627C ; =0x0223F438
	mov r1, #4
	str r1, [r0, #0x14]
_02236276:
	mov r0, #0
	bx lr
	nop
_0223627C: .word 0x0223F438
	thumb_func_end ov97_02236244

	thumb_func_start ov97_02236280
ov97_02236280: ; 0x02236280
	push {r3, lr}
	ldr r1, _022362C0 ; =0x0223F438
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _022362A6
	ldr r1, [r1, #0]
	cmp r1, #1
	bne _02236296
	mov r2, #0
	ldr r1, _022362C4 ; =0x0223EBFC
	b _0223629A
_02236296:
	ldr r1, _022362C4 ; =0x0223EBFC
	mov r2, #1
_0223629A:
	str r2, [r1, #4]
	ldr r1, _022362C0 ; =0x0223F438
	ldr r2, [r1, #0x10]
	add r2, r2, #1
	str r2, [r1, #0x10]
	b _022362AA
_022362A6:
	mov r0, #0
	pop {r3, pc}
_022362AA:
	ldr r1, _022362C4 ; =0x0223EBFC
	ldr r1, [r1, #4]
	cmp r1, #0
	bge _022362B6
	mov r0, #0
	pop {r3, pc}
_022362B6:
	bl ov97_022361B0
	mov r0, #1
	pop {r3, pc}
	nop
_022362C0: .word 0x0223F438
_022362C4: .word 0x0223EBFC
	thumb_func_end ov97_02236280

	thumb_func_start ov97_022362C8
ov97_022362C8: ; 0x022362C8
	push {r3, lr}
	ldr r1, _02236304 ; =0x0223F438
	ldr r0, [r1, #0x14]
	cmp r0, #4
	bhi _02236300
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022362DE: ; jump table
	.short _02236300 - _022362DE - 2 ; case 0
	.short _022362F8 - _022362DE - 2 ; case 1
	.short _022362E8 - _022362DE - 2 ; case 2
	.short _022362F2 - _022362DE - 2 ; case 3
	.short _022362FC - _022362DE - 2 ; case 4
_022362E8:
	ldr r0, [r1, #4]
	bl ov97_022361B0
	mov r0, #0
	pop {r3, pc}
_022362F2:
	ldr r0, [r1, #4]
	bl ov97_022361B0
_022362F8:
	mov r0, #0xa
	pop {r3, pc}
_022362FC:
	mov r0, #8
	pop {r3, pc}
_02236300:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02236304: .word 0x0223F438
	thumb_func_end ov97_022362C8

	thumb_func_start ov97_02236308
ov97_02236308: ; 0x02236308
	ldr r0, _0223633C ; =0x0223F438
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bhi _02236336
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223631C: ; jump table
	.short _02236336 - _0223631C - 2 ; case 0
	.short _0223632E - _0223631C - 2 ; case 1
	.short _02236326 - _0223631C - 2 ; case 2
	.short _0223632A - _0223631C - 2 ; case 3
	.short _02236332 - _0223631C - 2 ; case 4
_02236326:
	mov r0, #0xb
	bx lr
_0223632A:
	mov r0, #0xa
	bx lr
_0223632E:
	mov r0, #9
	bx lr
_02236332:
	mov r0, #8
	bx lr
_02236336:
	mov r0, #0
	bx lr
	nop
_0223633C: .word 0x0223F438
	thumb_func_end ov97_02236308

	thumb_func_start ov97_02236340
ov97_02236340: ; 0x02236340
	ldr r0, _0223634C ; =0x0223F438
	ldr r1, [r0, #8]
	mov r0, #6
	lsl r0, r0, #0xc
	add r0, r1, r0
	bx lr
	; .align 2, 0
_0223634C: .word 0x0223F438
	thumb_func_end ov97_02236340

	thumb_func_start ov97_02236350
ov97_02236350: ; 0x02236350
	ldr r3, _02236358 ; =ov97_02235EF8
	mov r0, #0
	bx r3
	nop
_02236358: .word ov97_02235EF8
	thumb_func_end ov97_02236350

	.rodata


	.global Unk_ov97_0223D92C
Unk_ov97_0223D92C: ; 0x0223D92C
	.incbin "incbin/overlay97_rodata.bin", 0x2B8, 0xF0


	.data


	.global Unk_ov97_0223EBFC
Unk_ov97_0223EBFC: ; 0x0223EBFC
	.incbin "incbin/overlay97_data.bin", 0xCBC, 0xCC0 - 0xCBC

	.global Unk_ov97_0223EC00
Unk_ov97_0223EC00: ; 0x0223EC00
	.incbin "incbin/overlay97_data.bin", 0xCC0, 0xCC4 - 0xCC0

	.global Unk_ov97_0223EC04
Unk_ov97_0223EC04: ; 0x0223EC04
	.incbin "incbin/overlay97_data.bin", 0xCC4, 0x9C


	.bss


	.global Unk_ov97_0223F438
Unk_ov97_0223F438: ; 0x0223F438
	.space 0x4

	.global Unk_ov97_0223F43C
Unk_ov97_0223F43C: ; 0x0223F43C
	.space 0x4

	.global Unk_ov97_0223F440
Unk_ov97_0223F440: ; 0x0223F440
	.space 0x4

	.global Unk_ov97_0223F444
Unk_ov97_0223F444: ; 0x0223F444
	.space 0x4

	.global Unk_ov97_0223F448
Unk_ov97_0223F448: ; 0x0223F448
	.space 0x4

	.global Unk_ov97_0223F44C
Unk_ov97_0223F44C: ; 0x0223F44C
	.space 0x4

	.global Unk_ov97_0223F450
Unk_ov97_0223F450: ; 0x0223F450
	.space 0xFC

