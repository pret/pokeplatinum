	.include "macros/function.inc"
	.include "include/ov63_0222BCE8.inc"

	

	.text


	thumb_func_start ov63_0222BCE8
ov63_0222BCE8: ; 0x0222BCE8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	bne _0222BD00
	bl sub_02022974
_0222BD00:
	strh r5, [r4]
	strh r6, [r4, #2]
	ldrh r2, [r4]
	ldrh r1, [r4, #2]
	add r0, r7, #0
	mul r1, r2
	lsl r1, r1, #2
	bl sub_02018144
	str r0, [r4, #4]
	cmp r0, #0
	bne _0222BD1C
	bl sub_02022974
_0222BD1C:
	ldrh r3, [r4]
	ldrh r2, [r4, #2]
	ldr r0, [r4, #4]
	mov r1, #0
	mul r2, r3
	lsl r2, r2, #2
	bl memset
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222BCE8

	thumb_func_start ov63_0222BD30
ov63_0222BD30: ; 0x0222BD30
	push {r4, lr}
	add r4, r0, #0
	bne _0222BD3A
	bl sub_02022974
_0222BD3A:
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov63_0222BD30

	thumb_func_start ov63_0222BD48
ov63_0222BD48: ; 0x0222BD48
	ldrh r0, [r0]
	bx lr
	thumb_func_end ov63_0222BD48

	thumb_func_start ov63_0222BD4C
ov63_0222BD4C: ; 0x0222BD4C
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end ov63_0222BD4C

	thumb_func_start ov63_0222BD50
ov63_0222BD50: ; 0x0222BD50
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _0222BD5E
	bl sub_02022974
_0222BD5E:
	ldrh r3, [r4]
	ldrh r2, [r4, #2]
	ldr r0, [r4, #4]
	add r1, r5, #0
	mul r2, r3
	lsl r2, r2, #2
	bl memcpy
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222BD50

	thumb_func_start ov63_0222BD70
ov63_0222BD70: ; 0x0222BD70
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _0222BDA8 ; =0x0222DBFC
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	str r0, [sp]
	cmp r5, #0
	bne _0222BD88
	bl sub_02022974
_0222BD88:
	ldrh r2, [r5]
	cmp r2, r4
	bls _0222BDA2
	ldrh r0, [r5, #2]
	cmp r0, r6
	bls _0222BDA2
	add r0, r2, #0
	mul r0, r6
	add r0, r4, r0
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp]
_0222BDA2:
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222BDA8: .word 0x0222DBFC
	thumb_func_end ov63_0222BD70

	thumb_func_start ov63_0222BDAC
ov63_0222BDAC: ; 0x0222BDAC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _0222BDBE
	bl sub_02022974
_0222BDBE:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov63_0222BD70
	mov r1, #0
	mvn r1, r1
	str r0, [sp]
	str r0, [sp, #4]
	cmp r0, r1
	bne _0222BDDA
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222BDDA:
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov63_0222BDAC

	thumb_func_start ov63_0222BDE4
ov63_0222BDE4: ; 0x0222BDE4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _0222BDF6
	bl sub_02022974
_0222BDF6:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov63_0222BD70
	mov r1, #0
	mvn r1, r1
	str r0, [sp]
	str r0, [sp, #4]
	cmp r0, r1
	bne _0222BE12
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0222BE12:
	lsr r0, r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222BDE4

	.rodata


	.global Unk_ov63_0222DBFC
Unk_ov63_0222DBFC: ; 0x0222DBFC
	.incbin "incbin/overlay63_rodata.bin", 0x2FC, 0x4

