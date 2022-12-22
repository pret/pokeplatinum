	.include "macros/function.inc"
	.include "include/unk_02030108.inc"

	

	.text


	thumb_func_start sub_02030108
sub_02030108: ; 0x02030108
	ldr r3, _02030110 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x54
	bx r3
	; .align 2, 0
_02030110: .word MI_CpuFill8
	thumb_func_end sub_02030108

	thumb_func_start sub_02030114
sub_02030114: ; 0x02030114
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	mov r1, #0x8e
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r3, pc}
	thumb_func_end sub_02030114

	thumb_func_start sub_02030124
sub_02030124: ; 0x02030124
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_02030124

	thumb_func_start sub_0203012C
sub_0203012C: ; 0x0203012C
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	ldrb r3, [r0]
	mov r2, #8
	lsr r1, r1, #0x1c
	bic r3, r2
	orr r1, r3
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0203012C

	thumb_func_start sub_02030140
sub_02030140: ; 0x02030140
	push {r4, lr}
	ldr r3, [sp, #8]
	cmp r1, #4
	bhi _02030192
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02030154: ; jump table
	.short _0203015E - _02030154 - 2 ; case 0
	.short _02030170 - _02030154 - 2 ; case 1
	.short _02030176 - _02030154 - 2 ; case 2
	.short _02030180 - _02030154 - 2 ; case 3
	.short _02030188 - _02030154 - 2 ; case 4
_0203015E:
	ldrb r4, [r0]
	ldrb r2, [r3]
	mov r1, #7
	bic r4, r1
	mov r1, #7
	and r1, r2
	orr r1, r4
	strb r1, [r0]
	pop {r4, pc}
_02030170:
	ldrb r1, [r3]
	strb r1, [r0, #1]
	pop {r4, pc}
_02030176:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #4]
	pop {r4, pc}
_02030180:
	ldrb r1, [r3]
	add r0, r0, r2
	strb r1, [r0, #2]
	pop {r4, pc}
_02030188:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #0x2c]
	pop {r4, pc}
_02030192:
	bl sub_02022974
	pop {r4, pc}
	thumb_func_end sub_02030140

	thumb_func_start sub_02030198
sub_02030198: ; 0x02030198
	push {r3, lr}
	cmp r1, #4
	bhi _020301D6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020301AA: ; jump table
	.short _020301B4 - _020301AA - 2 ; case 0
	.short _020301BC - _020301AA - 2 ; case 1
	.short _020301C0 - _020301AA - 2 ; case 2
	.short _020301C8 - _020301AA - 2 ; case 3
	.short _020301CE - _020301AA - 2 ; case 4
_020301B4:
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	pop {r3, pc}
_020301BC:
	ldrb r0, [r0, #1]
	pop {r3, pc}
_020301C0:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #4]
	pop {r3, pc}
_020301C8:
	add r0, r0, r2
	ldrb r0, [r0, #2]
	pop {r3, pc}
_020301CE:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x2c]
	pop {r3, pc}
_020301D6:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02030198

	thumb_func_start sub_020301E0
sub_020301E0: ; 0x020301E0
	lsl r2, r0, #0x17
	lsr r2, r2, #0x18
	ldrb r3, [r1, r2]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r1, r3, #0
	asr r1, r0
	mov r0, #0xf
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_020301E0

	thumb_func_start sub_02030204
sub_02030204: ; 0x02030204
	push {r3, r4, r5, r6}
	lsr r5, r0, #0x1f
	lsl r4, r0, #0x1f
	lsl r3, r0, #0x17
	sub r4, r4, r5
	mov r0, #0x1f
	ror r4, r0
	add r0, r5, r4
	lsl r0, r0, #0x18
	lsr r3, r3, #0x18
	lsr r0, r0, #0x18
	bne _02030224
	add r4, r1, r3
	ldrb r6, [r1, r3]
	mov r5, #0xf0
	b _0203022A
_02030224:
	ldrb r6, [r1, r3]
	add r4, r1, r3
	mov r5, #0xf
_0203022A:
	and r5, r6
	strb r5, [r1, r3]
	lsl r0, r0, #2
	add r1, r2, #0
	lsl r1, r0
	lsl r0, r1, #0x18
	ldrb r3, [r4]
	lsr r0, r0, #0x18
	orr r0, r3
	strb r0, [r4]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02030204

	thumb_func_start sub_02030244
sub_02030244: ; 0x02030244
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0203024C:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02030204
	add r4, r4, #1
	cmp r4, #0x12
	blt _0203024C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02030244

	thumb_func_start sub_02030260
sub_02030260: ; 0x02030260
	ldr r3, _02030268 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #4
	bx r3
	; .align 2, 0
_02030268: .word MI_CpuFill8
	thumb_func_end sub_02030260

	thumb_func_start sub_0203026C
sub_0203026C: ; 0x0203026C
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	ldr r1, _0203027C ; =0x0000161C
	add r0, r0, r1
	pop {r3, pc}
	nop
_0203027C: .word 0x0000161C
	thumb_func_end sub_0203026C

	thumb_func_start sub_02030280
sub_02030280: ; 0x02030280
	push {r4, lr}
	ldr r3, [sp, #8]
	cmp r1, #5
	bne _020302AC
	ldrb r1, [r3]
	cmp r1, #1
	blo _0203029A
	mov r1, #1
	ldrb r3, [r0]
	lsl r1, r2
	orr r1, r3
	strb r1, [r0]
	pop {r4, pc}
_0203029A:
	mov r1, #1
	add r3, r1, #0
	ldrb r4, [r0]
	lsl r3, r2
	mov r1, #0xff
	eor r1, r3
	and r1, r4
	strb r1, [r0]
	pop {r4, pc}
_020302AC:
	bl sub_02022974
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030280

	thumb_func_start sub_020302B4
sub_020302B4: ; 0x020302B4
	push {r3, lr}
	cmp r1, #5
	bne _020302C6
	ldrb r0, [r0]
	add r1, r0, #0
	asr r1, r2
	mov r0, #1
	and r0, r1
	pop {r3, pc}
_020302C6:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020302B4