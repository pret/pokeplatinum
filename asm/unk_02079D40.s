	.include "macros/function.inc"
	.include "include/unk_02079D40.inc"

	

	.text


	thumb_func_start sub_02079D40
sub_02079D40: ; 0x02079D40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02073D20
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02079E44
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02079D8C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02073D48
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02079D40

	thumb_func_start sub_02079D80
sub_02079D80: ; 0x02079D80
	push {r3, lr}
	bl sub_02076B10
	bl sub_02079D40
	pop {r3, pc}
	thumb_func_end sub_02079D80

	thumb_func_start sub_02079D8C
sub_02079D8C: ; 0x02079D8C
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _02079DA2
	ldr r0, _02079E38 ; =0x000001EA
	cmp r4, r0
	bne _02079D9E
	add r0, #0xc
	pop {r4, pc}
_02079D9E:
	add r0, #0xb
	pop {r4, pc}
_02079DA2:
	lsl r0, r4, #0x10
	lsl r1, r2, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl sub_020761E8
	cmp r0, #0
	beq _02079E2A
	ldr r1, _02079E3C ; =0x00000182
	cmp r4, r1
	bne _02079DBE
	add r1, #0x74
	add r0, r0, r1
	pop {r4, pc}
_02079DBE:
	cmp r4, #0xc9
	bne _02079DC8
	add r1, #0x78
	add r0, r0, r1
	pop {r4, pc}
_02079DC8:
	add r2, r1, #0
	add r2, #0x1a
	cmp r4, r2
	bne _02079DD6
	add r1, #0x93
	add r0, r0, r1
	pop {r4, pc}
_02079DD6:
	add r2, r1, #0
	add r2, #0x1b
	cmp r4, r2
	bne _02079DE4
	add r1, #0x95
	add r0, r0, r1
	pop {r4, pc}
_02079DE4:
	add r2, r1, #0
	add r2, #0x24
	cmp r4, r2
	bne _02079DF2
	add r1, #0x97
	add r0, r0, r1
	pop {r4, pc}
_02079DF2:
	add r2, r1, #0
	add r2, #0x25
	cmp r4, r2
	bne _02079E00
	add r1, #0x98
	add r0, r0, r1
	pop {r4, pc}
_02079E00:
	add r2, r1, #0
	add r2, #0x65
	cmp r4, r2
	bne _02079E0E
	add r1, #0x99
	add r0, r0, r1
	pop {r4, pc}
_02079E0E:
	add r2, r1, #0
	add r2, #0x6a
	cmp r4, r2
	bne _02079E1C
	add r1, #0x9a
	add r0, r0, r1
	pop {r4, pc}
_02079E1C:
	add r2, r1, #0
	add r2, #0x5d
	cmp r4, r2
	bne _02079E2A
	add r1, #0x9b
	add r0, r0, r1
	pop {r4, pc}
_02079E2A:
	ldr r0, _02079E40 ; =0x000001ED
	cmp r4, r0
	bls _02079E32
	mov r4, #0
_02079E32:
	add r0, r4, #7
	pop {r4, pc}
	nop
_02079E38: .word 0x000001EA
_02079E3C: .word 0x00000182
_02079E40: .word 0x000001ED
	thumb_func_end sub_02079D8C

	thumb_func_start sub_02079E44
sub_02079E44: ; 0x02079E44
	push {r4, lr}
	mov r1, #0xae
	mov r2, #0
	add r4, r0, #0
	bl sub_02074570
	ldr r1, _02079ED8 ; =0x000001A6
	cmp r0, r1
	bhi _02079E8C
	bhs _02079EC4
	add r2, r1, #0
	sub r2, #0x24
	cmp r0, r2
	bhi _02079E6C
	sub r1, #0x24
	cmp r0, r1
	bhs _02079EC4
	cmp r0, #0xc9
	beq _02079EBC
	b _02079ED4
_02079E6C:
	add r2, r1, #0
	sub r2, #9
	cmp r0, r2
	bhi _02079ED4
	add r2, r1, #0
	sub r2, #0xa
	cmp r0, r2
	blo _02079ED4
	add r2, r1, #0
	sub r2, #0xa
	cmp r0, r2
	beq _02079EC4
	sub r1, #9
	cmp r0, r1
	beq _02079EC4
	b _02079ED4
_02079E8C:
	add r2, r1, #0
	add r2, #0x39
	cmp r0, r2
	bhi _02079EA4
	add r2, r1, #0
	add r2, #0x39
	cmp r0, r2
	bhs _02079EC4
	add r1, r1, #1
	cmp r0, r1
	beq _02079EC4
	b _02079ED4
_02079EA4:
	add r2, r1, #0
	add r2, #0x41
	cmp r0, r2
	bhi _02079EB4
	add r1, #0x41
	cmp r0, r1
	beq _02079EC4
	b _02079ED4
_02079EB4:
	add r1, #0x46
	cmp r0, r1
	beq _02079EC4
	b _02079ED4
_02079EBC:
	add r0, r4, #0
	bl sub_02076B00
	pop {r4, pc}
_02079EC4:
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
_02079ED4:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02079ED8: .word 0x000001A6
	thumb_func_end sub_02079E44

	thumb_func_start sub_02079EDC
sub_02079EDC: ; 0x02079EDC
	cmp r2, #1
	bne _02079EEE
	ldr r1, _02079F78 ; =0x000001EA
	cmp r0, r1
	bne _02079EEA
	add r0, r1, #5
	b _02079F70
_02079EEA:
	add r0, r1, #4
	b _02079F70
_02079EEE:
	ldr r2, _02079F7C ; =0x000001ED
	cmp r0, r2
	bls _02079EF8
	mov r0, #0
	b _02079F70
_02079EF8:
	cmp r1, #0
	beq _02079F70
	add r3, r2, #0
	sub r3, #0x6b
	cmp r0, r3
	bne _02079F0A
	add r0, r2, #2
	add r0, r1, r0
	b _02079F70
_02079F0A:
	cmp r0, #0xc9
	bne _02079F14
	add r0, r2, #5
	add r0, r1, r0
	b _02079F70
_02079F14:
	add r3, r2, #0
	sub r3, #0x51
	cmp r0, r3
	bne _02079F22
	add r2, #0x21
	add r0, r1, r2
	b _02079F70
_02079F22:
	add r3, r2, #0
	sub r3, #0x50
	cmp r0, r3
	bne _02079F30
	add r2, #0x23
	add r0, r1, r2
	b _02079F70
_02079F30:
	add r3, r2, #0
	sub r3, #0x47
	cmp r0, r3
	bne _02079F3E
	add r2, #0x25
	add r0, r1, r2
	b _02079F70
_02079F3E:
	add r3, r2, #0
	sub r3, #0x46
	cmp r0, r3
	bne _02079F4C
	add r2, #0x26
	add r0, r1, r2
	b _02079F70
_02079F4C:
	sub r3, r2, #6
	cmp r0, r3
	bne _02079F58
	add r2, #0x27
	add r0, r1, r2
	b _02079F70
_02079F58:
	sub r3, r2, #1
	cmp r0, r3
	bne _02079F64
	add r2, #0x28
	add r0, r1, r2
	b _02079F70
_02079F64:
	add r3, r2, #0
	sub r3, #0xe
	cmp r0, r3
	bne _02079F70
	add r2, #0x29
	add r0, r1, r2
_02079F70:
	ldr r1, _02079F80 ; =0x020F0780
	ldrb r0, [r1, r0]
	bx lr
	nop
_02079F78: .word 0x000001EA
_02079F7C: .word 0x000001ED
_02079F80: .word 0x020F0780
	thumb_func_end sub_02079EDC

	thumb_func_start sub_02079F84
sub_02079F84: ; 0x02079F84
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02073D20
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02079E44
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02073D48
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02079EDC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02079F84

	thumb_func_start sub_02079FC4
sub_02079FC4: ; 0x02079FC4
	push {r3, lr}
	bl sub_02076B10
	bl sub_02079F84
	pop {r3, pc}
	thumb_func_end sub_02079FC4

	thumb_func_start sub_02079FD0
sub_02079FD0: ; 0x02079FD0
	mov r0, #0
	bx lr
	thumb_func_end sub_02079FD0

	thumb_func_start sub_02079FD4
sub_02079FD4: ; 0x02079FD4
	mov r0, #2
	bx lr
	thumb_func_end sub_02079FD4

	thumb_func_start sub_02079FD8
sub_02079FD8: ; 0x02079FD8
	mov r0, #4
	bx lr
	thumb_func_end sub_02079FD8

	thumb_func_start sub_02079FDC
sub_02079FDC: ; 0x02079FDC
	mov r0, #6
	bx lr
	thumb_func_end sub_02079FDC

	thumb_func_start sub_02079FE0
sub_02079FE0: ; 0x02079FE0
	mov r0, #1
	bx lr
	thumb_func_end sub_02079FE0

	thumb_func_start sub_02079FE4
sub_02079FE4: ; 0x02079FE4
	mov r0, #3
	bx lr
	thumb_func_end sub_02079FE4

	thumb_func_start sub_02079FE8
sub_02079FE8: ; 0x02079FE8
	mov r0, #5
	bx lr
	thumb_func_end sub_02079FE8

	.rodata


	.global Unk_020F0780
Unk_020F0780: ; 0x020F0780
	.incbin "incbin/arm9_rodata.bin", 0xBB40, 0x21C

