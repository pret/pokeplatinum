	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov19_021D79F8
ov19_021D79F8: ; 0x021D79F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r0, #0x40
	ldrb r0, [r0]
	add r4, r1, #0
	add r7, r3, #0
	strb r0, [r5]
	mov r0, #0xb
	strb r0, [r5, #1]
	mov r0, #0
	strb r0, [r5, #2]
	add r0, r4, #0
	bl ov19_021D7820
	ldr r1, _021D7A68 ; =0x0000585C
	str r0, [r5, r1]
	ldr r2, [r5, r1]
	add r0, r1, #0
	add r2, #0x48
	sub r0, #8
	str r2, [r5, r0]
	mov r0, #0x11
	ldr r2, [r5, r1]
	lsl r0, r0, #4
	add r2, r2, r0
	sub r0, r1, #4
	str r2, [r5, r0]
	add r0, r4, #0
	bl ov19_021D77D8
	ldr r1, _021D7A6C ; =0x00005980
	mov r2, #0x1e
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	add r1, r5, #0
	add r1, #0xa8
	bl ov19_021DA3CC
	ldr r0, _021D7A6C ; =0x00005980
	mov r1, #0x1b
	lsl r1, r1, #6
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r2, #0x1e
	bl ov19_021DA3CC
	ldr r1, _021D7A70 ; =0x00005984
	str r7, [r5, r1]
	add r0, r1, #4
	str r6, [r5, r0]
	add r1, #8
	str r4, [r5, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D7A68: .word 0x0000585C
_021D7A6C: .word 0x00005980
_021D7A70: .word 0x00005984
	thumb_func_end ov19_021D79F8

	thumb_func_start ov19_021D7A74
ov19_021D7A74: ; 0x021D7A74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D7A98 ; =0x00005980
	add r1, r4, #0
	ldr r0, [r4, r0]
	add r1, #0xa8
	mov r2, #0x1e
	bl ov19_021DA3F0
	ldr r0, _021D7A98 ; =0x00005980
	mov r1, #0x1b
	lsl r1, r1, #6
	ldr r0, [r4, r0]
	add r1, r4, r1
	mov r2, #0x1e
	bl ov19_021DA3F0
	pop {r4, pc}
	; .align 2, 0
_021D7A98: .word 0x00005980
	thumb_func_end ov19_021D7A74

	thumb_func_start ov19_021D7A9C
ov19_021D7A9C: ; 0x021D7A9C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _021D7AE8 ; =0x00005984
	mov r1, #3
	ldr r0, [r4, r0]
	bl sub_020192EC
	ldr r1, _021D7AEC ; =0x0000585C
	str r0, [r4, #0xc]
	ldr r1, [r4, r1]
	mov r2, #0
	sub r1, r0, r1
	add r3, r1, #0
	ldr r0, _021D7AF0 ; =0x000001FF
	mov r1, #3
	and r3, r0
	ldr r0, _021D7AE8 ; =0x00005984
	str r3, [r4, #0xc]
	ldr r0, [r4, r0]
	bl sub_02019184
	mov r3, #0
	str r3, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	ldr r0, _021D7AE8 ; =0x00005984
	mov r1, #3
	ldr r0, [r4, r0]
	mov r2, #0x18
	bl sub_02019CB8
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D7AE8: .word 0x00005984
_021D7AEC: .word 0x0000585C
_021D7AF0: .word 0x000001FF
	thumb_func_end ov19_021D7A9C

	thumb_func_start ov19_021D7AF4
ov19_021D7AF4: ; 0x021D7AF4
	push {r4, r5, r6, r7}
	ldr r5, [sp, #0x10]
	cmp r1, #0
	beq _021D7B2A
	ldrb r6, [r0, #2]
	mov r4, #1
	add r7, r6, #0
	mov r6, #0x69
	eor r7, r4
	lsl r6, r6, #2
	mul r6, r7
	str r6, [r2, #0]
	mov r2, #0x17
	mul r2, r1
	ldrb r6, [r0, #1]
	mov r1, #0x3f
	add r2, r6, r2
	and r1, r2
	str r1, [r3, #0]
	ldrb r0, [r0, #2]
	eor r0, r4
	lsl r1, r0, #1
	ldr r0, _021D7B48 ; =0x021E0138
	ldrh r0, [r0, r1]
	str r0, [r5, #0]
	pop {r4, r5, r6, r7}
	bx lr
_021D7B2A:
	ldrb r4, [r0, #2]
	mov r1, #0x69
	lsl r1, r1, #2
	mul r1, r4
	str r1, [r2, #0]
	ldrb r1, [r0, #1]
	str r1, [r3, #0]
	ldrb r0, [r0, #2]
	lsl r1, r0, #1
	ldr r0, _021D7B48 ; =0x021E0138
	ldrh r0, [r0, r1]
	str r0, [r5, #0]
	pop {r4, r5, r6, r7}
	bx lr
	nop
_021D7B48: .word 0x021E0138
	thumb_func_end ov19_021D7AF4

	thumb_func_start ov19_021D7B4C
ov19_021D7B4C: ; 0x021D7B4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r6, r2, #0
	add r1, sp, #8
	add r7, r3, #0
	str r1, [sp]
	add r1, r6, #0
	add r2, sp, #0x10
	add r3, sp, #0xc
	add r5, r0, #0
	bl ov19_021D7AF4
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl ov19_021D7BC0
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021D7C58
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	bl ov19_021D7D00
	cmp r7, #0
	beq _021D7BB4
	cmp r6, #0
	bne _021D7BB4
	ldrb r3, [r5, #2]
	mov r0, #0xb8
	mul r0, r6
	str r0, [sp]
	ldr r0, _021D7BB8 ; =0x00000618
	add r1, r5, #0
	add r1, #0xa8
	mul r0, r3
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, _021D7BBC ; =0x00005980
	ldrb r2, [r4]
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov19_021D85C4
_021D7BB4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D7BB8: .word 0x00000618
_021D7BBC: .word 0x00005980
	thumb_func_end ov19_021D7B4C

	thumb_func_start ov19_021D7BC0
ov19_021D7BC0: ; 0x021D7BC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldrb r2, [r1, #1]
	add r7, r0, #0
	add r5, r3, #0
	lsl r1, r2, #1
	add r2, r2, r1
	ldr r1, _021D7C4C ; =0x021E017A
	mov r0, #0x12
	ldrb r1, [r1, r2]
	add r2, sp, #8
	mov r3, #0xa
	bl sub_02006F88
	str r0, [sp, #4]
	cmp r0, #0
	beq _021D7C48
	cmp r5, #0
	beq _021D7BFE
	ldr r0, [sp, #8]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [sp, #8]
	lsl r1, r4, #5
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl sub_020C00B4
_021D7BFE:
	ldr r0, _021D7C50 ; =0x00005860
	mov r6, #0
	add r4, r6, #0
	add r5, r7, r0
_021D7C06:
	str r4, [sp]
	ldr r0, [sp, #8]
	ldr r3, _021D7C54 ; =0x00007FFF
	ldr r0, [r0, #0xc]
	add r1, r5, #0
	mov r2, #0x10
	bl ov19_021D78C8
	add r6, r6, #1
	add r4, r4, #2
	add r5, #0x20
	cmp r6, #8
	blt _021D7C06
	mov r2, #0x10
	str r2, [sp]
	ldr r1, _021D7C50 ; =0x00005860
	ldr r0, [sp, #8]
	add r3, r7, r1
	lsl r1, r6, #5
	add r1, r3, r1
	ldr r0, [r0, #0xc]
	ldr r3, _021D7C54 ; =0x00007FFF
	bl ov19_021D78C8
	ldr r0, _021D7C50 ; =0x00005860
	mov r1, #0x12
	add r0, r7, r0
	lsl r1, r1, #4
	bl sub_020C2C54
	ldr r0, [sp, #4]
	bl sub_020181C4
_021D7C48:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D7C4C: .word 0x021E017A
_021D7C50: .word 0x00005860
_021D7C54: .word 0x00007FFF
	thumb_func_end ov19_021D7BC0

	thumb_func_start ov19_021D7C58
ov19_021D7C58: ; 0x021D7C58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r2, #0
	mov r2, #1
	add r5, r1, #0
	str r2, [sp]
	ldrb r3, [r5, #1]
	add r6, r0, #0
	mov r0, #0x12
	lsl r1, r3, #1
	add r3, r3, r1
	ldr r1, _021D7CF4 ; =0x021E0179
	ldrb r1, [r1, r3]
	mov r3, #0xa
	bl sub_02006FE8
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _021D7CF0
	add r1, sp, #0x14
	bl sub_020A7164
	cmp r0, #0
	beq _021D7CEA
	mov r0, #0xa
	mov r1, #1
	bl sub_0201A778
	add r4, r0, #0
	beq _021D7CD8
	ldr r0, _021D7CF8 ; =0x00005984
	ldr r0, [r6, r0]
	str r0, [r4, #0]
	mov r0, #0x15
	strb r0, [r4, #7]
	mov r0, #4
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x14]
	str r0, [r4, #0xc]
	mov r0, #0
	ldr r1, [r5, #4]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D7CFC ; =0x00020100
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #4]
	lsr r5, r3, #1
	mov r3, #0x54
	add r0, r4, #0
	sub r3, r3, r5
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020181C4
_021D7CD8:
	ldr r3, [sp, #0x14]
	ldr r0, _021D7CF8 ; =0x00005984
	str r7, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r6, r0]
	ldr r3, [r3, #0x10]
	mov r1, #3
	bl sub_0201958C
_021D7CEA:
	ldr r0, [sp, #0x10]
	bl sub_020181C4
_021D7CF0:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D7CF4: .word 0x021E0179
_021D7CF8: .word 0x00005984
_021D7CFC: .word 0x00020100
	thumb_func_end ov19_021D7C58

	thumb_func_start ov19_021D7D00
ov19_021D7D00: ; 0x021D7D00
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #1
	str r2, [sp]
	add r6, r3, #0
	ldrb r3, [r1, #1]
	add r5, r0, #0
	mov r0, #0x12
	lsl r1, r3, #1
	add r3, r3, r1
	ldr r1, _021D7D68 ; =0x021E0178
	ldrb r1, [r1, r3]
	mov r3, #0xa
	bl sub_02006FE8
	str r0, [sp, #4]
	cmp r0, #0
	beq _021D7D64
	add r1, sp, #8
	bl sub_020A7248
	ldr r0, _021D7D6C ; =0x00005984
	mov r1, #3
	ldr r0, [r5, r0]
	bl sub_02019FE4
	add r7, r0, #0
	beq _021D7D4A
	ldr r1, [sp, #0x20]
	add r2, r4, #0
	str r1, [sp]
	ldr r1, [sp, #8]
	add r3, r6, #0
	add r1, #0xc
	bl ov19_021D8764
_021D7D4A:
	ldr r0, [sp, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D7D6C ; =0x00005984
	mov r3, #1
	ldr r0, [r5, r0]
	mov r1, #3
	add r2, r7, #0
	lsl r3, r3, #0xc
	bl sub_02019460
_021D7D64:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D7D68: .word 0x021E0178
_021D7D6C: .word 0x00005984
	thumb_func_end ov19_021D7D00

	thumb_func_start ov19_021D7D70
ov19_021D7D70: ; 0x021D7D70
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021D7E0C ; =0x00005984
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #3
	add r6, r2, #0
	bl sub_020192EC
	lsl r0, r0, #0x17
	lsr r1, r0, #0xb
	mov r0, #0xb8
	add r7, r6, #0
	mul r7, r0
	lsl r0, r7, #0xc
	str r1, [r5, #8]
	add r1, r1, r0
	str r1, [r5, #0x14]
	ldr r0, [r5, #8]
	sub r0, r1, r0
	mov r1, #0x1e
	bl sub_020E1F6C
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	asr r1, r0, #0xc
	ldr r0, _021D7E10 ; =0x000001FF
	and r0, r1
	str r0, [r5, #0x14]
	mov r0, #0x1e
	str r0, [r5, #4]
	ldrb r0, [r5, #2]
	strb r0, [r5, #3]
	mov r0, #0x17
	ldrb r1, [r5, #1]
	mul r0, r6
	add r0, r1, r0
	strb r0, [r5, #1]
	ldrb r1, [r5, #1]
	mov r0, #0x3f
	and r0, r1
	strb r0, [r5, #1]
	ldrb r1, [r5, #2]
	mov r0, #1
	eor r0, r1
	strb r0, [r5, #2]
	ldrb r1, [r4]
	add r0, r5, #0
	bl ov19_021D813C
	ldr r1, [r5, #0x10]
	add r0, r5, #0
	add r2, r7, #0
	bl ov19_021D7F14
	ldrb r0, [r4]
	mov r1, #1
	mov r2, #0
	str r0, [r5, #0x30]
	ldrb r0, [r5, #2]
	str r0, [r5, #0x34]
	add r0, r5, #0
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x9c
	str r2, [r0, #0]
	ldr r0, _021D7E14 ; =ov19_021D7E24
	add r1, r5, #0
	bl sub_0200D9E8
	ldr r0, _021D7E18 ; =ov19_021D7E6C
	add r1, r5, #0
	mov r2, #1
	bl ov19_021D77C8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D7E0C: .word 0x00005984
_021D7E10: .word 0x000001FF
_021D7E14: .word ov19_021D7E24
_021D7E18: .word ov19_021D7E6C
	thumb_func_end ov19_021D7D70

	thumb_func_start ov19_021D7E1C
ov19_021D7E1C: ; 0x021D7E1C
	add r0, #0x9c
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D7E1C

	thumb_func_start ov19_021D7E24
ov19_021D7E24: ; 0x021D7E24
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D7E4A
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _021D7E64
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	bl ov19_021D7F9C
	mov r0, #0
	add r4, #0x98
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D7E4A:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0xc]
	ldr r0, _021D7E68 ; =0x00005988
	ldr r0, [r4, r0]
	bl ov19_021D5E68
	strb r0, [r4]
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #1
	add r4, #0x9c
	str r0, [r4, #0]
_021D7E64:
	pop {r3, r4, r5, pc}
	nop
_021D7E68: .word 0x00005988
	thumb_func_end ov19_021D7E24

	thumb_func_start ov19_021D7E6C
ov19_021D7E6C: ; 0x021D7E6C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldrb r3, [r5, #3]
	add r6, r0, #0
	mov r0, #1
	add r4, r3, #0
	eor r4, r0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021D7EE4
	add r0, r5, #0
	add r0, #0x98
	ldr r2, [r0, #0]
	cmp r2, #2
	bhs _021D7F06
	ldr r6, _021D7F08 ; =0x00000618
	add r1, #0xa8
	mul r6, r3
	add r0, r5, #0
	add r1, r1, r6
	bl ov19_021D865C
	ldr r1, _021D7F08 ; =0x00000618
	add r2, r5, #0
	add r2, #0xa8
	mul r1, r4
	add r1, r2, r1
	add r2, r5, #0
	add r2, #0x98
	ldr r2, [r2, #0]
	add r0, r5, #0
	bl ov19_021D86B4
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	mov r2, #0
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x98
	str r1, [r0, #0]
	ldr r0, [r5, #8]
	asr r1, r0, #0xc
	ldr r0, _021D7F0C ; =0x000001FF
	and r0, r1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [r5, #8]
	ldr r0, _021D7F10 ; =0x00005984
	ldr r3, [r5, #0xc]
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_02019184
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
_021D7EE4:
	ldr r0, _021D7F10 ; =0x00005984
	ldr r3, [r5, #0x14]
	ldr r0, [r5, r0]
	mov r1, #3
	mov r2, #0
	bl sub_02019184
	ldr r1, _021D7F08 ; =0x00000618
	add r0, r5, #0
	add r5, #0xa8
	mul r1, r4
	add r1, r5, r1
	bl ov19_021D870C
	add r0, r6, #0
	bl sub_0200DA58
_021D7F06:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D7F08: .word 0x00000618
_021D7F0C: .word 0x000001FF
_021D7F10: .word 0x00005984
	thumb_func_end ov19_021D7E6C

	thumb_func_start ov19_021D7F14
ov19_021D7F14: ; 0x021D7F14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r7, #0
	str r0, [sp, #8]
	add r0, #0xa8
	str r1, [sp]
	str r2, [sp, #4]
	add r6, r7, #0
	add r4, r5, #0
	str r0, [sp, #8]
_021D7F2A:
	ldr r0, _021D7F8C ; =0x0000585C
	ldr r0, [r5, r0]
	add r0, #0x70
	add r0, r0, r6
	lsl r1, r0, #0xc
	ldr r0, [sp]
	str r1, [r4, #0x68]
	sub r1, r1, r0
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	ldr r0, _021D7F8C ; =0x0000585C
	ldr r0, [r5, r0]
	add r0, #0x70
	add r1, r0, r6
	ldr r0, [sp, #4]
	add r0, r0, r1
	lsl r1, r0, #0xc
	ldr r0, [sp]
	str r1, [r4, #0x38]
	sub r0, r1, r0
	str r0, [r4, #0x50]
	asr r2, r0, #0xc
	ldr r0, _021D7F90 ; =0x00005854
	ldr r0, [r5, r0]
	cmp r2, r0
	ble _021D7F7E
	ldr r0, _021D7F94 ; =0x00005858
	ldr r0, [r5, r0]
	cmp r2, r0
	bge _021D7F7E
	ldrb r3, [r5, #3]
	mov r1, #1
	add r0, r5, #0
	eor r1, r3
	ldr r3, _021D7F98 ; =0x00000618
	mul r3, r1
	ldr r1, [sp, #8]
	add r1, r1, r3
	add r3, r7, #0
	bl ov19_021D803C
_021D7F7E:
	add r7, r7, #1
	add r6, #0x18
	add r4, r4, #4
	cmp r7, #6
	blt _021D7F2A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D7F8C: .word 0x0000585C
_021D7F90: .word 0x00005854
_021D7F94: .word 0x00005858
_021D7F98: .word 0x00000618
	thumb_func_end ov19_021D7F14

	thumb_func_start ov19_021D7F9C
ov19_021D7F9C: ; 0x021D7F9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	ldrb r1, [r5, #3]
	str r0, [sp]
	add r0, #0xa8
	str r0, [sp]
	ldr r0, _021D8030 ; =0x00000618
	add r2, r1, #0
	mul r2, r0
	str r2, [sp, #4]
	mov r2, #1
	eor r1, r2
	mul r0, r1
	mov r7, #0
	add r4, r5, #0
	str r0, [sp, #8]
_021D7FC0:
	add r0, r4, #0
	add r0, #0x80
	ldr r1, _021D8034 ; =0x00005854
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	asr r0, r0, #0xc
	cmp r0, r1
	ble _021D7FD8
	ldr r1, _021D8038 ; =0x00005858
	ldr r1, [r5, r1]
	cmp r0, r1
	blt _021D7FE6
_021D7FD8:
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, r2, r1
	add r2, r7, #0
	bl ov19_021D8114
_021D7FE6:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	sub r0, r0, r6
	str r0, [r4, #0x68]
	sub r1, r0, r6
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	ldr r0, [r4, #0x50]
	sub r0, r0, r6
	str r0, [r4, #0x38]
	sub r0, r0, r6
	str r0, [r4, #0x50]
	asr r2, r0, #0xc
	ldr r0, _021D8034 ; =0x00005854
	ldr r0, [r5, r0]
	cmp r2, r0
	ble _021D8022
	ldr r0, _021D8038 ; =0x00005858
	ldr r0, [r5, r0]
	cmp r2, r0
	bge _021D8022
	ldr r3, [sp]
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r1, r3, r1
	add r3, r7, #0
	bl ov19_021D803C
_021D8022:
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #6
	blt _021D7FC0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D8030: .word 0x00000618
_021D8034: .word 0x00005854
_021D8038: .word 0x00005858
	thumb_func_end ov19_021D7F9C

	thumb_func_start ov19_021D803C
ov19_021D803C: ; 0x021D803C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r1, #0
	ldr r1, _021D8100 ; =0x00005988
	str r0, [sp, #0x1c]
	ldr r0, [r0, r1]
	str r2, [sp, #0x20]
	add r4, r3, #0
	bl ov19_021D5E90
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	mov r7, #0x28
	ldr r1, [r0, #0x34]
	mov r0, #0x1e
	add r2, r1, #0
	lsl r0, r0, #4
	mul r2, r0
	add r2, #0x58
	lsl r0, r4, #4
	add r0, r2, r0
	str r0, [sp, #0x28]
	mov r0, #0x34
	mul r0, r4
	add r5, r5, r0
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r1, _021D8104 ; =0x00000CD8
	ldr r0, [sp, #0x1c]
	add r1, r0, r1
	lsl r0, r7, #4
	mul r0, r4
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	lsl r1, r4, #1
	add r6, r0, r1
_021D8086:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _021D80D6
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	ldr r1, [r1, #0x30]
	add r2, r4, #0
	bl sub_02079C9C
	mov r1, #0xac
	mov r2, #0
	str r0, [sp, #0x34]
	bl sub_02074570
	cmp r0, #0
	beq _021D80D6
	add r0, r4, #0
	bl ov19_021D85B4
	ldr r1, [sp, #0x24]
	ldr r2, _021D8108 ; =0x00005814
	str r1, [sp]
	ldr r1, [sp, #0x20]
	ldr r3, _021D810C ; =0x000057D8
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r0, _021D8110 ; =0x00005980
	ldrh r2, [r6, r2]
	ldr r0, [r1, r0]
	ldrh r3, [r6, r3]
	ldr r1, [sp, #0x34]
	bl ov19_021DA548
_021D80D6:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	add r0, #0x60
	str r0, [sp, #0x28]
	mov r0, #0x4e
	lsl r0, r0, #2
	add r5, r5, r0
	mov r0, #0xf
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	add r6, #0xc
	add r0, r0, #1
	add r4, r4, #6
	add r7, #0x18
	str r0, [sp, #0x2c]
	cmp r0, #5
	blt _021D8086
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D8100: .word 0x00005988
_021D8104: .word 0x00000CD8
_021D8108: .word 0x00005814
_021D810C: .word 0x000057D8
_021D8110: .word 0x00005980
	thumb_func_end ov19_021D803C

	thumb_func_start ov19_021D8114
ov19_021D8114: ; 0x021D8114
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x34
	mov r4, #0
	mov r7, #0x4e
	add r5, r1, #0
	mul r0, r2
	add r5, r5, r0
	add r6, r4, #0
	lsl r7, r7, #2
_021D8126:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D8132
	bl sub_02021BD4
	str r6, [r5, #0]
_021D8132:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #5
	blt _021D8126
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021D8114

	thumb_func_start ov19_021D813C
ov19_021D813C: ; 0x021D813C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	ldr r1, _021D81A4 ; =0x00005988
	str r0, [sp]
	ldr r0, [r0, r1]
	bl ov19_021D5E90
	ldr r4, [sp]
	str r0, [sp, #8]
	ldr r1, _021D81A8 ; =0x00000CD8
	add r0, r4, #0
	mov r6, #0
	add r5, r0, r1
_021D8158:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, r6, #0
	bl sub_02079C9C
	mov r1, #5
	mov r2, #0
	add r7, r0, #0
	bl sub_02074570
	cmp r0, #0
	beq _021D8192
	ldr r1, _021D81AC ; =0x00005814
	strh r0, [r4, r1]
	add r0, r7, #0
	bl sub_02079D40
	ldr r1, _021D81B0 ; =0x000057D8
	mov r3, #0xa
	strh r0, [r4, r1]
	ldr r2, _021D81B0 ; =0x000057D8
	ldr r1, [sp]
	ldr r0, _021D81B4 ; =0x00005980
	ldrh r2, [r4, r2]
	ldr r0, [r1, r0]
	add r1, r5, #0
	lsl r3, r3, #6
	bl ov19_021DA744
_021D8192:
	mov r0, #0xa
	lsl r0, r0, #6
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, r0
	cmp r6, #0x1e
	blo _021D8158
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D81A4: .word 0x00005988
_021D81A8: .word 0x00000CD8
_021D81AC: .word 0x00005814
_021D81B0: .word 0x000057D8
_021D81B4: .word 0x00005980
	thumb_func_end ov19_021D813C

	thumb_func_start ov19_021D81B8
ov19_021D81B8: ; 0x021D81B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r1, #0
	add r0, #0xa3
	strb r1, [r0]
	mov r0, #0xa
	mov r1, #0x10
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _021D820A
	str r5, [r4, #0]
	strh r6, [r4, #4]
	ldr r0, [sp]
	strh r7, [r4, #6]
	str r0, [r4, #0xc]
	mov r0, #2
	strh r0, [r4, #0xa]
	cmp r7, r6
	ble _021D81EA
	mov r0, #1
	b _021D81EC
_021D81EA:
	sub r0, r0, #3
_021D81EC:
	strh r0, [r4, #8]
	ldr r0, _021D820C ; =ov19_021D8210
	add r1, r4, #0
	mov r2, #0
	bl ov19_021D77C8
	cmp r0, #0
	beq _021D8204
	mov r0, #1
	add r5, #0xa3
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D8204:
	add r0, r4, #0
	bl sub_020181C4
_021D820A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D820C: .word ov19_021D8210
	thumb_func_end ov19_021D81B8

	thumb_func_start ov19_021D8210
ov19_021D8210: ; 0x021D8210
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _021D8224
	sub r0, r0, #1
	strh r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
_021D8224:
	mov r2, #4
	mov r1, #6
	ldrsh r0, [r4, r2]
	ldrsh r1, [r4, r1]
	cmp r0, r1
	beq _021D8252
	mov r1, #8
	ldrsh r1, [r4, r1]
	add r0, r0, r1
	strh r0, [r4, #4]
	ldr r1, [r4, #0]
	ldr r0, _021D8264 ; =0x00005860
	add r1, r1, r0
	ldrsh r0, [r4, r2]
	mov r2, #0x20
	lsl r0, r0, #5
	add r0, r1, r0
	ldr r1, [r4, #0xc]
	bl sub_020C00B4
	mov r0, #2
	strh r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
_021D8252:
	ldr r1, _021D8268 ; =ov19_021D826C
	ldr r2, [r4, #0]
	add r0, r4, #0
	bl ov19_021D79B8
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D8264: .word 0x00005860
_021D8268: .word ov19_021D826C
	thumb_func_end ov19_021D8210

	thumb_func_start ov19_021D826C
ov19_021D826C: ; 0x021D826C
	mov r1, #0
	add r0, #0xa3
	strb r1, [r0]
	bx lr
	thumb_func_end ov19_021D826C

	thumb_func_start ov19_021D8274
ov19_021D8274: ; 0x021D8274
	push {r3, r4, lr}
	sub sp, #4
	ldr r3, _021D8300 ; =0x021E0770
	add r4, r1, #0
	ldr r1, [r3, #0xc]
	cmp r1, #0
	beq _021D828E
	cmp r1, #1
	beq _021D82C4
	cmp r1, #2
	beq _021D82F0
	add sp, #4
	pop {r3, r4, pc}
_021D828E:
	ldr r0, _021D8304 ; =0x021E0774
	ldr r2, _021D8308 ; =0x021E0778
	str r0, [sp]
	ldr r3, _021D830C ; =0x021E0770
	add r0, r4, #0
	mov r1, #0
	bl ov19_021D7AF4
	ldr r0, _021D8310 ; =0x00005988
	ldr r0, [r4, r0]
	bl ov19_021D5E8C
	ldr r2, _021D8300 ; =0x021E0770
	add r1, r0, #0
	ldr r0, _021D8314 ; =0x021E05C0
	ldr r2, [r2, #4]
	str r1, [r0, #0]
	add r0, r4, #0
	mov r3, #0
	bl ov19_021D7BC0
	ldr r0, _021D8300 ; =0x021E0770
	add sp, #4
	ldr r1, [r0, #0xc]
	add r1, r1, #1
	str r1, [r0, #0xc]
	pop {r3, r4, pc}
_021D82C4:
	ldr r0, [r3, #4]
	ldr r1, _021D8314 ; =0x021E05C0
	str r0, [sp]
	ldr r2, [r3, #0]
	ldr r1, [r1, #0]
	ldr r3, [r3, #8]
	add r0, r4, #0
	bl ov19_021D7D00
	ldr r1, _021D8314 ; =0x021E05C0
	ldr r2, _021D8300 ; =0x021E0770
	ldr r1, [r1, #0]
	ldr r2, [r2, #8]
	add r0, r4, #0
	bl ov19_021D7C58
	ldr r0, _021D8300 ; =0x021E0770
	add sp, #4
	ldr r1, [r0, #0xc]
	add r1, r1, #1
	str r1, [r0, #0xc]
	pop {r3, r4, pc}
_021D82F0:
	mov r1, #0
	add r4, #0xa3
	strb r1, [r4]
	str r1, [r3, #0xc]
	bl sub_0200DA58
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_021D8300: .word 0x021E0770
_021D8304: .word 0x021E0774
_021D8308: .word 0x021E0778
_021D830C: .word 0x021E0770
_021D8310: .word 0x00005988
_021D8314: .word 0x021E05C0
	thumb_func_end ov19_021D8274

	thumb_func_start ov19_021D8318
ov19_021D8318: ; 0x021D8318
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D8348 ; =ov19_021D8274
	add r1, r4, #0
	mov r2, #0
	bl sub_0200DA3C
	cmp r0, #0
	beq _021D832E
	mov r1, #1
	b _021D8330
_021D832E:
	mov r1, #0
_021D8330:
	add r0, r4, #0
	add r0, #0xa3
	add r4, #0xa3
	strb r1, [r0]
	ldrb r0, [r4]
	cmp r0, #0
	beq _021D8344
	ldr r0, _021D834C ; =0x021E0770
	mov r1, #0
	str r1, [r0, #0xc]
_021D8344:
	pop {r4, pc}
	nop
_021D8348: .word ov19_021D8274
_021D834C: .word 0x021E0770
	thumb_func_end ov19_021D8318

	thumb_func_start ov19_021D8350
ov19_021D8350: ; 0x021D8350
	push {r4, lr}
	add r2, r0, #0
	mov r1, #0
	add r2, #0xa2
	strb r1, [r2]
	ldrb r3, [r0, #2]
	mov r2, #8
	lsl r4, r3, #1
	ldr r3, _021D836C ; =0x021E0138
	ldrh r3, [r3, r4]
	lsl r3, r3, #5
	bl ov19_021D81B8
	pop {r4, pc}
	; .align 2, 0
_021D836C: .word 0x021E0138
	thumb_func_end ov19_021D8350

	thumb_func_start ov19_021D8370
ov19_021D8370: ; 0x021D8370
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xa2
	ldrb r1, [r1]
	cmp r1, #4
	bhi _021D83FE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D838A: ; jump table
	.short _021D8394 - _021D838A - 2 ; case 0
	.short _021D83AA - _021D838A - 2 ; case 1
	.short _021D83BC - _021D838A - 2 ; case 2
	.short _021D83D2 - _021D838A - 2 ; case 3
	.short _021D83F2 - _021D838A - 2 ; case 4
_021D8394:
	add r0, #0xa3
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D83FE
	add r0, r4, #0
	add r0, #0xa2
	ldrb r0, [r0]
	add r4, #0xa2
	add r0, r0, #1
	strb r0, [r4]
	b _021D83FE
_021D83AA:
	bl ov19_021D8318
	add r0, r4, #0
	add r0, #0xa2
	ldrb r0, [r0]
	add r4, #0xa2
	add r0, r0, #1
	strb r0, [r4]
	b _021D83FE
_021D83BC:
	add r0, #0xa3
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D83FE
	add r0, r4, #0
	add r0, #0xa2
	ldrb r0, [r0]
	add r4, #0xa2
	add r0, r0, #1
	strb r0, [r4]
	b _021D83FE
_021D83D2:
	ldrb r3, [r4, #2]
	mov r1, #8
	mov r2, #0
	lsl r5, r3, #1
	ldr r3, _021D8404 ; =0x021E0138
	ldrh r3, [r3, r5]
	lsl r3, r3, #5
	bl ov19_021D81B8
	add r0, r4, #0
	add r0, #0xa2
	ldrb r0, [r0]
	add r4, #0xa2
	add r0, r0, #1
	strb r0, [r4]
	b _021D83FE
_021D83F2:
	add r4, #0xa3
	ldrb r0, [r4]
	cmp r0, #0
	bne _021D83FE
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D83FE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D8404: .word 0x021E0138
	thumb_func_end ov19_021D8370

	thumb_func_start ov19_021D8408
ov19_021D8408: ; 0x021D8408
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	add r4, r1, #0
	mov r0, #0x34
	mul r4, r0
	add r0, r5, #0
	ldrb r2, [r5, #2]
	ldr r1, _021D8454 ; =0x00000618
	add r0, #0xa8
	mul r1, r2
	add r0, r0, r1
	add r6, r3, #0
	add r0, r0, r4
	add r1, r6, #0
	mov r2, #1
	bl ov19_021DA418
	ldr r0, _021D8458 ; =0x00005980
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r2, r7, #0
	bl ov19_021DA754
	ldr r0, _021D8458 ; =0x00005980
	add r3, r5, #0
	ldrb r2, [r5, #2]
	ldr r1, _021D8454 ; =0x00000618
	add r3, #0xa8
	mul r1, r2
	add r1, r3, r1
	ldr r0, [r5, r0]
	add r1, r1, r4
	mov r2, #1
	bl ov19_021DA3CC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D8454: .word 0x00000618
_021D8458: .word 0x00005980
	thumb_func_end ov19_021D8408

	thumb_func_start ov19_021D845C
ov19_021D845C: ; 0x021D845C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrb r0, [r6, #2]
	add r7, r1, #0
	add r3, r6, #0
	str r0, [sp]
	ldr r1, _021D84C0 ; =0x00000618
	ldr r0, [sp]
	add r3, #0xa8
	mul r1, r0
	mov r0, #0x34
	add r4, r7, #0
	mul r4, r0
	add r5, r3, r1
	add r0, r2, #0
	add r1, r5, r4
	mov r2, #1
	bl ov19_021DA418
	ldr r0, _021D84C4 ; =0x00005980
	add r1, r5, r4
	ldr r0, [r6, r0]
	mov r2, #0
	bl ov19_021DA7F4
	mov r2, #0x1e
	ldr r0, _021D84C4 ; =0x00005980
	ldr r3, [sp]
	lsl r2, r2, #4
	mul r2, r3
	ldr r0, [r6, r0]
	add r2, #0x58
	lsl r3, r7, #4
	add r1, r5, r4
	add r2, r2, r3
	bl ov19_021DA754
	add r0, r7, #0
	bl ov19_021D85B4
	add r1, r0, #0
	ldr r0, [r5, r4]
	bl ov19_021D78AC
	add r0, r6, #0
	add r1, r7, #0
	bl ov19_021D89F4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D84C0: .word 0x00000618
_021D84C4: .word 0x00005980
	thumb_func_end ov19_021D845C

	thumb_func_start ov19_021D84C8
ov19_021D84C8: ; 0x021D84C8
	ldrb r2, [r0, #2]
	add r3, r0, #0
	ldr r0, _021D84DC ; =0x00000618
	add r3, #0xa8
	mul r0, r2
	add r2, r3, r0
	mov r0, #0x34
	mul r0, r1
	add r0, r2, r0
	bx lr
	; .align 2, 0
_021D84DC: .word 0x00000618
	thumb_func_end ov19_021D84C8

	thumb_func_start ov19_021D84E0
ov19_021D84E0: ; 0x021D84E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, _021D85A4 ; =0x00005988
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0207999C
	mov r4, #0
	str r0, [sp, #0x1c]
	add r0, r5, #0
	str r0, [sp, #0x28]
	add r0, #0xa8
	add r7, r4, #0
	str r4, [sp, #0x2c]
	str r0, [sp, #0x28]
_021D8500:
	ldr r0, _021D85A4 ; =0x00005988
	ldr r1, [sp, #0x1c]
	ldr r0, [r5, r0]
	add r2, r4, #0
	ldr r0, [r0, #0]
	bl sub_02079C9C
	mov r1, #0xac
	mov r2, #0
	str r0, [sp, #0x20]
	bl sub_02074570
	cmp r0, #0
	beq _021D8592
	ldrb r1, [r5, #2]
	ldr r0, _021D85A8 ; =0x00000618
	mul r0, r1
	str r0, [sp, #0x18]
	add r0, r5, r0
	add r0, r7, r0
	str r1, [sp, #0x14]
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D8592
	add r0, r4, #0
	bl ov19_021D85B4
	str r0, [sp, #0x24]
	add r0, r4, #0
	mov r1, #6
	bl sub_020E1F6C
	str r1, [sp, #0x10]
	add r0, r4, #0
	mov r1, #6
	bl sub_020E1F6C
	mov ip, r0
	mov r0, #2
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x10]
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	mov r0, #0x1e
	add r2, r1, #0
	lsl r0, r0, #4
	mul r2, r0
	ldr r0, [sp, #0x2c]
	add r2, #0x58
	add r0, r2, r0
	str r0, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x18]
	ldr r2, _021D85AC ; =0x0000585C
	add r0, r1, r0
	add r0, r0, r7
	str r0, [sp, #0xc]
	ldr r6, [r5, r2]
	mov r2, #0x18
	ldr r0, _021D85B0 ; =0x00005980
	mul r2, r3
	add r6, #0x70
	add r2, r6, r2
	mov r6, ip
	mov r3, #0x18
	mul r3, r6
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x20]
	add r3, #0x28
	bl ov19_021DA428
_021D8592:
	ldr r0, [sp, #0x2c]
	add r4, r4, #1
	add r0, #0x10
	add r7, #0x34
	str r0, [sp, #0x2c]
	cmp r4, #0x1e
	blt _021D8500
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D85A4: .word 0x00005988
_021D85A8: .word 0x00000618
_021D85AC: .word 0x0000585C
_021D85B0: .word 0x00005980
	thumb_func_end ov19_021D84E0

	thumb_func_start ov19_021D85B4
ov19_021D85B4: ; 0x021D85B4
	lsl r1, r0, #1
	ldr r0, _021D85C0 ; =0x021E013C
	ldrh r0, [r0, r1]
	add r0, #0xb
	bx lr
	nop
_021D85C0: .word 0x021E013C
	thumb_func_end ov19_021D85B4

	thumb_func_start ov19_021D85C4
ov19_021D85C4: ; 0x021D85C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x10]
	mov r0, #0x1e
	lsl r0, r0, #4
	add r6, r3, #0
	mul r6, r0
	mov r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x48]
	mov r4, #0
	ldr r7, [sp, #0x4c]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	add r6, #0x58
	str r4, [sp, #0x24]
	str r0, [sp, #0x20]
_021D85E6:
	mov r0, #0
	str r0, [sp, #0x28]
	add r5, r0, #0
_021D85EC:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x40]
	add r2, r4, #0
	ldr r0, [r0, #0]
	bl sub_02079C9C
	mov r1, #5
	mov r2, #0
	str r0, [sp, #0x2c]
	bl sub_02074570
	cmp r0, #0
	beq _021D8630
	add r0, r4, #0
	bl ov19_021D85B4
	mov r1, #2
	str r1, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x10]
	ldr r2, _021D8658 ; =0x0000585C
	str r7, [sp, #0xc]
	ldr r2, [r3, r2]
	ldr r0, [sp, #0x14]
	add r2, #0x70
	add r3, r2, r5
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x2c]
	add r2, r2, r3
	ldr r3, [sp, #0x1c]
	bl ov19_021DA428
_021D8630:
	ldr r0, [sp, #0x28]
	add r7, #0x34
	add r0, r0, #1
	add r4, r4, #1
	add r6, #0x10
	add r5, #0x18
	str r0, [sp, #0x28]
	cmp r0, #6
	blo _021D85EC
	ldr r0, [sp, #0x1c]
	add r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	blo _021D85E6
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D8658: .word 0x0000585C
	thumb_func_end ov19_021D85C4

	thumb_func_start ov19_021D865C
ov19_021D865C: ; 0x021D865C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x18
	mul r0, r2
	add r5, r1, #0
	str r0, [sp, #8]
_021D866E:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	mov r7, #0
	add r4, r1, r0
_021D8676:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D869A
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0xc
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x68]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	bl sub_02021C50
_021D869A:
	add r7, r7, #1
	add r5, #0x34
	add r4, r4, #4
	cmp r7, #6
	blt _021D8676
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _021D866E
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021D865C

	thumb_func_start ov19_021D86B4
ov19_021D86B4: ; 0x021D86B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x18
	mul r0, r2
	add r5, r1, #0
	str r0, [sp, #8]
_021D86C6:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	mov r7, #0
	add r4, r1, r0
_021D86CE:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D86F2
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0xc
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	bl sub_02021C50
_021D86F2:
	add r7, r7, #1
	add r5, #0x34
	add r4, r4, #4
	cmp r7, #6
	blt _021D86CE
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _021D86C6
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021D86B4

	thumb_func_start ov19_021D870C
ov19_021D870C: ; 0x021D870C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #0x10]
	mov r0, #0x28
	add r5, r1, #0
	str r0, [sp]
_021D871E:
	ldr r0, [sp]
	mov r6, #0
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r4, r6, #0
_021D8728:
	ldr r0, _021D8760 ; =0x0000585C
	ldr r0, [r7, r0]
	add r0, #0x70
	add r0, r0, r4
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D8740
	add r1, sp, #8
	bl sub_02021C50
_021D8740:
	add r6, r6, #1
	add r5, #0x34
	add r4, #0x18
	cmp r6, #6
	blt _021D8728
	ldr r0, [sp]
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _021D871E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D8760: .word 0x0000585C
	thumb_func_end ov19_021D870C

	thumb_func_start ov19_021D8764
ov19_021D8764: ; 0x021D8764
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r0, r2, #0
	add r7, r3, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r0, #0x20
	blo _021D8780
	mov r1, #2
	ldr r0, [sp]
	lsl r1, r1, #0xa
	add r0, r0, r1
	str r0, [sp]
_021D8780:
	mov r0, #0
	mov ip, r0
	ldr r0, [sp, #0x28]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	orr r0, r7
	mov lr, r0
_021D878E:
	ldr r0, [sp, #8]
	mov r2, #0
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1a
	ldr r0, [sp]
	add r4, r2, #0
	add r3, r0, r1
	mov r0, ip
	lsl r1, r0, #1
	ldr r0, [sp, #4]
	add r6, r0, r1
_021D87A4:
	lsl r0, r4, #1
	ldrh r1, [r6, r0]
	mov r0, #3
	lsl r0, r0, #0xa
	add r5, r1, #0
	and r5, r0
	ldr r0, _021D885C ; =0x000003FF
	add r2, r2, #1
	and r0, r1
	add r0, r0, r7
	add r1, r5, #0
	orr r1, r0
	ldr r0, [sp, #0xc]
	add r4, #0x15
	orr r0, r1
	strh r0, [r3]
	add r3, #0x40
	cmp r2, #0x14
	blo _021D87A4
	mov r1, lr
	lsl r1, r1, #0x10
	mov r0, #0
	lsr r1, r1, #0x10
_021D87D2:
	add r0, r0, #1
	strh r1, [r3]
	add r3, #0x40
	cmp r0, #4
	blo _021D87D2
	ldr r0, [sp, #8]
	add r1, r0, #1
	mov r0, #0x3f
	and r0, r1
	str r0, [sp, #8]
	bne _021D87F2
	mov r1, #2
	ldr r0, [sp]
	lsl r1, r1, #0xa
	sub r0, r0, r1
	str r0, [sp]
_021D87F2:
	ldr r0, [sp, #8]
	cmp r0, #0x20
	bne _021D8802
	mov r1, #2
	ldr r0, [sp]
	lsl r1, r1, #0xa
	add r0, r0, r1
	str r0, [sp]
_021D8802:
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #0x15
	blo _021D878E
	mov r1, lr
	mov r3, #2
	mov r0, #0
	lsl r1, r1, #0x10
	lsl r3, r3, #0xa
	lsr r5, r1, #0x10
	add r7, r0, #0
	mov r4, #0x3f
	add r2, r3, #0
_021D881E:
	ldr r1, [sp, #8]
	lsl r1, r1, #0x1b
	lsr r6, r1, #0x1a
	ldr r1, [sp]
	add r1, r1, r6
	add r6, r7, #0
_021D882A:
	add r6, r6, #1
	strh r5, [r1]
	add r1, #0x40
	cmp r6, #0x18
	blo _021D882A
	ldr r1, [sp, #8]
	add r1, r1, #1
	and r1, r4
	str r1, [sp, #8]
	bne _021D8844
	ldr r1, [sp]
	sub r1, r1, r3
	str r1, [sp]
_021D8844:
	ldr r1, [sp, #8]
	cmp r1, #0x20
	bne _021D8850
	ldr r1, [sp]
	add r1, r1, r2
	str r1, [sp]
_021D8850:
	add r0, r0, #1
	cmp r0, #2
	blo _021D881E
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D885C: .word 0x000003FF
	thumb_func_end ov19_021D8764

	thumb_func_start ov19_021D8860
ov19_021D8860: ; 0x021D8860
	push {r4, lr}
	add r2, r0, #0
	add r0, #0xa0
	strh r1, [r0]
	add r0, r2, #0
	mov r3, #0
	add r0, #0xa4
	strb r3, [r0]
	ldr r0, _021D8890 ; =0x00005980
	add r4, r2, #0
	ldrb r3, [r2, #2]
	ldr r0, [r2, r0]
	ldr r2, _021D8894 ; =0x00000618
	add r4, #0xa8
	mul r2, r3
	add r3, r4, r2
	mov r2, #0x34
	mul r2, r1
	add r1, r3, r2
	mov r2, #1
	bl ov19_021DA7B8
	pop {r4, pc}
	nop
_021D8890: .word 0x00005980
_021D8894: .word 0x00000618
	thumb_func_end ov19_021D8860

	thumb_func_start ov19_021D8898
ov19_021D8898: ; 0x021D8898
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r1, [r5, #2]
	ldr r0, _021D892C ; =0x00000618
	add r2, r5, #0
	add r2, #0xa8
	mul r0, r1
	add r4, r2, r0
	add r0, r5, #0
	add r0, #0xa0
	ldrh r1, [r0]
	mov r0, #0x34
	add r6, r1, #0
	mul r6, r0
	add r0, r5, #0
	add r0, #0xa4
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D88C4
	cmp r0, #1
	beq _021D8916
	b _021D8928
_021D88C4:
	ldr r0, _021D8930 ; =0x00005980
	add r1, r4, r6
	ldr r0, [r5, r0]
	bl ov19_021DA7E0
	cmp r0, #0
	beq _021D8928
	ldr r0, _021D8934 ; =0x0000598C
	ldr r0, [r5, r0]
	bl ov19_021D7964
	add r7, r0, #0
	bl ov19_021D3B18
	cmp r0, #0
	beq _021D8928
	add r0, r7, #0
	bl ov19_021D3B20
	cmp r0, #0
	ldr r0, _021D8930 ; =0x00005980
	beq _021D88FE
	ldr r0, [r5, r0]
	add r1, r4, r6
	mov r2, #1
	bl ov19_021DA3F0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D88FE:
	ldr r0, [r5, r0]
	add r1, r4, r6
	mov r2, #2
	bl ov19_021DA7B8
	add r0, r5, #0
	add r0, #0xa4
	ldrb r0, [r0]
	add r5, #0xa4
	add r0, r0, #1
	strb r0, [r5]
	b _021D8928
_021D8916:
	ldr r0, _021D8930 ; =0x00005980
	add r1, r4, r6
	ldr r0, [r5, r0]
	bl ov19_021DA7E0
	cmp r0, #0
	beq _021D8928
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8928:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D892C: .word 0x00000618
_021D8930: .word 0x00005980
_021D8934: .word 0x0000598C
	thumb_func_end ov19_021D8898

	thumb_func_start ov19_021D8938
ov19_021D8938: ; 0x021D8938
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021D897C ; =0x00005988
	ldr r0, [r5, r0]
	bl ov19_021D5EC8
	mov r6, #0
	add r7, r5, #0
	str r0, [sp]
	add r4, r6, #0
	add r7, #0xa8
_021D894E:
	ldrb r2, [r5, #2]
	ldr r0, _021D8980 ; =0x00000618
	add r1, r2, #0
	mul r1, r0
	add r0, r5, r1
	add r0, r4, r0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D8970
	ldr r0, _021D8984 ; =0x00005980
	add r1, r7, r1
	ldr r0, [r5, r0]
	ldr r2, [sp]
	add r1, r1, r4
	bl ov19_021DA63C
_021D8970:
	add r6, r6, #1
	add r4, #0x34
	cmp r6, #0x1e
	blt _021D894E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D897C: .word 0x00005988
_021D8980: .word 0x00000618
_021D8984: .word 0x00005980
	thumb_func_end ov19_021D8938

	thumb_func_start ov19_021D8988
ov19_021D8988: ; 0x021D8988
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x34
	mul r4, r0
	add r3, r5, #0
	ldrb r1, [r5, #2]
	ldr r0, _021D89E8 ; =0x00000618
	add r3, #0xa8
	mul r0, r1
	add r1, r3, r0
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _021D89E6
	ldr r0, _021D89EC ; =0x00005980
	add r1, r1, r4
	ldr r0, [r5, r0]
	bl ov19_021DA690
	ldr r0, _021D89F0 ; =0x00005988
	ldr r0, [r5, r0]
	bl ov19_021D5EC8
	add r2, r0, #0
	ldr r0, _021D89EC ; =0x00005980
	add r1, r5, #0
	ldrb r6, [r5, #2]
	ldr r3, _021D89E8 ; =0x00000618
	add r1, #0xa8
	mul r3, r6
	add r1, r1, r3
	ldr r0, [r5, r0]
	add r1, r1, r4
	bl ov19_021DA63C
	ldr r0, _021D89EC ; =0x00005980
	add r3, r5, #0
	ldrb r2, [r5, #2]
	ldr r1, _021D89E8 ; =0x00000618
	add r3, #0xa8
	mul r1, r2
	add r1, r3, r1
	ldr r0, [r5, r0]
	add r1, r1, r4
	mov r2, #1
	bl ov19_021DA694
_021D89E6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D89E8: .word 0x00000618
_021D89EC: .word 0x00005980
_021D89F0: .word 0x00005988
	thumb_func_end ov19_021D8988

	thumb_func_start ov19_021D89F4
ov19_021D89F4: ; 0x021D89F4
	push {r4, lr}
	ldrb r3, [r0, #2]
	ldr r2, _021D8A1C ; =0x00000618
	add r4, r0, #0
	add r4, #0xa8
	mul r2, r3
	add r3, r4, r2
	mov r2, #0x34
	mul r2, r1
	ldr r1, [r3, r2]
	cmp r1, #0
	beq _021D8A18
	ldr r1, _021D8A20 ; =0x00005980
	ldr r0, [r0, r1]
	add r1, r3, r2
	mov r2, #1
	bl ov19_021DA694
_021D8A18:
	pop {r4, pc}
	nop
_021D8A1C: .word 0x00000618
_021D8A20: .word 0x00005980
	thumb_func_end ov19_021D89F4

	thumb_func_start ov19_021D8A24
ov19_021D8A24: ; 0x021D8A24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D8A60 ; =0x00005988
	ldr r0, [r5, r0]
	bl ov19_021D5E24
	add r4, r0, #0
	ldr r0, _021D8A60 ; =0x00005988
	ldr r0, [r5, r0]
	bl ov19_021D5EA0
	add r2, r0, #0
	add r3, r5, #0
	ldrb r1, [r5, #2]
	ldr r0, _021D8A64 ; =0x00000618
	add r3, #0xa8
	mul r0, r1
	add r3, r3, r0
	mov r0, #0x34
	add r1, r4, #0
	mul r1, r0
	ldr r0, [r3, r1]
	cmp r0, #0
	beq _021D8A5E
	ldr r0, _021D8A68 ; =0x00005980
	add r1, r3, r1
	ldr r0, [r5, r0]
	bl ov19_021DA68C
_021D8A5E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D8A60: .word 0x00005988
_021D8A64: .word 0x00000618
_021D8A68: .word 0x00005980
	thumb_func_end ov19_021D8A24

	thumb_func_start ov19_021D8A6C
ov19_021D8A6C: ; 0x021D8A6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, _021D8B08 ; =0x00005988
	add r1, sp, #0x18
	ldr r0, [r4, r0]
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl ov19_021D5EE8
	mov r5, #0
	str r5, [sp, #4]
_021D8A88:
	add r0, r4, #0
	str r0, [sp, #8]
	add r0, #0xa8
	mov r7, #0
	str r0, [sp, #8]
_021D8A92:
	ldrb r2, [r4, #2]
	ldr r0, _021D8B0C ; =0x00000618
	add r1, r2, #0
	mul r1, r0
	add r0, r4, r1
	add r0, r5, r0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D8AF0
	ldr r6, [sp, #0x18]
	ldr r2, [sp, #0x14]
	sub r3, r7, r6
	sub r2, r2, r6
	ldr r0, [sp, #0x10]
	cmp r3, r2
	bhi _021D8AB8
	mov r6, #1
	b _021D8ABA
_021D8AB8:
	mov r6, #0
_021D8ABA:
	ldr r2, [sp, #4]
	sub r3, r2, r0
	ldr r2, [sp, #0xc]
	sub r0, r2, r0
	cmp r3, r0
	bhi _021D8ACA
	mov r0, #1
	b _021D8ACC
_021D8ACA:
	mov r0, #0
_021D8ACC:
	tst r0, r6
	ldr r0, _021D8B10 ; =0x00005980
	beq _021D8AE2
	ldr r2, [sp, #8]
	ldr r0, [r4, r0]
	add r1, r2, r1
	add r1, r1, r5
	mov r2, #1
	bl ov19_021DA7F4
	b _021D8AF0
_021D8AE2:
	ldr r2, [sp, #8]
	ldr r0, [r4, r0]
	add r1, r2, r1
	add r1, r1, r5
	mov r2, #0
	bl ov19_021DA7F4
_021D8AF0:
	add r7, r7, #1
	add r5, #0x34
	cmp r7, #6
	blo _021D8A92
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blo _021D8A88
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D8B08: .word 0x00005988
_021D8B0C: .word 0x00000618
_021D8B10: .word 0x00005980
	thumb_func_end ov19_021D8A6C

	thumb_func_start ov19_021D8B14
ov19_021D8B14: ; 0x021D8B14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r7, r5, #0
	add r4, r6, #0
	add r7, #0xa8
_021D8B20:
	ldrb r2, [r5, #2]
	ldr r0, _021D8B4C ; =0x00000618
	add r1, r2, #0
	mul r1, r0
	add r0, r5, r1
	add r0, r4, r0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D8B42
	ldr r0, _021D8B50 ; =0x00005980
	add r1, r7, r1
	ldr r0, [r5, r0]
	add r1, r1, r4
	mov r2, #0
	bl ov19_021DA7F4
_021D8B42:
	add r6, r6, #1
	add r4, #0x34
	cmp r6, #0x1e
	blt _021D8B20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D8B4C: .word 0x00000618
_021D8B50: .word 0x00005980
	thumb_func_end ov19_021D8B14

	.rodata


	.global Unk_ov19_021E0138
Unk_ov19_021E0138: ; 0x021E0138
	.incbin "incbin/overlay19_rodata.bin", 0x348, 0x34C - 0x348

	.global Unk_ov19_021E013C
Unk_ov19_021E013C: ; 0x021E013C
	.incbin "incbin/overlay19_rodata.bin", 0x34C, 0x388 - 0x34C

	.global Unk_ov19_021E0178
Unk_ov19_021E0178: ; 0x021E0178
	.incbin "incbin/overlay19_rodata.bin", 0x388, 0x60


	.data


	.global Unk_ov19_021E05C0
Unk_ov19_021E05C0: ; 0x021E05C0
	.incbin "incbin/overlay19_data.bin", 0x0, 0x4


	.bss


	.global Unk_ov19_021E0770
Unk_ov19_021E0770: ; 0x021E0770
	.space 0x4

	.global Unk_ov19_021E0774
Unk_ov19_021E0774: ; 0x021E0774
	.space 0x4

	.global Unk_ov19_021E0778
Unk_ov19_021E0778: ; 0x021E0778
	.space 0x4

	.global Unk_ov19_021E077C
Unk_ov19_021E077C: ; 0x021E077C
	.space 0x4

