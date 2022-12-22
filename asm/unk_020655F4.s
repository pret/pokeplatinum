	.include "macros/function.inc"
	.include "include/unk_020655F4.inc"

	

	.text


	thumb_func_start sub_020655F4
sub_020655F4: ; 0x020655F4
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl sub_020628D8
	cmp r0, #0
	bne _02065606
	mov r0, #0
	pop {r4, pc}
_02065606:
	add r0, r4, #0
	mov r1, #2
	bl sub_020628D8
	cmp r0, #1
	bne _02065616
	mov r0, #0
	pop {r4, pc}
_02065616:
	add r0, r4, #0
	mov r1, #0x10
	bl sub_020628D8
	cmp r0, #1
	bne _02065632
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628D8
	cmp r0, #0
	bne _02065632
	mov r0, #0
	pop {r4, pc}
_02065632:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020655F4

	thumb_func_start sub_02065638
sub_02065638: ; 0x02065638
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x9a
	blt _02065646
	bl GF_AssertFail
_02065646:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062BB0
	add r0, r5, #0
	mov r1, #0
	bl sub_02062BC0
	add r0, r5, #0
	mov r1, #0x10
	bl sub_020628BC
	add r0, r5, #0
	mov r1, #0x20
	bl sub_020628C4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02065638

	thumb_func_start sub_02065668
sub_02065668: ; 0x02065668
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062BB0
	add r0, r4, #0
	mov r1, #0
	bl sub_02062BC0
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02065668

	thumb_func_start sub_02065684
sub_02065684: ; 0x02065684
	push {r4, lr}
	mov r1, #0x10
	add r4, r0, #0
	bl sub_020628D8
	cmp r0, #0
	bne _02065696
	mov r0, #1
	pop {r4, pc}
_02065696:
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628D8
	cmp r0, #0
	beq _020656A6
	mov r0, #1
	pop {r4, pc}
_020656A6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02065684

	thumb_func_start sub_020656AC
sub_020656AC: ; 0x020656AC
	push {r4, lr}
	mov r1, #0x10
	add r4, r0, #0
	bl sub_020628D8
	cmp r0, #0
	bne _020656BE
	mov r0, #1
	pop {r4, pc}
_020656BE:
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628D8
	cmp r0, #0
	bne _020656CE
	mov r0, #0
	pop {r4, pc}
_020656CE:
	add r0, r4, #0
	mov r1, #0x30
	bl sub_020628C4
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020656AC

	thumb_func_start sub_020656DC
sub_020656DC: ; 0x020656DC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x10
	bl sub_020628C4
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628BC
	add r0, r4, #0
	mov r1, #0xff
	bl sub_02062BB0
	add r0, r4, #0
	mov r1, #0
	bl sub_02062BC0
	pop {r4, pc}
	thumb_func_end sub_020656DC

	thumb_func_start sub_02065700
sub_02065700: ; 0x02065700
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x14
	bl sub_02018184
	add r4, r0, #0
	bne _02065716
	bl GF_AssertFail
_02065716:
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_0206571C:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0206571C
	add r0, r5, #0
	bl sub_02062A40
	bl sub_02062858
	sub r2, r0, #1
	ldr r0, _02065748 ; =sub_02065788
	add r1, r4, #0
	bl sub_0200D9E8
	add r7, r0, #0
	bne _02065740
	bl GF_AssertFail
_02065740:
	str r5, [r4, #0xc]
	str r6, [r4, #0x10]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02065748: .word sub_02065788
	thumb_func_end sub_02065700

	thumb_func_start sub_0206574C
sub_0206574C: ; 0x0206574C
	push {r3, lr}
	bl sub_0201CED0
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206574C

	thumb_func_start sub_02065758
sub_02065758: ; 0x02065758
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0201CED0
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02065684
	cmp r0, #1
	beq _02065770
	bl GF_AssertFail
_02065770:
	ldr r0, [r4, #0xc]
	bl sub_020656AC
	mov r0, #4
	add r1, r4, #0
	bl sub_02018238
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02065758

	thumb_func_start sub_02065788
sub_02065788: ; 0x02065788
	push {r3, r4, r5, lr}
	ldr r4, _020657A0 ; =0x020EEE54
	add r5, r1, #0
_0206578E:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _0206578E
	pop {r3, r4, r5, pc}
	nop
_020657A0: .word 0x020EEE54
	thumb_func_end sub_02065788

	thumb_func_start sub_020657A4
sub_020657A4: ; 0x020657A4
	mov r1, #0
	str r1, [r0, #8]
	mov r1, #1
	str r1, [r0, #0]
	add r0, r1, #0
	bx lr
	thumb_func_end sub_020657A4

	thumb_func_start sub_020657B0
sub_020657B0: ; 0x020657B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020655F4
	cmp r0, #0
	bne _020657C2
	mov r0, #0
	pop {r4, pc}
_020657C2:
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020657B0

	thumb_func_start sub_020657CC
sub_020657CC: ; 0x020657CC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	ldrh r1, [r1]
	bl sub_02065638
	mov r0, #3
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020657CC

	thumb_func_start sub_020657E4
sub_020657E4: ; 0x020657E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02065684
	cmp r0, #0
	bne _020657F6
	mov r0, #0
	pop {r4, pc}
_020657F6:
	mov r0, #4
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020657E4

	thumb_func_start sub_02065800
sub_02065800: ; 0x02065800
	ldr r1, [r0, #8]
	ldr r3, [r0, #0x10]
	add r2, r1, #1
	str r2, [r0, #8]
	ldrh r1, [r3, #2]
	cmp r2, r1
	bge _02065816
	mov r1, #1
	str r1, [r0, #0]
	add r0, r1, #0
	bx lr
_02065816:
	add r1, r3, #4
	str r1, [r0, #0x10]
	ldrh r1, [r3, #4]
	cmp r1, #0xfe
	beq _02065828
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #1
	bx lr
_02065828:
	mov r1, #1
	str r1, [r0, #4]
	mov r1, #5
	str r1, [r0, #0]
	mov r0, #0
	bx lr
	thumb_func_end sub_02065800

	thumb_func_start sub_02065834
sub_02065834: ; 0x02065834
	mov r0, #0
	bx lr
	thumb_func_end sub_02065834

	thumb_func_start sub_02065838
sub_02065838: ; 0x02065838
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	cmp r7, #4
	blt _02065846
	bl GF_AssertFail
_02065846:
	ldr r3, _02065878 ; =0x020EE31C
	ldr r6, [r3, #0]
	cmp r6, #0
	beq _02065870
	mov r1, #0
_02065850:
	add r2, r1, #0
	add r5, r6, #0
_02065854:
	ldr r0, [r5, #0]
	cmp r4, r0
	bne _02065860
	lsl r0, r7, #2
	ldr r0, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02065860:
	add r2, r2, #1
	add r5, r5, #4
	cmp r2, #4
	blt _02065854
	add r3, r3, #4
	ldr r6, [r3, #0]
	cmp r6, #0
	bne _02065850
_02065870:
	bl GF_AssertFail
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02065878: .word 0x020EE31C
	thumb_func_end sub_02065838

	thumb_func_start sub_0206587C
sub_0206587C: ; 0x0206587C
	push {r4, r5}
	ldr r4, _020658B0 ; =0x020EE31C
	ldr r5, [r4, #0]
	cmp r5, #0
	beq _020658A6
	mov r2, #0
_02065888:
	add r3, r2, #0
_0206588A:
	ldr r1, [r5, #0]
	cmp r0, r1
	bne _02065896
	add r0, r3, #0
	pop {r4, r5}
	bx lr
_02065896:
	add r3, r3, #1
	add r5, r5, #4
	cmp r3, #4
	blt _0206588A
	add r4, r4, #4
	ldr r5, [r4, #0]
	cmp r5, #0
	bne _02065888
_020658A6:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
	nop
_020658B0: .word 0x020EE31C
	thumb_func_end sub_0206587C

	thumb_func_start sub_020658B4
sub_020658B4: ; 0x020658B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
_020658B8:
	add r0, r5, #0
	bl sub_02062BB8
	add r4, r0, #0
	cmp r4, #0xff
	beq _020658D8
	add r0, r5, #0
	bl sub_02062BD8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065910
	cmp r0, #0
	bne _020658B8
_020658D8:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020658B4

	thumb_func_start sub_020658DC
sub_020658DC: ; 0x020658DC
	push {r4, lr}
	add r4, r0, #0
	bl sub_020658B4
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628D8
	cmp r0, #0
	bne _020658F4
	mov r0, #0
	pop {r4, pc}
_020658F4:
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628C4
	add r0, r4, #0
	mov r1, #0xff
	bl sub_02062BB0
	add r0, r4, #0
	mov r1, #0
	bl sub_02062BC0
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020658DC

	thumb_func_start sub_02065910
sub_02065910: ; 0x02065910
	push {r3, lr}
	lsl r3, r1, #2
	ldr r1, _02065920 ; =0x020EE4B8
	ldr r3, [r1, r3]
	lsl r1, r2, #2
	ldr r1, [r3, r1]
	blx r1
	pop {r3, pc}
	; .align 2, 0
_02065920: .word 0x020EE4B8
	thumb_func_end sub_02065910

	thumb_func_start sub_02065924
sub_02065924: ; 0x02065924
	push {r3, lr}
	mov r1, #0x20
	bl sub_020628BC
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02065924

	thumb_func_start sub_02065930
sub_02065930: ; 0x02065930
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062974
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02064208
	add r0, r4, #0
	bl sub_02062BC8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02065930

	thumb_func_start sub_02065950
sub_02065950: ; 0x02065950
	push {r3, lr}
	mov r1, #0
	bl sub_02065930
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065950

	thumb_func_start sub_0206595C
sub_0206595C: ; 0x0206595C
	push {r3, lr}
	mov r1, #1
	bl sub_02065930
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0206595C

	thumb_func_start sub_02065968
sub_02065968: ; 0x02065968
	push {r3, lr}
	mov r1, #2
	bl sub_02065930
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065968

	thumb_func_start sub_02065974
sub_02065974: ; 0x02065974
	push {r3, lr}
	mov r1, #3
	bl sub_02065930
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065974

	thumb_func_start sub_02065980
sub_02065980: ; 0x02065980
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0xc
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02062AA4
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	strh r1, [r0]
	strh r7, [r0, #2]
	str r4, [r0, #4]
	str r6, [r0, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020641B4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020629A0
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	add r0, r5, #0
	bl sub_02062A0C
	add r0, r5, #0
	mov r1, #4
	bl sub_020628BC
	add r0, r5, #0
	bl sub_02062BC8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02065980

	thumb_func_start sub_020659C8
sub_020659C8: ; 0x020659C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	bl sub_020642A4
	add r0, r5, #0
	bl sub_020642F8
	mov r0, #2
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #2]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _020659F4
	mov r0, #0
	pop {r3, r4, r5, pc}
_020659F4:
	add r0, r5, #0
	mov r1, #0x28
	bl sub_020628BC
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	bl sub_02062B68
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020659C8

	thumb_func_start sub_02065A1C
sub_02065A1C: ; 0x02065A1C
	push {r3, lr}
	mov r2, #1
	str r2, [sp]
	mov r1, #0
	lsl r2, r2, #0xb
	mov r3, #0x20
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065A1C

	thumb_func_start sub_02065A30
sub_02065A30: ; 0x02065A30
	push {r3, lr}
	mov r1, #1
	lsl r2, r1, #0xb
	mov r3, #0x20
	str r1, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065A30

	thumb_func_start sub_02065A44
sub_02065A44: ; 0x02065A44
	push {r3, lr}
	mov r1, #1
	str r1, [sp]
	mov r1, #2
	lsl r2, r1, #0xa
	mov r3, #0x20
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065A44

	thumb_func_start sub_02065A58
sub_02065A58: ; 0x02065A58
	push {r3, lr}
	mov r2, #1
	str r2, [sp]
	mov r1, #3
	lsl r2, r2, #0xb
	mov r3, #0x20
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065A58

	thumb_func_start sub_02065A6C
sub_02065A6C: ; 0x02065A6C
	push {r3, lr}
	mov r2, #2
	str r2, [sp]
	mov r1, #0
	lsl r2, r2, #0xb
	mov r3, #0x10
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065A6C

	thumb_func_start sub_02065A80
sub_02065A80: ; 0x02065A80
	push {r3, lr}
	mov r1, #2
	str r1, [sp]
	mov r1, #1
	lsl r2, r1, #0xc
	mov r3, #0x10
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065A80

	thumb_func_start sub_02065A94
sub_02065A94: ; 0x02065A94
	push {r3, lr}
	mov r1, #2
	lsl r2, r1, #0xb
	mov r3, #0x10
	str r1, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065A94

	thumb_func_start sub_02065AA8
sub_02065AA8: ; 0x02065AA8
	push {r3, lr}
	mov r2, #2
	str r2, [sp]
	mov r1, #3
	lsl r2, r2, #0xb
	mov r3, #0x10
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065AA8

	thumb_func_start sub_02065ABC
sub_02065ABC: ; 0x02065ABC
	push {r3, lr}
	mov r1, #3
	mov r2, #2
	str r1, [sp]
	mov r1, #0
	lsl r2, r2, #0xc
	mov r3, #8
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065ABC

	thumb_func_start sub_02065AD4
sub_02065AD4: ; 0x02065AD4
	push {r3, lr}
	mov r1, #3
	str r1, [sp]
	mov r1, #1
	lsl r2, r1, #0xd
	mov r3, #8
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065AD4

	thumb_func_start sub_02065AE8
sub_02065AE8: ; 0x02065AE8
	push {r3, lr}
	mov r1, #3
	str r1, [sp]
	mov r1, #2
	lsl r2, r1, #0xc
	mov r3, #8
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065AE8

	thumb_func_start sub_02065AFC
sub_02065AFC: ; 0x02065AFC
	push {r3, lr}
	mov r2, #2
	mov r1, #3
	lsl r2, r2, #0xc
	mov r3, #8
	str r1, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065AFC

	thumb_func_start sub_02065B10
sub_02065B10: ; 0x02065B10
	push {r3, lr}
	mov r3, #4
	mov r1, #0
	lsl r2, r3, #0xc
	str r3, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065B10

	thumb_func_start sub_02065B24
sub_02065B24: ; 0x02065B24
	push {r3, lr}
	mov r1, #1
	mov r3, #4
	lsl r2, r1, #0xe
	str r3, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065B24

	thumb_func_start sub_02065B38
sub_02065B38: ; 0x02065B38
	push {r3, lr}
	mov r1, #2
	mov r3, #4
	lsl r2, r1, #0xd
	str r3, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065B38

	thumb_func_start sub_02065B4C
sub_02065B4C: ; 0x02065B4C
	push {r3, lr}
	mov r3, #4
	mov r1, #3
	lsl r2, r3, #0xc
	str r3, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065B4C

	thumb_func_start sub_02065B60
sub_02065B60: ; 0x02065B60
	push {r3, lr}
	mov r1, #5
	mov r2, #2
	str r1, [sp]
	mov r1, #0
	lsl r2, r2, #0xe
	mov r3, #2
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065B60

	thumb_func_start sub_02065B78
sub_02065B78: ; 0x02065B78
	push {r3, lr}
	mov r1, #5
	str r1, [sp]
	mov r1, #1
	lsl r2, r1, #0xf
	mov r3, #2
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065B78

	thumb_func_start sub_02065B8C
sub_02065B8C: ; 0x02065B8C
	push {r3, lr}
	mov r1, #5
	str r1, [sp]
	mov r1, #2
	lsl r2, r1, #0xe
	add r3, r1, #0
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065B8C

	thumb_func_start sub_02065BA0
sub_02065BA0: ; 0x02065BA0
	push {r3, lr}
	mov r1, #5
	mov r2, #2
	str r1, [sp]
	mov r1, #3
	lsl r2, r2, #0xe
	mov r3, #2
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065BA0

	thumb_func_start sub_02065BB8
sub_02065BB8: ; 0x02065BB8
	push {r3, lr}
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0x10
	mov r3, #1
	str r1, [sp]
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065BB8

	thumb_func_start sub_02065BCC
sub_02065BCC: ; 0x02065BCC
	push {r3, lr}
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	lsl r2, r1, #0x10
	add r3, r1, #0
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065BCC

	thumb_func_start sub_02065BE0
sub_02065BE0: ; 0x02065BE0
	push {r3, lr}
	mov r1, #0
	str r1, [sp]
	mov r1, #2
	lsl r2, r1, #0xf
	mov r3, #1
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065BE0

	thumb_func_start sub_02065BF4
sub_02065BF4: ; 0x02065BF4
	push {r3, lr}
	mov r1, #0
	mov r2, #1
	str r1, [sp]
	mov r1, #3
	lsl r2, r2, #0x10
	mov r3, #1
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065BF4

	thumb_func_start sub_02065C0C
sub_02065C0C: ; 0x02065C0C
	push {r3, lr}
	mov r1, #9
	mov r2, #1
	str r1, [sp]
	mov r1, #0
	lsl r2, r2, #0xe
	mov r3, #4
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065C0C

	thumb_func_start sub_02065C24
sub_02065C24: ; 0x02065C24
	push {r3, lr}
	mov r1, #9
	str r1, [sp]
	mov r1, #1
	lsl r2, r1, #0xe
	mov r3, #4
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065C24

	thumb_func_start sub_02065C38
sub_02065C38: ; 0x02065C38
	push {r3, lr}
	mov r1, #9
	str r1, [sp]
	mov r1, #2
	lsl r2, r1, #0xd
	mov r3, #4
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065C38

	thumb_func_start sub_02065C4C
sub_02065C4C: ; 0x02065C4C
	push {r3, lr}
	mov r1, #9
	mov r2, #1
	str r1, [sp]
	mov r1, #3
	lsl r2, r2, #0xe
	mov r3, #4
	bl sub_02065980
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02065C4C

	thumb_func_start sub_02065C64
sub_02065C64: ; 0x02065C64
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	mov r1, #0xc
	add r5, r0, #0
	bl sub_02062AA4
	strh r4, [r0]
	add r1, r6, #1
	strh r1, [r0, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02062974
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	bl sub_02062BC8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02065C64

	thumb_func_start sub_02065C98
sub_02065C98: ; 0x02065C98
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AC8
	mov r1, #2
	ldrsh r2, [r0, r1]
	sub r2, r2, #1
	strh r2, [r0, #2]
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _02065CB2
	mov r0, #0
	pop {r4, pc}
_02065CB2:
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020628BC
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02065C98

	thumb_func_start sub_02065CCC
sub_02065CCC: ; 0x02065CCC
	push {r3, lr}
	mov r1, #0
	mov r2, #0x20
	mov r3, #1
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065CCC

	thumb_func_start sub_02065CDC
sub_02065CDC: ; 0x02065CDC
	push {r3, lr}
	mov r1, #1
	mov r2, #0x20
	add r3, r1, #0
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065CDC

	thumb_func_start sub_02065CEC
sub_02065CEC: ; 0x02065CEC
	push {r3, lr}
	mov r1, #2
	mov r2, #0x20
	mov r3, #1
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065CEC

	thumb_func_start sub_02065CFC
sub_02065CFC: ; 0x02065CFC
	push {r3, lr}
	mov r1, #3
	mov r2, #0x20
	mov r3, #1
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065CFC

	thumb_func_start sub_02065D0C
sub_02065D0C: ; 0x02065D0C
	push {r3, lr}
	mov r1, #0
	mov r2, #0x10
	mov r3, #2
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D0C

	thumb_func_start sub_02065D1C
sub_02065D1C: ; 0x02065D1C
	push {r3, lr}
	mov r1, #1
	mov r2, #0x10
	mov r3, #2
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D1C

	thumb_func_start sub_02065D2C
sub_02065D2C: ; 0x02065D2C
	push {r3, lr}
	mov r1, #2
	mov r2, #0x10
	add r3, r1, #0
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D2C

	thumb_func_start sub_02065D3C
sub_02065D3C: ; 0x02065D3C
	push {r3, lr}
	mov r1, #3
	mov r2, #0x10
	mov r3, #2
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D3C

	thumb_func_start sub_02065D4C
sub_02065D4C: ; 0x02065D4C
	push {r3, lr}
	mov r1, #0
	mov r2, #8
	mov r3, #3
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D4C

	thumb_func_start sub_02065D5C
sub_02065D5C: ; 0x02065D5C
	push {r3, lr}
	mov r1, #1
	mov r2, #8
	mov r3, #3
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D5C

	thumb_func_start sub_02065D6C
sub_02065D6C: ; 0x02065D6C
	push {r3, lr}
	mov r1, #2
	mov r2, #8
	mov r3, #3
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D6C

	thumb_func_start sub_02065D7C
sub_02065D7C: ; 0x02065D7C
	push {r3, lr}
	mov r1, #3
	mov r2, #8
	add r3, r1, #0
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D7C

	thumb_func_start sub_02065D8C
sub_02065D8C: ; 0x02065D8C
	push {r3, lr}
	mov r2, #4
	mov r1, #0
	add r3, r2, #0
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D8C

	thumb_func_start sub_02065D9C
sub_02065D9C: ; 0x02065D9C
	push {r3, lr}
	mov r2, #4
	mov r1, #1
	add r3, r2, #0
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065D9C

	thumb_func_start sub_02065DAC
sub_02065DAC: ; 0x02065DAC
	push {r3, lr}
	mov r2, #4
	mov r1, #2
	add r3, r2, #0
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065DAC

	thumb_func_start sub_02065DBC
sub_02065DBC: ; 0x02065DBC
	push {r3, lr}
	mov r2, #4
	mov r1, #3
	add r3, r2, #0
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065DBC

	thumb_func_start sub_02065DCC
sub_02065DCC: ; 0x02065DCC
	push {r3, lr}
	mov r1, #0
	mov r2, #2
	mov r3, #5
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065DCC

	thumb_func_start sub_02065DDC
sub_02065DDC: ; 0x02065DDC
	push {r3, lr}
	mov r1, #1
	mov r2, #2
	mov r3, #5
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065DDC

	thumb_func_start sub_02065DEC
sub_02065DEC: ; 0x02065DEC
	push {r3, lr}
	mov r1, #2
	add r2, r1, #0
	mov r3, #5
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065DEC

	thumb_func_start sub_02065DFC
sub_02065DFC: ; 0x02065DFC
	push {r3, lr}
	mov r1, #3
	mov r2, #2
	mov r3, #5
	bl sub_02065C64
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02065DFC

	thumb_func_start sub_02065E0C
sub_02065E0C: ; 0x02065E0C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x10
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02062AA4
	strb r4, [r0, #0xc]
	str r6, [r0, #0]
	strb r7, [r0, #0xd]
	add r2, sp, #8
	ldrh r1, [r2, #0x10]
	strb r1, [r0, #0xe]
	mov r1, #0x14
	ldrsh r1, [r2, r1]
	cmp r6, #0
	strb r1, [r0, #0xf]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #8]
	bne _02065E3E
	add r0, r5, #0
	bl sub_02064208
	b _02065E46
_02065E3E:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020641B4
_02065E46:
	ldr r1, _02065E78 ; =0x00010004
	add r0, r5, #0
	bl sub_020628BC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020629A0
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	add r0, r5, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062BC8
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _02065E74
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
_02065E74:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02065E78: .word 0x00010004
	thumb_func_end sub_02065E0C

	thumb_func_start sub_02065E7C
sub_02065E7C: ; 0x02065E7C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, sp, #0x10
	ldrh r4, [r5, #0x10]
	str r4, [sp]
	mov r4, #0x14
	ldrsh r4, [r5, r4]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x18]
	str r4, [sp, #8]
	ldr r4, _02065E9C ; =0x0000060B
	str r4, [sp, #0xc]
	bl sub_02065E0C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02065E9C: .word 0x0000060B
	thumb_func_end sub_02065E7C

	thumb_func_start sub_02065EA0
sub_02065EA0: ; 0x02065EA0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	ldr r2, [r4, #0]
	cmp r2, #0
	beq _02065EF0
	mov r1, #0xc
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_020642A4
	add r0, r5, #0
	bl sub_020642F8
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r0, #0x10
	cmp r1, r0
	blt _02065EE2
	mov r0, #0
	str r0, [r4, #4]
	mov r1, #0xc
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_020641B4
	add r0, r5, #0
	mov r1, #4
	bl sub_020628BC
_02065EE2:
	ldr r1, [r4, #0]
	cmp r1, #0
	bge _02065EEA
	neg r1, r1
_02065EEA:
	ldr r0, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #4]
_02065EF0:
	ldrh r1, [r4, #0xa]
	ldrh r0, [r4, #8]
	add r0, r1, r0
	strh r0, [r4, #0xa]
	mov r0, #0xf
	ldrh r1, [r4, #0xa]
	lsl r0, r0, #8
	cmp r1, r0
	bls _02065F04
	strh r0, [r4, #0xa]
_02065F04:
	mov r1, #0xf
	ldrsb r1, [r4, r1]
	ldrh r0, [r4, #0xa]
	lsl r2, r1, #2
	ldr r1, _02065F7C ; =0x02100B84
	lsr r0, r0, #8
	lsl r0, r0, #0x10
	ldr r2, [r1, r2]
	mov r1, #0
	str r1, [sp, #0xc]
	lsr r0, r0, #0xe
	ldr r0, [r2, r0]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_02063088
	mov r0, #0xd
	ldrsb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, #0xd]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _02065F3C
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_02065F3C:
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	bl sub_02063088
	ldr r1, _02065F80 ; =0x00020028
	add r0, r5, #0
	bl sub_020628BC
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	bl sub_02062B68
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062BC8
	ldr r0, _02065F84 ; =0x00000647
	bl sub_02005748
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02065F7C: .word 0x02100B84
_02065F80: .word 0x00020028
_02065F84: .word 0x00000647
	thumb_func_end sub_02065EA0

	thumb_func_start sub_02065F88
sub_02065F88: ; 0x02065F88
	push {lr}
	sub sp, #0xc
	mov r2, #2
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r2, #0xfe
	str r2, [sp, #8]
	add r2, r1, #0
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02065F88

	thumb_func_start sub_02065FA8
sub_02065FA8: ; 0x02065FA8
	push {lr}
	sub sp, #0xc
	mov r1, #2
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	add r1, #0xfe
	str r1, [sp, #8]
	mov r1, #1
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02065FA8

	thumb_func_start sub_02065FC8
sub_02065FC8: ; 0x02065FC8
	push {lr}
	sub sp, #0xc
	mov r1, #2
	add r3, r1, #0
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	add r3, #0xfe
	str r3, [sp, #8]
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02065FC8

	thumb_func_start sub_02065FE8
sub_02065FE8: ; 0x02065FE8
	push {lr}
	sub sp, #0xc
	mov r1, #2
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	add r1, #0xfe
	str r1, [sp, #8]
	mov r1, #3
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02065FE8

	thumb_func_start sub_02066008
sub_02066008: ; 0x02066008
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r1, #0
	mov r2, #2
	str r1, [sp, #4]
	lsl r2, r2, #8
	str r2, [sp, #8]
	add r2, r1, #0
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066008

	thumb_func_start sub_02066028
sub_02066028: ; 0x02066028
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r2, #0
	mov r1, #2
	str r2, [sp, #4]
	lsl r1, r1, #8
	str r1, [sp, #8]
	mov r1, #1
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066028

	thumb_func_start sub_02066048
sub_02066048: ; 0x02066048
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r2, #0
	mov r1, #2
	str r2, [sp, #4]
	lsl r1, r1, #8
	str r1, [sp, #8]
	mov r1, #2
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066048

	thumb_func_start sub_02066068
sub_02066068: ; 0x02066068
	push {lr}
	sub sp, #0xc
	mov r1, #3
	mov r3, #2
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	lsl r3, r3, #8
	str r3, [sp, #8]
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02066068

	thumb_func_start sub_02066088
sub_02066088: ; 0x02066088
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r1, #0
	mov r2, #2
	str r1, [sp, #4]
	lsl r2, r2, #8
	str r2, [sp, #8]
	lsl r2, r2, #4
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066088

	thumb_func_start sub_020660A8
sub_020660A8: ; 0x020660A8
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #2
	lsl r1, r1, #8
	str r1, [sp, #8]
	mov r1, #1
	lsl r2, r1, #0xd
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_020660A8

	thumb_func_start sub_020660CC
sub_020660CC: ; 0x020660CC
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #2
	lsl r1, r1, #8
	str r1, [sp, #8]
	mov r1, #2
	lsl r2, r1, #0xc
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_020660CC

	thumb_func_start sub_020660F0
sub_020660F0: ; 0x020660F0
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r2, #2
	lsl r2, r2, #8
	str r2, [sp, #8]
	lsl r2, r2, #4
	mov r3, #8
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_020660F0

	thumb_func_start sub_02066110
sub_02066110: ; 0x02066110
	push {lr}
	sub sp, #0xc
	mov r2, #3
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r2, #0xfd
	str r2, [sp, #8]
	mov r2, #2
	lsl r2, r2, #0xc
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066110

	thumb_func_start sub_02066130
sub_02066130: ; 0x02066130
	push {lr}
	sub sp, #0xc
	mov r2, #3
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r2, #0xfd
	mov r1, #1
	str r2, [sp, #8]
	lsl r2, r1, #0xd
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066130

	thumb_func_start sub_02066150
sub_02066150: ; 0x02066150
	push {lr}
	sub sp, #0xc
	mov r2, #3
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r2, #0xfd
	mov r1, #2
	str r2, [sp, #8]
	lsl r2, r1, #0xc
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066150

	thumb_func_start sub_02066170
sub_02066170: ; 0x02066170
	push {lr}
	sub sp, #0xc
	mov r1, #3
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	add r2, r1, #0
	add r2, #0xfd
	str r2, [sp, #8]
	mov r2, #2
	lsl r2, r2, #0xc
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02066170

	thumb_func_start sub_02066194
sub_02066194: ; 0x02066194
	push {lr}
	sub sp, #0xc
	mov r1, #9
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #0xf0
	str r1, [sp, #8]
	mov r1, #2
	lsl r2, r1, #0xb
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02066194

	thumb_func_start sub_020661B4
sub_020661B4: ; 0x020661B4
	push {lr}
	sub sp, #0xc
	mov r1, #9
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #0xf0
	mov r2, #1
	str r1, [sp, #8]
	mov r1, #3
	lsl r2, r2, #0xc
	mov r3, #0x10
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_020661B4

	thumb_func_start sub_020661D8
sub_020661D8: ; 0x020661D8
	push {lr}
	sub sp, #0xc
	mov r2, #0xa
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	lsl r1, r2, #5
	str r1, [sp, #8]
	mov r1, #2
	lsl r2, r1, #0xd
	mov r3, #0xc
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_020661D8

	thumb_func_start sub_020661F8
sub_020661F8: ; 0x020661F8
	push {lr}
	sub sp, #0xc
	mov r2, #0xa
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	lsl r1, r2, #5
	mov r2, #1
	str r1, [sp, #8]
	mov r1, #3
	lsl r2, r2, #0xe
	mov r3, #0xc
	bl sub_02065E7C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_020661F8

	thumb_func_start sub_0206621C
sub_0206621C: ; 0x0206621C
	push {r3, lr}
	sub sp, #0x10
	mov r1, #3
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r2, #0xa0
	str r2, [sp, #8]
	mov r2, #2
	lsl r2, r2, #0xc
	mov r3, #0x18
	str r1, [sp, #0xc]
	bl sub_02065E0C
	mov r0, #1
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206621C

	thumb_func_start sub_02066240
sub_02066240: ; 0x02066240
	push {r3, lr}
	sub sp, #0x10
	mov r1, #3
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r1, #0xa0
	str r1, [sp, #8]
	mov r1, #1
	str r2, [sp, #0xc]
	lsl r2, r1, #0xd
	mov r3, #0x18
	bl sub_02065E0C
	mov r0, #1
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02066240

	thumb_func_start sub_02066264
sub_02066264: ; 0x02066264
	push {r3, lr}
	sub sp, #0x10
	mov r1, #3
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r1, #0xa0
	str r1, [sp, #8]
	mov r1, #2
	str r2, [sp, #0xc]
	lsl r2, r1, #0xc
	mov r3, #0x18
	bl sub_02065E0C
	mov r0, #1
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02066264

	thumb_func_start sub_02066288
sub_02066288: ; 0x02066288
	push {r3, lr}
	sub sp, #0x10
	mov r1, #3
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	mov r2, #0xa0
	str r2, [sp, #8]
	mov r2, #2
	str r3, [sp, #0xc]
	lsl r2, r2, #0xc
	mov r3, #0x18
	bl sub_02065E0C
	mov r0, #1
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02066288

	thumb_func_start sub_020662AC
sub_020662AC: ; 0x020662AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #4
	bl sub_02062AA4
	str r4, [r0, #0]
	add r0, r5, #0
	bl sub_02062BC8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020662AC

	thumb_func_start sub_020662C4
sub_020662C4: ; 0x020662C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AC8
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _020662DA
	sub r1, r1, #1
	str r1, [r0, #0]
	mov r0, #0
	pop {r4, pc}
_020662DA:
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020662C4

	thumb_func_start sub_020662E4
sub_020662E4: ; 0x020662E4
	push {r3, lr}
	mov r1, #1
	bl sub_020662AC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020662E4

	thumb_func_start sub_020662F0
sub_020662F0: ; 0x020662F0
	push {r3, lr}
	mov r1, #2
	bl sub_020662AC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020662F0

	thumb_func_start sub_020662FC
sub_020662FC: ; 0x020662FC
	push {r3, lr}
	mov r1, #4
	bl sub_020662AC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020662FC

	thumb_func_start sub_02066308
sub_02066308: ; 0x02066308
	push {r3, lr}
	mov r1, #8
	bl sub_020662AC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066308

	thumb_func_start sub_02066314
sub_02066314: ; 0x02066314
	push {r3, lr}
	mov r1, #0xf
	bl sub_020662AC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066314

	thumb_func_start sub_02066320
sub_02066320: ; 0x02066320
	push {r3, lr}
	mov r1, #0x10
	bl sub_020662AC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066320

	thumb_func_start sub_0206632C
sub_0206632C: ; 0x0206632C
	push {r3, lr}
	mov r1, #0x20
	bl sub_020662AC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0206632C

	thumb_func_start sub_02066338
sub_02066338: ; 0x02066338
	push {r4, lr}
	mov r1, #8
	add r4, r0, #0
	bl sub_02062AA4
	mov r1, #1
	lsl r1, r1, #0x10
	str r1, [r0, #4]
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02066338

	thumb_func_start sub_0206635C
sub_0206635C: ; 0x0206635C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [r4, #0]
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r4, #0]
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063088
	ldr r1, [r4, #0]
	asr r0, r1, #0xe
	lsr r0, r0, #0x11
	add r0, r1, r0
	asr r0, r0, #0xf
	cmp r0, #0x28
	bge _02066398
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_02066398:
	add r0, r5, #0
	bl sub_02062BC8
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_0206635C

	thumb_func_start sub_020663A4
sub_020663A4: ; 0x020663A4
	push {r4, lr}
	mov r1, #8
	add r4, r0, #0
	bl sub_02062AA4
	mov r1, #5
	lsl r1, r1, #0x12
	str r1, [r0, #0]
	ldr r1, _020663CC ; =0xFFFF0000
	str r1, [r0, #4]
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	nop
_020663CC: .word 0xFFFF0000
	thumb_func_end sub_020663A4

	thumb_func_start sub_020663D0
sub_020663D0: ; 0x020663D0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [r4, #0]
	bpl _020663EA
	mov r0, #0
	str r0, [r4, #0]
_020663EA:
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r4, #0]
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063088
	ldr r0, [r4, #0]
	cmp r0, #0
	ble _0206640A
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_0206640A:
	add r0, r5, #0
	bl sub_02062BC8
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020663D0

	thumb_func_start sub_02066418
sub_02066418: ; 0x02066418
	push {r4, lr}
	mov r1, #2
	add r4, r0, #0
	lsl r1, r1, #8
	bl sub_020628BC
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02066418

	thumb_func_start sub_02066430
sub_02066430: ; 0x02066430
	push {r4, lr}
	mov r1, #2
	add r4, r0, #0
	lsl r1, r1, #8
	bl sub_020628C4
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02066430

	thumb_func_start sub_02066448
sub_02066448: ; 0x02066448
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x80
	bl sub_020628BC
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02066448

	thumb_func_start sub_0206645C
sub_0206645C: ; 0x0206645C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x80
	bl sub_020628C4
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0206645C

	thumb_func_start sub_02066470
sub_02066470: ; 0x02066470
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	lsl r1, r1, #8
	bl sub_020628BC
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02066470

	thumb_func_start sub_02066488
sub_02066488: ; 0x02066488
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	lsl r1, r1, #8
	bl sub_020628C4
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02066488

	thumb_func_start sub_020664A0
sub_020664A0: ; 0x020664A0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #8
	add r5, r0, #0
	add r7, r2, #0
	bl sub_02062AA4
	add r4, r0, #0
	str r6, [r4, #0]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	add r3, r7, #0
	bl ov5_021F5D8C
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02062BC8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020664A0

	thumb_func_start sub_020664C8
sub_020664C8: ; 0x020664C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov5_021F5C4C
	cmp r0, #1
	bne _020664EC
	ldr r0, [r4, #4]
	bl sub_0207136C
	add r0, r5, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r3, r4, r5, pc}
_020664EC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020664C8

	thumb_func_start sub_020664F0
sub_020664F0: ; 0x020664F0
	push {r3, lr}
	mov r1, #0
	add r2, r1, #0
	bl sub_020664A0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020664F0

	thumb_func_start sub_02066500
sub_02066500: ; 0x02066500
	push {r3, lr}
	mov r1, #1
	mov r2, #0
	bl sub_020664A0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02066500

	thumb_func_start sub_02066510
sub_02066510: ; 0x02066510
	push {r3, lr}
	mov r1, #0
	mov r2, #1
	bl sub_020664A0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02066510

	thumb_func_start sub_02066520
sub_02066520: ; 0x02066520
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #8
	add r5, r0, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_02062AA4
	strh r4, [r0]
	strh r6, [r0, #2]
	strh r7, [r0, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020641B4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020629A0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02062A0C
	add r0, r5, #0
	mov r1, #4
	bl sub_020628BC
	add r0, r5, #0
	bl sub_02062BC8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02066520

	thumb_func_start sub_02066560
sub_02066560: ; 0x02066560
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02062AC8
	add r4, r0, #0
	mov r2, #6
	ldrsh r2, [r4, r2]
	mov r1, #0
	ldrsh r1, [r4, r1]
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	add r0, r5, #0
	bl sub_020642A4
	add r0, r5, #0
	bl sub_020642F8
	mov r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r1, [r4, r0]
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r1, r0
	bge _0206659A
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206659A:
	add r0, r5, #0
	mov r1, #0x28
	bl sub_020628BC
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	bl sub_02062B68
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02066560

	thumb_func_start sub_020665C0
sub_020665C0: ; 0x020665C0
	push {r3, lr}
	mov r2, #6
	mov r1, #0
	add r3, r2, #0
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020665C0

	thumb_func_start sub_020665D0
sub_020665D0: ; 0x020665D0
	push {r3, lr}
	mov r2, #6
	mov r1, #1
	add r3, r2, #0
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020665D0

	thumb_func_start sub_020665E0
sub_020665E0: ; 0x020665E0
	push {r3, lr}
	mov r2, #6
	mov r1, #2
	add r3, r2, #0
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020665E0

	thumb_func_start sub_020665F0
sub_020665F0: ; 0x020665F0
	push {r3, lr}
	mov r2, #6
	mov r1, #3
	add r3, r2, #0
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020665F0

	thumb_func_start sub_02066600
sub_02066600: ; 0x02066600
	push {r3, lr}
	ldr r1, _02066614 ; =0x020EEE6C
	bl sub_02066560
	cmp r0, #1
	bne _02066610
	mov r0, #1
	pop {r3, pc}
_02066610:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02066614: .word 0x020EEE6C
	thumb_func_end sub_02066600

	thumb_func_start sub_02066618
sub_02066618: ; 0x02066618
	push {r3, lr}
	mov r1, #0
	mov r2, #3
	mov r3, #7
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066618

	thumb_func_start sub_02066628
sub_02066628: ; 0x02066628
	push {r3, lr}
	mov r1, #1
	mov r2, #3
	mov r3, #7
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066628

	thumb_func_start sub_02066638
sub_02066638: ; 0x02066638
	push {r3, lr}
	mov r1, #2
	mov r2, #3
	mov r3, #7
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066638

	thumb_func_start sub_02066648
sub_02066648: ; 0x02066648
	push {r3, lr}
	mov r1, #3
	add r2, r1, #0
	mov r3, #7
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066648

	thumb_func_start sub_02066658
sub_02066658: ; 0x02066658
	push {r3, lr}
	ldr r1, _0206666C ; =0x020EECEC
	bl sub_02066560
	cmp r0, #1
	bne _02066668
	mov r0, #1
	pop {r3, pc}
_02066668:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0206666C: .word 0x020EECEC
	thumb_func_end sub_02066658

	thumb_func_start sub_02066670
sub_02066670: ; 0x02066670
	push {r3, lr}
	mov r1, #0
	mov r2, #7
	mov r3, #8
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066670

	thumb_func_start sub_02066680
sub_02066680: ; 0x02066680
	push {r3, lr}
	mov r1, #1
	mov r2, #7
	mov r3, #8
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066680

	thumb_func_start sub_02066690
sub_02066690: ; 0x02066690
	push {r3, lr}
	mov r1, #2
	mov r2, #7
	mov r3, #8
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02066690

	thumb_func_start sub_020666A0
sub_020666A0: ; 0x020666A0
	push {r3, lr}
	mov r1, #3
	mov r2, #7
	mov r3, #8
	bl sub_02066520
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020666A0

	thumb_func_start sub_020666B0
sub_020666B0: ; 0x020666B0
	push {r3, lr}
	ldr r1, _020666C4 ; =0x020EEE84
	bl sub_02066560
	cmp r0, #1
	bne _020666C0
	mov r0, #1
	pop {r3, pc}
_020666C0:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_020666C4: .word 0x020EEE84
	thumb_func_end sub_020666B0

	thumb_func_start sub_020666C8
sub_020666C8: ; 0x020666C8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl sub_02062AA4
	add r0, r4, #0
	mov r1, #9
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020666C8

	thumb_func_start sub_020666E4
sub_020666E4: ; 0x020666E4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AC8
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	cmp r1, #8
	blt _0206670C
	add r0, r4, #0
	mov r1, #1
	bl sub_02062974
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062BC8
_0206670C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020666E4

	thumb_func_start sub_02066710
sub_02066710: ; 0x02066710
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r1, #4
	bl sub_02062AA4
	add r0, r4, #0
	bl sub_0206A224
	cmp r0, #0
	beq _0206672A
	bl sub_0207136C
_0206672A:
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	bl sub_02063088
	add r0, r4, #0
	bl ov5_021F3F10
	ldr r1, _02066760 ; =0x00010004
	add r0, r4, #0
	bl sub_020628BC
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0x14
	bl sub_020628C4
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02066760: .word 0x00010004
	thumb_func_end sub_02066710

	thumb_func_start sub_02066764
sub_02066764: ; 0x02066764
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	ldr r0, _020667C4 ; =0x02100B84
	add r1, sp, #0
	ldr r2, [r0, #0]
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063088
	ldr r0, [r4, #0]
	add r0, r0, #2
	str r0, [r4, #0]
	cmp r0, #0x10
	bhs _0206679C
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_0206679C:
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02063088
	ldr r1, _020667C8 ; =0x00020028
	add r0, r5, #0
	bl sub_020628BC
	add r0, r5, #0
	bl sub_0206A230
	add r0, r5, #0
	bl sub_02062BC8
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_020667C4: .word 0x02100B84
_020667C8: .word 0x00020028
	thumb_func_end sub_02066764

	thumb_func_start sub_020667CC
sub_020667CC: ; 0x020667CC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl sub_02062AA4
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020667CC

	thumb_func_start sub_020667E8
sub_020667E8: ; 0x020667E8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl sub_02062AA4
	add r0, r4, #0
	mov r1, #1
	bl sub_02062A0C
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020667E8

	thumb_func_start sub_02066804
sub_02066804: ; 0x02066804
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AC8
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	cmp r1, #0x15
	bhs _0206681A
	mov r0, #0
	pop {r4, pc}
_0206681A:
	add r0, r4, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02066804

	thumb_func_start sub_02066824
sub_02066824: ; 0x02066824
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x10
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02062AA4
	ldr r1, [sp, #0x18]
	add r3, r4, #0
	str r1, [r0, #0]
	add r2, r0, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r6, #0
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_02062974
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02062994
	add r1, sp, #8
	ldrb r1, [r1, #0x14]
	add r0, r5, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062D28
	add r0, r5, #0
	bl sub_02063020
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206300C
	add r0, r5, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02063014
	add r0, r5, #0
	bl sub_02063040
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206301C
	ldr r0, [r4, #0]
	cmp r0, #0
	bge _020668A0
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl sub_02063028
	b _020668AA
_020668A0:
	ble _020668AA
	add r0, r5, #0
	mov r1, #1
	bl sub_02063028
_020668AA:
	ldr r0, [r4, #4]
	cmp r0, #0
	bge _020668BC
	mov r1, #1
	add r0, r5, #0
	mvn r1, r1
	bl sub_02063038
	b _020668C6
_020668BC:
	ble _020668C6
	add r0, r5, #0
	mov r1, #2
	bl sub_02063038
_020668C6:
	ldr r0, [r4, #8]
	cmp r0, #0
	bge _020668D8
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl sub_02063048
	b _020668E2
_020668D8:
	ble _020668E2
	add r0, r5, #0
	mov r1, #1
	bl sub_02063048
_020668E2:
	add r0, r5, #0
	bl sub_02062BC8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02066824

	thumb_func_start sub_020668EC
sub_020668EC: ; 0x020668EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #4
	bl sub_02064270
	ldr r0, [r4, #0]
	sub r0, r0, #1
	str r0, [r4, #0]
	cmp r0, #0
	ble _0206690C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206690C:
	add r0, r5, #0
	mov r1, #0x28
	bl sub_020628BC
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	bl sub_02062B68
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062BC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020668EC

	thumb_func_start sub_02066934
sub_02066934: ; 0x02066934
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066964 ; =0x020EECC8
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #2
	mov r3, #0
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066964: .word 0x020EECC8
	thumb_func_end sub_02066934

	thumb_func_start sub_02066968
sub_02066968: ; 0x02066968
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066994 ; =0x020EECD4
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r2, sp, #8
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	mov r0, #8
	str r0, [sp]
	mov r2, #3
	add r0, r3, #0
	mov r3, #1
	str r2, [sp, #4]
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066994: .word 0x020EECD4
	thumb_func_end sub_02066968

	thumb_func_start sub_02066998
sub_02066998: ; 0x02066998
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _020669C8 ; =0x020EED4C
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_020669C8: .word 0x020EED4C
	thumb_func_end sub_02066998

	thumb_func_start sub_020669CC
sub_020669CC: ; 0x020669CC
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _020669F8 ; =0x020EECE0
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #8
	add r4, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	mov r0, #8
	str r0, [sp]
	mov r3, #3
	add r0, r2, #0
	mov r2, #0
	str r3, [sp, #4]
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_020669F8: .word 0x020EECE0
	thumb_func_end sub_020669CC

	thumb_func_start sub_020669FC
sub_020669FC: ; 0x020669FC
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066A28 ; =0x020EEE48
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r2, sp, #8
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	mov r0, #8
	str r0, [sp]
	mov r2, #3
	add r0, r3, #0
	mov r3, #0
	str r2, [sp, #4]
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066A28: .word 0x020EEE48
	thumb_func_end sub_020669FC

	thumb_func_start sub_02066A2C
sub_02066A2C: ; 0x02066A2C
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066A5C ; =0x020EEE3C
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #2
	mov r3, #1
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066A5C: .word 0x020EEE3C
	thumb_func_end sub_02066A2C

	thumb_func_start sub_02066A60
sub_02066A60: ; 0x02066A60
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066A90 ; =0x020EEE30
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066A90: .word 0x020EEE30
	thumb_func_end sub_02066A60

	thumb_func_start sub_02066A94
sub_02066A94: ; 0x02066A94
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066AC4 ; =0x020EEE24
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066AC4: .word 0x020EEE24
	thumb_func_end sub_02066A94

	thumb_func_start sub_02066AC8
sub_02066AC8: ; 0x02066AC8
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066AF8 ; =0x020EEE18
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #0
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066AF8: .word 0x020EEE18
	thumb_func_end sub_02066AC8

	thumb_func_start sub_02066AFC
sub_02066AFC: ; 0x02066AFC
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066B2C ; =0x020EEE0C
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0
	mov r3, #1
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066B2C: .word 0x020EEE0C
	thumb_func_end sub_02066AFC

	thumb_func_start sub_02066B30
sub_02066B30: ; 0x02066B30
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066B5C ; =0x020EEE00
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r2, sp, #8
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	mov r0, #8
	str r0, [sp]
	mov r2, #3
	add r0, r3, #0
	mov r3, #2
	str r2, [sp, #4]
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066B5C: .word 0x020EEE00
	thumb_func_end sub_02066B30

	thumb_func_start sub_02066B60
sub_02066B60: ; 0x02066B60
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066B8C ; =0x020EEDF4
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #8
	add r4, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	mov r0, #8
	str r0, [sp]
	mov r3, #3
	add r0, r2, #0
	mov r2, #2
	str r3, [sp, #4]
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066B8C: .word 0x020EEDF4
	thumb_func_end sub_02066B60

	thumb_func_start sub_02066B90
sub_02066B90: ; 0x02066B90
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066BBC ; =0x020EEDE8
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #0
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066BBC: .word 0x020EEDE8
	thumb_func_end sub_02066B90

	thumb_func_start sub_02066BC0
sub_02066BC0: ; 0x02066BC0
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066BEC ; =0x020EEDDC
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0
	mov r3, #1
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066BEC: .word 0x020EEDDC
	thumb_func_end sub_02066BC0

	thumb_func_start sub_02066BF0
sub_02066BF0: ; 0x02066BF0
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066C1C ; =0x020EEDD0
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #3
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066C1C: .word 0x020EEDD0
	thumb_func_end sub_02066BF0

	thumb_func_start sub_02066C20
sub_02066C20: ; 0x02066C20
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066C4C ; =0x020EEDC4
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #2
	mov r3, #3
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066C4C: .word 0x020EEDC4
	thumb_func_end sub_02066C20

	thumb_func_start sub_02066C50
sub_02066C50: ; 0x02066C50
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066C80 ; =0x020EEDB8
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #2
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #0
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066C80: .word 0x020EEDB8
	thumb_func_end sub_02066C50

	thumb_func_start sub_02066C84
sub_02066C84: ; 0x02066C84
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066CB4 ; =0x020EEDAC
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #2
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0
	mov r3, #1
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066CB4: .word 0x020EEDAC
	thumb_func_end sub_02066C84

	thumb_func_start sub_02066CB8
sub_02066CB8: ; 0x02066CB8
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066CE4 ; =0x020EEDA0
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #8
	add r4, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	mov r3, #2
	str r3, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #3
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066CE4: .word 0x020EEDA0
	thumb_func_end sub_02066CB8

	thumb_func_start sub_02066CE8
sub_02066CE8: ; 0x02066CE8
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066D14 ; =0x020EED94
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r2, sp, #8
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	mov r2, #2
	str r2, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r3, #0
	mov r3, #3
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02066D14: .word 0x020EED94
	thumb_func_end sub_02066CE8

	thumb_func_start sub_02066D18
sub_02066D18: ; 0x02066D18
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066D48 ; =0x020EED88
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #2
	mov r3, #0
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066D48: .word 0x020EED88
	thumb_func_end sub_02066D18

	thumb_func_start sub_02066D4C
sub_02066D4C: ; 0x02066D4C
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066D7C ; =0x020EED7C
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #3
	mov r3, #1
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066D7C: .word 0x020EED7C
	thumb_func_end sub_02066D4C

	thumb_func_start sub_02066D80
sub_02066D80: ; 0x02066D80
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066DB0 ; =0x020EED70
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066DB0: .word 0x020EED70
	thumb_func_end sub_02066D80

	thumb_func_start sub_02066DB4
sub_02066DB4: ; 0x02066DB4
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066DE4 ; =0x020EED64
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0
	mov r3, #3
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066DE4: .word 0x020EED64
	thumb_func_end sub_02066DB4

	thumb_func_start sub_02066DE8
sub_02066DE8: ; 0x02066DE8
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066E18 ; =0x020EED58
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #3
	mov r3, #0
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066E18: .word 0x020EED58
	thumb_func_end sub_02066DE8

	thumb_func_start sub_02066E1C
sub_02066E1C: ; 0x02066E1C
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066E4C ; =0x020EED1C
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #2
	mov r3, #1
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066E4C: .word 0x020EED1C
	thumb_func_end sub_02066E1C

	thumb_func_start sub_02066E50
sub_02066E50: ; 0x02066E50
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066E80 ; =0x020EED40
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066E80: .word 0x020EED40
	thumb_func_end sub_02066E50

	thumb_func_start sub_02066E84
sub_02066E84: ; 0x02066E84
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066EB4 ; =0x020EED10
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066EB4: .word 0x020EED10
	thumb_func_end sub_02066E84

	thumb_func_start sub_02066EB8
sub_02066EB8: ; 0x02066EB8
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066EE8 ; =0x020EED34
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #1
	mov r3, #0
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066EE8: .word 0x020EED34
	thumb_func_end sub_02066EB8

	thumb_func_start sub_02066EEC
sub_02066EEC: ; 0x02066EEC
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066F1C ; =0x020EED04
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #0
	mov r3, #1
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066F1C: .word 0x020EED04
	thumb_func_end sub_02066EEC

	thumb_func_start sub_02066F20
sub_02066F20: ; 0x02066F20
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066F50 ; =0x020EED28
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #3
	mov r3, #2
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066F50: .word 0x020EED28
	thumb_func_end sub_02066F20

	thumb_func_start sub_02066F54
sub_02066F54: ; 0x02066F54
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02066F84 ; =0x020EECF8
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #8
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r3, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r2, #0
	mov r2, #2
	mov r3, #3
	bl sub_02066824
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02066F84: .word 0x020EECF8
	thumb_func_end sub_02066F54

	thumb_func_start sub_02066F88
sub_02066F88: ; 0x02066F88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0x10
	add r5, r0, #0
	str r2, [sp]
	str r3, [sp, #4]
	mov r7, #1
	bl sub_02062AA4
	add r6, r0, #0
	add r0, sp, #0x10
	ldrb r1, [r0, #0x10]
	strb r1, [r6]
	str r4, [r6, #4]
	ldrb r1, [r0, #0x18]
	strb r1, [r6, #2]
	ldrb r0, [r0, #0x1c]
	strb r0, [r6, #1]
	add r0, sp, #0x30
	ldrb r0, [r0]
	strb r0, [r6, #3]
	ldrb r1, [r6]
	lsl r0, r7, #0xc
	bl _s32_div_f
	strh r0, [r6, #0xe]
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02062974
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_02062994
	add r1, sp, #0x10
	ldrb r1, [r1, #0x14]
	add r0, r5, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062D28
	add r0, r5, #0
	bl sub_02063020
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206300C
	add r0, r5, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02063014
	add r0, r5, #0
	bl sub_02063040
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206301C
	add r0, sp, #0x10
	ldrb r0, [r0, #0x18]
	cmp r0, #2
	bls _02067014
	bl GF_AssertFail
_02067014:
	cmp r4, #0
	beq _0206705E
	add r0, sp, #0x10
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _0206702A
	cmp r0, #1
	beq _0206703C
	cmp r0, #2
	beq _0206704E
	b _0206705E
_0206702A:
	cmp r4, #0
	bge _02067032
	mov r7, #0
	mvn r7, r7
_02067032:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02063028
	b _0206705E
_0206703C:
	cmp r4, #0
	bge _02067044
	mov r7, #0
	mvn r7, r7
_02067044:
	add r0, r5, #0
	lsl r1, r7, #1
	bl sub_02063038
	b _0206705E
_0206704E:
	cmp r4, #0
	bge _02067056
	mov r7, #0
	mvn r7, r7
_02067056:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02063048
_0206705E:
	add r0, r5, #0
	bl sub_02062BC8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02066F88

	thumb_func_start sub_02067068
sub_02067068: ; 0x02067068
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl sub_02062AC8
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0x18
	bl sub_02063050
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0206708C
	cmp r0, #1
	beq _02067096
	cmp r0, #2
	beq _020670A0
	b _020670A8
_0206708C:
	ldr r1, [sp, #0x18]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [sp, #0x18]
	b _020670A8
_02067096:
	ldr r1, [sp, #0x1c]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [sp, #0x1c]
	b _020670A8
_020670A0:
	ldr r1, [sp, #0x20]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [sp, #0x20]
_020670A8:
	add r0, r5, #0
	add r1, sp, #0x18
	bl sub_02063060
	ldr r1, [r4, #4]
	cmp r1, #0
	bge _020670B8
	neg r1, r1
_020670B8:
	ldr r0, [r4, #8]
	add r0, r0, r1
	str r0, [r4, #8]
	ldrh r1, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	add r0, r1, r0
	strh r0, [r4, #0xc]
	mov r0, #0xf
	ldrh r1, [r4, #0xc]
	lsl r0, r0, #8
	cmp r1, r0
	bls _020670D2
	strh r0, [r4, #0xc]
_020670D2:
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, _020671E4 ; =0x02100B84
	ldr r1, [r0, #4]
	ldrh r0, [r4, #0xc]
	lsr r0, r0, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0xe
	ldr r1, [r1, r0]
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _020670F2
	neg r1, r1
_020670F2:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02067102
	cmp r0, #1
	beq _02067106
	cmp r0, #2
	beq _0206710A
	b _0206710C
_02067102:
	str r1, [sp, #0xc]
	b _0206710C
_02067106:
	str r1, [sp, #0x10]
	b _0206710C
_0206710A:
	str r1, [sp, #0x14]
_0206710C:
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_02063088
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	mov r0, #1
	ldr r2, [r4, #8]
	lsl r0, r0, #0x10
	cmp r2, r0
	blt _0206719A
	ldrb r1, [r4]
	cmp r1, #0
	beq _0206719A
	sub r0, r2, r0
	str r0, [r4, #8]
	add r0, r5, #0
	mov r6, #1
	ldr r7, [r4, #4]
	bl sub_02063020
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206300C
	add r0, r5, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02063014
	add r0, r5, #0
	bl sub_02063040
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206301C
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0206716C
	cmp r0, #1
	beq _0206717C
	cmp r0, #2
	beq _0206718C
	b _0206719A
_0206716C:
	cmp r7, #0
	bge _02067172
	sub r6, r6, #2
_02067172:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02063028
	b _0206719A
_0206717C:
	cmp r7, #0
	bge _02067182
	sub r6, r6, #2
_02067182:
	add r0, r5, #0
	lsl r1, r6, #1
	bl sub_02063038
	b _0206719A
_0206718C:
	cmp r7, #0
	bge _02067192
	sub r6, r6, #2
_02067192:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02063048
_0206719A:
	ldrb r0, [r4]
	cmp r0, #0
	beq _020671A6
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_020671A6:
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	bl sub_02063088
	ldr r1, _020671E8 ; =0x00020028
	add r0, r5, #0
	bl sub_020628BC
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	bl sub_02062B68
	add r0, r5, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	bl sub_02062BC8
	ldr r0, _020671EC ; =0x00000647
	bl sub_02005748
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020671E4: .word 0x02100B84
_020671E8: .word 0x00020028
_020671EC: .word 0x00000647
	thumb_func_end sub_02067068

	thumb_func_start sub_020671F0
sub_020671F0: ; 0x020671F0
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #0
	lsl r1, r1, #0xd
	mov r2, #2
	str r3, [sp, #0x10]
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_020671F0

	thumb_func_start sub_02067214
sub_02067214: ; 0x02067214
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r2, #3
	str r2, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	ldr r1, _02067238 ; =0xFFFFE000
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	nop
_02067238: .word 0xFFFFE000
	thumb_func_end sub_02067214

	thumb_func_start sub_0206723C
sub_0206723C: ; 0x0206723C
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	lsl r1, r2, #0xd
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_0206723C

	thumb_func_start sub_02067260
sub_02067260: ; 0x02067260
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r3, #3
	str r3, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	mov r2, #0
	ldr r1, _02067284 ; =0xFFFFE000
	str r2, [sp, #0x10]
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	; .align 2, 0
_02067284: .word 0xFFFFE000
	thumb_func_end sub_02067260

	thumb_func_start sub_02067288
sub_02067288: ; 0x02067288
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r2, #3
	str r2, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #0
	lsl r1, r1, #0xd
	str r3, [sp, #0x10]
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02067288

	thumb_func_start sub_020672AC
sub_020672AC: ; 0x020672AC
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	ldr r1, _020672D0 ; =0xFFFFE000
	mov r2, #2
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	; .align 2, 0
_020672D0: .word 0xFFFFE000
	thumb_func_end sub_020672AC

	thumb_func_start sub_020672D4
sub_020672D4: ; 0x020672D4
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	mov r2, #0
	ldr r1, _020672F8 ; =0xFFFFE000
	str r2, [sp, #0x10]
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	; .align 2, 0
_020672F8: .word 0xFFFFE000
	thumb_func_end sub_020672D4

	thumb_func_start sub_020672FC
sub_020672FC: ; 0x020672FC
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	lsl r1, r2, #0xd
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_020672FC

	thumb_func_start sub_02067320
sub_02067320: ; 0x02067320
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	mov r3, #0
	lsl r1, r2, #0xd
	str r3, [sp, #0x10]
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_02067320

	thumb_func_start sub_02067344
sub_02067344: ; 0x02067344
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	mov r3, #1
	ldr r1, _02067368 ; =0xFFFFE000
	str r3, [sp, #0xc]
	mov r2, #0
	str r2, [sp, #0x10]
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	; .align 2, 0
_02067368: .word 0xFFFFE000
	thumb_func_end sub_02067344

	thumb_func_start sub_0206736C
sub_0206736C: ; 0x0206736C
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r2, #3
	str r2, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r1, _02067390 ; =0xFFFFE000
	mov r3, #2
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	; .align 2, 0
_02067390: .word 0xFFFFE000
	thumb_func_end sub_0206736C

	thumb_func_start sub_02067394
sub_02067394: ; 0x02067394
	push {lr}
	sub sp, #0x14
	mov r1, #8
	str r1, [sp]
	mov r3, #3
	str r3, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	lsl r1, r1, #0xd
	mov r2, #2
	bl sub_02066F88
	mov r0, #1
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_02067394

	.rodata


	.global Unk_020EEC48
Unk_020EEC48: ; 0x020EEC48
	.incbin "incbin/arm9_rodata.bin", 0xA008, 0xA010 - 0xA008

	.global Unk_020EEC50
Unk_020EEC50: ; 0x020EEC50
	.incbin "incbin/arm9_rodata.bin", 0xA010, 0xA018 - 0xA010

	.global Unk_020EEC58
Unk_020EEC58: ; 0x020EEC58
	.incbin "incbin/arm9_rodata.bin", 0xA018, 0xA020 - 0xA018

	.global Unk_020EEC60
Unk_020EEC60: ; 0x020EEC60
	.incbin "incbin/arm9_rodata.bin", 0xA020, 0xA028 - 0xA020

	.global Unk_020EEC68
Unk_020EEC68: ; 0x020EEC68
	.incbin "incbin/arm9_rodata.bin", 0xA028, 0xA030 - 0xA028

	.global Unk_020EEC70
Unk_020EEC70: ; 0x020EEC70
	.incbin "incbin/arm9_rodata.bin", 0xA030, 0xA038 - 0xA030

	.global Unk_020EEC78
Unk_020EEC78: ; 0x020EEC78
	.incbin "incbin/arm9_rodata.bin", 0xA038, 0xA040 - 0xA038

	.global Unk_020EEC80
Unk_020EEC80: ; 0x020EEC80
	.incbin "incbin/arm9_rodata.bin", 0xA040, 0xA048 - 0xA040

	.global Unk_020EEC88
Unk_020EEC88: ; 0x020EEC88
	.incbin "incbin/arm9_rodata.bin", 0xA048, 0xA050 - 0xA048

	.global Unk_020EEC90
Unk_020EEC90: ; 0x020EEC90
	.incbin "incbin/arm9_rodata.bin", 0xA050, 0xA058 - 0xA050

	.global Unk_020EEC98
Unk_020EEC98: ; 0x020EEC98
	.incbin "incbin/arm9_rodata.bin", 0xA058, 0xA064 - 0xA058

	.global Unk_020EECA4
Unk_020EECA4: ; 0x020EECA4
	.incbin "incbin/arm9_rodata.bin", 0xA064, 0xA070 - 0xA064

	.global Unk_020EECB0
Unk_020EECB0: ; 0x020EECB0
	.incbin "incbin/arm9_rodata.bin", 0xA070, 0xA07C - 0xA070

	.global Unk_020EECBC
Unk_020EECBC: ; 0x020EECBC
	.incbin "incbin/arm9_rodata.bin", 0xA07C, 0xA088 - 0xA07C

	.global Unk_020EECC8
Unk_020EECC8: ; 0x020EECC8
	.incbin "incbin/arm9_rodata.bin", 0xA088, 0xA094 - 0xA088

	.global Unk_020EECD4
Unk_020EECD4: ; 0x020EECD4
	.incbin "incbin/arm9_rodata.bin", 0xA094, 0xA0A0 - 0xA094

	.global Unk_020EECE0
Unk_020EECE0: ; 0x020EECE0
	.incbin "incbin/arm9_rodata.bin", 0xA0A0, 0xA0AC - 0xA0A0

	.global Unk_020EECEC
Unk_020EECEC: ; 0x020EECEC
	.incbin "incbin/arm9_rodata.bin", 0xA0AC, 0xA0B8 - 0xA0AC

	.global Unk_020EECF8
Unk_020EECF8: ; 0x020EECF8
	.incbin "incbin/arm9_rodata.bin", 0xA0B8, 0xA0C4 - 0xA0B8

	.global Unk_020EED04
Unk_020EED04: ; 0x020EED04
	.incbin "incbin/arm9_rodata.bin", 0xA0C4, 0xA0D0 - 0xA0C4

	.global Unk_020EED10
Unk_020EED10: ; 0x020EED10
	.incbin "incbin/arm9_rodata.bin", 0xA0D0, 0xA0DC - 0xA0D0

	.global Unk_020EED1C
Unk_020EED1C: ; 0x020EED1C
	.incbin "incbin/arm9_rodata.bin", 0xA0DC, 0xA0E8 - 0xA0DC

	.global Unk_020EED28
Unk_020EED28: ; 0x020EED28
	.incbin "incbin/arm9_rodata.bin", 0xA0E8, 0xA0F4 - 0xA0E8

	.global Unk_020EED34
Unk_020EED34: ; 0x020EED34
	.incbin "incbin/arm9_rodata.bin", 0xA0F4, 0xA100 - 0xA0F4

	.global Unk_020EED40
Unk_020EED40: ; 0x020EED40
	.incbin "incbin/arm9_rodata.bin", 0xA100, 0xA10C - 0xA100

	.global Unk_020EED4C
Unk_020EED4C: ; 0x020EED4C
	.incbin "incbin/arm9_rodata.bin", 0xA10C, 0xA118 - 0xA10C

	.global Unk_020EED58
Unk_020EED58: ; 0x020EED58
	.incbin "incbin/arm9_rodata.bin", 0xA118, 0xA124 - 0xA118

	.global Unk_020EED64
Unk_020EED64: ; 0x020EED64
	.incbin "incbin/arm9_rodata.bin", 0xA124, 0xA130 - 0xA124

	.global Unk_020EED70
Unk_020EED70: ; 0x020EED70
	.incbin "incbin/arm9_rodata.bin", 0xA130, 0xA13C - 0xA130

	.global Unk_020EED7C
Unk_020EED7C: ; 0x020EED7C
	.incbin "incbin/arm9_rodata.bin", 0xA13C, 0xA148 - 0xA13C

	.global Unk_020EED88
Unk_020EED88: ; 0x020EED88
	.incbin "incbin/arm9_rodata.bin", 0xA148, 0xA154 - 0xA148

	.global Unk_020EED94
Unk_020EED94: ; 0x020EED94
	.incbin "incbin/arm9_rodata.bin", 0xA154, 0xA160 - 0xA154

	.global Unk_020EEDA0
Unk_020EEDA0: ; 0x020EEDA0
	.incbin "incbin/arm9_rodata.bin", 0xA160, 0xA16C - 0xA160

	.global Unk_020EEDAC
Unk_020EEDAC: ; 0x020EEDAC
	.incbin "incbin/arm9_rodata.bin", 0xA16C, 0xA178 - 0xA16C

	.global Unk_020EEDB8
Unk_020EEDB8: ; 0x020EEDB8
	.incbin "incbin/arm9_rodata.bin", 0xA178, 0xA184 - 0xA178

	.global Unk_020EEDC4
Unk_020EEDC4: ; 0x020EEDC4
	.incbin "incbin/arm9_rodata.bin", 0xA184, 0xA190 - 0xA184

	.global Unk_020EEDD0
Unk_020EEDD0: ; 0x020EEDD0
	.incbin "incbin/arm9_rodata.bin", 0xA190, 0xA19C - 0xA190

	.global Unk_020EEDDC
Unk_020EEDDC: ; 0x020EEDDC
	.incbin "incbin/arm9_rodata.bin", 0xA19C, 0xA1A8 - 0xA19C

	.global Unk_020EEDE8
Unk_020EEDE8: ; 0x020EEDE8
	.incbin "incbin/arm9_rodata.bin", 0xA1A8, 0xA1B4 - 0xA1A8

	.global Unk_020EEDF4
Unk_020EEDF4: ; 0x020EEDF4
	.incbin "incbin/arm9_rodata.bin", 0xA1B4, 0xA1C0 - 0xA1B4

	.global Unk_020EEE00
Unk_020EEE00: ; 0x020EEE00
	.incbin "incbin/arm9_rodata.bin", 0xA1C0, 0xA1CC - 0xA1C0

	.global Unk_020EEE0C
Unk_020EEE0C: ; 0x020EEE0C
	.incbin "incbin/arm9_rodata.bin", 0xA1CC, 0xA1D8 - 0xA1CC

	.global Unk_020EEE18
Unk_020EEE18: ; 0x020EEE18
	.incbin "incbin/arm9_rodata.bin", 0xA1D8, 0xA1E4 - 0xA1D8

	.global Unk_020EEE24
Unk_020EEE24: ; 0x020EEE24
	.incbin "incbin/arm9_rodata.bin", 0xA1E4, 0xA1F0 - 0xA1E4

	.global Unk_020EEE30
Unk_020EEE30: ; 0x020EEE30
	.incbin "incbin/arm9_rodata.bin", 0xA1F0, 0xA1FC - 0xA1F0

	.global Unk_020EEE3C
Unk_020EEE3C: ; 0x020EEE3C
	.incbin "incbin/arm9_rodata.bin", 0xA1FC, 0xA208 - 0xA1FC

	.global Unk_020EEE48
Unk_020EEE48: ; 0x020EEE48
	.incbin "incbin/arm9_rodata.bin", 0xA208, 0xA214 - 0xA208

	.global Unk_020EEE54
Unk_020EEE54: ; 0x020EEE54
	.incbin "incbin/arm9_rodata.bin", 0xA214, 0xA22C - 0xA214

	.global Unk_020EEE6C
Unk_020EEE6C: ; 0x020EEE6C
	.incbin "incbin/arm9_rodata.bin", 0xA22C, 0xA244 - 0xA22C

	.global Unk_020EEE84
Unk_020EEE84: ; 0x020EEE84
	.incbin "incbin/arm9_rodata.bin", 0xA244, 0xA260 - 0xA244

	.global Unk_020EEEA0
Unk_020EEEA0: ; 0x020EEEA0
	.incbin "incbin/arm9_rodata.bin", 0xA260, 0xA2A0 - 0xA260

	.global Unk_020EEEE0
Unk_020EEEE0: ; 0x020EEEE0
	.incbin "incbin/arm9_rodata.bin", 0xA2A0, 0xA2E0 - 0xA2A0

	.global Unk_020EEF20
Unk_020EEF20: ; 0x020EEF20
	.incbin "incbin/arm9_rodata.bin", 0xA2E0, 0xA320 - 0xA2E0

	.global Unk_020EEF60
Unk_020EEF60: ; 0x020EEF60
	.incbin "incbin/arm9_rodata.bin", 0xA320, 0xA32C - 0xA320

	.global Unk_020EEF6C
Unk_020EEF6C: ; 0x020EEF6C
	.incbin "incbin/arm9_rodata.bin", 0xA32C, 0xA338 - 0xA32C

	.global Unk_020EEF78
Unk_020EEF78: ; 0x020EEF78
	.incbin "incbin/arm9_rodata.bin", 0xA338, 0xA344 - 0xA338

	.global Unk_020EEF84
Unk_020EEF84: ; 0x020EEF84
	.incbin "incbin/arm9_rodata.bin", 0xA344, 0xA350 - 0xA344

	.global Unk_020EEF90
Unk_020EEF90: ; 0x020EEF90
	.incbin "incbin/arm9_rodata.bin", 0xA350, 0xA35C - 0xA350

	.global Unk_020EEF9C
Unk_020EEF9C: ; 0x020EEF9C
	.incbin "incbin/arm9_rodata.bin", 0xA35C, 0xA368 - 0xA35C

	.global Unk_020EEFA8
Unk_020EEFA8: ; 0x020EEFA8
	.incbin "incbin/arm9_rodata.bin", 0xA368, 0xA374 - 0xA368

	.global Unk_020EEFB4
Unk_020EEFB4: ; 0x020EEFB4
	.incbin "incbin/arm9_rodata.bin", 0xA374, 0xA380 - 0xA374

	.global Unk_020EEFC0
Unk_020EEFC0: ; 0x020EEFC0
	.incbin "incbin/arm9_rodata.bin", 0xA380, 0xA38C - 0xA380

	.global Unk_020EEFCC
Unk_020EEFCC: ; 0x020EEFCC
	.incbin "incbin/arm9_rodata.bin", 0xA38C, 0xA398 - 0xA38C

	.global Unk_020EEFD8
Unk_020EEFD8: ; 0x020EEFD8
	.incbin "incbin/arm9_rodata.bin", 0xA398, 0xA3A4 - 0xA398

	.global Unk_020EEFE4
Unk_020EEFE4: ; 0x020EEFE4
	.incbin "incbin/arm9_rodata.bin", 0xA3A4, 0xA3B0 - 0xA3A4

	.global Unk_020EEFF0
Unk_020EEFF0: ; 0x020EEFF0
	.incbin "incbin/arm9_rodata.bin", 0xA3B0, 0xA3BC - 0xA3B0

	.global Unk_020EEFFC
Unk_020EEFFC: ; 0x020EEFFC
	.incbin "incbin/arm9_rodata.bin", 0xA3BC, 0xA3C8 - 0xA3BC

	.global Unk_020EF008
Unk_020EF008: ; 0x020EF008
	.incbin "incbin/arm9_rodata.bin", 0xA3C8, 0xA3D4 - 0xA3C8

	.global Unk_020EF014
Unk_020EF014: ; 0x020EF014
	.incbin "incbin/arm9_rodata.bin", 0xA3D4, 0xA3E0 - 0xA3D4

	.global Unk_020EF020
Unk_020EF020: ; 0x020EF020
	.incbin "incbin/arm9_rodata.bin", 0xA3E0, 0xA3EC - 0xA3E0

	.global Unk_020EF02C
Unk_020EF02C: ; 0x020EF02C
	.incbin "incbin/arm9_rodata.bin", 0xA3EC, 0xA3F8 - 0xA3EC

	.global Unk_020EF038
Unk_020EF038: ; 0x020EF038
	.incbin "incbin/arm9_rodata.bin", 0xA3F8, 0xA404 - 0xA3F8

	.global Unk_020EF044
Unk_020EF044: ; 0x020EF044
	.incbin "incbin/arm9_rodata.bin", 0xA404, 0xA410 - 0xA404

	.global Unk_020EF050
Unk_020EF050: ; 0x020EF050
	.incbin "incbin/arm9_rodata.bin", 0xA410, 0xA41C - 0xA410

	.global Unk_020EF05C
Unk_020EF05C: ; 0x020EF05C
	.incbin "incbin/arm9_rodata.bin", 0xA41C, 0xA428 - 0xA41C

	.global Unk_020EF068
Unk_020EF068: ; 0x020EF068
	.incbin "incbin/arm9_rodata.bin", 0xA428, 0xA434 - 0xA428

	.global Unk_020EF074
Unk_020EF074: ; 0x020EF074
	.incbin "incbin/arm9_rodata.bin", 0xA434, 0xA440 - 0xA434

	.global Unk_020EF080
Unk_020EF080: ; 0x020EF080
	.incbin "incbin/arm9_rodata.bin", 0xA440, 0xA44C - 0xA440

	.global Unk_020EF08C
Unk_020EF08C: ; 0x020EF08C
	.incbin "incbin/arm9_rodata.bin", 0xA44C, 0xA458 - 0xA44C

	.global Unk_020EF098
Unk_020EF098: ; 0x020EF098
	.incbin "incbin/arm9_rodata.bin", 0xA458, 0xA464 - 0xA458

	.global Unk_020EF0A4
Unk_020EF0A4: ; 0x020EF0A4
	.incbin "incbin/arm9_rodata.bin", 0xA464, 0xA470 - 0xA464

	.global Unk_020EF0B0
Unk_020EF0B0: ; 0x020EF0B0
	.incbin "incbin/arm9_rodata.bin", 0xA470, 0xA47C - 0xA470

	.global Unk_020EF0BC
Unk_020EF0BC: ; 0x020EF0BC
	.incbin "incbin/arm9_rodata.bin", 0xA47C, 0xA488 - 0xA47C

	.global Unk_020EF0C8
Unk_020EF0C8: ; 0x020EF0C8
	.incbin "incbin/arm9_rodata.bin", 0xA488, 0xA494 - 0xA488

	.global Unk_020EF0D4
Unk_020EF0D4: ; 0x020EF0D4
	.incbin "incbin/arm9_rodata.bin", 0xA494, 0xA4A0 - 0xA494

	.global Unk_020EF0E0
Unk_020EF0E0: ; 0x020EF0E0
	.incbin "incbin/arm9_rodata.bin", 0xA4A0, 0xA4AC - 0xA4A0

	.global Unk_020EF0EC
Unk_020EF0EC: ; 0x020EF0EC
	.incbin "incbin/arm9_rodata.bin", 0xA4AC, 0xA4B8 - 0xA4AC

	.global Unk_020EF0F8
Unk_020EF0F8: ; 0x020EF0F8
	.incbin "incbin/arm9_rodata.bin", 0xA4B8, 0xA4C4 - 0xA4B8

	.global Unk_020EF104
Unk_020EF104: ; 0x020EF104
	.incbin "incbin/arm9_rodata.bin", 0xA4C4, 0xA4D0 - 0xA4C4

	.global Unk_020EF110
Unk_020EF110: ; 0x020EF110
	.incbin "incbin/arm9_rodata.bin", 0xA4D0, 0xA4DC - 0xA4D0

	.global Unk_020EF11C
Unk_020EF11C: ; 0x020EF11C
	.incbin "incbin/arm9_rodata.bin", 0xA4DC, 0xA4E8 - 0xA4DC

	.global Unk_020EF128
Unk_020EF128: ; 0x020EF128
	.incbin "incbin/arm9_rodata.bin", 0xA4E8, 0xA4F4 - 0xA4E8

	.global Unk_020EF134
Unk_020EF134: ; 0x020EF134
	.incbin "incbin/arm9_rodata.bin", 0xA4F4, 0xA500 - 0xA4F4

	.global Unk_020EF140
Unk_020EF140: ; 0x020EF140
	.incbin "incbin/arm9_rodata.bin", 0xA500, 0xA50C - 0xA500

	.global Unk_020EF14C
Unk_020EF14C: ; 0x020EF14C
	.incbin "incbin/arm9_rodata.bin", 0xA50C, 0xA518 - 0xA50C

	.global Unk_020EF158
Unk_020EF158: ; 0x020EF158
	.incbin "incbin/arm9_rodata.bin", 0xA518, 0xA524 - 0xA518

	.global Unk_020EF164
Unk_020EF164: ; 0x020EF164
	.incbin "incbin/arm9_rodata.bin", 0xA524, 0xA530 - 0xA524

	.global Unk_020EF170
Unk_020EF170: ; 0x020EF170
	.incbin "incbin/arm9_rodata.bin", 0xA530, 0xA53C - 0xA530

	.global Unk_020EF17C
Unk_020EF17C: ; 0x020EF17C
	.incbin "incbin/arm9_rodata.bin", 0xA53C, 0xA548 - 0xA53C

	.global Unk_020EF188
Unk_020EF188: ; 0x020EF188
	.incbin "incbin/arm9_rodata.bin", 0xA548, 0xA554 - 0xA548

	.global Unk_020EF194
Unk_020EF194: ; 0x020EF194
	.incbin "incbin/arm9_rodata.bin", 0xA554, 0xA560 - 0xA554

	.global Unk_020EF1A0
Unk_020EF1A0: ; 0x020EF1A0
	.incbin "incbin/arm9_rodata.bin", 0xA560, 0xA56C - 0xA560

	.global Unk_020EF1AC
Unk_020EF1AC: ; 0x020EF1AC
	.incbin "incbin/arm9_rodata.bin", 0xA56C, 0xA578 - 0xA56C

	.global Unk_020EF1B8
Unk_020EF1B8: ; 0x020EF1B8
	.incbin "incbin/arm9_rodata.bin", 0xA578, 0xA584 - 0xA578

	.global Unk_020EF1C4
Unk_020EF1C4: ; 0x020EF1C4
	.incbin "incbin/arm9_rodata.bin", 0xA584, 0xA590 - 0xA584

	.global Unk_020EF1D0
Unk_020EF1D0: ; 0x020EF1D0
	.incbin "incbin/arm9_rodata.bin", 0xA590, 0xA59C - 0xA590

	.global Unk_020EF1DC
Unk_020EF1DC: ; 0x020EF1DC
	.incbin "incbin/arm9_rodata.bin", 0xA59C, 0xA5A8 - 0xA59C

	.global Unk_020EF1E8
Unk_020EF1E8: ; 0x020EF1E8
	.incbin "incbin/arm9_rodata.bin", 0xA5A8, 0xA5B4 - 0xA5A8

	.global Unk_020EF1F4
Unk_020EF1F4: ; 0x020EF1F4
	.incbin "incbin/arm9_rodata.bin", 0xA5B4, 0xA5C0 - 0xA5B4

	.global Unk_020EF200
Unk_020EF200: ; 0x020EF200
	.incbin "incbin/arm9_rodata.bin", 0xA5C0, 0xA5CC - 0xA5C0

	.global Unk_020EF20C
Unk_020EF20C: ; 0x020EF20C
	.incbin "incbin/arm9_rodata.bin", 0xA5CC, 0xA5D8 - 0xA5CC

	.global Unk_020EF218
Unk_020EF218: ; 0x020EF218
	.incbin "incbin/arm9_rodata.bin", 0xA5D8, 0xA5E4 - 0xA5D8

	.global Unk_020EF224
Unk_020EF224: ; 0x020EF224
	.incbin "incbin/arm9_rodata.bin", 0xA5E4, 0xA5F0 - 0xA5E4

	.global Unk_020EF230
Unk_020EF230: ; 0x020EF230
	.incbin "incbin/arm9_rodata.bin", 0xA5F0, 0xA5FC - 0xA5F0

	.global Unk_020EF23C
Unk_020EF23C: ; 0x020EF23C
	.incbin "incbin/arm9_rodata.bin", 0xA5FC, 0xA608 - 0xA5FC

	.global Unk_020EF248
Unk_020EF248: ; 0x020EF248
	.incbin "incbin/arm9_rodata.bin", 0xA608, 0xA614 - 0xA608

	.global Unk_020EF254
Unk_020EF254: ; 0x020EF254
	.incbin "incbin/arm9_rodata.bin", 0xA614, 0xA620 - 0xA614

	.global Unk_020EF260
Unk_020EF260: ; 0x020EF260
	.incbin "incbin/arm9_rodata.bin", 0xA620, 0xA62C - 0xA620

	.global Unk_020EF26C
Unk_020EF26C: ; 0x020EF26C
	.incbin "incbin/arm9_rodata.bin", 0xA62C, 0xA638 - 0xA62C

	.global Unk_020EF278
Unk_020EF278: ; 0x020EF278
	.incbin "incbin/arm9_rodata.bin", 0xA638, 0xA644 - 0xA638

	.global Unk_020EF284
Unk_020EF284: ; 0x020EF284
	.incbin "incbin/arm9_rodata.bin", 0xA644, 0xA650 - 0xA644

	.global Unk_020EF290
Unk_020EF290: ; 0x020EF290
	.incbin "incbin/arm9_rodata.bin", 0xA650, 0xA65C - 0xA650

	.global Unk_020EF29C
Unk_020EF29C: ; 0x020EF29C
	.incbin "incbin/arm9_rodata.bin", 0xA65C, 0xA668 - 0xA65C

	.global Unk_020EF2A8
Unk_020EF2A8: ; 0x020EF2A8
	.incbin "incbin/arm9_rodata.bin", 0xA668, 0xA674 - 0xA668

	.global Unk_020EF2B4
Unk_020EF2B4: ; 0x020EF2B4
	.incbin "incbin/arm9_rodata.bin", 0xA674, 0xA680 - 0xA674

	.global Unk_020EF2C0
Unk_020EF2C0: ; 0x020EF2C0
	.incbin "incbin/arm9_rodata.bin", 0xA680, 0xA68C - 0xA680

	.global Unk_020EF2CC
Unk_020EF2CC: ; 0x020EF2CC
	.incbin "incbin/arm9_rodata.bin", 0xA68C, 0xA698 - 0xA68C

	.global Unk_020EF2D8
Unk_020EF2D8: ; 0x020EF2D8
	.incbin "incbin/arm9_rodata.bin", 0xA698, 0xA6A4 - 0xA698

	.global Unk_020EF2E4
Unk_020EF2E4: ; 0x020EF2E4
	.incbin "incbin/arm9_rodata.bin", 0xA6A4, 0xA6B0 - 0xA6A4

	.global Unk_020EF2F0
Unk_020EF2F0: ; 0x020EF2F0
	.incbin "incbin/arm9_rodata.bin", 0xA6B0, 0xA6BC - 0xA6B0

	.global Unk_020EF2FC
Unk_020EF2FC: ; 0x020EF2FC
	.incbin "incbin/arm9_rodata.bin", 0xA6BC, 0xA6C8 - 0xA6BC

	.global Unk_020EF308
Unk_020EF308: ; 0x020EF308
	.incbin "incbin/arm9_rodata.bin", 0xA6C8, 0xA6D4 - 0xA6C8

	.global Unk_020EF314
Unk_020EF314: ; 0x020EF314
	.incbin "incbin/arm9_rodata.bin", 0xA6D4, 0xA6E0 - 0xA6D4

	.global Unk_020EF320
Unk_020EF320: ; 0x020EF320
	.incbin "incbin/arm9_rodata.bin", 0xA6E0, 0xA6EC - 0xA6E0

	.global Unk_020EF32C
Unk_020EF32C: ; 0x020EF32C
	.incbin "incbin/arm9_rodata.bin", 0xA6EC, 0xA6F8 - 0xA6EC

	.global Unk_020EF338
Unk_020EF338: ; 0x020EF338
	.incbin "incbin/arm9_rodata.bin", 0xA6F8, 0xA704 - 0xA6F8

	.global Unk_020EF344
Unk_020EF344: ; 0x020EF344
	.incbin "incbin/arm9_rodata.bin", 0xA704, 0xA710 - 0xA704

	.global Unk_020EF350
Unk_020EF350: ; 0x020EF350
	.incbin "incbin/arm9_rodata.bin", 0xA710, 0xA71C - 0xA710

	.global Unk_020EF35C
Unk_020EF35C: ; 0x020EF35C
	.incbin "incbin/arm9_rodata.bin", 0xA71C, 0xA728 - 0xA71C

	.global Unk_020EF368
Unk_020EF368: ; 0x020EF368
	.incbin "incbin/arm9_rodata.bin", 0xA728, 0xA734 - 0xA728

	.global Unk_020EF374
Unk_020EF374: ; 0x020EF374
	.incbin "incbin/arm9_rodata.bin", 0xA734, 0xA740 - 0xA734

	.global Unk_020EF380
Unk_020EF380: ; 0x020EF380
	.incbin "incbin/arm9_rodata.bin", 0xA740, 0xA74C - 0xA740

	.global Unk_020EF38C
Unk_020EF38C: ; 0x020EF38C
	.incbin "incbin/arm9_rodata.bin", 0xA74C, 0xA758 - 0xA74C

	.global Unk_020EF398
Unk_020EF398: ; 0x020EF398
	.incbin "incbin/arm9_rodata.bin", 0xA758, 0xA764 - 0xA758

	.global Unk_020EF3A4
Unk_020EF3A4: ; 0x020EF3A4
	.incbin "incbin/arm9_rodata.bin", 0xA764, 0xA770 - 0xA764

	.global Unk_020EF3B0
Unk_020EF3B0: ; 0x020EF3B0
	.incbin "incbin/arm9_rodata.bin", 0xA770, 0xA77C - 0xA770

	.global Unk_020EF3BC
Unk_020EF3BC: ; 0x020EF3BC
	.incbin "incbin/arm9_rodata.bin", 0xA77C, 0xA788 - 0xA77C

	.global Unk_020EF3C8
Unk_020EF3C8: ; 0x020EF3C8
	.incbin "incbin/arm9_rodata.bin", 0xA788, 0xA794 - 0xA788

	.global Unk_020EF3D4
Unk_020EF3D4: ; 0x020EF3D4
	.incbin "incbin/arm9_rodata.bin", 0xA794, 0xA7A0 - 0xA794

	.global Unk_020EF3E0
Unk_020EF3E0: ; 0x020EF3E0
	.incbin "incbin/arm9_rodata.bin", 0xA7A0, 0xA7AC - 0xA7A0

	.global Unk_020EF3EC
Unk_020EF3EC: ; 0x020EF3EC
	.incbin "incbin/arm9_rodata.bin", 0xA7AC, 0xA7B8 - 0xA7AC

	.global Unk_020EF3F8
Unk_020EF3F8: ; 0x020EF3F8
	.incbin "incbin/arm9_rodata.bin", 0xA7B8, 0xA7C4 - 0xA7B8

	.global Unk_020EF404
Unk_020EF404: ; 0x020EF404
	.incbin "incbin/arm9_rodata.bin", 0xA7C4, 0xA7D0 - 0xA7C4

	.global Unk_020EF410
Unk_020EF410: ; 0x020EF410
	.incbin "incbin/arm9_rodata.bin", 0xA7D0, 0xA7DC - 0xA7D0

	.global Unk_020EF41C
Unk_020EF41C: ; 0x020EF41C
	.incbin "incbin/arm9_rodata.bin", 0xA7DC, 0xA7E8 - 0xA7DC

	.global Unk_020EF428
Unk_020EF428: ; 0x020EF428
	.incbin "incbin/arm9_rodata.bin", 0xA7E8, 0xA7F4 - 0xA7E8

	.global Unk_020EF434
Unk_020EF434: ; 0x020EF434
	.incbin "incbin/arm9_rodata.bin", 0xA7F4, 0xA800 - 0xA7F4

	.global Unk_020EF440
Unk_020EF440: ; 0x020EF440
	.incbin "incbin/arm9_rodata.bin", 0xA800, 0xA80C - 0xA800

	.global Unk_020EF44C
Unk_020EF44C: ; 0x020EF44C
	.incbin "incbin/arm9_rodata.bin", 0xA80C, 0xA818 - 0xA80C

	.global Unk_020EF458
Unk_020EF458: ; 0x020EF458
	.incbin "incbin/arm9_rodata.bin", 0xA818, 0xA824 - 0xA818

	.global Unk_020EF464
Unk_020EF464: ; 0x020EF464
	.incbin "incbin/arm9_rodata.bin", 0xA824, 0xA830 - 0xA824

	.global Unk_020EF470
Unk_020EF470: ; 0x020EF470
	.incbin "incbin/arm9_rodata.bin", 0xA830, 0xA83C - 0xA830

	.global Unk_020EF47C
Unk_020EF47C: ; 0x020EF47C
	.incbin "incbin/arm9_rodata.bin", 0xA83C, 0xA848 - 0xA83C

	.global Unk_020EF488
Unk_020EF488: ; 0x020EF488
	.incbin "incbin/arm9_rodata.bin", 0xA848, 0xA854 - 0xA848

	.global Unk_020EF494
Unk_020EF494: ; 0x020EF494
	.incbin "incbin/arm9_rodata.bin", 0xA854, 0xA860 - 0xA854

	.global Unk_020EF4A0
Unk_020EF4A0: ; 0x020EF4A0
	.incbin "incbin/arm9_rodata.bin", 0xA860, 0xA86C - 0xA860

	.global Unk_020EF4AC
Unk_020EF4AC: ; 0x020EF4AC
	.incbin "incbin/arm9_rodata.bin", 0xA86C, 0xA878 - 0xA86C

	.global Unk_020EF4B8
Unk_020EF4B8: ; 0x020EF4B8
	.incbin "incbin/arm9_rodata.bin", 0xA878, 0xA884 - 0xA878

	.global Unk_020EF4C4
Unk_020EF4C4: ; 0x020EF4C4
	.incbin "incbin/arm9_rodata.bin", 0xA884, 0xA890 - 0xA884

	.global Unk_020EF4D0
Unk_020EF4D0: ; 0x020EF4D0
	.incbin "incbin/arm9_rodata.bin", 0xA890, 0xA89C - 0xA890

	.global Unk_020EF4DC
Unk_020EF4DC: ; 0x020EF4DC
	.incbin "incbin/arm9_rodata.bin", 0xA89C, 0xA8A8 - 0xA89C

	.global Unk_020EF4E8
Unk_020EF4E8: ; 0x020EF4E8
	.incbin "incbin/arm9_rodata.bin", 0xA8A8, 0xA8B4 - 0xA8A8

	.global Unk_020EF4F4
Unk_020EF4F4: ; 0x020EF4F4
	.incbin "incbin/arm9_rodata.bin", 0xA8B4, 0xA8C0 - 0xA8B4

	.global Unk_020EF500
Unk_020EF500: ; 0x020EF500
	.incbin "incbin/arm9_rodata.bin", 0xA8C0, 0xA8CC - 0xA8C0

	.global Unk_020EF50C
Unk_020EF50C: ; 0x020EF50C
	.incbin "incbin/arm9_rodata.bin", 0xA8CC, 0xA8D8 - 0xA8CC

	.global Unk_020EF518
Unk_020EF518: ; 0x020EF518
	.incbin "incbin/arm9_rodata.bin", 0xA8D8, 0xA8E4 - 0xA8D8

	.global Unk_020EF524
Unk_020EF524: ; 0x020EF524
	.incbin "incbin/arm9_rodata.bin", 0xA8E4, 0xA8F0 - 0xA8E4

	.global Unk_020EF530
Unk_020EF530: ; 0x020EF530
	.incbin "incbin/arm9_rodata.bin", 0xA8F0, 0xA8FC - 0xA8F0

	.global Unk_020EF53C
Unk_020EF53C: ; 0x020EF53C
	.incbin "incbin/arm9_rodata.bin", 0xA8FC, 0xA908 - 0xA8FC

	.global Unk_020EF548
Unk_020EF548: ; 0x020EF548
	.incbin "incbin/arm9_rodata.bin", 0xA908, 0xA914 - 0xA908

	.global Unk_020EF554
Unk_020EF554: ; 0x020EF554
	.incbin "incbin/arm9_rodata.bin", 0xA914, 0xA920 - 0xA914

	.global Unk_020EF560
Unk_020EF560: ; 0x020EF560
	.incbin "incbin/arm9_rodata.bin", 0xA920, 0xA92C - 0xA920

	.global Unk_020EF56C
Unk_020EF56C: ; 0x020EF56C
	.incbin "incbin/arm9_rodata.bin", 0xA92C, 0xA938 - 0xA92C

	.global Unk_020EF578
Unk_020EF578: ; 0x020EF578
	.incbin "incbin/arm9_rodata.bin", 0xA938, 0xA944 - 0xA938

	.global Unk_020EF584
Unk_020EF584: ; 0x020EF584
	.incbin "incbin/arm9_rodata.bin", 0xA944, 0xA950 - 0xA944

	.global Unk_020EF590
Unk_020EF590: ; 0x020EF590
	.incbin "incbin/arm9_rodata.bin", 0xA950, 0xA95C - 0xA950

	.global Unk_020EF59C
Unk_020EF59C: ; 0x020EF59C
	.incbin "incbin/arm9_rodata.bin", 0xA95C, 0xA968 - 0xA95C

	.global Unk_020EF5A8
Unk_020EF5A8: ; 0x020EF5A8
	.incbin "incbin/arm9_rodata.bin", 0xA968, 0xA974 - 0xA968

	.global Unk_020EF5B4
Unk_020EF5B4: ; 0x020EF5B4
	.incbin "incbin/arm9_rodata.bin", 0xA974, 0xA980 - 0xA974

	.global Unk_020EF5C0
Unk_020EF5C0: ; 0x020EF5C0
	.incbin "incbin/arm9_rodata.bin", 0xA980, 0xA98C - 0xA980

	.global Unk_020EF5CC
Unk_020EF5CC: ; 0x020EF5CC
	.incbin "incbin/arm9_rodata.bin", 0xA98C, 0xA998 - 0xA98C

	.global Unk_020EF5D8
Unk_020EF5D8: ; 0x020EF5D8
	.incbin "incbin/arm9_rodata.bin", 0xA998, 0xA9A4 - 0xA998

	.global Unk_020EF5E4
Unk_020EF5E4: ; 0x020EF5E4
	.incbin "incbin/arm9_rodata.bin", 0xA9A4, 0xC



	.data


	.global Unk_02100B84
Unk_02100B84: ; 0x02100B84
	.incbin "incbin/arm9_data.bin", 0x1EA4, 0xC

