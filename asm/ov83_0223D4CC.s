	.include "macros/function.inc"
	.include "include/ov83_0223D4CC.inc"

	

	.text


	thumb_func_start ov83_0223D4CC
ov83_0223D4CC: ; 0x0223D4CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #0x18]
	mov r1, #8
	str r2, [sp]
	add r5, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	str r5, [r4, #0]
	str r0, [r4, #4]
	cmp r5, #1
	bne _0223D4F6
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02032798
	b _0223D504
_0223D4F6:
	ldr r2, [sp]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r7, #0
	bl ov83_0223D584
	str r0, [r4, #4]
_0223D504:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223D4CC

	thumb_func_start ov83_0223D508
ov83_0223D508: ; 0x0223D508
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r3, #0]
	add r6, r1, #0
	add r7, r2, #0
	cmp r0, #1
	bne _0223D54A
	bl sub_0203895C
	cmp r0, #0x1d
	bne _0223D53E
	add r0, r5, #0
	mov r4, #1
	bl sub_0203626C
	cmp r0, #0
	beq _0223D52C
	mov r4, #0
_0223D52C:
	bl ov4_021D1404
	cmp r0, #0
	bne _0223D536
	mov r4, #0
_0223D536:
	cmp r4, #0
	bne _0223D53E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223D53E:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020359DC
	pop {r3, r4, r5, r6, r7, pc}
_0223D54A:
	ldr r0, [r3, #4]
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov83_0223D638
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223D508

	thumb_func_start ov83_0223D558
ov83_0223D558: ; 0x0223D558
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0223D568
	ldr r0, [r4, #4]
	bl ov83_0223D620
_0223D568:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov83_0223D558

	thumb_func_start ov83_0223D570
ov83_0223D570: ; 0x0223D570
	push {r3, lr}
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0223D57E
	bl sub_0203608C
	pop {r3, pc}
_0223D57E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D570

	thumb_func_start ov83_0223D584
ov83_0223D584: ; 0x0223D584
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x1b
	add r5, r0, #0
	add r0, r3, #0
	lsl r1, r1, #4
	add r7, r2, #0
	bl sub_02018144
	mov r2, #0x1b
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl memset
	mov r1, #0x1a
	lsl r1, r1, #4
	str r5, [r4, r1]
	add r0, r1, #4
	str r6, [r4, r0]
	add r1, #8
	str r7, [r4, r1]
	ldr r0, _0223D5C4 ; =ov83_0223D5CC
	ldr r2, _0223D5C8 ; =0x00001388
	add r1, r4, #0
	bl sub_0200DA3C
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D5C4: .word ov83_0223D5CC
_0223D5C8: .word 0x00001388
	thumb_func_end ov83_0223D584

	thumb_func_start ov83_0223D5CC
ov83_0223D5CC: ; 0x0223D5CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r0, #0
	str r0, [sp]
	add r6, r7, #0
_0223D5D8:
	ldr r0, [r6, #0]
	cmp r0, #1
	bne _0223D60E
	mov r4, #0x1a
	lsl r4, r4, #4
	ldr r4, [r7, r4]
	mov r3, #0x6a
	mov ip, r4
	ldr r4, [r6, #4]
	mov r5, #0xc
	mul r5, r4
	str r5, [sp, #4]
	lsl r3, r3, #2
	add r2, r6, #0
	ldr r4, [sp, #4]
	mov r5, ip
	ldr r1, [r6, #0x30]
	ldr r3, [r7, r3]
	ldr r4, [r5, r4]
	mov r0, #0
	add r2, #8
	blx r4
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x34
	bl memset
_0223D60E:
	ldr r0, [sp]
	add r6, #0x34
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #8
	blt _0223D5D8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D5CC

	thumb_func_start ov83_0223D620
ov83_0223D620: ; 0x0223D620
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D620

	thumb_func_start ov83_0223D638
ov83_0223D638: ; 0x0223D638
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	str r2, [sp]
	add r7, r1, #0
	add r5, r3, #0
	add r0, r4, #0
	add r2, r6, #0
_0223D648:
	ldr r1, [r2, #0]
	cmp r1, #0
	bne _0223D656
	mov r1, #0x34
	mul r1, r0
	add r4, r6, r1
	b _0223D65E
_0223D656:
	add r0, r0, #1
	add r2, #0x34
	cmp r0, #8
	blt _0223D648
_0223D65E:
	cmp r4, #0
	bne _0223D666
	bl sub_02022974
_0223D666:
	mov r0, #0x1a
	lsl r0, r0, #4
	add r1, r7, #0
	ldr r2, [r6, r0]
	sub r1, #0x16
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	ldr r0, [r0, #4]
	blx r0
	cmp r0, r5
	beq _0223D682
	bl sub_02022974
_0223D682:
	cmp r5, #0x26
	blt _0223D68A
	bl sub_02022974
_0223D68A:
	sub r7, #0x16
	str r7, [r4, #4]
	cmp r5, #0
	ble _0223D69E
	add r0, r4, #0
	ldr r1, [sp]
	add r0, #8
	add r2, r5, #0
	bl memcpy
_0223D69E:
	str r5, [r4, #0x30]
	mov r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D638