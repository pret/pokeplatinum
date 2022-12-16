	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov22_02259484
ov22_02259484: ; 0x02259484
	push {r4, r5, r6, lr}
	add r6, r1, #0
	lsl r4, r6, #4
	add r5, r0, #0
	add r0, r2, #0
	add r1, r4, #0
	bl sub_02018144
	str r0, [r5, #0]
	cmp r0, #0
	bne _0225949E
	bl sub_02022974
_0225949E:
	ldr r0, [r5, #0]
	mov r1, #0
	add r2, r4, #0
	bl sub_020D5124
	str r6, [r5, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259484

	thumb_func_start ov22_022594AC
ov22_022594AC: ; 0x022594AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022594AC

	thumb_func_start ov22_022594C0
ov22_022594C0: ; 0x022594C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	add r7, r2, #0
	cmp r0, #0
	bne _022594D2
	bl sub_02022974
_022594D2:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _022594DC
	bl sub_02022974
_022594DC:
	ldr r2, [r5, #4]
	mov r4, #0
	cmp r2, #0
	ble _022594F4
	ldr r1, [r5, #0]
_022594E6:
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _022594F4
	add r4, r4, #1
	add r1, #0x10
	cmp r4, r2
	blt _022594E6
_022594F4:
	cmp r2, r4
	bgt _022594FC
	bl sub_02022974
_022594FC:
	ldr r0, [r5, #0]
	lsl r1, r4, #4
	str r6, [r0, r1]
	ldr r0, [r5, #0]
	add r0, r0, r1
	str r7, [r0, #4]
	ldr r0, [r5, #0]
	add r0, r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_022594C0

	thumb_func_start ov22_02259510
ov22_02259510: ; 0x02259510
	mov r2, #0x10
	mov r1, #0
_02259514:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _02259514
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02259510

	thumb_func_start ov22_02259520
ov22_02259520: ; 0x02259520
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	ldr r2, [r1, #8]
	str r0, [r2, #0xc]
	str r1, [r0, #0xc]
	str r0, [r1, #8]
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02259520

	thumb_func_start ov22_02259530
ov22_02259530: ; 0x02259530
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	str r2, [r1, #8]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02259530

	thumb_func_start ov22_02259540
ov22_02259540: ; 0x02259540
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r4, [r6, #8]
	cmp r4, r6
	beq _0225955E
_0225954A:
	add r0, r4, #0
	ldr r5, [r4, #8]
	bl ov22_02259530
	add r0, r4, #0
	bl ov22_02259510
	add r4, r5, #0
	cmp r5, r6
	bne _0225954A
_0225955E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259540