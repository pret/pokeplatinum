	.include "macros/function.inc"
	.include "overlay006/ov6_022430C4.inc"

	

	.text


	thumb_func_start ov6_022430C4
ov6_022430C4: ; 0x022430C4
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202D834
	bl sub_0202D830
	mov r2, #0
	ldrh r0, [r0, #2]
	add r1, r2, #0
_022430D6:
	cmp r0, #0
	beq _022430DC
	add r2, r2, #1
_022430DC:
	add r1, r1, #1
	cmp r1, #3
	blt _022430D6
	add r0, r2, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_022430C4

	thumb_func_start ov6_022430E8
ov6_022430E8: ; 0x022430E8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blo _022430F8
	bl GF_AssertFail
_022430F8:
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	bl sub_0202D830
	add r1, sp, #0
	bl ov6_022431A0
	lsl r1, r4, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	ldrh r0, [r0]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov6_022430E8

	thumb_func_start ov6_02243114
ov6_02243114: ; 0x02243114
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blo _02243124
	bl GF_AssertFail
_02243124:
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	bl sub_0202D830
	add r1, sp, #0
	bl ov6_022431A0
	lsl r1, r4, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	ldrh r0, [r0, #2]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov6_02243114

	thumb_func_start ov6_02243140
ov6_02243140: ; 0x02243140
	ldr r3, _02243144 ; =sub_02069B90
	bx r3
	; .align 2, 0
_02243144: .word sub_02069B90
	thumb_func_end ov6_02243140

	thumb_func_start ov6_02243148
ov6_02243148: ; 0x02243148
	push {r3, lr}
	sub sp, #8
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, sp, #4
	add r2, sp, #0
	bl sub_0206978C
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_02243148

	thumb_func_start ov6_02243160
ov6_02243160: ; 0x02243160
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r1, sp, #0
	add r4, r0, #0
	bl ov6_022431A0
	mov r2, #0
	add r3, sp, #0
	add r5, sp, #0xc
_02243172:
	ldr r1, [r3, #0]
	add r2, r2, #1
	ldrh r0, [r1]
	add r3, r3, #4
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	add r5, r5, #4
	cmp r2, #3
	blt _02243172
	mov r2, #0
	add r1, sp, #0xc
_0224318A:
	ldrh r0, [r1]
	add r2, r2, #1
	strh r0, [r4]
	ldrh r0, [r1, #2]
	add r1, r1, #4
	strh r0, [r4, #2]
	add r4, r4, #4
	cmp r2, #3
	blt _0224318A
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_02243160

	thumb_func_start ov6_022431A0
ov6_022431A0: ; 0x022431A0
	push {r3, r4}
	ldrh r4, [r0, #6]
	ldrh r3, [r0, #2]
	cmp r3, r4
	ldrh r2, [r0, #0xa]
	bhs _022431E2
	cmp r4, r2
	bhs _022431C0
	add r2, r0, #0
	add r2, #8
	str r2, [r1, #0]
	add r2, r0, #4
	str r2, [r1, #4]
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
_022431C0:
	cmp r3, r2
	bhs _022431D4
	add r2, r0, #4
	str r2, [r1, #0]
	add r2, r0, #0
	add r2, #8
	str r2, [r1, #4]
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
_022431D4:
	add r2, r0, #4
	str r2, [r1, #0]
	str r0, [r1, #4]
	add r0, #8
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
_022431E2:
	cmp r3, r2
	bhs _022431F6
	add r2, r0, #0
	add r2, #8
	str r2, [r1, #0]
	str r0, [r1, #4]
	add r0, r0, #4
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
_022431F6:
	cmp r4, r2
	str r0, [r1, #0]
	bhs _0224320A
	add r2, r0, #0
	add r2, #8
	str r2, [r1, #4]
	add r0, r0, #4
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
_0224320A:
	add r2, r0, #4
	str r2, [r1, #4]
	add r0, #8
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov6_022431A0