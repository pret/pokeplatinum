	.include "macros/function.inc"
	.include "include/unk_020329E0.inc"

	

	.text


	thumb_func_start sub_020329E0
sub_020329E0: ; 0x020329E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	bl sub_02025E38
	str r0, [sp, #8]
	ldr r0, _02032A6C ; =0x021C07B4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02032A66
	mov r1, #0xea
	mov r0, #0xf
	lsl r1, r1, #2
	bl sub_02018144
	ldr r1, _02032A6C ; =0x021C07B4
	mov r2, #0xea
	str r0, [r1, #0]
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	mov r6, #0
	ldr r7, _02032A6C ; =0x021C07B4
	add r4, r6, #0
	add r5, r6, #0
_02032A16:
	ldr r1, [r7, #0]
	add r0, r1, #0
	add r0, #0x2c
	add r2, r0, r4
	mov r0, #0xd3
	add r1, r1, r5
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r6, #0
	bl sub_02032D98
	add r6, r6, #1
	add r4, #0x68
	add r5, r5, #4
	cmp r6, #8
	blt _02032A16
	ldr r2, _02032A6C ; =0x021C07B4
	mov r1, #0xe9
	ldr r3, [r2, #0]
	mov r0, #0
	lsl r1, r1, #2
	strb r0, [r3, r1]
	ldr r4, [r2, #0]
	add r3, r1, #1
	strb r0, [r4, r3]
	add r3, r1, #2
	ldr r4, [r2, #0]
	sub r1, #0x58
	strb r0, [r4, r3]
	ldr r3, [r2, #0]
	ldr r0, [sp]
	str r0, [r3, #8]
	ldr r3, [r2, #0]
	ldr r0, [sp, #4]
	str r0, [r3, #4]
	ldr r2, [r2, #0]
	ldr r0, [sp, #8]
	ldr r1, [r2, r1]
	bl sub_02025E80
_02032A66:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02032A6C: .word 0x021C07B4
	thumb_func_end sub_020329E0

	thumb_func_start sub_02032A70
sub_02032A70: ; 0x02032A70
	push {r3, r4, r5, lr}
	ldr r1, _02032AA8 ; =0x021C07B4
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _02032AA4
	mov r4, #0
	mov r0, #0xd3
	add r5, r4, #0
	add r3, r4, #0
	lsl r0, r0, #2
_02032A84:
	ldr r2, [r1, #0]
	add r4, r4, #1
	add r2, r2, r5
	add r5, r5, #4
	str r3, [r2, r0]
	cmp r4, #8
	blt _02032A84
	ldr r0, _02032AA8 ; =0x021C07B4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02032A9E
	bl sub_020181C4
_02032A9E:
	ldr r0, _02032AA8 ; =0x021C07B4
	mov r1, #0
	str r1, [r0, #0]
_02032AA4:
	pop {r3, r4, r5, pc}
	nop
_02032AA8: .word 0x021C07B4
	thumb_func_end sub_02032A70

	thumb_func_start sub_02032AAC
sub_02032AAC: ; 0x02032AAC
	ldr r0, _02032ABC ; =0x021C07B4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02032AB8
	mov r0, #1
	bx lr
_02032AB8:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032ABC: .word 0x021C07B4
	thumb_func_end sub_02032AAC

	thumb_func_start sub_02032AC0
sub_02032AC0: ; 0x02032AC0
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0203608C
	add r4, r0, #0
	ldr r0, _02032BBC ; =0x021C07B4
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_0202B4A0
	str r0, [sp]
	ldr r0, _02032BBC ; =0x021C07B4
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_0202B370
	add r7, r0, #0
	ldr r0, _02032BBC ; =0x021C07B4
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_0202C878
	add r6, r0, #0
	ldr r0, _02032BBC ; =0x021C07B4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _02032AFC
	ldr r0, [r1, #8]
	bl sub_02025E38
_02032AFC:
	ldr r1, _02032BBC ; =0x021C07B4
	ldr r2, [r1, #0]
	lsl r1, r4, #2
	add r2, r2, r1
	mov r1, #0xd3
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02025E80
	mov r0, #0x68
	add r5, r4, #0
	mul r5, r0
	ldr r0, _02032BBC ; =0x021C07B4
	ldr r0, [r0, #0]
	add r0, #0x68
	add r0, r0, r5
	bl sub_020C3FA0
	ldr r0, [sp]
	mov r1, #1
	mov r2, #0
	bl sub_0202B42C
	ldr r1, _02032BBC ; =0x021C07B4
	mov r2, #0x10
	ldr r1, [r1, #0]
	add r1, #0x58
	add r1, r1, r5
	bl sub_020C4DB0
	add r0, r6, #0
	bl sub_0202C8C0
	ldr r1, _02032BBC ; =0x021C07B4
	ldr r1, [r1, #0]
	add r1, r1, r5
	add r1, #0x6f
	strb r0, [r1]
	add r0, r6, #0
	bl sub_0202C8C4
	ldr r2, _02032BBC ; =0x021C07B4
	ldr r1, [r2, #0]
	add r1, r1, r5
	add r1, #0x70
	strb r0, [r1]
	ldr r0, [r2, #0]
	ldr r0, [r0, #8]
	bl sub_02028810
	ldr r2, _02032BBC ; =0x021C07B4
	ldr r1, [r2, #0]
	add r1, r1, r5
	add r1, #0x71
	strb r0, [r1]
	ldr r2, [r2, #0]
	mov r0, #1
	add r2, #0x71
	ldrb r1, [r2, r5]
	sub r0, r0, r1
	strb r0, [r2, r5]
	add r0, r7, #0
	bl sub_0202AD28
	ldr r1, _02032BBC ; =0x021C07B4
	ldr r1, [r1, #0]
	add r1, #0x4c
	add r1, r1, r5
	bl sub_020A4788
	ldr r0, _02032BBC ; =0x021C07B4
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, #0x20
	add r0, #0xc
	add r0, r0, r5
	bl sub_020C4CF4
	ldr r0, _02032BBC ; =0x021C07B4
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _02032BAA
	add r1, #0xc
	add r1, r1, r5
	bl sub_02026034
_02032BAA:
	ldr r1, _02032BBC ; =0x021C07B4
	mov r0, #3
	ldr r1, [r1, #0]
	mov r2, #0x68
	add r1, #0xc
	add r1, r1, r5
	bl sub_020359DC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02032BBC: .word 0x021C07B4
	thumb_func_end sub_02032AC0

	thumb_func_start sub_02032BC0
sub_02032BC0: ; 0x02032BC0
	mov r0, #0x68
	bx lr
	thumb_func_end sub_02032BC0

	thumb_func_start sub_02032BC4
sub_02032BC4: ; 0x02032BC4
	ldr r0, _02032BD8 ; =0x021C07B4
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02032BD4
	mov r0, #0xe9
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r2, r0]
_02032BD4:
	bx lr
	nop
_02032BD8: .word 0x021C07B4
	thumb_func_end sub_02032BC4

	thumb_func_start sub_02032BDC
sub_02032BDC: ; 0x02032BDC
	ldr r0, _02032BE8 ; =0x021C07B4
	ldr r1, [r0, #0]
	mov r0, #0xe9
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02032BE8: .word 0x021C07B4
	thumb_func_end sub_02032BDC

	thumb_func_start sub_02032BEC
sub_02032BEC: ; 0x02032BEC
	push {r3, r4, r5, lr}
	ldr r1, _02032C78 ; =0x021C07B4
	add r4, r2, #0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02032C74
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02032C74
	ldr r1, _02032C78 ; =0x021C07B4
	mov r2, #0x68
	ldr r5, [r1, #0]
	add r1, r4, #0
	add r1, #0x62
	ldrb r1, [r1]
	add r5, #0xc
	add r0, r4, #0
	add r3, r1, #0
	mul r3, r2
	add r1, r5, r3
	bl sub_020C4DB0
	add r4, #0x62
	ldr r1, _02032C78 ; =0x021C07B4
	ldrb r3, [r4]
	ldr r2, [r1, #0]
	ldr r0, _02032C7C ; =0x000003A6
	strb r3, [r2, r0]
	ldr r2, [r1, #0]
	ldrb r1, [r2, r0]
	sub r0, #0x5a
	lsl r1, r1, #2
	add r1, r2, r1
	ldr r0, [r1, r0]
	bl sub_02025EA8
	cmp r0, #1
	beq _02032C74
	ldr r2, _02032C78 ; =0x021C07B4
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r3, [r2, #0]
	add r1, r0, #0
	add r1, #0xa
	add r4, r3, r0
	ldrb r3, [r3, r1]
	ldrb r1, [r4, r3]
	cmp r1, #2
	bhs _02032C74
	mov r1, #1
	strb r1, [r4, r3]
	ldr r1, [r2, #0]
	add r0, #0xa
	ldrb r4, [r1, r0]
	bl sub_0203608C
	cmp r4, r0
	bne _02032C74
	ldr r0, _02032C78 ; =0x021C07B4
	mov r2, #3
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
_02032C74:
	pop {r3, r4, r5, pc}
	nop
_02032C78: .word 0x021C07B4
_02032C7C: .word 0x000003A6
	thumb_func_end sub_02032BEC

	thumb_func_start sub_02032C80
sub_02032C80: ; 0x02032C80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02032CE0 ; =0x021C07B4
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02032CDC
	mov r3, #0x68
	add r4, r5, #0
	add r0, r2, #0
	mul r4, r3
	add r1, #0xc
	add r1, r1, r4
	add r2, r3, #0
	bl sub_020C4DB0
	ldr r0, _02032CE0 ; =0x021C07B4
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r0, #0x68
	add r0, r0, r4
	bl sub_02033FDC
	ldr r0, _02032CE0 ; =0x021C07B4
	mov r2, #1
	ldr r0, [r0, #0]
	add r1, r0, r5
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	bl sub_0203608C
	cmp r5, r0
	bne _02032CD2
	ldr r0, _02032CE0 ; =0x021C07B4
	mov r2, #3
	ldr r0, [r0, #0]
	add r1, r0, r5
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	pop {r3, r4, r5, pc}
_02032CD2:
	ldr r0, _02032CE0 ; =0x021C07B4
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02032CE4 ; =0x000003A5
	strb r2, [r1, r0]
_02032CDC:
	pop {r3, r4, r5, pc}
	nop
_02032CE0: .word 0x021C07B4
_02032CE4: .word 0x000003A5
	thumb_func_end sub_02032C80

	thumb_func_start sub_02032CE8
sub_02032CE8: ; 0x02032CE8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02032D7C ; =0x021C07B4
	ldr r1, [r0, #0]
	ldr r0, _02032D80 ; =0x000003A5
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02032CFA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02032CFA:
	bl sub_0203608C
	cmp r0, #0
	beq _02032D06
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02032D06:
	mov r0, #5
	bl sub_02036254
	cmp r0, #0
	bne _02032D78
	mov r4, #0
	add r5, r4, #0
	add r7, r4, #0
_02032D16:
	ldr r0, _02032D7C ; =0x021C07B4
	ldr r2, [r0, #0]
	mov r0, #0xe7
	add r1, r2, r4
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02032D56
	add r0, r2, r5
	add r0, #0x6e
	strb r4, [r0]
	ldr r0, _02032D7C ; =0x021C07B4
	ldr r6, [r0, #0]
	bl sub_02025E68
	add r2, r0, #0
	mov r0, #0xd3
	add r1, r6, r7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r6, #0x2c
	add r1, r6, r5
	bl sub_020C4DB0
	ldr r1, _02032D7C ; =0x021C07B4
	mov r0, #4
	ldr r1, [r1, #0]
	mov r2, #0x68
	add r1, #0xc
	add r1, r1, r5
	bl sub_02035F00
_02032D56:
	add r4, r4, #1
	add r5, #0x68
	add r7, r7, #4
	cmp r4, #8
	blt _02032D16
	mov r1, #0
	mov r0, #5
	add r2, r1, #0
	bl sub_02035F00
	ldr r0, _02032D7C ; =0x021C07B4
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02032D80 ; =0x000003A5
	strb r2, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02032D78:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02032D7C: .word 0x021C07B4
_02032D80: .word 0x000003A5
	thumb_func_end sub_02032CE8

	thumb_func_start sub_02032D84
sub_02032D84: ; 0x02032D84
	ldr r0, _02032D90 ; =0x021C07B4
	ldr r1, [r0, #0]
	ldr r0, _02032D94 ; =0x000003A5
	ldrb r0, [r1, r0]
	bx lr
	nop
_02032D90: .word 0x021C07B4
_02032D94: .word 0x000003A5
	thumb_func_end sub_02032D84

	thumb_func_start sub_02032D98
sub_02032D98: ; 0x02032D98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02032DC0 ; =0x021C07B4
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02025E8C
	ldr r0, _02032DC0 ; =0x021C07B4
	mov r2, #0
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	pop {r4, pc}
	nop
_02032DC0: .word 0x021C07B4
	thumb_func_end sub_02032D98

	thumb_func_start sub_02032DC4
sub_02032DC4: ; 0x02032DC4
	ldr r1, _02032DDC ; =0x021C07B4
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0xe7
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02032DD8
	mov r0, #1
	bx lr
_02032DD8:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032DDC: .word 0x021C07B4
	thumb_func_end sub_02032DC4

	thumb_func_start sub_02032DE0
sub_02032DE0: ; 0x02032DE0
	ldr r1, _02032DFC ; =0x021C07B4
	mov r2, #1
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0xe7
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #2
	beq _02032DF8
	cmp r0, #1
	beq _02032DF8
	mov r2, #0
_02032DF8:
	add r0, r2, #0
	bx lr
	; .align 2, 0
_02032DFC: .word 0x021C07B4
	thumb_func_end sub_02032DE0

	thumb_func_start sub_02032E00
sub_02032E00: ; 0x02032E00
	ldr r1, _02032E18 ; =0x021C07B4
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0xe7
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _02032E14
	mov r0, #1
	bx lr
_02032E14:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032E18: .word 0x021C07B4
	thumb_func_end sub_02032E00

	thumb_func_start sub_02032E1C
sub_02032E1C: ; 0x02032E1C
	ldr r1, _02032E2C ; =0x021C07B4
	mov r2, #2
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02032E2C: .word 0x021C07B4
	thumb_func_end sub_02032E1C

	thumb_func_start sub_02032E30
sub_02032E30: ; 0x02032E30
	ldr r1, _02032E40 ; =0x021C07B4
	mov r2, #3
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02032E40: .word 0x021C07B4
	thumb_func_end sub_02032E30

	thumb_func_start sub_02032E44
sub_02032E44: ; 0x02032E44
	ldr r1, _02032E60 ; =0x021C07B4
	mov r0, #0
	ldr r3, [r1, #0]
	mov r1, #0xe7
	lsl r1, r1, #2
_02032E4E:
	ldrb r2, [r3, r1]
	cmp r2, #1
	beq _02032E5E
	add r0, r0, #1
	add r3, r3, #1
	cmp r0, #8
	blt _02032E4E
	mov r0, #0xff
_02032E5E:
	bx lr
	; .align 2, 0
_02032E60: .word 0x021C07B4
	thumb_func_end sub_02032E44

	thumb_func_start sub_02032E64
sub_02032E64: ; 0x02032E64
	push {r3, r4}
	ldr r1, _02032E8C ; =0x021C07B4
	mov r0, #0
	ldr r4, [r1, #0]
	mov r1, #0xe7
	add r3, r0, #0
	lsl r1, r1, #2
_02032E72:
	ldrb r2, [r4, r1]
	cmp r2, #2
	beq _02032E7C
	cmp r2, #3
	bne _02032E7E
_02032E7C:
	add r0, r0, #1
_02032E7E:
	add r3, r3, #1
	add r4, r4, #1
	cmp r3, #8
	blt _02032E72
	pop {r3, r4}
	bx lr
	nop
_02032E8C: .word 0x021C07B4
	thumb_func_end sub_02032E64

	thumb_func_start sub_02032E90
sub_02032E90: ; 0x02032E90
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02032EE4 ; =0x021C07B4
	mov r5, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02032EE0
	bl sub_02035E18
	cmp r0, #0
	bne _02032EA8
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02032EA8:
	mov r7, #0xe7
	ldr r6, _02032EE4 ; =0x021C07B4
	add r4, r5, #0
	lsl r7, r7, #2
_02032EB0:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _02032EDA
	cmp r4, #0
	bne _02032EC8
	bl sub_02036180
	cmp r0, #0
	bne _02032EDA
_02032EC8:
	ldr r0, [r6, #0]
	add r0, r0, r4
	ldrb r0, [r0, r7]
	cmp r0, #0
	beq _02032EDA
	add r0, r4, #0
	bl sub_02032D98
	mov r5, #1
_02032EDA:
	add r4, r4, #1
	cmp r4, #8
	blt _02032EB0
_02032EE0:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02032EE4: .word 0x021C07B4
	thumb_func_end sub_02032E90

	thumb_func_start sub_02032EE8
sub_02032EE8: ; 0x02032EE8
	ldr r1, _02032F18 ; =0x021C07B4
	ldr r3, [r1, #0]
	cmp r3, #0
	bne _02032EF4
	mov r0, #0
	bx lr
_02032EF4:
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #1
	beq _02032F08
	cmp r1, #2
	beq _02032F08
	cmp r1, #3
	bne _02032F14
_02032F08:
	lsl r0, r0, #2
	add r1, r3, r0
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
_02032F14:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032F18: .word 0x021C07B4
	thumb_func_end sub_02032EE8

	thumb_func_start sub_02032F1C
sub_02032F1C: ; 0x02032F1C
	ldr r1, _02032F3C ; =0x021C07B4
	ldr r3, [r1, #0]
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02032F36
	mov r1, #0x68
	add r3, #0x4c
	mul r1, r0
	add r0, r3, r1
	bx lr
_02032F36:
	mov r0, #0
	bx lr
	nop
_02032F3C: .word 0x021C07B4
	thumb_func_end sub_02032F1C

	thumb_func_start sub_02032F40
sub_02032F40: ; 0x02032F40
	add r1, r0, #0
	ldr r0, _02032F4C ; =0x021C07B4
	ldr r3, _02032F50 ; =sub_02039390
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bx r3
	; .align 2, 0
_02032F4C: .word 0x021C07B4
_02032F50: .word sub_02039390
	thumb_func_end sub_02032F40

	thumb_func_start sub_02032F54
sub_02032F54: ; 0x02032F54
	ldr r1, _02032F74 ; =0x021C07B4
	ldr r3, [r1, #0]
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02032F6E
	mov r1, #0x68
	add r3, #0x58
	mul r1, r0
	add r0, r3, r1
	bx lr
_02032F6E:
	mov r0, #0
	bx lr
	nop
_02032F74: .word 0x021C07B4
	thumb_func_end sub_02032F54

	thumb_func_start sub_02032F78
sub_02032F78: ; 0x02032F78
	ldr r1, _02032F98 ; =0x021C07B4
	ldr r3, [r1, #0]
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02032F94
	mov r1, #0x68
	mul r1, r0
	add r0, r3, r1
	add r0, #0x6f
	ldrb r0, [r0]
	bx lr
_02032F94:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032F98: .word 0x021C07B4
	thumb_func_end sub_02032F78

	thumb_func_start sub_02032F9C
sub_02032F9C: ; 0x02032F9C
	ldr r1, _02032FBC ; =0x021C07B4
	ldr r3, [r1, #0]
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02032FB8
	mov r1, #0x68
	mul r1, r0
	add r0, r3, r1
	add r0, #0x70
	ldrb r0, [r0]
	bx lr
_02032FB8:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032FBC: .word 0x021C07B4
	thumb_func_end sub_02032F9C

	thumb_func_start sub_02032FC0
sub_02032FC0: ; 0x02032FC0
	ldr r1, _02032FE0 ; =0x021C07B4
	ldr r3, [r1, #0]
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02032FDC
	mov r1, #0x68
	mul r1, r0
	add r0, r3, r1
	add r0, #0x71
	ldrb r0, [r0]
	bx lr
_02032FDC:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032FE0: .word 0x021C07B4
	thumb_func_end sub_02032FC0

	thumb_func_start sub_02032FE4
sub_02032FE4: ; 0x02032FE4
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r4, #0
	add r6, r4, #0
_02032FEC:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02033040
	ldr r0, _0203304C ; =0x021C07B4
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0xe7
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02033040
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02033040
	ldr r0, _0203304C ; =0x021C07B4
	ldr r1, _02033050 ; =0x0000039D
	ldr r0, [r0, #0]
	add r2, r0, r4
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02033040
	add r1, r6, #0
	add r2, r0, r5
_02033028:
	add r3, r2, #0
	add r3, #0x74
	ldrb r0, [r2, #0xc]
	ldrb r3, [r3]
	cmp r0, r3
	beq _02033038
	mov r0, #0
	pop {r4, r5, r6, pc}
_02033038:
	add r1, r1, #1
	add r2, r2, #1
	cmp r1, #0x20
	blt _02033028
_02033040:
	add r4, r4, #1
	add r5, #0x68
	cmp r4, #7
	blt _02032FEC
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203304C: .word 0x021C07B4
_02033050: .word 0x0000039D
	thumb_func_end sub_02032FE4

	thumb_func_start sub_02033054
sub_02033054: ; 0x02033054
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0203310C ; =0x021C07B4
	add r6, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02033108
	cmp r7, #2
	beq _02033074
	bl sub_0203608C
	bl sub_020362F4
	mov r1, #1
	and r0, r1
	str r0, [sp]
_02033074:
	mov r4, #0
	bl sub_02035E18
	cmp r0, #0
	ble _02033108
	add r5, r4, #0
_02033080:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _020330FC
	ldr r0, _0203310C ; =0x021C07B4
	mov r1, #0xe7
	ldr r0, [r0, #0]
	lsl r1, r1, #2
	add r2, r0, r4
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _020330FC
	cmp r7, #0
	bne _020330C6
	add r0, r4, #0
	bl sub_020362F4
	mov r1, #1
	and r1, r0
	ldr r0, [sp]
	cmp r0, r1
	beq _020330FC
	ldr r0, _0203310C ; =0x021C07B4
	mov r1, #0xdb
	ldr r0, [r0, #0]
	lsl r1, r1, #2
	add r0, r0, r5
	ldrh r1, [r0, r1]
	add r2, r1, r6
	mov r1, #0xdb
	lsl r1, r1, #2
	strh r2, [r0, r1]
	b _020330FC
_020330C6:
	cmp r7, #1
	bne _020330EC
	add r0, r4, #0
	bl sub_020362F4
	mov r1, #1
	and r1, r0
	ldr r0, [sp]
	cmp r0, r1
	beq _020330FC
	ldr r0, _0203310C ; =0x021C07B4
	ldr r1, _02033110 ; =0x0000036E
	ldr r0, [r0, #0]
	add r0, r0, r5
	ldrh r1, [r0, r1]
	add r2, r1, r6
	ldr r1, _02033110 ; =0x0000036E
	strh r2, [r0, r1]
	b _020330FC
_020330EC:
	mov r1, #0x37
	add r0, r0, r5
	lsl r1, r1, #4
	ldrh r1, [r0, r1]
	add r2, r1, r6
	mov r1, #0x37
	lsl r1, r1, #4
	strh r2, [r0, r1]
_020330FC:
	add r5, r5, #6
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _02033080
_02033108:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203310C: .word 0x021C07B4
_02033110: .word 0x0000036E
	thumb_func_end sub_02033054

	thumb_func_start sub_02033114
sub_02033114: ; 0x02033114
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl sub_0202B370
	str r0, [sp, #4]
	mov r4, #0
	bl sub_02035E18
	cmp r0, #0
	ble _0203317C
	add r5, r4, #0
_0203312C:
	add r0, r4, #0
	bl sub_02032F1C
	add r1, r0, #0
	beq _02033170
	add r0, r7, #0
	add r2, sp, #8
	bl sub_0203909C
	cmp r0, #0
	beq _02033146
	cmp r0, #1
	bne _02033170
_02033146:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _02033150
	bl sub_02022974
_02033150:
	ldr r0, _020331AC ; =0x021C07B4
	mov r2, #0xdb
	ldr r0, [r0, #0]
	ldr r3, _020331B0 ; =0x0000036E
	add r6, r0, r5
	mov r0, #0x37
	lsl r0, r0, #4
	ldrh r0, [r6, r0]
	lsl r2, r2, #2
	str r0, [sp]
	ldrh r2, [r6, r2]
	ldrh r3, [r6, r3]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl sub_0202B174
_02033170:
	add r5, r5, #6
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _0203312C
_0203317C:
	mov r3, #0xdb
	mov r2, #0
	lsl r3, r3, #2
	ldr r6, _020331AC ; =0x021C07B4
	add r1, r2, #0
	add r0, r2, #0
	add r4, r3, #2
	add r5, r3, #4
_0203318C:
	ldr r7, [r6, #0]
	add r2, r2, #1
	add r7, r7, r1
	strh r0, [r7, r3]
	ldr r7, [r6, #0]
	add r7, r7, r1
	strh r0, [r7, r4]
	ldr r7, [r6, #0]
	add r7, r7, r1
	add r1, r1, #6
	strh r0, [r7, r5]
	cmp r2, #8
	blt _0203318C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_020331AC: .word 0x021C07B4
_020331B0: .word 0x0000036E
	thumb_func_end sub_02033114

	thumb_func_start sub_020331B4
sub_020331B4: ; 0x020331B4
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _020331C6
	mov r0, #0
	mov r1, #1
	bl sub_02033054
	b _020331D6
_020331C6:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _020331D6
	mov r0, #1
	add r1, r0, #0
	bl sub_02033054
_020331D6:
	add r0, r4, #0
	bl sub_02033114
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020331B4

	thumb_func_start sub_020331E0
sub_020331E0: ; 0x020331E0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	bl sub_02033054
	add r0, r4, #0
	bl sub_02033114
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020331E0

	thumb_func_start sub_020331F4
sub_020331F4: ; 0x020331F4
	ldr r1, _020331FC ; =0x021C07B4
	ldr r1, [r1, #0]
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020331FC: .word 0x021C07B4
	thumb_func_end sub_020331F4

	.bss


	.global Unk_021C07B4
Unk_021C07B4: ; 0x021C07B4
	.space 0x4

