	.include "macros/function.inc"
	.include "include/unk_02050A74.inc"

	

	.text


	thumb_func_start sub_02050A74
sub_02050A74: ; 0x02050A74
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02050A9A
	cmp r0, #1
	beq _02050AAA
	b _02050AB8
_02050A9A:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0203D1D4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050AB8
_02050AAA:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _02050AB8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02050AB8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02050A74

	thumb_func_start sub_02050ABC
sub_02050ABC: ; 0x02050ABC
	ldr r3, _02050AC4 ; =sub_02050944
	add r2, r1, #0
	ldr r1, _02050AC8 ; =sub_02050A74
	bx r3
	; .align 2, 0
_02050AC4: .word sub_02050944
_02050AC8: .word sub_02050A74
	thumb_func_end sub_02050ABC

	thumb_func_start sub_02050ACC
sub_02050ACC: ; 0x02050ACC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x14
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02018184
	str r4, [r0, #0]
	cmp r4, #0
	beq _02050AE8
	mov r1, #0
	str r1, [r4, #0]
_02050AE8:
	str r6, [r0, #4]
	str r7, [r0, #8]
	str r5, [r0, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02050ACC

	thumb_func_start sub_02050AF0
sub_02050AF0: ; 0x02050AF0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020520A4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02050AF0

	thumb_func_start sub_02050B04
sub_02050B04: ; 0x02050B04
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02050B10
	ldr r1, [r0, #0x10]
	ldr r1, [r1, #0x14]
	str r1, [r2, #0]
_02050B10:
	ldr r0, [r0, #0x10]
	ldr r3, _02050B18 ; =sub_02052868
	ldr r0, [r0, #0x14]
	bx r3
	; .align 2, 0
_02050B18: .word sub_02052868
	thumb_func_end sub_02050B04

	thumb_func_start sub_02050B1C
sub_02050B1C: ; 0x02050B1C
	push {r3, lr}
	mov r2, #2
	ldr r3, [r0, #0]
	lsl r2, r2, #0x1e
	tst r2, r3
	bne _02050B2C
	bl sub_020526E8
_02050B2C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02050B1C

	thumb_func_start sub_02050B30
sub_02050B30: ; 0x02050B30
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #5
	bhi _02050C46
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02050B5C: ; jump table
	.short _02050B68 - _02050B5C - 2 ; case 0
	.short _02050B80 - _02050B5C - 2 ; case 1
	.short _02050B8E - _02050B5C - 2 ; case 2
	.short _02050B9E - _02050B5C - 2 ; case 3
	.short _02050C28 - _02050B5C - 2 ; case 4
	.short _02050C3C - _02050B5C - 2 ; case 5
_02050B68:
	ldr r0, [r6, #0x38]
	bl sub_02062C48
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r0, r7, #0
	bl sub_020557DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050C46
_02050B80:
	add r0, r7, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050C46
_02050B8E:
	ldr r1, [r5, #0x10]
	add r0, r7, #0
	bl sub_02050ABC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050C46
_02050B9E:
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	bl sub_02050B1C
	ldr r2, [r5, #0x10]
	ldr r1, [r2, #0]
	cmp r1, #0
	beq _02050BBA
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	beq _02050BBA
	cmp r1, #0x4a
	bne _02050BC8
_02050BBA:
	mov r1, #0x4d
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, [r2, #0x14]
	add r0, r6, #0
	bl sub_0206D1B8
_02050BC8:
	add r0, r5, #0
	bl sub_02050B04
	cmp r0, #0
	bne _02050BDC
	add r0, r5, #0
	bl sub_02050AF0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02050BDC:
	ldr r0, [r6, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #0
	beq _02050BF4
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	bl sub_02097284
_02050BF4:
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_020518B0
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_02051988
	ldr r0, [r6, #0xc]
	bl sub_020507E4
	mov r1, #0x6d
	ldr r2, [r5, #0x10]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0206B48C
	add r0, r7, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050C46
_02050C28:
	ldr r0, [r6, #0x38]
	bl sub_02062C78
	add r0, r7, #0
	bl sub_020558F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050C46
_02050C3C:
	add r0, r5, #0
	bl sub_02050AF0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02050C46:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02050B30

	thumb_func_start sub_02050C4C
sub_02050C4C: ; 0x02050C4C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #8]
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _02050C68 ; =sub_02050B30
	add r0, r4, #0
	bl sub_02050944
	pop {r4, pc}
	; .align 2, 0
_02050C68: .word sub_02050B30
	thumb_func_end sub_02050C4C

	thumb_func_start sub_02050C6C
sub_02050C6C: ; 0x02050C6C
	push {r3, lr}
	mov r2, #0xf
	and r0, r2
	cmp r0, #6
	bhi _02050CA4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02050C82: ; jump table
	.short _02050CA4 - _02050C82 - 2 ; case 0
	.short _02050C90 - _02050C82 - 2 ; case 1
	.short _02050C9A - _02050C82 - 2 ; case 2
	.short _02050CA4 - _02050C82 - 2 ; case 3
	.short _02050CA4 - _02050C82 - 2 ; case 4
	.short _02050C9A - _02050C82 - 2 ; case 5
	.short _02050C90 - _02050C82 - 2 ; case 6
_02050C90:
	ldr r0, [r1, #0xc]
	mov r1, #1
	bl sub_020331B4
	pop {r3, pc}
_02050C9A:
	ldr r0, [r1, #0xc]
	sub r2, #0x10
	add r1, r2, #0
	bl sub_020331B4
_02050CA4:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02050C6C

	thumb_func_start sub_02050CA8
sub_02050CA8: ; 0x02050CA8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #5
	bhi _02050D46
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02050CD4: ; jump table
	.short _02050CE0 - _02050CD4 - 2 ; case 0
	.short _02050CF2 - _02050CD4 - 2 ; case 1
	.short _02050D00 - _02050CD4 - 2 ; case 2
	.short _02050D10 - _02050CD4 - 2 ; case 3
	.short _02050D3C - _02050CD4 - 2 ; case 4
	.short _02050D3C - _02050CD4 - 2 ; case 5
_02050CE0:
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r0, r6, #0
	bl sub_020557DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050D46
_02050CF2:
	add r0, r6, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050D46
_02050D00:
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_02050ABC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050D46
_02050D10:
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	ldr r0, [r0, #0x14]
	bl sub_02050C6C
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	bl sub_02052754
	ldr r0, [r7, #0xc]
	bl sub_0202CD88
	mov r1, #0x15
	bl sub_0202CFEC
	add r0, r6, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050D46
_02050D3C:
	add r0, r5, #0
	bl sub_02050AF0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02050D46:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02050CA8

	thumb_func_start sub_02050D4C
sub_02050D4C: ; 0x02050D4C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02050D76
	cmp r0, #1
	beq _02050D9A
	cmp r0, #2
	beq _02050DC0
	b _02050DCE
_02050D76:
	mov r0, #0
	bl sub_02004234
	ldr r1, [r5, #8]
	mov r0, #5
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_02004550
	ldr r1, [r5, #0x10]
	add r0, r7, #0
	bl sub_02050ABC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050DCE
_02050D9A:
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	ldr r0, [r0, #0x14]
	bl sub_02050C6C
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	bl sub_02052754
	ldr r0, [r6, #0xc]
	bl sub_0202CD88
	mov r1, #0x15
	bl sub_0202CFEC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050DCE
_02050DC0:
	add r0, r5, #0
	bl sub_02050AF0
	bl sub_0202F22C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02050DCE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02050D4C

	thumb_func_start sub_02050DD4
sub_02050DD4: ; 0x02050DD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x14
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02018184
	str r4, [r0, #0xc]
	cmp r4, #0
	beq _02050DF0
	mov r1, #0
	str r1, [r4, #0]
_02050DF0:
	str r6, [r0, #4]
	str r7, [r0, #8]
	str r5, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02050DD4

	thumb_func_start sub_02050DFC
sub_02050DFC: ; 0x02050DFC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020520A4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02050DFC

	thumb_func_start sub_02050E10
sub_02050E10: ; 0x02050E10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #0
	beq _02050E4A
	add r0, r4, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _02050E70 ; =sub_02051074
	add r0, r5, #0
	bl sub_02050904
	pop {r4, r5, r6, pc}
_02050E4A:
	add r0, r4, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050DD4
	add r2, r0, #0
	ldr r1, _02050E74 ; =sub_02050EE0
	add r0, r5, #0
	bl sub_02050904
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02050E70: .word sub_02051074
_02050E74: .word sub_02050EE0
	thumb_func_end sub_02050E10

	thumb_func_start sub_02050E78
sub_02050E78: ; 0x02050E78
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #0
	beq _02050EB2
	add r0, r4, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _02050ED8 ; =sub_02051074
	add r0, r5, #0
	bl sub_02050924
	pop {r4, r5, r6, pc}
_02050EB2:
	add r0, r4, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050DD4
	add r2, r0, #0
	ldr r1, _02050EDC ; =sub_02050EE0
	add r0, r5, #0
	bl sub_02050924
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02050ED8: .word sub_02051074
_02050EDC: .word sub_02050EE0
	thumb_func_end sub_02050E78

	thumb_func_start sub_02050EE0
sub_02050EE0: ; 0x02050EE0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #6
	bls _02050EFA
	b _0205106A
_02050EFA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02050F06: ; jump table
	.short _02050F14 - _02050F06 - 2 ; case 0
	.short _02050F38 - _02050F06 - 2 ; case 1
	.short _02050F46 - _02050F06 - 2 ; case 2
	.short _02050F56 - _02050F06 - 2 ; case 3
	.short _02051006 - _02050F06 - 2 ; case 4
	.short _0205101C - _02050F06 - 2 ; case 5
	.short _0205104C - _02050F06 - 2 ; case 6
_02050F14:
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #7
	bl sub_0202CF28
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl sub_020557DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205106A
_02050F38:
	add r0, r6, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205106A
_02050F46:
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl sub_02050ABC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205106A
_02050F56:
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl sub_02050B1C
	mov r1, #0x4d
	ldr r2, [r4, #0x10]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, [r2, #0x14]
	add r0, r5, #0
	bl sub_0206D1B8
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x14]
	bl sub_02052868
	cmp r0, #0
	bne _02050F96
	add r0, r4, #0
	bl sub_02050DFC
	add r5, #0x94
	ldr r0, [r5, #0]
	bl sub_02069434
	ldr r1, _02051070 ; =sub_02052B2C
	add r0, r6, #0
	mov r2, #0
	bl sub_02050924
	mov r0, #0
	pop {r4, r5, r6, pc}
_02050F96:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #0
	beq _02050FAE
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	bl sub_02097284
_02050FAE:
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	bl sub_020518B0
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	bl sub_02051988
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_0206981C
	cmp r0, #0
	beq _02050FF8
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069798
	cmp r0, #0
	beq _02050FF0
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _02050FF8
	cmp r0, #4
	beq _02050FF8
	add r5, #0x94
	ldr r0, [r5, #0]
	bl sub_02069434
	b _02050FF8
_02050FF0:
	add r5, #0x94
	ldr r0, [r5, #0]
	bl sub_02069434
_02050FF8:
	add r0, r6, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205106A
_02051006:
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	bl ov6_02246034
	add r0, r6, #0
	bl sub_020558F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205106A
_0205101C:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_0206981C
	cmp r0, #0
	beq _02051044
	ldr r1, [r4, #0x10]
	add r2, r5, #0
	add r2, #0x94
	ldr r1, [r1, #0x14]
	ldr r2, [r2, #0]
	add r0, r5, #0
	bl sub_020695C8
	add r0, r5, #0
	add r5, #0x94
	ldr r1, [r5, #0]
	bl sub_02069638
_02051044:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205106A
_0205104C:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069690
	cmp r0, #0
	beq _0205106A
	ldr r0, [r5, #0x38]
	bl sub_02062C78
	add r0, r4, #0
	bl sub_02050DFC
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205106A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02051070: .word sub_02052B2C
	thumb_func_end sub_02050EE0

	thumb_func_start sub_02051074
sub_02051074: ; 0x02051074
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0203A790
	bl sub_0203A784
	str r0, [sp]
	ldr r0, [r4, #0]
	cmp r0, #7
	bls _020510A4
	b _020511F8
_020510A4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020510B0: ; jump table
	.short _020510C0 - _020510B0 - 2 ; case 0
	.short _020510E4 - _020510B0 - 2 ; case 1
	.short _020510F2 - _020510B0 - 2 ; case 2
	.short _02051102 - _020510B0 - 2 ; case 3
	.short _02051166 - _020510B0 - 2 ; case 4
	.short _02051174 - _020510B0 - 2 ; case 5
	.short _02051188 - _020510B0 - 2 ; case 6
	.short _020511EC - _020510B0 - 2 ; case 7
_020510C0:
	ldr r0, [r6, #0x38]
	bl sub_02062C48
	ldr r0, [r6, #0xc]
	bl sub_0202CD88
	mov r1, #7
	bl sub_0202CF28
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r0, r7, #0
	bl sub_020557DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020511F8
_020510E4:
	add r0, r7, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020511F8
_020510F2:
	ldr r1, [r5, #0x10]
	add r0, r7, #0
	bl sub_02050ABC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020511F8
_02051102:
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	bl sub_02050B1C
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bne _0205112C
	ldr r0, [r6, #0xc]
	bl sub_0202440C
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	mov r1, #0
	ldr r0, [r0, #8]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_0206D018
_0205112C:
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_020518B0
	ldr r0, [sp]
	ldrh r0, [r0]
	cmp r0, #0
	bne _02051156
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0x14]
	cmp r0, #4
	beq _02051156
	ldr r0, [r6, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	add r1, r0, #0
	add r0, r7, #0
	bl sub_020539A0
_02051156:
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_02051988
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020511F8
_02051166:
	add r0, r7, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020511F8
_02051174:
	ldr r0, [r6, #0x38]
	bl sub_02062C78
	add r0, r7, #0
	bl sub_020558F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020511F8
_02051188:
	ldr r0, [sp]
	ldrh r0, [r0]
	cmp r0, #0
	bne _020511B4
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bne _020511A6
	mov r2, #0
	ldr r1, _02051200 ; =0x00002262
	add r0, r7, #0
	add r3, r2, #0
	bl sub_0203E8E0
	b _020511E4
_020511A6:
	mov r2, #0
	ldr r1, _02051204 ; =0x00002269
	add r0, r7, #0
	add r3, r2, #0
	bl sub_0203E8E0
	b _020511E4
_020511B4:
	ldr r0, [r6, #0xc]
	bl sub_02024420
	str r0, [sp, #8]
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r5, r0, #0
	ldr r0, [sp, #8]
	bl sub_020799A0
	cmp r0, #0x12
	bne _020511E4
	add r0, r5, #0
	bl sub_0207A0F8
	cmp r0, #6
	bne _020511E4
	mov r2, #0
	ldr r1, _02051208 ; =0x00002276
	add r0, r7, #0
	add r3, r2, #0
	bl sub_0203E8E0
_020511E4:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020511F8
_020511EC:
	add r0, r5, #0
	bl sub_02050AF0
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_020511F8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02051200: .word 0x00002262
_02051204: .word 0x00002269
_02051208: .word 0x00002276
	thumb_func_end sub_02051074

	thumb_func_start sub_0205120C
sub_0205120C: ; 0x0205120C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	mov r0, #0xb
	mov r1, #0
	bl sub_02051D8C
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02052314
	mov r0, #0x15
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ov6_02242034
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #7
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02051C00
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r3, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	str r6, [sp]
	bl sub_02050C4C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205120C

	thumb_func_start sub_02051270
sub_02051270: ; 0x02051270
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r7, r1, #0
	str r2, [sp, #8]
	add r6, r3, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	mov r0, #0xb
	mov r1, #0
	bl sub_02051D8C
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02052314
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ov6_022420D4
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _020512B8
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #8
	orr r0, r2
	str r0, [r4, r1]
_020512B8:
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #7
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02051C00
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	str r6, [sp]
	bl sub_02050C4C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02051270

	thumb_func_start sub_020512E4
sub_020512E4: ; 0x020512E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	add r7, r1, #0
	str r2, [sp, #8]
	add r6, r3, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	mov r0, #0xb
	mov r1, #0
	bl sub_02051D8C
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02052314
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ov6_022420D4
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0207A0FC
	mov r1, #0x6e
	add r2, sp, #0xc
	bl sub_02074B30
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02051340
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #8
	orr r0, r2
	str r0, [r4, r1]
_02051340:
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #7
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02051C00
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	str r6, [sp]
	bl sub_02050C4C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020512E4

	thumb_func_start sub_0205136C
sub_0205136C: ; 0x0205136C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #6
	bhi _0205144C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02051398: ; jump table
	.short _020513A6 - _02051398 - 2 ; case 0
	.short _020513CA - _02051398 - 2 ; case 1
	.short _020513D8 - _02051398 - 2 ; case 2
	.short _020513E8 - _02051398 - 2 ; case 3
	.short _02051408 - _02051398 - 2 ; case 4
	.short _02051416 - _02051398 - 2 ; case 5
	.short _0205142A - _02051398 - 2 ; case 6
_020513A6:
	ldr r0, [r6, #0x38]
	bl sub_02062C48
	ldr r0, [r6, #0xc]
	bl sub_0202CD88
	mov r1, #7
	bl sub_0202CF28
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r0, r7, #0
	bl sub_020557DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205144C
_020513CA:
	add r0, r7, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205144C
_020513D8:
	ldr r1, [r5, #0x10]
	add r0, r7, #0
	bl sub_02050ABC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205144C
_020513E8:
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	bl sub_02050B1C
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_020563AC
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_020518B0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205144C
_02051408:
	add r0, r7, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205144C
_02051416:
	ldr r0, [r6, #0x38]
	bl sub_02062C78
	add r0, r7, #0
	bl sub_020558F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205144C
_0205142A:
	add r0, r5, #0
	bl sub_02050AF0
	add r0, r6, #0
	bl sub_020563BC
	cmp r0, #0
	bne _02051448
	add r0, r7, #0
	mov r1, #3
	mov r2, #0
	bl sub_0203E918
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02051448:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205144C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205136C

	thumb_func_start sub_02051450
sub_02051450: ; 0x02051450
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _0205147C ; =sub_0205136C
	add r0, r5, #0
	bl sub_02050904
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0205147C: .word sub_0205136C
	thumb_func_end sub_02051450

	thumb_func_start sub_02051480
sub_02051480: ; 0x02051480
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r6, r1, #0
	str r2, [sp, #8]
	add r7, r3, #0
	bl sub_02050A60
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #1
	bl sub_02051D8C
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02052314
	mov r0, #0x63
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	str r6, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x20]
	ldr r1, [r5, #0xc]
	ldr r2, [sp, #8]
	add r0, r4, #0
	bl sub_02079170
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #8
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02051C00
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	str r7, [sp]
	bl sub_02050C4C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02051480

	thumb_func_start sub_020514E8
sub_020514E8: ; 0x020514E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A64
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #6
	bhi _0205158A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02051514: ; jump table
	.short _02051522 - _02051514 - 2 ; case 0
	.short _0205153A - _02051514 - 2 ; case 1
	.short _02051548 - _02051514 - 2 ; case 2
	.short _02051558 - _02051514 - 2 ; case 3
	.short _0205155E - _02051514 - 2 ; case 4
	.short _0205156C - _02051514 - 2 ; case 5
	.short _02051580 - _02051514 - 2 ; case 6
_02051522:
	ldr r0, [r7, #0x38]
	bl sub_02062C48
	ldr r1, [r6, #4]
	ldr r2, [r6, #8]
	add r0, r5, #0
	bl sub_020557DC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205158A
_0205153A:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205158A
_02051548:
	ldr r1, [r6, #0x10]
	add r0, r5, #0
	bl sub_02050ABC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205158A
_02051558:
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205158A
_0205155E:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205158A
_0205156C:
	ldr r0, [r7, #0x38]
	bl sub_02062C78
	add r0, r5, #0
	bl sub_020558F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0205158A
_02051580:
	add r0, r6, #0
	bl sub_02050AF0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205158A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020514E8

	thumb_func_start sub_02051590
sub_02051590: ; 0x02051590
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r1, r0, #0
	mov r0, #0xb
	bl sub_02051F4C
	add r4, r0, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _020515C8 ; =sub_020514E8
	add r0, r5, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_020515C8: .word sub_020514E8
	thumb_func_end sub_02051590

	thumb_func_start sub_020515CC
sub_020515CC: ; 0x020515CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp, #8]
	bl sub_02050A60
	add r6, r0, #0
	cmp r5, #0
	beq _020515F4
	cmp r7, r5
	beq _020515F4
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020515F0
	mov r4, #0x13
	b _020515FE
_020515F0:
	mov r4, #0x4b
	b _020515FE
_020515F4:
	cmp r7, r5
	bne _020515FC
	mov r4, #3
	b _020515FE
_020515FC:
	mov r4, #1
_020515FE:
	add r0, r6, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	mov r0, #0xb
	add r1, r4, #0
	bl sub_02051D8C
	add r1, r6, #0
	add r4, r0, #0
	bl sub_02052314
	ldr r0, [r6, #0x1c]
	ldr r2, [r0, #0]
	ldr r0, _02051678 ; =0x0000023D
	cmp r2, r0
	blt _02051638
	add r1, r0, #0
	add r1, #0xa
	cmp r2, r1
	bgt _02051638
	add r1, r0, #0
	sub r1, #0xb1
	ldr r2, [r4, r1]
	mov r1, #0x80
	orr r1, r2
	sub r0, #0xb1
	str r1, [r4, r0]
_02051638:
	str r7, [r4, #0x1c]
	ldr r0, [sp, #8]
	str r5, [r4, #0x24]
	str r0, [r4, #0x20]
	ldr r1, [r6, #0xc]
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	bl sub_02079170
	ldr r0, [r6, #0xc]
	bl sub_0202CD88
	mov r1, #8
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02051C00
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r3, r0, #0
	ldr r0, [sp, #0x24]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r2, r5, #0
	bl sub_02050C4C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02051678: .word 0x0000023D
	thumb_func_end sub_020515CC

	thumb_func_start sub_0205167C
sub_0205167C: ; 0x0205167C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r7, r0, #0
	add r4, r1, #0
	bl sub_02050A60
	add r6, r0, #0
	mov r0, #0xb
	add r1, r5, #0
	bl sub_02051D8C
	add r5, r0, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020526CC
	add r0, r5, #0
	bl sub_02051C00
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _020516C4 ; =sub_02050CA8
	add r0, r7, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020516C4: .word sub_02050CA8
	thumb_func_end sub_0205167C

	thumb_func_start sub_020516C8
sub_020516C8: ; 0x020516C8
	push {r4, lr}
	add r4, r1, #0
	bl sub_020261B0
	mov r1, #8
	tst r1, r4
	beq _020516DA
	mov r1, #0xe
	b _020516E6
_020516DA:
	mov r1, #2
	tst r1, r4
	beq _020516E4
	mov r1, #7
	b _020516E6
_020516E4:
	mov r1, #0
_020516E6:
	cmp r0, #0xff
	beq _020516EE
	add r0, r0, #1
	add r1, r1, r0
_020516EE:
	add r0, r1, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020516C8

	thumb_func_start sub_020516F4
sub_020516F4: ; 0x020516F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r7, r1, #0
	str r2, [sp, #4]
	add r4, r3, #0
	bl sub_02050A60
	add r6, r0, #0
	cmp r4, #0
	bne _02051718
	mov r0, #0xb
	mov r1, #5
	bl sub_02051D8C
	add r4, r0, #0
	mov r5, #0
	b _02051746
_02051718:
	cmp r4, #1
	bne _0205172A
	mov r0, #0xb
	mov r1, #7
	bl sub_02051D8C
	add r4, r0, #0
	mov r5, #7
	b _02051746
_0205172A:
	mov r0, #0xb
	mov r1, #0x8f
	bl sub_02051D8C
	add r4, r0, #0
	mov r1, #1
	str r1, [r4, #0x1c]
	mov r1, #2
	str r1, [r4, #0x24]
	ldr r1, [r6, #0xc]
	mov r2, #0xb
	bl sub_02079170
	mov r5, #0xe
_02051746:
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02052348
	ldr r0, [r6, #0xc]
	mov r1, #0xb
	add r2, sp, #8
	bl sub_0202F1F8
	ldr r0, _02051788 ; =0x000001B2
	strb r5, [r4, r0]
	add r0, r4, #0
	bl sub_02051C00
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r0, [sp]
	ldr r1, _0205178C ; =sub_02050D4C
	str r7, [r2, #0xc]
	bl sub_02050944
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02051788: .word 0x000001B2
_0205178C: .word sub_02050D4C
	thumb_func_end sub_020516F4

	thumb_func_start sub_02051790
sub_02051790: ; 0x02051790
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02050A68
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _020517B6
	cmp r0, #1
	beq _020517C8
	b _020517DE
_020517B6:
	ldr r1, _020517E4 ; =sub_02050CA8
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02050944
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020517DE
_020517C8:
	bl sub_0202F250
	cmp r0, #1
	bne _020517D4
	bl sub_0202F22C
_020517D4:
	add r0, r6, #0
	bl sub_020597B4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020517DE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020517E4: .word sub_02050CA8
	thumb_func_end sub_02051790

	thumb_func_start sub_020517E8
sub_020517E8: ; 0x020517E8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	add r1, r7, #0
	bl sub_02051D8C
	add r1, r5, #0
	add r2, r6, #0
	add r4, r0, #0
	bl sub_020526CC
	ldr r0, [r5, #0xc]
	mov r1, #0xb
	add r2, sp, #0
	bl sub_0202F1F8
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl sub_020516C8
	ldr r1, _02051844 ; =0x000001B2
	strb r0, [r4, r1]
	add r0, r4, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _02051848 ; =sub_02051790
	add r0, r5, #0
	bl sub_02050904
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02051844: .word 0x000001B2
_02051848: .word sub_02051790
	thumb_func_end sub_020517E8

	thumb_func_start sub_0205184C
sub_0205184C: ; 0x0205184C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	add r1, r7, #0
	bl sub_02051D8C
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	add r4, r0, #0
	bl sub_020524E4
	ldr r0, [r5, #0xc]
	mov r1, #0xb
	add r2, sp, #0
	bl sub_0202F1F8
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl sub_020516C8
	ldr r1, _020518A8 ; =0x000001B2
	strb r0, [r4, r1]
	add r0, r4, #0
	bl sub_02051C00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02050ACC
	add r2, r0, #0
	ldr r1, _020518AC ; =sub_02051790
	add r0, r5, #0
	bl sub_02050904
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020518A8: .word 0x000001B2
_020518AC: .word sub_02051790
	thumb_func_end sub_0205184C

	thumb_func_start sub_020518B0
sub_020518B0: ; 0x020518B0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r1, #0]
	mov r3, #4
	ldr r2, [r1, #0x14]
	tst r3, r0
	bne _02051984
	mov r3, #0x80
	add r5, r0, #0
	tst r5, r3
	bne _02051984
	cmp r0, #0
	beq _020518D4
	add r3, #0x80
	cmp r0, r3
	beq _020518D4
	cmp r0, #0x4a
	bne _02051920
_020518D4:
	cmp r2, #1
	bne _020518E6
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	mov r1, #8
	bl sub_0202CFEC
	pop {r3, r4, r5, pc}
_020518E6:
	cmp r2, #4
	bne _02051984
	ldr r0, [r1, #8]
	mov r1, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	mov r0, #0
	bl sub_0207A294
	cmp r0, #0
	ldr r0, [r4, #0xc]
	beq _02051914
	bl sub_0202CD88
	mov r1, #9
	bl sub_0202CFEC
	pop {r3, r4, r5, pc}
_02051914:
	bl sub_0202CD88
	mov r1, #0xa
	bl sub_0202CFEC
	pop {r3, r4, r5, pc}
_02051920:
	mov r3, #1
	tst r3, r0
	bne _0205192C
	mov r3, #0x10
	tst r3, r0
	beq _0205193E
_0205192C:
	cmp r2, #1
	bne _02051984
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	mov r1, #0xb
	bl sub_0202CFEC
	pop {r3, r4, r5, pc}
_0205193E:
	mov r3, #0x20
	add r5, r0, #0
	tst r5, r3
	bne _0205194C
	lsl r3, r3, #4
	tst r0, r3
	beq _02051984
_0205194C:
	cmp r2, #4
	bne _02051984
	ldr r0, [r1, #8]
	mov r1, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	mov r0, #0
	bl sub_0207A294
	cmp r0, #0
	ldr r0, [r4, #0xc]
	beq _0205197A
	bl sub_0202CD88
	mov r1, #9
	bl sub_0202CFEC
	pop {r3, r4, r5, pc}
_0205197A:
	bl sub_0202CD88
	mov r1, #0xa
	bl sub_0202CFEC
_02051984:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020518B0

	thumb_func_start sub_02051988
sub_02051988: ; 0x02051988
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r2, #4
	ldr r1, [r4, #0x14]
	tst r2, r0
	bne _020519A8
	mov r3, #0x80
	add r2, r0, #0
	tst r2, r3
	bne _020519A8
	lsl r2, r3, #2
	tst r2, r0
	beq _020519AA
_020519A8:
	b _02051AB8
_020519AA:
	cmp r0, #0
	beq _020519BC
	add r3, #0x80
	cmp r0, r3
	beq _020519BC
	cmp r0, #0x4a
	beq _020519BC
	cmp r0, #0x20
	bne _02051A8E
_020519BC:
	cmp r1, #1
	bne _02051A2C
	add r0, r5, #0
	add r0, #0x7a
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x7a
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #5
	blo _02051AB8
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0207A0FC
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E5C
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r3, #0xb
	str r3, [sp]
	lsl r3, r3, #5
	ldr r3, [r4, r3]
	lsl r1, r7, #0x10
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0202BECC
	add r5, #0x9c
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #2
	bl sub_0202B758
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02051A2C:
	cmp r1, #4
	bne _02051AB8
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #4]
	bl sub_0207A0FC
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E5C
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r3, #0xb
	str r3, [sp]
	lsl r3, r3, #5
	ldr r3, [r4, r3]
	lsl r1, r7, #0x10
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [sp, #8]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0202BE4C
	add r5, #0x9c
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #2
	bl sub_0202B758
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02051A8E:
	mov r2, #1
	tst r2, r0
	bne _02051A9A
	mov r2, #0x10
	tst r0, r2
	beq _02051AB8
_02051A9A:
	cmp r1, #1
	bne _02051AB8
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	ldr r1, [r1, #0]
	ldr r2, [r4, #0x1c]
	add r0, #0x9c
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #0xb
	bl sub_0202C720
_02051AB8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02051988

	thumb_func_start sub_02051ABC
sub_02051ABC: ; 0x02051ABC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r7, r1, #0
	str r2, [sp, #8]
	add r6, r3, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	mov r0, #0xb
	mov r1, #0
	bl sub_02051D8C
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02052314
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ov6_022420D4
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0207A0FC
	bl sub_02077A64
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02051B10
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #8
	orr r0, r2
	str r0, [r4, r1]
_02051B10:
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r1, #0xc0
	orr r2, r1
	str r2, [r4, r0]
	mov r0, #0x17
	add r1, #0x94
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #7
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02051C00
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02051C10
	add r3, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	str r6, [sp]
	bl sub_02050C4C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02051ABC