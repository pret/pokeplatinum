	.include "macros/function.inc"
	.include "include/unk_0202FF4C.inc"

	

	.text


	thumb_func_start sub_0202FF4C
sub_0202FF4C: ; 0x0202FF4C
	ldr r3, _0202FF54 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x58
	bx r3
	; .align 2, 0
_0202FF54: .word MI_CpuFill8
	thumb_func_end sub_0202FF4C

	thumb_func_start sub_0202FF58
sub_0202FF58: ; 0x0202FF58
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	mov r1, #0x8e
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r3, pc}
	thumb_func_end sub_0202FF58

	thumb_func_start sub_0202FF68
sub_0202FF68: ; 0x0202FF68
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0202FF68

	thumb_func_start sub_0202FF70
sub_0202FF70: ; 0x0202FF70
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	ldrb r3, [r0]
	mov r2, #0x10
	lsr r1, r1, #0x1b
	bic r3, r2
	orr r1, r3
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0202FF70

	thumb_func_start sub_0202FF84
sub_0202FF84: ; 0x0202FF84
	push {r3, r4}
	cmp r1, #9
	bhi _0203002A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202FF96: ; jump table
	.short _0202FFAA - _0202FF96 - 2 ; case 0
	.short _0202FFBE - _0202FF96 - 2 ; case 1
	.short _0202FFD2 - _0202FF96 - 2 ; case 2
	.short _0202FFDA - _0202FF96 - 2 ; case 3
	.short _0202FFE6 - _0202FF96 - 2 ; case 4
	.short _0202FFF2 - _0202FF96 - 2 ; case 5
	.short _0202FFFE - _0202FF96 - 2 ; case 6
	.short _0203000A - _0202FF96 - 2 ; case 7
	.short _02030016 - _0202FF96 - 2 ; case 8
	.short _02030022 - _0202FF96 - 2 ; case 9
_0202FFAA:
	ldrb r4, [r0]
	ldrb r2, [r3]
	mov r1, #1
	bic r4, r1
	mov r1, #1
	and r1, r2
	orr r1, r4
	strb r1, [r0]
	pop {r3, r4}
	bx lr
_0202FFBE:
	ldrb r2, [r0]
	mov r1, #0xe
	bic r2, r1
	ldrb r1, [r3]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1c
	orr r1, r2
	strb r1, [r0]
	pop {r3, r4}
	bx lr
_0202FFD2:
	ldrb r1, [r3]
	strb r1, [r0, #1]
	pop {r3, r4}
	bx lr
_0202FFDA:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #4]
	pop {r3, r4}
	bx lr
_0202FFE6:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #0x20]
	pop {r3, r4}
	bx lr
_0202FFF2:
	ldrb r1, [r3]
	add r0, r0, r2
	add r0, #0x28
	strb r1, [r0]
	pop {r3, r4}
	bx lr
_0202FFFE:
	lsl r1, r2, #2
	ldr r3, [r3, #0]
	add r0, r0, r1
	str r3, [r0, #0x2c]
	pop {r3, r4}
	bx lr
_0203000A:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #0x3c]
	pop {r3, r4}
	bx lr
_02030016:
	ldrb r1, [r3]
	add r0, r0, r2
	add r0, #0x44
	strb r1, [r0]
	pop {r3, r4}
	bx lr
_02030022:
	lsl r1, r2, #2
	ldr r3, [r3, #0]
	add r0, r0, r1
	str r3, [r0, #0x48]
_0203002A:
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202FF84

	thumb_func_start sub_02030030
sub_02030030: ; 0x02030030
	cmp r1, #9
	bhi _020300A0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02030040: ; jump table
	.short _0203005C - _02030040 - 2 ; case 0
	.short _02030054 - _02030040 - 2 ; case 1
	.short _02030064 - _02030040 - 2 ; case 2
	.short _02030068 - _02030040 - 2 ; case 3
	.short _02030070 - _02030040 - 2 ; case 4
	.short _02030078 - _02030040 - 2 ; case 5
	.short _02030080 - _02030040 - 2 ; case 6
	.short _02030088 - _02030040 - 2 ; case 7
	.short _02030090 - _02030040 - 2 ; case 8
	.short _02030098 - _02030040 - 2 ; case 9
_02030054:
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1d
	bx lr
_0203005C:
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
_02030064:
	ldrb r0, [r0, #1]
	bx lr
_02030068:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #4]
	bx lr
_02030070:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x20]
	bx lr
_02030078:
	add r0, r0, r2
	add r0, #0x28
	ldrb r0, [r0]
	bx lr
_02030080:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x2c]
	bx lr
_02030088:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x3c]
	bx lr
_02030090:
	add r0, r0, r2
	add r0, #0x44
	ldrb r0, [r0]
	bx lr
_02030098:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x48]
	bx lr
_020300A0:
	mov r0, #0
	bx lr
	thumb_func_end sub_02030030

	thumb_func_start sub_020300A4
sub_020300A4: ; 0x020300A4
	ldr r3, _020300AC ; =MI_CpuFill8
	mov r1, #0
	mov r2, #4
	bx r3
	; .align 2, 0
_020300AC: .word MI_CpuFill8
	thumb_func_end sub_020300A4

	thumb_func_start sub_020300B0
sub_020300B0: ; 0x020300B0
	push {r3, r4}
	cmp r1, #0xa
	bne _020300DA
	ldrb r1, [r3]
	cmp r1, #1
	blo _020300CA
	mov r1, #1
	ldrb r3, [r0]
	lsl r1, r2
	orr r1, r3
	strb r1, [r0]
	pop {r3, r4}
	bx lr
_020300CA:
	mov r1, #1
	add r3, r1, #0
	ldrb r4, [r0]
	lsl r3, r2
	mov r1, #0xff
	eor r1, r3
	and r1, r4
	strb r1, [r0]
_020300DA:
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020300B0

	thumb_func_start sub_020300E0
sub_020300E0: ; 0x020300E0
	cmp r1, #0xa
	bne _020300F0
	ldrb r0, [r0]
	add r1, r0, #0
	asr r1, r2
	mov r0, #1
	and r0, r1
	bx lr
_020300F0:
	mov r0, #0
	bx lr
	thumb_func_end sub_020300E0

	thumb_func_start sub_020300F4
sub_020300F4: ; 0x020300F4
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	ldr r1, _02030104 ; =0x00001618
	add r0, r0, r1
	pop {r3, pc}
	nop
_02030104: .word 0x00001618
	thumb_func_end sub_020300F4