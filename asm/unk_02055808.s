	.include "macros/function.inc"
	.include "include/unk_02055808.inc"

	

	.text


	thumb_func_start sub_02055808
sub_02055808: ; 0x02055808
	push {r3, lr}
	bl sub_02050A60
	bl sub_0203CD4C
	cmp r0, #0
	bne _0205581A
	mov r0, #1
	pop {r3, pc}
_0205581A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02055808

	thumb_func_start sub_02055820
sub_02055820: ; 0x02055820
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	bl sub_0203CD4C
	cmp r0, #0
	bne _02055838
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
_02055838:
	add r0, r4, #0
	bl sub_0203CD44
	ldr r1, _0205584C ; =sub_02055808
	add r0, r5, #0
	mov r2, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	nop
_0205584C: .word sub_02055808
	thumb_func_end sub_02055820

	thumb_func_start sub_02055850
sub_02055850: ; 0x02055850
	push {r3, lr}
	bl sub_02050A60
	bl sub_020509DC
	cmp r0, #0
	beq _02055862
	mov r0, #1
	pop {r3, pc}
_02055862:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02055850

	thumb_func_start sub_02055868
sub_02055868: ; 0x02055868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	bl sub_0203CD4C
	cmp r0, #0
	beq _02055880
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
_02055880:
	add r0, r4, #0
	bl sub_020509D4
	ldr r1, _02055894 ; =sub_02055850
	add r0, r5, #0
	mov r2, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	nop
_02055894: .word sub_02055850
	thumb_func_end sub_02055868

	thumb_func_start sub_02055898
sub_02055898: ; 0x02055898
	push {r3, lr}
	bl sub_0200F2AC
	cmp r0, #0
	beq _020558A6
	mov r0, #1
	pop {r3, pc}
_020558A6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02055898

	thumb_func_start sub_020558AC
sub_020558AC: ; 0x020558AC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02050A60
	bl sub_0203CD4C
	cmp r0, #0
	bne _020558C6
	bl GF_AssertFail
	add sp, #0xc
	pop {r3, r4, pc}
_020558C6:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r1, _020558EC ; =sub_02055898
	add r0, r4, #0
	mov r2, #0
	bl sub_02050944
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_020558EC: .word sub_02055898
	thumb_func_end sub_020558AC

	thumb_func_start sub_020558F0
sub_020558F0: ; 0x020558F0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02050A60
	bl sub_0203CD4C
	cmp r0, #0
	bne _0205590A
	bl GF_AssertFail
	add sp, #0xc
	pop {r3, r4, pc}
_0205590A:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r1, _02055930 ; =sub_02055898
	add r0, r4, #0
	mov r2, #0
	bl sub_02050944
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02055930: .word sub_02055898
	thumb_func_end sub_020558F0

	thumb_func_start sub_02055934
sub_02055934: ; 0x02055934
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0205594E
	cmp r0, #1
	beq _0205595C
	cmp r0, #2
	beq _0205596A
	b _0205596E
_0205594E:
	add r0, r5, #0
	bl sub_020558AC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205596E
_0205595C:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205596E
_0205596A:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205596E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02055934

	thumb_func_start sub_02055974
sub_02055974: ; 0x02055974
	ldr r3, _0205597C ; =sub_02050944
	ldr r1, _02055980 ; =sub_02055934
	mov r2, #0
	bx r3
	; .align 2, 0
_0205597C: .word sub_02050944
_02055980: .word sub_02055934
	thumb_func_end sub_02055974

	thumb_func_start sub_02055984
sub_02055984: ; 0x02055984
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A68
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _020559A4
	cmp r1, #1
	beq _020559B2
	cmp r1, #2
	beq _020559C4
	b _020559C8
_020559A4:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020559C8
_020559B2:
	bl ov5_021DDAA4
	add r0, r5, #0
	bl sub_020558F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020559C8
_020559C4:
	mov r0, #1
	pop {r3, r4, r5, pc}
_020559C8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02055984

	thumb_func_start sub_020559CC
sub_020559CC: ; 0x020559CC
	ldr r3, _020559D4 ; =sub_02050944
	ldr r1, _020559D8 ; =sub_02055984
	mov r2, #0
	bx r3
	; .align 2, 0
_020559D4: .word sub_02050944
_020559D8: .word sub_02055984
	thumb_func_end sub_020559CC