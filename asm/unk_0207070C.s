	.include "macros/function.inc"
	.include "include/unk_0207070C.inc"

	

	.text


	thumb_func_start sub_0207070C
sub_0207070C: ; 0x0207070C
	cmp r0, #0
	bne _02070718
	ldr r0, _02070720 ; =0x020F0368
	lsl r1, r1, #3
	ldr r0, [r0, r1]
	bx lr
_02070718:
	ldr r0, _02070724 ; =0x020F036C
	lsl r1, r1, #3
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_02070720: .word 0x020F0368
_02070724: .word 0x020F036C
	thumb_func_end sub_0207070C

	thumb_func_start sub_02070728
sub_02070728: ; 0x02070728
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	str r5, [r4, #4]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	mov r0, #0
	strh r0, [r4, #0xc]
	ldr r0, [r5, #0x3c]
	bl sub_0205F158
	cmp r0, #1
	bne _02070752
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02070838
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02070752:
	add r0, r5, #0
	add r1, sp, #8
	bl sub_0203C9D4
	ldr r0, [sp, #8]
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02070792
	bl sub_02062920
	cmp r0, #0x54
	beq _02070776
	cmp r0, #0x55
	beq _02070780
	cmp r0, #0x56
	beq _0207078A
	b _02070792
_02070776:
	ldrh r1, [r4, #0xc]
	mov r0, #8
	orr r0, r1
	strh r0, [r4, #0xc]
	b _02070792
_02070780:
	ldrh r1, [r4, #0xc]
	mov r0, #0x20
	orr r0, r1
	strh r0, [r4, #0xc]
	b _02070792
_0207078A:
	ldrh r1, [r4, #0xc]
	mov r0, #1
	orr r0, r1
	strh r0, [r4, #0xc]
_02070792:
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	str r0, [sp, #4]
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	ldr r1, [sp, #4]
	str r2, [sp]
	add r0, r5, #0
	bl sub_02054F94
	add r7, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, sp, #4
	add r2, sp, #0
	bl sub_020615AC
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_02054F94
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, r7, #0
	add r2, r6, #0
	bl ov5_021E0118
	cmp r0, #0
	beq _020707DA
	ldrh r1, [r4, #0xc]
	mov r0, #4
	orr r0, r1
	strh r0, [r4, #0xc]
_020707DA:
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	add r0, r6, #0
	bl ov5_021E0760
	cmp r0, #0
	beq _020707F4
	ldrh r1, [r4, #0xc]
	mov r0, #0x80
	orr r0, r1
	strh r0, [r4, #0xc]
_020707F4:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	bl sub_0205DDB4
	cmp r0, #0
	beq _02070808
	ldrh r1, [r4, #0xc]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r4, #0xc]
_02070808:
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A74C
	cmp r0, #0xe
	beq _0207081E
	cmp r0, #0x10
	beq _0207082A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0207081E:
	ldrh r1, [r4, #0xc]
	mov r0, #0x10
	add sp, #0xc
	orr r0, r1
	strh r0, [r4, #0xc]
	pop {r4, r5, r6, r7, pc}
_0207082A:
	ldrh r1, [r4, #0xc]
	mov r0, #1
	lsl r0, r0, #8
	orr r0, r1
	strh r0, [r4, #0xc]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02070728

	thumb_func_start sub_02070838
sub_02070838: ; 0x02070838
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	bl sub_0205EAA0
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_020616F0
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_02061760
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	add r2, r6, #0
	bl ov5_021E0118
	cmp r0, #1
	bne _0207086A
	ldrh r1, [r4, #0xc]
	mov r0, #4
	orr r0, r1
	strh r0, [r4, #0xc]
_0207086A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02070838

	thumb_func_start sub_0207086C
sub_0207086C: ; 0x0207086C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x20
	mov r1, #0x10
	bl sub_02018144
	ldr r1, _0207088C ; =0x19740205
	str r1, [r0, #0]
	ldr r1, [r4, #8]
	str r1, [r0, #4]
	ldr r2, [r5, #0]
	ldr r1, [r5, #4]
	str r2, [r0, #8]
	str r1, [r0, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0207088C: .word 0x19740205
	thumb_func_end sub_0207086C

	thumb_func_start sub_02070890
sub_02070890: ; 0x02070890
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _020708A8 ; =0x19740205
	cmp r1, r0
	beq _020708A0
	bl sub_02022974
_020708A0:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
_020708A8: .word 0x19740205
	thumb_func_end sub_02070890

	thumb_func_start sub_020708AC
sub_020708AC: ; 0x020708AC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _020708BE
	mov r0, #1
	pop {r4, pc}
_020708BE:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #1
	bl sub_02025F34
	cmp r0, #0
	bne _020708D2
	mov r0, #2
	pop {r4, pc}
_020708D2:
	ldrh r1, [r4, #0xc]
	mov r0, #1
	tst r1, r0
	beq _020708DC
	mov r0, #0
_020708DC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020708AC

	thumb_func_start sub_020708E0
sub_020708E0: ; 0x020708E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070910 ; =sub_02070914
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070910: .word sub_02070914
	thumb_func_end sub_020708E0

	thumb_func_start sub_02070914
sub_02070914: ; 0x02070914
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _0207094C ; =0x00002718
	ldr r2, [r4, #4]
	add r0, r5, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0207094C: .word 0x00002718
	thumb_func_end sub_02070914

	thumb_func_start sub_02070950
sub_02070950: ; 0x02070950
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070962
	mov r0, #1
	pop {r4, pc}
_02070962:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #2
	bl sub_02025F34
	cmp r0, #0
	bne _02070976
	mov r0, #2
	pop {r4, pc}
_02070976:
	ldr r0, [r4, #0]
	bl sub_0203A1D4
	cmp r0, #0
	bne _02070984
	mov r0, #1
	pop {r4, pc}
_02070984:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _02070998
	mov r0, #3
	pop {r4, pc}
_02070998:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #1
	beq _020709B8
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _020709BC
_020709B8:
	mov r0, #1
	b _020709BE
_020709BC:
	mov r0, #0
_020709BE:
	cmp r0, #1
	bne _020709C6
	mov r0, #1
	pop {r4, pc}
_020709C6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070950

	thumb_func_start sub_020709CC
sub_020709CC: ; 0x020709CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl sub_02018144
	ldrh r1, [r5, #4]
	str r1, [r0, #0]
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xb
	sub r1, #0xbc
	bl sub_02018144
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r6, #0
	mov r2, #1
	bl sub_0206B70C
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r6, #0
	bl sub_0203D884
	ldr r1, _02070A20 ; =sub_0203C434
	add r0, r4, #0
	bl sub_0203B674
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070A20: .word sub_0203C434
	thumb_func_end sub_020709CC

	thumb_func_start sub_02070A24
sub_02070A24: ; 0x02070A24
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070A36
	mov r0, #1
	pop {r4, pc}
_02070A36:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #3
	bl sub_02025F34
	cmp r0, #0
	bne _02070A4A
	mov r0, #2
	pop {r4, pc}
_02070A4A:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB74
	cmp r0, #2
	bne _02070A5A
	mov r0, #4
	pop {r4, pc}
_02070A5A:
	ldrh r1, [r4, #0xc]
	mov r0, #4
	tst r0, r1
	bne _02070A66
	mov r0, #1
	pop {r4, pc}
_02070A66:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _02070A7A
	mov r0, #3
	pop {r4, pc}
_02070A7A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070A24

	thumb_func_start sub_02070A80
sub_02070A80: ; 0x02070A80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070AB0 ; =sub_02070AB4
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070AB0: .word sub_02070AB4
	thumb_func_end sub_02070A80

	thumb_func_start sub_02070AB4
sub_02070AB4: ; 0x02070AB4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _02070AEC ; =0x0000271C
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02070AEC: .word 0x0000271C
	thumb_func_end sub_02070AB4

	thumb_func_start sub_02070AF0
sub_02070AF0: ; 0x02070AF0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070B02
	mov r0, #1
	pop {r4, pc}
_02070B02:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #5
	bl sub_02025F34
	cmp r0, #0
	bne _02070B16
	mov r0, #2
	pop {r4, pc}
_02070B16:
	ldrh r1, [r4, #0xc]
	mov r0, #8
	tst r0, r1
	beq _02070B22
	mov r0, #0
	pop {r4, pc}
_02070B22:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070AF0

	thumb_func_start sub_02070B28
sub_02070B28: ; 0x02070B28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070B58 ; =sub_02070B5C
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070B58: .word sub_02070B5C
	thumb_func_end sub_02070B28

	thumb_func_start sub_02070B5C
sub_02070B5C: ; 0x02070B5C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _02070B94 ; =0x0000271A
	ldr r2, [r4, #4]
	add r0, r5, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02070B94: .word 0x0000271A
	thumb_func_end sub_02070B5C

	thumb_func_start sub_02070B98
sub_02070B98: ; 0x02070B98
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070BAA
	mov r0, #1
	pop {r4, pc}
_02070BAA:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #4
	bl sub_02025F34
	cmp r0, #0
	bne _02070BBE
	mov r0, #2
	pop {r4, pc}
_02070BBE:
	ldrh r1, [r4, #0xc]
	mov r0, #0x10
	tst r0, r1
	beq _02070BCA
	mov r0, #0
	pop {r4, pc}
_02070BCA:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070B98

	thumb_func_start sub_02070BD0
sub_02070BD0: ; 0x02070BD0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070C00 ; =sub_02070C04
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070C00: .word sub_02070C04
	thumb_func_end sub_02070BD0

	thumb_func_start sub_02070C04
sub_02070C04: ; 0x02070C04
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _02070C3C ; =0x0000271E
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02070C3C: .word 0x0000271E
	thumb_func_end sub_02070C04

	thumb_func_start sub_02070C40
sub_02070C40: ; 0x02070C40
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070C52
	mov r0, #1
	pop {r4, pc}
_02070C52:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #0
	bl sub_02025F34
	cmp r0, #0
	bne _02070C66
	mov r0, #2
	pop {r4, pc}
_02070C66:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB74
	cmp r0, #2
	bne _02070C76
	mov r0, #1
	pop {r4, pc}
_02070C76:
	ldrh r1, [r4, #0xc]
	mov r0, #0x20
	tst r0, r1
	beq _02070C82
	mov r0, #0
	pop {r4, pc}
_02070C82:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070C40

	thumb_func_start sub_02070C88
sub_02070C88: ; 0x02070C88
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070CB8 ; =sub_02070CBC
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070CB8: .word sub_02070CBC
	thumb_func_end sub_02070C88

	thumb_func_start sub_02070CBC
sub_02070CBC: ; 0x02070CBC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _02070CF4 ; =0x00002719
	ldr r2, [r4, #4]
	add r0, r5, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02070CF4: .word 0x00002719
	thumb_func_end sub_02070CBC

	thumb_func_start sub_02070CF8
sub_02070CF8: ; 0x02070CF8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070D0A
	mov r0, #1
	pop {r4, pc}
_02070D0A:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #7
	bl sub_02025F34
	cmp r0, #0
	bne _02070D1E
	mov r0, #2
	pop {r4, pc}
_02070D1E:
	ldrh r1, [r4, #0xc]
	mov r0, #0x40
	tst r0, r1
	beq _02070D2A
	mov r0, #0
	pop {r4, pc}
_02070D2A:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070CF8

	thumb_func_start sub_02070D30
sub_02070D30: ; 0x02070D30
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070D60 ; =sub_02070D64
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070D60: .word sub_02070D64
	thumb_func_end sub_02070D30

	thumb_func_start sub_02070D64
sub_02070D64: ; 0x02070D64
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _02070D9C ; =0x0000271D
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02070D9C: .word 0x0000271D
	thumb_func_end sub_02070D64

	thumb_func_start sub_02070DA0
sub_02070DA0: ; 0x02070DA0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070DB2
	mov r0, #1
	pop {r4, pc}
_02070DB2:
	ldr r0, [r1, #0xc]
	bl sub_02025E38
	mov r1, #6
	bl sub_02025F34
	cmp r0, #0
	bne _02070DC6
	mov r0, #2
	pop {r4, pc}
_02070DC6:
	ldrh r1, [r4, #0xc]
	mov r0, #0x80
	tst r0, r1
	bne _02070DD2
	mov r0, #1
	pop {r4, pc}
_02070DD2:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _02070DE6
	mov r0, #3
	pop {r4, pc}
_02070DE6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070DA0

	thumb_func_start sub_02070DEC
sub_02070DEC: ; 0x02070DEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070E1C ; =sub_02070E20
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070E1C: .word sub_02070E20
	thumb_func_end sub_02070DEC

	thumb_func_start sub_02070E20
sub_02070E20: ; 0x02070E20
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _02070E58 ; =0x0000271B
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02070E58: .word 0x0000271B
	thumb_func_end sub_02070E20

	thumb_func_start sub_02070E5C
sub_02070E5C: ; 0x02070E5C
	ldr r1, [r0, #4]
	ldr r1, [r1, #0x70]
	sub r1, r1, #2
	cmp r1, #1
	bhi _02070E6A
	mov r0, #1
	bx lr
_02070E6A:
	ldrh r1, [r0, #0xc]
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r1
	beq _02070E78
	mov r0, #0
	bx lr
_02070E78:
	mov r0, #1
	bx lr
	thumb_func_end sub_02070E5C

	thumb_func_start sub_02070E7C
sub_02070E7C: ; 0x02070E7C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	ldr r0, [r6, #4]
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02070EAC ; =sub_02070EB0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02070EAC: .word sub_02070EB0
	thumb_func_end sub_02070E7C

	thumb_func_start sub_02070EB0
sub_02070EB0: ; 0x02070EB0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _02070EE8 ; =0x0000271F
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02070EE8: .word 0x0000271F
	thumb_func_end sub_02070EB0

	thumb_func_start sub_02070EEC
sub_02070EEC: ; 0x02070EEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070EFE
	mov r0, #1
	pop {r4, pc}
_02070EFE:
	ldr r0, [r4, #0]
	bl sub_0203A228
	cmp r0, #0
	bne _02070F0C
	mov r0, #1
	pop {r4, pc}
_02070F0C:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _02070F20
	mov r0, #3
	pop {r4, pc}
_02070F20:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #1
	beq _02070F40
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _02070F44
_02070F40:
	mov r0, #1
	b _02070F46
_02070F44:
	mov r0, #0
_02070F46:
	cmp r0, #1
	bne _02070F4E
	mov r0, #1
	pop {r4, pc}
_02070F4E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070EEC

	thumb_func_start sub_02070F54
sub_02070F54: ; 0x02070F54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020509D4
	ldrh r1, [r5, #4]
	ldr r2, [r6, #0xc]
	mov r0, #0xb
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_020711C8
	mov r1, #0x72
	ldr r2, _02070F90 ; =sub_02070F94
	lsl r1, r1, #2
	str r2, [r4, r1]
	add r1, #0x30
	str r0, [r4, r1]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	nop
_02070F90: .word sub_02070F94
	thumb_func_end sub_02070F54

	thumb_func_start sub_02070F94
sub_02070F94: ; 0x02070F94
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	add r0, r6, #0
	mov r2, #4
	bl ov6_02247530
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020181C4
	ldr r1, _02070FC8 ; =0x02247555
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02050924
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02070FC8: .word 0x02247555
	thumb_func_end sub_02070F94

	thumb_func_start sub_02070FCC
sub_02070FCC: ; 0x02070FCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02070FDE
	mov r0, #1
	pop {r4, pc}
_02070FDE:
	ldr r0, [r4, #0]
	bl sub_0203A274
	cmp r0, #1
	bne _02070FF2
	ldr r0, [r4, #0]
	bl sub_0203A1B8
	cmp r0, #1
	beq _02070FF6
_02070FF2:
	mov r0, #1
	pop {r4, pc}
_02070FF6:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _0207100A
	mov r0, #3
	pop {r4, pc}
_0207100A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070FCC

	thumb_func_start sub_02071010
sub_02071010: ; 0x02071010
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020509D4
	ldrh r1, [r5, #4]
	ldr r2, [r6, #0xc]
	mov r0, #0xb
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_020711C8
	mov r1, #0x72
	ldr r2, _0207104C ; =sub_02071050
	lsl r1, r1, #2
	str r2, [r4, r1]
	add r1, #0x30
	str r0, [r4, r1]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r4, r5, r6, pc}
	nop
_0207104C: .word sub_02071050
	thumb_func_end sub_02071010

	thumb_func_start sub_02071050
sub_02071050: ; 0x02071050
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r6, r0, #0
	ldr r1, [r6, #0]
	add r0, r4, #0
	mov r2, #0xb
	bl ov6_02247488
	ldr r1, [r4, #0x1c]
	add r7, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0xa
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #4
	bl sub_0202BE00
	add r4, #0x9c
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #1
	bl sub_0202B758
	add r0, r6, #0
	bl sub_020181C4
	ldr r1, _020710A0 ; =0x022474AD
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02050924
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020710A0: .word 0x022474AD
	thumb_func_end sub_02071050

	thumb_func_start sub_020710A4
sub_020710A4: ; 0x020710A4
	push {r3, lr}
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x70]
	sub r0, r0, #2
	cmp r0, #1
	bhi _020710B4
	mov r0, #1
	pop {r3, pc}
_020710B4:
	ldr r0, [r1, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _020710C6
	mov r0, #1
	b _020710C8
_020710C6:
	mov r0, #0
_020710C8:
	cmp r0, #1
	bne _020710D0
	mov r0, #1
	pop {r3, pc}
_020710D0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020710A4

	thumb_func_start sub_020710D4
sub_020710D4: ; 0x020710D4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [r6, #0]
	bl sub_02050A64
	ldrh r1, [r6, #4]
	add r4, r0, #0
	ldr r2, [r5, #0xc]
	lsl r1, r1, #0x18
	mov r0, #0xb
	lsr r1, r1, #0x18
	bl sub_020711C8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _0207112C ; =0x021F101D
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r6, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	ldr r1, [r5, #0x1c]
	mov r0, #0xb
	ldr r1, [r1, #0]
	add r2, r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0202BE00
	add r5, #0x9c
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #1
	bl sub_0202B758
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207112C: .word 0x021F101D
	thumb_func_end sub_020710D4

	thumb_func_start sub_02071130
sub_02071130: ; 0x02071130
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r1, [r0, #0x70]
	sub r1, r1, #2
	cmp r1, #1
	bls _02071146
	mov r1, #9
	bl sub_02071CB4
	cmp r0, #1
	bne _0207114A
_02071146:
	mov r0, #1
	pop {r3, pc}
_0207114A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02071130

	thumb_func_start sub_02071150
sub_02071150: ; 0x02071150
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_02050A60
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207086C
	add r5, r0, #0
	add r0, r7, #0
	bl sub_020509D4
	mov r0, #0x72
	ldr r1, _02071188 ; =sub_0207118C
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x30
	str r5, [r4, r0]
	mov r0, #0xa
	strh r0, [r4, #0x2a]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02071188: .word sub_0207118C
	thumb_func_end sub_02071150

	thumb_func_start sub_0207118C
sub_0207118C: ; 0x0207118C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r1, _020711C4 ; =0x000022C4
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E918
	mov r2, #0
	str r2, [sp]
	ldrh r1, [r4, #0xc]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203F21C
	add r0, r4, #0
	bl sub_02070890
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_020711C4: .word 0x000022C4
	thumb_func_end sub_0207118C

	.rodata


	.global Unk_020F0368
Unk_020F0368: ; 0x020F0368
	.incbin "incbin/arm9_rodata.bin", 0xB728, 0x68

