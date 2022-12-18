	.include "macros/function.inc"
	.include "include/ov104_0223C164.inc"

	

	.text


	thumb_func_start ov104_0223C164
ov104_0223C164: ; 0x0223C164
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x5e
	mov r1, #8
	bl sub_02018144
	mov r1, #0
	mov r2, #8
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r5, #0
	bl ov104_0223C188
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0223C164

	thumb_func_start ov104_0223C188
ov104_0223C188: ; 0x0223C188
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x5e
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc
	bl sub_020C4CF4
	str r5, [r4, #4]
	mov r0, #0
	strh r0, [r4, #8]
	ldr r0, _0223C1B4 ; =ov104_0223C1BC
	ldr r2, _0223C1B8 ; =0x0001368C
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C1B4: .word ov104_0223C1BC
_0223C1B8: .word 0x0001368C
	thumb_func_end ov104_0223C188

	thumb_func_start ov104_0223C1BC
ov104_0223C1BC: ; 0x0223C1BC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldrh r0, [r4, #0xa]
	cmp r0, #2
	bhs _0223C1D0
	add r0, r0, #1
	add sp, #0x14
	strh r0, [r4, #0xa]
	pop {r3, r4, pc}
_0223C1D0:
	mov r0, #0
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #8]
	mov r0, #1
	eor r0, r1
	strh r0, [r4, #8]
	ldrh r1, [r4, #8]
	add r0, sp, #0xc
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov104_0223C208
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	mov r1, #3
	add r2, sp, #0xc
	mov r3, #0xe
	bl sub_020198C0
	ldr r0, [r4, #4]
	mov r1, #3
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov104_0223C1BC

	thumb_func_start ov104_0223C208
ov104_0223C208: ; 0x0223C208
	push {r4, r5, r6, r7}
	cmp r1, #0
	bne _0223C212
	mov r6, #0xc
	b _0223C214
_0223C212:
	mov r6, #0xe
_0223C214:
	mov r1, #0
	mov r3, #0x60
	add r4, r1, #0
_0223C21A:
	lsl r5, r4, #1
	mov r2, #0
	add r5, r0, r5
_0223C220:
	add r7, r6, r2
	add r7, r3, r7
	strh r7, [r5]
	add r2, r2, #1
	add r5, r5, #2
	cmp r2, #2
	blo _0223C220
	add r1, r1, #1
	add r3, #0x10
	add r4, r4, #2
	cmp r1, #2
	blo _0223C21A
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov104_0223C208

	thumb_func_start ov104_0223C23C
ov104_0223C23C: ; 0x0223C23C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov104_0223C250
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223C23C

	thumb_func_start ov104_0223C250
ov104_0223C250: ; 0x0223C250
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223C250

	thumb_func_start ov104_0223C264
ov104_0223C264: ; 0x0223C264
	cmp r0, #6
	bhi _0223C298
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223C274: ; jump table
	.short _0223C298 - _0223C274 - 2 ; case 0
	.short _0223C296 - _0223C274 - 2 ; case 1
	.short _0223C282 - _0223C274 - 2 ; case 2
	.short _0223C286 - _0223C274 - 2 ; case 3
	.short _0223C28A - _0223C274 - 2 ; case 4
	.short _0223C28E - _0223C274 - 2 ; case 5
	.short _0223C292 - _0223C274 - 2 ; case 6
_0223C282:
	mov r0, #0x73
	bx lr
_0223C286:
	mov r0, #0x77
	bx lr
_0223C28A:
	mov r0, #0x87
	bx lr
_0223C28E:
	mov r0, #0x7b
	bx lr
_0223C292:
	mov r0, #0x8f
	bx lr
_0223C296:
	mov r0, #0x71
_0223C298:
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0223C264

	thumb_func_start ov104_0223C29C
ov104_0223C29C: ; 0x0223C29C
	cmp r0, #6
	bhi _0223C2D0
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223C2AC: ; jump table
	.short _0223C2D0 - _0223C2AC - 2 ; case 0
	.short _0223C2CE - _0223C2AC - 2 ; case 1
	.short _0223C2BA - _0223C2AC - 2 ; case 2
	.short _0223C2BE - _0223C2AC - 2 ; case 3
	.short _0223C2C2 - _0223C2AC - 2 ; case 4
	.short _0223C2C6 - _0223C2AC - 2 ; case 5
	.short _0223C2CA - _0223C2AC - 2 ; case 6
_0223C2BA:
	mov r0, #0x66
	bx lr
_0223C2BE:
	mov r0, #0x68
	bx lr
_0223C2C2:
	mov r0, #0x6c
	bx lr
_0223C2C6:
	mov r0, #0x6a
	bx lr
_0223C2CA:
	mov r0, #0x6e
	bx lr
_0223C2CE:
	mov r0, #0x64
_0223C2D0:
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0223C29C