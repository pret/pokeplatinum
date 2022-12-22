	.include "macros/function.inc"
	.include "include/unk_02032188.inc"

	

	.text


	thumb_func_start sub_02032188
sub_02032188: ; 0x02032188
	str r1, [r0, #0]
	strh r2, [r0, #0xa]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02032188

	thumb_func_start sub_02032198
sub_02032198: ; 0x02032198
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	add r5, r0, #0
	add r7, r1, #0
	bl sub_0203229C
	ldr r1, [sp]
	cmp r0, r1
	bgt _020321B0
	bl sub_020363BC
	pop {r3, r4, r5, r6, r7, pc}
_020321B0:
	mov r0, #8
	ldrsh r4, [r5, r0]
	ldrsh r1, [r5, r0]
	ldr r0, [sp]
	mov r6, #0
	add r0, r1, r0
	cmp r4, r0
	bge _020321E6
_020321C0:
	cmp r7, #0
	bne _020321C8
	bl GF_AssertFail
_020321C8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020322BC
	ldrb r2, [r7, r6]
	ldr r1, [r5, #0]
	add r4, r4, #1
	strb r2, [r1, r0]
	mov r0, #8
	ldrsh r1, [r5, r0]
	ldr r0, [sp]
	add r6, r6, #1
	add r0, r1, r0
	cmp r4, r0
	blt _020321C0
_020321E6:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020322BC
	strh r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02032198

	thumb_func_start sub_020321F4
sub_020321F4: ; 0x020321F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02032220
	mov r1, #4
	add r4, r0, #0
	ldrsh r1, [r5, r1]
	add r0, r5, #0
	add r1, r1, r4
	bl sub_020322BC
	strh r0, [r5, #4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020321F4

	thumb_func_start sub_02032210
sub_02032210: ; 0x02032210
	push {r3, lr}
	add r1, sp, #0
	mov r2, #1
	bl sub_020321F4
	add r0, sp, #0
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02032210

	thumb_func_start sub_02032220
sub_02032220: ; 0x02032220
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #4
	ldrsh r4, [r5, r0]
	add r7, r2, #0
	str r1, [sp]
	add r0, r4, r7
	mov r6, #0
	cmp r4, r0
	bge _02032266
_02032234:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020322BC
	mov r1, #6
	ldrsh r1, [r5, r1]
	cmp r1, r0
	bne _02032248
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02032248:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020322BC
	ldr r1, [r5, #0]
	add r4, r4, #1
	ldrb r1, [r1, r0]
	ldr r0, [sp]
	strb r1, [r0, r6]
	mov r0, #4
	ldrsh r0, [r5, r0]
	add r6, r6, #1
	add r0, r0, r7
	cmp r4, r0
	blt _02032234
_02032266:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02032220

	thumb_func_start sub_0203226C
sub_0203226C: ; 0x0203226C
	mov r1, #4
	mov r3, #6
	ldrsh r1, [r0, r1]
	ldrsh r2, [r0, r3]
	cmp r1, r2
	ble _02032284
	mov r2, #0xa
	ldrsh r2, [r0, r2]
	ldrsh r0, [r0, r3]
	add r0, r2, r0
	sub r0, r0, r1
	bx lr
_02032284:
	ldrsh r0, [r0, r3]
	sub r0, r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203226C

	thumb_func_start sub_0203228C
sub_0203228C: ; 0x0203228C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203226C
	mov r1, #0xa
	ldrsh r1, [r4, r1]
	sub r0, r1, r0
	pop {r4, pc}
	thumb_func_end sub_0203228C

	thumb_func_start sub_0203229C
sub_0203229C: ; 0x0203229C
	mov r1, #4
	mov r2, #8
	ldrsh r3, [r0, r1]
	ldrsh r1, [r0, r2]
	cmp r3, r1
	ble _020322AE
	ldrsh r0, [r0, r2]
	sub r0, r3, r0
	bx lr
_020322AE:
	mov r1, #0xa
	ldrsh r1, [r0, r1]
	ldrsh r0, [r0, r2]
	sub r0, r0, r3
	sub r0, r1, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203229C

	thumb_func_start sub_020322BC
sub_020322BC: ; 0x020322BC
	push {r3, lr}
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #0xa
	ldrsh r1, [r2, r1]
	bl _s32_div_f
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020322BC

	thumb_func_start sub_020322D0
sub_020322D0: ; 0x020322D0
	mov r1, #8
	ldrsh r1, [r0, r1]
	strh r1, [r0, #6]
	bx lr
	thumb_func_end sub_020322D0