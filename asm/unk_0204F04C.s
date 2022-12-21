	.include "macros/function.inc"
	.include "include/unk_0204F04C.inc"

	

	.text


	thumb_func_start sub_0204F04C
sub_0204F04C: ; 0x0204F04C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020300F4
	mov r2, #0
	add r1, sp, #8
	strb r2, [r1]
	lsl r2, r5, #2
	add r2, r4, r2
	lsl r2, r2, #0x18
	mov r1, #0xa
	lsr r2, r2, #0x18
	add r3, sp, #8
	bl sub_020300B0
	cmp r4, #3
	bne _0204F0C8
	cmp r5, #0
	bne _0204F0A6
	mov r7, #0x66
	b _0204F0A8
_0204F0A6:
	mov r7, #0x68
_0204F0A8:
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	str r0, [sp]
	add r0, r7, #0
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [sp]
	add r1, r7, #0
	mov r3, #0
	bl sub_020306E4
_0204F0C8:
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r7, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r4, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_0205E430
	str r0, [sp, #4]
	lsl r0, r5, #0x18
	lsl r1, r4, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_0205E430
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	mov r3, #0
	bl sub_020306E4
	add r6, #0x80
	ldr r0, [r6, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203068C
	add r6, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r4, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_0205E488
	add r7, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r4, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_0205E488
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_020306E4
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0204F04C