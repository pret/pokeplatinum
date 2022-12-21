	.include "macros/function.inc"
	.include "include/unk_020279FC.inc"

	

	.text


	thumb_func_start sub_020279FC
sub_020279FC: ; 0x020279FC
	push {r4, lr}
	mov r1, #2
	bl sub_02018144
	add r4, r0, #0
	bl sub_02027A1C
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020279FC

	thumb_func_start sub_02027A10
sub_02027A10: ; 0x02027A10
	ldr r3, _02027A18 ; =sub_020C4DB0
	mov r2, #2
	bx r3
	nop
_02027A18: .word sub_020C4DB0
	thumb_func_end sub_02027A10

	thumb_func_start sub_02027A1C
sub_02027A1C: ; 0x02027A1C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #2
	bl sub_020C4CF4
	ldrh r1, [r4]
	mov r0, #0xf
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strh r0, [r4]
	ldrh r1, [r4]
	mov r0, #0x30
	bic r1, r0
	strh r1, [r4]
	ldrh r1, [r4]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r4]
	ldrh r1, [r4]
	mov r0, #0x80
	bic r1, r0
	strh r1, [r4]
	ldrh r1, [r4]
	ldr r0, _02027A60 ; =0xFFFFFCFF
	and r0, r1
	strh r0, [r4]
	ldrh r1, [r4]
	ldr r0, _02027A64 ; =0xFFFF83FF
	and r0, r1
	strh r0, [r4]
	pop {r4, pc}
	nop
_02027A60: .word 0xFFFFFCFF
_02027A64: .word 0xFFFF83FF
	thumb_func_end sub_02027A1C

	thumb_func_start sub_02027A68
sub_02027A68: ; 0x02027A68
	push {r3, lr}
	cmp r0, #0
	beq _02027A78
	bl sub_02025E44
	bl sub_02027B30
	add r1, r0, #0
_02027A78:
	cmp r1, #0
	beq _02027A96
	cmp r1, #1
	beq _02027A86
	cmp r1, #2
	beq _02027A8E
	b _02027A96
_02027A86:
	ldr r0, _02027AA0 ; =0x021BF67C
	mov r1, #1
	str r1, [r0, #0x34]
	pop {r3, pc}
_02027A8E:
	ldr r0, _02027AA0 ; =0x021BF67C
	mov r1, #3
	str r1, [r0, #0x34]
	pop {r3, pc}
_02027A96:
	ldr r0, _02027AA0 ; =0x021BF67C
	mov r1, #0
	str r1, [r0, #0x34]
	pop {r3, pc}
	nop
_02027AA0: .word 0x021BF67C
	thumb_func_end sub_02027A68

	thumb_func_start sub_02027AA4
sub_02027AA4: ; 0x02027AA4
	ldrh r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bx lr
	thumb_func_end sub_02027AA4

	thumb_func_start sub_02027AAC
sub_02027AAC: ; 0x02027AAC
	ldrh r3, [r0]
	mov r2, #0xf
	lsl r1, r1, #0x10
	bic r3, r2
	lsr r2, r1, #0x10
	mov r1, #0xf
	and r1, r2
	orr r1, r3
	strh r1, [r0]
	bx lr
	thumb_func_end sub_02027AAC

	thumb_func_start sub_02027AC0
sub_02027AC0: ; 0x02027AC0
	push {r3, lr}
	bl sub_02027AA4
	cmp r0, #0
	bne _02027ACE
	mov r0, #8
	pop {r3, pc}
_02027ACE:
	cmp r0, #1
	bne _02027AD6
	mov r0, #4
	pop {r3, pc}
_02027AD6:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02027AC0

	thumb_func_start sub_02027ADC
sub_02027ADC: ; 0x02027ADC
	ldrh r0, [r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	bx lr
	thumb_func_end sub_02027ADC

	thumb_func_start sub_02027AE4
sub_02027AE4: ; 0x02027AE4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1e
	ldrh r3, [r0]
	mov r2, #0x30
	lsr r1, r1, #0x1a
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	bx lr
	thumb_func_end sub_02027AE4

	thumb_func_start sub_02027AF8
sub_02027AF8: ; 0x02027AF8
	ldrh r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_02027AF8

	thumb_func_start sub_02027B00
sub_02027B00: ; 0x02027B00
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	ldrh r3, [r0]
	mov r2, #0x80
	lsr r1, r1, #0x18
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	bx lr
	thumb_func_end sub_02027B00

	thumb_func_start sub_02027B14
sub_02027B14: ; 0x02027B14
	ldrh r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_02027B14

	thumb_func_start sub_02027B1C
sub_02027B1C: ; 0x02027B1C
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	ldrh r3, [r0]
	mov r2, #0x40
	lsr r1, r1, #0x19
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	bx lr
	thumb_func_end sub_02027B1C

	thumb_func_start sub_02027B30
sub_02027B30: ; 0x02027B30
	ldrh r0, [r0]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1e
	bx lr
	thumb_func_end sub_02027B30

	thumb_func_start sub_02027B38
sub_02027B38: ; 0x02027B38
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1e
	ldrh r3, [r0]
	ldr r2, _02027B4C ; =0xFFFFFCFF
	lsr r1, r1, #0x16
	and r2, r3
	orr r1, r2
	strh r1, [r0]
	bx lr
	; .align 2, 0
_02027B4C: .word 0xFFFFFCFF
	thumb_func_end sub_02027B38

	thumb_func_start sub_02027B50
sub_02027B50: ; 0x02027B50
	ldrh r0, [r0]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1b
	bx lr
	thumb_func_end sub_02027B50

	thumb_func_start sub_02027B58
sub_02027B58: ; 0x02027B58
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1b
	ldrh r3, [r0]
	ldr r2, _02027B6C ; =0xFFFF83FF
	lsr r1, r1, #0x11
	and r2, r3
	orr r1, r2
	strh r1, [r0]
	bx lr
	; .align 2, 0
_02027B6C: .word 0xFFFF83FF
	thumb_func_end sub_02027B58