	.include "macros/function.inc"
	.include "include/ov22_02259560.inc"

	

	.text


	thumb_func_start ov22_02259560
ov22_02259560: ; 0x02259560
	push {r3, lr}
	ldr r2, [r0, #4]
	ldr r0, [r0, #0]
	cmp r2, #3
	bge _02259570
	bl ov22_02254F6C
	pop {r3, pc}
_02259570:
	bl ov22_022591D0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_02259560

	thumb_func_start ov22_02259578
ov22_02259578: ; 0x02259578
	push {r3, lr}
	ldr r3, [r0, #4]
	ldr r0, [r0, #0]
	cmp r3, #3
	bge _02259596
	mov r3, #0
	mvn r3, r3
	cmp r1, r3
	bne _02259590
	bl ov22_02254E44
	pop {r3, pc}
_02259590:
	bl ov22_02254EDC
	pop {r3, pc}
_02259596:
	mov r3, #0
	mvn r3, r3
	cmp r1, r3
	bne _022595A4
	bl ov22_02259238
	pop {r3, pc}
_022595A4:
	bl ov22_02259244
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_02259578

	thumb_func_start ov22_022595AC
ov22_022595AC: ; 0x022595AC
	push {r4, lr}
	ldr r4, [r0, #4]
	cmp r4, #0
	bne _022595C2
	ldr r0, [r0, #0]
	ldr r4, [r0, #0]
	lsl r4, r4, #2
	ldr r3, [r3, r4]
	bl ov22_02254E54
	pop {r4, pc}
_022595C2:
	cmp r4, #1
	bne _022595D6
	ldr r0, [r0, #0]
	ldr r4, [r0, #0]
	add r4, #0x64
	lsl r4, r4, #2
	ldr r3, [r3, r4]
	bl ov22_02254E54
	pop {r4, pc}
_022595D6:
	cmp r4, #2
	ldr r0, [r0, #0]
	bne _022595EA
	ldr r4, [r0, #0]
	add r4, #0x64
	lsl r4, r4, #2
	ldr r3, [r3, r4]
	bl ov22_02254E54
	pop {r4, pc}
_022595EA:
	mov r4, #0x76
	lsl r4, r4, #2
	ldr r3, [r3, r4]
	bl ov22_02259278
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022595AC

	thumb_func_start ov22_022595F8
ov22_022595F8: ; 0x022595F8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [r0, #4]
	add r4, r2, #0
	cmp r1, #3
	bge _02259618
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	ldr r0, [r0, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov22_02254EF4
	add sp, #8
	pop {r4, r5, r6, pc}
_02259618:
	ldr r6, [r0, #0]
	add r1, sp, #4
	add r0, r6, #0
	add r2, sp, #0
	bl ov22_02259270
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r2, r0, #1
	str r1, [sp, #4]
	str r2, [sp]
	add r0, r6, #0
	add r1, r5, r1
	add r2, r4, r2
	bl ov22_022591EC
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_022595F8

	thumb_func_start ov22_02259648
ov22_02259648: ; 0x02259648
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r3, [r0, #4]
	add r5, r1, #0
	add r4, r2, #0
	cmp r3, #3
	bge _02259660
	ldr r0, [r0, #0]
	bl ov22_02254F00
	add sp, #8
	pop {r4, r5, r6, pc}
_02259660:
	ldr r6, [r0, #0]
	add r0, r6, #0
	bl ov22_02259250
	add r0, r6, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259270
	ldr r1, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	ldr r1, [sp]
	str r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp]
	ldr r0, [r5, #0]
	sub r0, r0, r2
	str r0, [r5, #0]
	ldr r1, [r4, #0]
	ldr r0, [sp]
	sub r0, r1, r0
	str r0, [r4, #0]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259648

	thumb_func_start ov22_02259698
ov22_02259698: ; 0x02259698
	push {r3, lr}
	ldr r3, [r0, #4]
	ldr r0, [r0, #0]
	cmp r3, #3
	bge _022596A8
	bl ov22_02254F30
	pop {r3, pc}
_022596A8:
	bl ov22_02259270
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_02259698

	thumb_func_start ov22_022596B0
ov22_022596B0: ; 0x022596B0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	ldr r2, [r0, #4]
	add r6, r1, #0
	add r5, r3, #0
	ldr r4, [sp, #0x18]
	cmp r2, #3
	ldr r0, [r0, #0]
	bge _022596D2
	add r2, r5, #0
	bl ov22_02254F84
	ldr r0, [r6, #0]
	str r0, [r7, #0]
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022596D2:
	add r1, sp, #0
	bl ov22_02259358
	add r0, sp, #0
	ldrb r1, [r0]
	str r1, [r6, #0]
	ldrb r1, [r0, #1]
	str r1, [r7, #0]
	ldrb r1, [r0, #2]
	str r1, [r5, #0]
	ldrb r0, [r0, #3]
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_022596B0

	thumb_func_start ov22_022596EC
ov22_022596EC: ; 0x022596EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r4, [r5, #8]
	add r6, r1, #0
	add r7, r2, #0
	cmp r4, r5
	beq _0225971E
_022596FC:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259648
	ldr r0, [sp, #4]
	add r1, r0, r6
	ldr r0, [sp]
	str r1, [sp, #4]
	add r2, r0, r7
	str r2, [sp]
	add r0, r4, #0
	bl ov22_022595F8
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _022596FC
_0225971E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_022596EC

	thumb_func_start ov22_02259724
ov22_02259724: ; 0x02259724
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r1, sp, #0x20
	add r2, sp, #0x1c
	add r7, r3, #0
	bl ov22_02259698
	add r0, r5, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov22_02259648
	add r0, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x10
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov22_022596B0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	str r0, [r4, #0]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r1, r1, r0
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [r6, #0]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	str r0, [r7, #0]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r1, r1, r0
	ldr r0, [sp, #8]
	sub r1, r1, r0
	ldr r0, [sp, #0x38]
	str r1, [r0, #0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_02259724

	thumb_func_start ov22_02259780
ov22_02259780: ; 0x02259780
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02259698
	add r0, r6, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259648
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, r2, r0
	str r0, [r5, #0]
	ldr r1, [sp, #8]
	ldr r2, [sp]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, r2, r0
	str r0, [r4, #0]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259780