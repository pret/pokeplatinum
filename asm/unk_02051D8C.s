	.include "macros/function.inc"
	.include "include/unk_02051D8C.inc"

	

	.text


	thumb_func_start sub_02051D8C
sub_02051D8C: ; 0x02051D8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	mov r1, #0x72
	lsl r1, r1, #2
	add r5, r0, #0
	bl sub_02018144
	mov r2, #0x72
	mov r1, #0
	lsl r2, r2, #2
	add r7, r0, #0
	bl MI_CpuFill8
	mov r1, #0x63
	str r4, [r7, #0]
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r7, r1]
	add r4, r7, #0
	str r0, [sp]
	str r0, [r7, #0x14]
	add r6, r7, #0
	add r4, #0x28
_02051DBC:
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x34
	str r0, [r6, #0x18]
	bl MIi_CpuClear32
	ldr r0, [sp]
	add r6, r6, #4
	add r0, r0, #1
	add r4, #0x34
	str r0, [sp]
	cmp r0, #4
	blt _02051DBC
	mov r0, #0x15
	lsl r0, r0, #4
	mov r6, #0
	str r6, [r7, r0]
	mov r2, #0x18
	add r1, r0, #4
	str r2, [r7, r1]
	add r1, r0, #0
	add r1, #8
	str r6, [r7, r1]
	add r1, r0, #0
	add r1, #0x10
	str r6, [r7, r1]
	add r1, r0, #0
	add r1, #0x14
	str r6, [r7, r1]
	add r1, r0, #0
	mov r2, #1
	add r1, #0x18
	str r2, [r7, r1]
	add r1, r0, #0
	add r1, #0x1c
	str r2, [r7, r1]
	add r0, #0x24
	str r6, [r7, r0]
	add r4, r7, #0
_02051E0A:
	add r0, r5, #0
	bl sub_02079FF4
	str r0, [r4, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02051E0A
	mov r6, #0
	add r4, r7, #0
_02051E1E:
	add r0, r5, #0
	bl sub_02025E6C
	add r1, r4, #0
	add r1, #0xf8
	add r6, r6, #1
	add r4, r4, #4
	str r0, [r1, #0]
	cmp r6, #4
	blt _02051E1E
	mov r6, #0
	add r4, r7, #0
_02051E36:
	add r0, r5, #0
	bl sub_0202CC84
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02051E36
	add r0, r5, #0
	bl sub_0207D3C0
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r7, r1]
	add r0, r5, #0
	bl sub_02026324
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r7, r1]
	add r0, r5, #0
	bl sub_020279FC
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r7, r1]
	add r0, r5, #0
	bl sub_0206D140
	mov r1, #0x4d
	lsl r1, r1, #2
	add r2, r1, #0
	str r0, [r7, r1]
	mov r0, #0
	sub r2, #0x28
	str r0, [r7, r2]
	add r2, r1, #0
	add r2, #0x84
	str r0, [r7, r2]
	add r2, r1, #0
	add r2, #0x5c
	str r0, [r7, r2]
	add r2, r1, #0
	sub r2, #8
	str r0, [r7, r2]
	add r2, r1, #0
	add r2, #0x10
	str r0, [r7, r2]
	add r2, r1, #0
	add r2, #0x14
	str r0, [r7, r2]
	add r1, #0x60
	str r0, [r7, r1]
	add r0, sp, #0x10
	add r1, sp, #4
	bl sub_0201384C
	ldr r0, _02051F20 ; =0x021BF67C
	ldr r5, [sp, #0x14]
	ldr r4, [r0, #0x2c]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	lsl r5, r5, #8
	add r0, r1, r0
	lsl r3, r0, #0x18
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	lsl r2, r0, #0x10
	ldr r0, [sp, #0x18]
	mul r5, r0
	lsl r0, r5, #0x10
	add r0, r1, r0
	add r0, r2, r0
	add r0, r3, r0
	add r1, r4, r0
	mov r0, #0x67
	lsl r0, r0, #2
	str r1, [r7, r0]
	bl sub_02035E38
	cmp r0, #1
	bne _02051F0C
	mov r5, #0
	bl sub_02035E18
	cmp r0, #0
	ble _02051F02
	mov r6, #0x1a
	add r4, r7, #0
	lsl r6, r6, #4
_02051EEE:
	add r0, r5, #0
	bl sub_020362F4
	str r0, [r4, r6]
	add r4, r4, #4
	add r5, r5, #1
	bl sub_02035E18
	cmp r5, r0
	blt _02051EEE
_02051F02:
	bl sub_0203608C
	mov r1, #0x1b
	lsl r1, r1, #4
	strh r0, [r7, r1]
_02051F0C:
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r7, r0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r7, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02051F20: .word 0x021BF67C
	thumb_func_end sub_02051D8C

	thumb_func_start sub_02051F24
sub_02051F24: ; 0x02051F24
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x20
	bl sub_02051D8C
	mov r1, #0x19
	lsl r1, r1, #4
	str r4, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02051F24

	thumb_func_start sub_02051F38
sub_02051F38: ; 0x02051F38
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	lsl r1, r1, #8
	bl sub_02051D8C
	mov r1, #0x19
	lsl r1, r1, #4
	str r4, [r0, r1]
	pop {r4, pc}
	thumb_func_end sub_02051F38

	thumb_func_start sub_02051F4C
sub_02051F4C: ; 0x02051F4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	mov r1, #1
	str r0, [sp, #0x14]
	add r0, r6, #0
	lsl r1, r1, #0xa
	bl sub_02051D8C
	add r4, r0, #0
	ldr r2, _0205209C ; =0x00000229
	mov r0, #1
	mov r1, #0x1a
	add r3, r6, #0
	bl sub_0200B144
	str r0, [sp, #0x18]
	mov r0, #8
	add r1, r6, #0
	bl sub_02023790
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_02025F30
	add r2, r0, #0
	mov r1, #1
	eor r1, r2
	ldr r0, [sp, #0x18]
	add r2, r7, #0
	bl sub_0200B1B8
	add r0, r7, #0
	bl sub_02023E2C
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_02025EC0
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_0200B190
	ldr r0, [sp, #0x10]
	bl sub_02025F30
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xf8
	mov r1, #1
	ldr r0, [r0, #0]
	eor r1, r2
	bl sub_02025F2C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205281C
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [sp, #0x14]
	ldr r1, [r4, r1]
	bl sub_02027A10
	add r0, r5, #0
	bl sub_02055BA8
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x58
	ldr r0, [r4, r1]
	mov r1, #4
	mov r2, #0x14
	add r3, r6, #0
	bl sub_0207D570
	add r0, r6, #0
	bl sub_02073C74
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B08C
	mov r2, #0
	str r2, [sp]
	add r1, r0, #0
	str r2, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	add r0, r6, #0
	mov r2, #5
	mov r3, #0x20
	bl sub_02073D80
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl sub_0207A048
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, _020520A0 ; =0x0000018F
	add r0, r6, #0
	mov r3, #0x20
	bl sub_02073D80
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl sub_0207A048
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [r5, #0xc]
	bl sub_02024420
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r5, #0
	add r0, #0x98
	ldr r2, [r0, #0]
	add r0, r1, #0
	sub r0, #8
	str r2, [r4, r0]
	mov r0, #0
	add r1, #0xa4
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r5, #0
	add r0, #0x9c
	ldr r2, [r0, #0]
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r5, #0x1c]
	add r1, #0x18
	ldr r0, [r0, #0]
	str r0, [r4, r1]
	add r0, r4, #0
	bl sub_02052894
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0205209C: .word 0x00000229
_020520A0: .word 0x0000018F
	thumb_func_end sub_02051F4C

	thumb_func_start sub_020520A4
sub_020520A4: ; 0x020520A4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
	add r5, r7, #0
_020520AC:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _020520B6
	bl sub_02022974
_020520B6:
	ldr r0, [r5, #4]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _020520AC
	mov r5, #0
	add r4, r7, #0
_020520C8:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020520D6
	bl sub_02022974
_020520D6:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _020520C8
	mov r6, #0x46
	mov r5, #0
	add r4, r7, #0
	lsl r6, r6, #2
_020520F0:
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _020520FA
	bl sub_02022974
_020520FA:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _020520F0
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_020181C4
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	bl sub_020181C4
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	bl sub_020181C4
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_0206D158
	add r0, r7, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020520A4

	thumb_func_start sub_0205213C
sub_0205213C: ; 0x0205213C
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #4
	blt _0205214C
	bl sub_02022974
_0205214C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	add r1, r6, #0
	bl sub_0207A048
	cmp r0, #0
	bne _02052160
	bl sub_02022974
_02052160:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205213C

	thumb_func_start sub_02052164
sub_02052164: ; 0x02052164
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #4
	blt _02052174
	bl sub_02022974
_02052174:
	lsl r1, r4, #2
	add r1, r5, r1
	ldr r1, [r1, #4]
	add r0, r6, #0
	bl sub_0207A21C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02052164

	thumb_func_start sub_02052184
sub_02052184: ; 0x02052184
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #4
	blt _02052194
	bl sub_02022974
_02052194:
	lsl r1, r4, #2
	add r1, r5, r1
	add r1, #0xf8
	ldr r1, [r1, #0]
	add r0, r6, #0
	bl sub_02025E80
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02052184

	thumb_func_start sub_020521A4
sub_020521A4: ; 0x020521A4
	lsl r2, r2, #2
	add r2, r0, r2
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r3, _020521B4 ; =sub_0202CD3C
	ldr r0, [r2, r0]
	bx r3
	nop
_020521B4: .word sub_0202CD3C
	thumb_func_end sub_020521A4

	thumb_func_start sub_020521B8
sub_020521B8: ; 0x020521B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r7, r1, #0
	add r6, r3, #0
	bl sub_02025E38
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl sub_0207A268
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_0207D990
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02027560
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0202CC98
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_02025E44
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203A790
	str r0, [sp]
	cmp r7, #0
	beq _02052210
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0205281C
	add r0, r7, #0
	bl sub_02055BA8
	b _0205222E
_02052210:
	add r0, r6, #0
	bl sub_0203A19C
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r2, #9
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r4, #0
	bl sub_02025CD8
	ldr r0, [r0, #0x14]
	bl sub_02013974
_0205222E:
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	mov r2, #0
	bl sub_02052184
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	mov r2, #0
	bl sub_02052164
	mov r1, #0x42
	lsl r1, r1, #2
	ldr r0, [sp, #0x10]
	ldr r1, [r5, r1]
	bl sub_0207D3EC
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r0, [sp, #0xc]
	ldr r1, [r5, r1]
	bl sub_02026338
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [sp, #4]
	ldr r1, [r5, r1]
	bl sub_02027A10
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	bl sub_020521A4
	add r0, r4, #0
	bl sub_02024420
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_0203A138
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_0203A354
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_0208C324
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_020507E4
	bl sub_0206ADFC
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	bl sub_0203A74C
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r2, [sp, #0x34]
	sub r0, #0x68
	str r2, [r5, r0]
	ldr r0, [sp, #0x38]
	add r1, #0x44
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_02056B24
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_0202C878
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_0202CD88
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r2, [sp, #0x30]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r4, #0
	bl sub_02027F8C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x10
	str r6, [r5, r0]
	add r1, #0x74
	str r4, [r5, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020521B8

	thumb_func_start sub_02052314
sub_02052314: ; 0x02052314
	push {r3, r4, lr}
	sub sp, #0xc
	add r2, r1, #0
	add r2, #0x9c
	ldr r2, [r2, #0]
	add r4, r0, #0
	str r2, [sp]
	add r2, r1, #0
	add r2, #0x98
	ldr r2, [r2, #0]
	str r2, [sp, #4]
	add r2, r1, #0
	add r2, #0xbc
	ldr r2, [r2, #0]
	str r2, [sp, #8]
	ldr r3, [r1, #0x1c]
	ldr r2, [r1, #0xc]
	ldr r3, [r3, #0]
	bl sub_020521B8
	add r0, r4, #0
	bl sub_02052894
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02052314

	thumb_func_start sub_02052348
sub_02052348: ; 0x02052348
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, r1, #0
	ldr r0, [r0, #0xc]
	str r1, [sp]
	add r6, r2, #0
	bl sub_02025E38
	add r4, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	str r0, [sp, #0x10]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0202CC98
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	str r0, [sp, #4]
	mov r0, #0x15
	mov r1, #6
	lsl r0, r0, #4
	str r1, [r5, r0]
	mov r1, #9
	add r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02052184
	mov r0, #0xb
	bl sub_02073C74
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	bl sub_0207A0F8
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl sub_0207A014
	ldr r0, [sp, #0x14]
	mov r7, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _02052420
_020523C8:
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	bl sub_0207A0FC
	add r1, r4, #0
	bl sub_020775EC
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	cmp r6, r0
	beq _0205240A
	cmp r6, #0
	beq _0205240A
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r1, r6, #0
	bl sub_02075AD0
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0x18
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
_0205240A:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0205213C
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	bl sub_0207A0F8
	cmp r7, r0
	blt _020523C8
_02052420:
	add r0, r4, #0
	bl sub_020181C4
	mov r1, #0x42
	lsl r1, r1, #2
	ldr r0, [sp, #0x10]
	ldr r1, [r5, r1]
	bl sub_0207D3EC
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r0, [sp, #0xc]
	ldr r1, [r5, r1]
	bl sub_02026338
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [sp, #4]
	ldr r1, [r5, r1]
	bl sub_02027A10
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	bl sub_020521A4
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02024420
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	bl sub_02055BA8
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [sp]
	add r0, #0x98
	ldr r2, [r0, #0]
	add r0, r1, #0
	sub r0, #0x54
	str r2, [r5, r0]
	ldr r0, [sp]
	add r1, #0x58
	add r0, #0xbc
	ldr r0, [r0, #0]
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02056B24
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0202C878
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	add r0, #0x9c
	ldr r2, [r0, #0]
	add r0, r1, #4
	str r2, [r5, r0]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02027F8C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0x1c]
	ldr r2, [r0, #0]
	add r0, r1, #0
	add r0, #0x10
	str r2, [r5, r0]
	ldr r0, [sp]
	add r1, #0x74
	ldr r0, [r0, #0xc]
	str r0, [r5, r1]
	add r0, r5, #0
	bl sub_02052894
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02052348

	thumb_func_start sub_020524E4
sub_020524E4: ; 0x020524E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r0, r1, #0
	ldr r0, [r0, #0xc]
	str r1, [sp]
	str r2, [sp, #4]
	add r7, r3, #0
	bl sub_02025E38
	str r0, [sp, #0x20]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	str r0, [sp, #0x18]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0202CC98
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	str r0, [sp, #0x10]
	ldr r0, [sp]
	mov r1, #6
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r2, #0
	str r0, [sp, #0xc]
	mov r0, #0x15
	lsl r0, r0, #4
	str r1, [r5, r0]
	mov r1, #9
	add r0, r0, #4
	str r1, [r5, r0]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl sub_02052184
	cmp r7, #0
	bne _02052552
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #0
	bl sub_02052164
	b _020525B0
_02052552:
	mov r4, #0
	add r1, r4, #0
_02052556:
	ldrb r0, [r7, r1]
	cmp r0, #0
	beq _0205255E
	add r4, r4, #1
_0205255E:
	add r1, r1, #1
	cmp r1, #6
	blt _02052556
	cmp r4, #0
	bne _02052574
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #0
	bl sub_02052164
	b _020525B0
_02052574:
	mov r0, #0xb
	bl sub_02073C74
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0207A014
	mov r6, #0
	cmp r4, #0
	ble _020525AA
_0205258A:
	ldrb r1, [r7, r6]
	ldr r0, [sp, #4]
	sub r1, r1, #1
	bl sub_0207A0FC
	ldr r1, [sp, #8]
	bl sub_020775EC
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	bl sub_0205213C
	add r6, r6, #1
	cmp r6, r4
	blt _0205258A
_020525AA:
	ldr r0, [sp, #8]
	bl sub_020181C4
_020525B0:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020525C8
	mov r1, #0xc
	bl sub_02026074
	cmp r0, #0
	beq _020525C8
	mov r0, #0x65
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
_020525C8:
	mov r1, #0x42
	lsl r1, r1, #2
	ldr r0, [sp, #0x1c]
	ldr r1, [r5, r1]
	bl sub_0207D3EC
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r0, [sp, #0x18]
	ldr r1, [r5, r1]
	bl sub_02026338
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [sp, #0x10]
	ldr r1, [r5, r1]
	bl sub_02027A10
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	mov r2, #0
	bl sub_020521A4
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02024420
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	bl sub_02055BA8
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [sp]
	add r0, #0x98
	ldr r2, [r0, #0]
	add r0, r1, #0
	sub r0, #0x54
	str r2, [r5, r0]
	ldr r0, [sp]
	add r1, #0x58
	add r0, #0xbc
	ldr r0, [r0, #0]
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0202C878
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	add r0, #0x9c
	ldr r2, [r0, #0]
	add r0, r1, #4
	str r2, [r5, r0]
	ldr r0, [sp]
	add r1, #0x18
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02027F8C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	add r1, #0x74
	ldr r0, [r0, #0xc]
	str r0, [r5, r1]
	bl sub_0203895C
	bl sub_020326C4
	cmp r0, #0
	beq _020526C0
	ldr r0, [sp, #0x20]
	bl sub_02025F8C
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_02025F30
	add r1, r4, #0
	mov r2, #1
	bl sub_0205CA14
	add r1, r5, #0
	add r1, #0x29
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x3c
	bl sub_020021B0
	add r3, r5, #0
	add r3, #0x28
	add r5, #0x90
	mov r2, #6
_020526B0:
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _020526B0
	ldr r0, [r3, #0]
	add sp, #0x24
	str r0, [r5, #0]
	pop {r4, r5, r6, r7, pc}
_020526C0:
	add r0, r5, #0
	bl sub_02052894
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020524E4

	thumb_func_start sub_020526CC
sub_020526CC: ; 0x020526CC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	add r6, r2, #0
	bl sub_0207A268
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #0
	bl sub_020524E4
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020526CC

	thumb_func_start sub_020526E8
sub_020526E8: ; 0x020526E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	str r0, [sp]
	ldr r0, [r5, #0xc]
	bl sub_02027560
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A784
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_02025E80
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl sub_0207A21C
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [sp]
	bl sub_0207D3EC
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #4]
	bl sub_02026338
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	strh r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020526E8

	thumb_func_start sub_02052754
sub_02052754: ; 0x02052754
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	ldr r0, [r5, #0xc]
	bl sub_02027560
	add r1, r0, #0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02026338
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02052754

	thumb_func_start sub_02052780
sub_02052780: ; 0x02052780
	push {r3, r4, r5, lr}
	ldr r2, [r0, #0x1c]
	add r4, r1, #0
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	bl sub_02054F94
	add r5, r0, #0
	bl sub_0205DC5C
	cmp r0, #0
	beq _0205279C
	mov r0, #8
	pop {r3, r4, r5, pc}
_0205279C:
	add r0, r5, #0
	bl sub_0205DAC8
	cmp r0, #0
	bne _020527B0
	add r0, r5, #0
	bl sub_0205DAD4
	cmp r0, #0
	beq _020527B4
_020527B0:
	mov r0, #2
	pop {r3, r4, r5, pc}
_020527B4:
	add r0, r5, #0
	bl sub_0205DB6C
	cmp r0, #0
	beq _020527C2
	mov r0, #1
	pop {r3, r4, r5, pc}
_020527C2:
	add r0, r5, #0
	bl sub_0205DD18
	cmp r0, #0
	beq _020527D0
	mov r0, #6
	pop {r3, r4, r5, pc}
_020527D0:
	add r0, r5, #0
	bl sub_0205DCE0
	cmp r0, #0
	bne _020527E4
	add r0, r5, #0
	bl sub_0205DCFC
	cmp r0, #0
	beq _020527E8
_020527E4:
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_020527E8:
	add r0, r5, #0
	bl sub_0205DDA8
	cmp r0, #0
	beq _020527F6
	mov r0, #5
	pop {r3, r4, r5, pc}
_020527F6:
	add r0, r5, #0
	bl sub_0205DB58
	cmp r0, #0
	beq _02052804
	mov r0, #7
	pop {r3, r4, r5, pc}
_02052804:
	cmp r4, #0x17
	bhs _02052810
	ldr r0, _02052818 ; =0x020EC294
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_02052810:
	bl sub_02022974
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02052818: .word 0x020EC294
	thumb_func_end sub_02052780

	thumb_func_start sub_0205281C
sub_0205281C: ; 0x0205281C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A780
	add r6, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A19C
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r6, #4]
	cmp r0, #2
	bne _02052846
	mov r0, #1
	str r0, [r5, r1]
_02052846:
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl sub_02052780
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205281C

	thumb_func_start sub_0205285C
sub_0205285C: ; 0x0205285C
	mov r1, #0x55
	mov r2, #7
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205285C

	thumb_func_start sub_02052868
sub_02052868: ; 0x02052868
	cmp r0, #2
	beq _02052870
	cmp r0, #3
	bne _02052874
_02052870:
	mov r0, #0
	bx lr
_02052874:
	mov r0, #1
	bx lr
	thumb_func_end sub_02052868

	thumb_func_start sub_02052878
sub_02052878: ; 0x02052878
	cmp r0, #1
	beq _02052880
	cmp r0, #4
	bne _02052884
_02052880:
	mov r0, #0
	bx lr
_02052884:
	mov r0, #1
	bx lr
	thumb_func_end sub_02052878

	thumb_func_start sub_02052888
sub_02052888: ; 0x02052888
	cmp r0, #4
	bne _02052890
	mov r0, #0
	bx lr
_02052890:
	mov r0, #1
	bx lr
	thumb_func_end sub_02052888

	thumb_func_start sub_02052894
sub_02052894: ; 0x02052894
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_02025F30
	add r1, r4, #0
	add r1, #0x29
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x3c
	bl sub_020021B0
	add r3, r4, #0
	add r3, #0x28
	add r4, #0x90
	mov r2, #6
_020528C2:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _020528C2
	ldr r0, [r3, #0]
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end sub_02052894

	.rodata


	.global Unk_020EC294
Unk_020EC294: ; 0x020EC294
	.incbin "incbin/arm9_rodata.bin", 0x7654, 0x5C

