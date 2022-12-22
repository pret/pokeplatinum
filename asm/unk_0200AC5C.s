	.include "macros/function.inc"
	.include "include/unk_0200AC5C.inc"

	

	.text


	thumb_func_start sub_0200AC5C
sub_0200AC5C: ; 0x0200AC5C
	ldr r3, _0200AC60 ; =sub_02006AC0
	bx r3
	; .align 2, 0
_0200AC60: .word sub_02006AC0
	thumb_func_end sub_0200AC5C

	thumb_func_start sub_0200AC64
sub_0200AC64: ; 0x0200AC64
	ldr r3, _0200AC68 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0200AC68: .word sub_020181C4
	thumb_func_end sub_0200AC64

	thumb_func_start sub_0200AC6C
sub_0200AC6C: ; 0x0200AC6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r3, r0, #0
	ldrh r0, [r3]
	add r5, r1, #0
	add r4, r2, #0
	cmp r5, r0
	bhs _0200ACDC
	lsl r0, r5, #3
	add r0, r3, r0
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	ldr r6, _0200ACE4 ; =0x000002FD
	str r2, [sp]
	str r1, [sp, #4]
	ldrh r0, [r3, #2]
	add r7, r5, #1
	mul r6, r0
	add r0, r7, #0
	mul r0, r6
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	lsl r0, r6, #0x10
	orr r0, r6
	eor r2, r0
	eor r0, r1
	str r0, [sp, #4]
	str r2, [sp]
	add r1, r3, r2
	add r0, r4, #0
	add r2, sp, #0
	bl sub_0200AD98
	ldr r2, [sp, #4]
	ldr r0, _0200ACE8 ; =0x00091BD3
	add r1, r7, #0
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	sub r3, r2, #1
	cmp r2, #0
	beq _0200ACE0
	ldr r0, _0200ACEC ; =0x0000493D
_0200ACC2:
	ldrh r1, [r4]
	eor r1, r5
	strh r1, [r4]
	add r1, r5, r0
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	add r1, r3, #0
	add r4, r4, #2
	sub r3, r3, #1
	cmp r1, #0
	bne _0200ACC2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0200ACDC:
	bl GF_AssertFail
_0200ACE0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200ACE4: .word 0x000002FD
_0200ACE8: .word 0x00091BD3
_0200ACEC: .word 0x0000493D
	thumb_func_end sub_0200AC6C

	thumb_func_start sub_0200ACF0
sub_0200ACF0: ; 0x0200ACF0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r1, r3, #0
	add r4, r2, #0
	bl sub_02006C24
	add r6, r0, #0
	beq _0200AD86
	add r1, sp, #0xc
	str r1, [sp]
	add r1, r5, #0
	mov r2, #0
	mov r3, #4
	bl sub_02006DC8
	add r0, sp, #4
	lsl r2, r4, #3
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r2, #4
	mov r3, #8
	bl sub_02006DC8
	add r0, sp, #4
	ldrh r2, [r0, #0xa]
	ldr r0, _0200AD8C ; =0x000002FD
	add r1, r4, #1
	mul r0, r2
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	ldr r0, [sp, #4]
	eor r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	eor r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp]
	ldr r3, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r6, #0
	lsl r3, r3, #1
	bl sub_02006DC8
	ldr r2, _0200AD90 ; =0x00091BD3
	add r3, r4, #1
	mul r2, r3
	lsl r2, r2, #0x10
	ldr r0, [sp, #8]
	lsr r3, r2, #0x10
	sub r2, r0, #1
	ldr r1, [sp, #0x20]
	cmp r0, #0
	beq _0200AD80
	ldr r0, _0200AD94 ; =0x0000493D
_0200AD6A:
	ldrh r4, [r1]
	eor r4, r3
	strh r4, [r1]
	add r3, r3, r0
	lsl r3, r3, #0x10
	add r4, r2, #0
	add r1, r1, #2
	lsr r3, r3, #0x10
	sub r2, r2, #1
	cmp r4, #0
	bne _0200AD6A
_0200AD80:
	add r0, r6, #0
	bl sub_02006CA8
_0200AD86:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0200AD8C: .word 0x000002FD
_0200AD90: .word 0x00091BD3
_0200AD94: .word 0x0000493D
	thumb_func_end sub_0200ACF0

	thumb_func_start sub_0200AD98
sub_0200AD98: ; 0x0200AD98
	add r3, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	ldr r2, [r2, #4]
	ldr r3, _0200ADA8 ; =MIi_CpuCopy16
	lsl r2, r2, #1
	bx r3
	nop
_0200ADA8: .word MIi_CpuCopy16
	thumb_func_end sub_0200AD98

	thumb_func_start sub_0200ADAC
sub_0200ADAC: ; 0x0200ADAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	str r2, [sp]
	cmp r4, r0
	bhs _0200AE42
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r3, [r0, #4]
	ldr r2, [r0, #8]
	ldrh r1, [r5, #2]
	ldr r6, _0200AE50 ; =0x000002FD
	add r0, r4, #1
	mul r6, r1
	add r1, r0, #0
	mul r1, r6
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	add r0, r3, #0
	add r6, r2, #0
	str r3, [sp, #8]
	eor r0, r1
	eor r6, r1
	str r0, [sp, #8]
	lsl r0, r6, #1
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	ldr r1, [sp, #4]
	mov r0, #0
	str r6, [sp, #0xc]
	bl sub_02018184
	add r7, r0, #0
	beq _0200AE4C
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, r0
	add r1, r7, #0
	bl MIi_CpuCopy16
	ldr r1, _0200AE54 ; =0x00091BD3
	add r2, r4, #1
	mul r1, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	add r0, r7, #0
	sub r1, r6, #1
	cmp r6, #0
	beq _0200AE2E
	ldr r3, _0200AE58 ; =0x0000493D
_0200AE18:
	ldrh r4, [r0]
	eor r4, r2
	strh r4, [r0]
	add r2, r2, r3
	lsl r2, r2, #0x10
	add r4, r1, #0
	add r0, r0, #2
	lsr r2, r2, #0x10
	sub r1, r1, #1
	cmp r4, #0
	bne _0200AE18
_0200AE2E:
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02023D8C
	add r0, r7, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0200AE42:
	bl GF_AssertFail
	ldr r0, [sp]
	bl sub_020237E8
_0200AE4C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200AE50: .word 0x000002FD
_0200AE54: .word 0x00091BD3
_0200AE58: .word 0x0000493D
	thumb_func_end sub_0200ADAC

	thumb_func_start sub_0200AE5C
sub_0200AE5C: ; 0x0200AE5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	str r2, [sp]
	cmp r4, r0
	bhs _0200AF04
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r3, [r0, #4]
	ldr r2, [r0, #8]
	ldrh r1, [r5, #2]
	ldr r6, _0200AF14 ; =0x000002FD
	add r0, r4, #1
	mul r6, r1
	add r1, r0, #0
	mul r1, r6
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	add r0, r3, #0
	add r6, r2, #0
	str r3, [sp, #8]
	eor r0, r1
	eor r6, r1
	str r0, [sp, #8]
	lsl r0, r6, #1
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r6, [sp, #0xc]
	bl sub_02018184
	add r7, r0, #0
	beq _0200AEFE
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, r0
	add r1, r7, #0
	bl MIi_CpuCopy16
	ldr r1, _0200AF18 ; =0x00091BD3
	add r2, r4, #1
	mul r1, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	add r0, r7, #0
	sub r1, r6, #1
	cmp r6, #0
	beq _0200AEDE
	ldr r3, _0200AF1C ; =0x0000493D
_0200AEC8:
	ldrh r4, [r0]
	eor r4, r2
	strh r4, [r0]
	add r2, r2, r3
	lsl r2, r2, #0x10
	add r4, r1, #0
	add r0, r0, #2
	lsr r2, r2, #0x10
	sub r1, r1, #1
	cmp r4, #0
	bne _0200AEC8
_0200AEDE:
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_02023790
	add r4, r0, #0
	beq _0200AEF2
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02023D8C
_0200AEF2:
	add r0, r7, #0
	bl sub_020181C4
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200AEFE:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200AF04:
	bl GF_AssertFail
	ldr r1, [sp]
	mov r0, #4
	bl sub_02023790
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200AF14: .word 0x000002FD
_0200AF18: .word 0x00091BD3
_0200AF1C: .word 0x0000493D
	thumb_func_end sub_0200AE5C

	thumb_func_start sub_0200AF20
sub_0200AF20: ; 0x0200AF20
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r1, #0
	add r1, r7, #0
	add r4, r2, #0
	bl sub_02006C24
	add r6, r0, #0
	beq _0200AF46
	ldr r1, [sp, #0x18]
	add r2, r4, #0
	str r1, [sp]
	add r1, r5, #0
	add r3, r7, #0
	bl sub_0200AF48
	add r0, r6, #0
	bl sub_02006CA8
_0200AF46:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200AF20

	thumb_func_start sub_0200AF48
sub_0200AF48: ; 0x0200AF48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	add r2, sp, #0x10
	add r4, r3, #0
	str r2, [sp]
	mov r2, #0
	mov r3, #4
	add r7, r0, #0
	str r1, [sp, #4]
	bl sub_02006DC8
	add r0, sp, #8
	ldrh r0, [r0, #8]
	cmp r5, r0
	bhs _0200AFF6
	add r0, sp, #8
	lsl r2, r5, #3
	str r0, [sp]
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r2, #4
	mov r3, #8
	bl sub_02006DC8
	add r0, sp, #8
	ldrh r2, [r0, #0xa]
	ldr r0, _0200B004 ; =0x000002FD
	add r1, r5, #1
	mul r0, r2
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	ldr r0, [sp, #8]
	eor r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	eor r0, r1
	lsl r6, r0, #1
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02018184
	add r4, r0, #0
	beq _0200B000
	str r4, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r7, #0
	add r3, r6, #0
	bl sub_02006DC8
	ldr r2, _0200B008 ; =0x00091BD3
	add r3, r5, #1
	mul r2, r3
	lsl r2, r2, #0x10
	ldr r0, [sp, #0xc]
	lsr r3, r2, #0x10
	add r1, r4, #0
	sub r2, r0, #1
	cmp r0, #0
	beq _0200AFE2
	ldr r0, _0200B00C ; =0x0000493D
_0200AFCC:
	ldrh r5, [r1]
	eor r5, r3
	strh r5, [r1]
	add r3, r3, r0
	lsl r3, r3, #0x10
	add r5, r2, #0
	add r1, r1, #2
	lsr r3, r3, #0x10
	sub r2, r2, #1
	cmp r5, #0
	bne _0200AFCC
_0200AFE2:
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0xc]
	add r1, r4, #0
	bl sub_02023D8C
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0200AFF6:
	bl GF_AssertFail
	ldr r0, [sp, #0x28]
	bl sub_020237E8
_0200B000:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B004: .word 0x000002FD
_0200B008: .word 0x00091BD3
_0200B00C: .word 0x0000493D
	thumb_func_end sub_0200AF48

	thumb_func_start sub_0200B010
sub_0200B010: ; 0x0200B010
	push {r3, r4, r5, r6, r7, lr}
	add r6, r3, #0
	add r5, r1, #0
	add r1, r6, #0
	add r4, r2, #0
	bl sub_02006C24
	add r7, r0, #0
	beq _0200B036
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200B044
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02006CA8
	b _0200B040
_0200B036:
	mov r0, #4
	add r1, r6, #0
	bl sub_02023790
	add r4, r0, #0
_0200B040:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B010

	thumb_func_start sub_0200B044
sub_0200B044: ; 0x0200B044
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r2, #0
	add r2, sp, #0x14
	add r5, r3, #0
	str r2, [sp]
	mov r2, #0
	mov r3, #4
	add r7, r0, #0
	str r1, [sp, #4]
	bl sub_02006DC8
	add r0, sp, #0xc
	ldrh r0, [r0, #8]
	cmp r4, r0
	bhs _0200B102
	add r0, sp, #0xc
	lsl r2, r4, #3
	str r0, [sp]
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r2, #4
	mov r3, #8
	bl sub_02006DC8
	add r0, sp, #0xc
	ldrh r2, [r0, #0xa]
	ldr r0, _0200B114 ; =0x000002FD
	add r1, r4, #1
	mul r0, r2
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	ldr r0, [sp, #0xc]
	eor r0, r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	eor r0, r1
	add r1, r5, #0
	str r0, [sp, #0x10]
	bl sub_02023790
	str r0, [sp, #8]
	cmp r0, #0
	beq _0200B0FC
	ldr r0, [sp, #0x10]
	lsl r6, r0, #1
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02018184
	add r5, r0, #0
	beq _0200B0FC
	str r5, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r3, r6, #0
	bl sub_02006DC8
	ldr r2, _0200B118 ; =0x00091BD3
	add r3, r4, #1
	mul r2, r3
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x10]
	lsr r3, r2, #0x10
	add r1, r5, #0
	sub r2, r0, #1
	cmp r0, #0
	beq _0200B0EC
	ldr r0, _0200B11C ; =0x0000493D
_0200B0D6:
	ldrh r4, [r1]
	eor r4, r3
	strh r4, [r1]
	add r3, r3, r0
	lsl r3, r3, #0x10
	add r4, r2, #0
	add r1, r1, #2
	lsr r3, r3, #0x10
	sub r2, r2, #1
	cmp r4, #0
	bne _0200B0D6
_0200B0EC:
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	bl sub_02023D8C
	add r0, r5, #0
	bl sub_020181C4
_0200B0FC:
	ldr r0, [sp, #8]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0200B102:
	bl GF_AssertFail
	mov r0, #4
	add r1, r5, #0
	bl sub_02023790
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200B114: .word 0x000002FD
_0200B118: .word 0x00091BD3
_0200B11C: .word 0x0000493D
	thumb_func_end sub_0200B044

	thumb_func_start sub_0200B120
sub_0200B120: ; 0x0200B120
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_0200B120

	thumb_func_start sub_0200B124
sub_0200B124: ; 0x0200B124
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	mov r0, #4
	add r2, r1, #0
	str r0, [sp]
	add r1, r3, #0
	add r0, sp, #4
	mov r3, #0
	bl sub_02006AFC
	add r0, sp, #4
	ldrh r0, [r0]
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200B124

	thumb_func_start sub_0200B144
sub_0200B144: ; 0x0200B144
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r3, #0
	mov r1, #0xc
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018184
	add r4, r0, #0
	beq _0200B18C
	cmp r5, #0
	bne _0200B178
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200AC5C
	str r0, [r4, #8]
	cmp r0, #0
	bne _0200B182
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200B178:
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_02006C24
	str r0, [r4, #8]
_0200B182:
	strh r5, [r4]
	strh r6, [r4, #4]
	ldr r0, [sp]
	strh r7, [r4, #6]
	strh r0, [r4, #2]
_0200B18C:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B144

	thumb_func_start sub_0200B190
sub_0200B190: ; 0x0200B190
	push {r4, lr}
	add r4, r0, #0
	beq _0200B1B6
	ldrh r0, [r4]
	cmp r0, #0
	beq _0200B1A2
	cmp r0, #1
	beq _0200B1AA
	b _0200B1B0
_0200B1A2:
	ldr r0, [r4, #8]
	bl sub_0200AC64
	b _0200B1B0
_0200B1AA:
	ldr r0, [r4, #8]
	bl sub_02006CA8
_0200B1B0:
	add r0, r4, #0
	bl sub_020181C4
_0200B1B6:
	pop {r4, pc}
	thumb_func_end sub_0200B190

	thumb_func_start sub_0200B1B8
sub_0200B1B8: ; 0x0200B1B8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4]
	add r3, r1, #0
	cmp r0, #0
	beq _0200B1CE
	cmp r0, #1
	beq _0200B1D8
	add sp, #4
	pop {r3, r4, pc}
_0200B1CE:
	ldr r0, [r4, #8]
	bl sub_0200ADAC
	add sp, #4
	pop {r3, r4, pc}
_0200B1D8:
	str r2, [sp]
	add r2, r3, #0
	ldrh r1, [r4, #6]
	ldrh r3, [r4, #2]
	ldr r0, [r4, #8]
	bl sub_0200AF48
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200B1B8

	thumb_func_start sub_0200B1EC
sub_0200B1EC: ; 0x0200B1EC
	push {r3, lr}
	add r3, r0, #0
	ldrh r0, [r3]
	add r2, r1, #0
	cmp r0, #0
	beq _0200B1FE
	cmp r0, #1
	beq _0200B208
	b _0200B214
_0200B1FE:
	ldrh r2, [r3, #2]
	ldr r0, [r3, #8]
	bl sub_0200AE5C
	pop {r3, pc}
_0200B208:
	ldr r0, [r3, #8]
	ldrh r1, [r3, #6]
	ldrh r3, [r3, #2]
	bl sub_0200B044
	pop {r3, pc}
_0200B214:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0200B1EC

	thumb_func_start sub_0200B218
sub_0200B218: ; 0x0200B218
	push {r3, lr}
	add r1, r0, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0200B228
	cmp r0, #1
	beq _0200B230
	b _0200B23A
_0200B228:
	ldr r0, [r1, #8]
	bl sub_0200B120
	pop {r3, pc}
_0200B230:
	ldrh r0, [r1, #4]
	ldrh r1, [r1, #6]
	bl sub_0200B124
	pop {r3, pc}
_0200B23A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200B218

	thumb_func_start sub_0200B240
sub_0200B240: ; 0x0200B240
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4]
	add r3, r1, #0
	cmp r0, #0
	beq _0200B256
	cmp r0, #1
	beq _0200B260
	add sp, #4
	pop {r3, r4, pc}
_0200B256:
	ldr r0, [r4, #8]
	bl sub_0200AC6C
	add sp, #4
	pop {r3, r4, pc}
_0200B260:
	str r2, [sp]
	add r2, r3, #0
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldrh r3, [r4, #2]
	bl sub_0200ACF0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200B240

	thumb_func_start sub_0200B274
sub_0200B274: ; 0x0200B274
	push {r4, r5, r6, lr}
	add r4, r2, #0
	mov r2, #0x67
	add r5, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r6, r0, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0200B240
	add r0, r6, #0
	bl sub_0200B190
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200B274