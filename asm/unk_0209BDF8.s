	.include "macros/function.inc"
	.include "include/unk_0209BDF8.inc"

	

	.text


	thumb_func_start sub_0209BDF8
sub_0209BDF8: ; 0x0209BDF8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x58
	bl sub_02018144
	add r4, r0, #0
	bne _0209BE0E
	bl sub_02022974
_0209BE0E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x58
	bl sub_020D5124
	ldr r1, _0209BE34 ; =0x00001BD0
	add r0, r6, #0
	str r5, [r4, #0]
	bl sub_02018144
	str r0, [r4, #0x4c]
	ldr r1, _0209BE34 ; =0x00001BD0
	add r0, r6, #0
	bl sub_02018144
	str r0, [r4, #0x50]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0209BE34: .word 0x00001BD0
	thumb_func_end sub_0209BDF8

	thumb_func_start sub_0209BE38
sub_0209BE38: ; 0x0209BE38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl sub_020181C4
	ldr r0, [r4, #0x50]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0209BE38

	thumb_func_start sub_0209BE50
sub_0209BE50: ; 0x0209BE50
	ldr r3, _0209BE5C ; =sub_02032798
	add r2, r0, #0
	ldr r0, _0209BE60 ; =0x020F8EA8
	mov r1, #0x87
	bx r3
	nop
_0209BE5C: .word sub_02032798
_0209BE60: .word 0x020F8EA8
	thumb_func_end sub_0209BE50

	thumb_func_start sub_0209BE64
sub_0209BE64: ; 0x0209BE64
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	bl sub_02037B58
	bl sub_02036AC4
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_0205C2C8
	mov r0, #0
	bl sub_0205BEA8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209BE64

	thumb_func_start sub_0209BE84
sub_0209BE84: ; 0x0209BE84
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r6, r3, #0
	str r2, [sp]
	cmp r5, #0x12
	blo _0209BE96
	bl sub_02022974
_0209BE96:
	add r0, r6, #4
	cmp r0, #0x18
	bls _0209BEA0
	bl sub_02022974
_0209BEA0:
	add r4, r7, #4
	ldr r1, [sp]
	add r0, r4, #4
	add r2, r6, #0
	str r5, [r7, #4]
	bl sub_020D50B8
	mov r0, #0x82
	add r1, r4, #0
	mov r2, #0x18
	bl sub_020359DC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0209BE84

	thumb_func_start sub_0209BEBC
sub_0209BEBC: ; 0x0209BEBC
	push {r4, lr}
	ldr r4, [r0, #0x1c]
	cmp r4, #1
	bne _0209BEC8
	mov r0, #0
	pop {r4, pc}
_0209BEC8:
	bl sub_0209BE84
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209BEBC

	thumb_func_start sub_0209BED0
sub_0209BED0: ; 0x0209BED0
	push {r3, r4, r5, lr}
	ldr r4, [r2, #0]
	cmp r4, #0x12
	blo _0209BEDE
	bl sub_02022974
	pop {r3, r4, r5, pc}
_0209BEDE:
	lsl r5, r4, #2
	ldr r4, _0209BEEC ; =0x020F8E60
	add r2, r2, #4
	ldr r4, [r4, r5]
	blx r4
	pop {r3, r4, r5, pc}
	nop
_0209BEEC: .word 0x020F8E60
	thumb_func_end sub_0209BED0

	thumb_func_start sub_0209BEF0
sub_0209BEF0: ; 0x0209BEF0
	push {r4, lr}
	add r1, r0, #0
	mov r0, #0x46
	add r4, r2, #0
	ldrsh r2, [r3, r0]
	mov r0, #1
	lsl r0, r1
	orr r2, r0
	add r0, r3, #0
	add r0, #0x46
	strh r2, [r0]
	add r0, r3, #0
	bl sub_0209C188
	mov r2, #0x59
	add r1, r4, #0
	lsl r2, r2, #4
	bl sub_020D50B8
	pop {r4, pc}
	thumb_func_end sub_0209BEF0

	thumb_func_start sub_0209BF18
sub_0209BF18: ; 0x0209BF18
	cmp r0, #0
	bne _0209BF20
	ldrb r0, [r2]
	str r0, [r3, #0x28]
_0209BF20:
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209BF18

	thumb_func_start sub_0209BF24
sub_0209BF24: ; 0x0209BF24
	ldr r0, [r3, #0x20]
	add r0, r0, #1
	str r0, [r3, #0x20]
	bx lr
	thumb_func_end sub_0209BF24

	thumb_func_start sub_0209BF2C
sub_0209BF2C: ; 0x0209BF2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_0203608C
	cmp r0, #0
	beq _0209BF50
	mov r0, #0
	str r0, [r4, #0x20]
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, [r4, #0]
	lsl r2, r5, #0x18
	ldr r0, [r0, #0x3c]
	mov r1, #0x1f
	lsr r2, r2, #0x18
	bl ov109_021D5140
_0209BF50:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0209BF2C

	thumb_func_start sub_0209BF54
sub_0209BF54: ; 0x0209BF54
	ldr r0, [r3, #0]
	ldr r3, _0209BF60 ; =ov109_021D5140
	ldr r0, [r0, #0x3c]
	mov r1, #2
	mov r2, #0
	bx r3
	; .align 2, 0
_0209BF60: .word ov109_021D5140
	thumb_func_end sub_0209BF54

	thumb_func_start sub_0209BF64
sub_0209BF64: ; 0x0209BF64
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r6, #0
	beq _0209BFEE
	bl sub_0203608C
	cmp r0, #0
	bne _0209C03C
	ldrb r1, [r5]
	add r0, sp, #0
	strb r1, [r0]
	ldrb r1, [r5, #1]
	strb r1, [r0, #1]
	ldrb r1, [r5, #2]
	strb r1, [r0, #2]
	ldrb r1, [r5, #3]
	strb r1, [r0, #3]
	strb r6, [r0]
	ldr r1, [r4, #0x2c]
	strb r1, [r0, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0209BF9C
	cmp r0, #1
	b _0209BFDE
_0209BF9C:
	bl sub_02035E18
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	bne _0209BFBE
	bl sub_0209C16C
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	bne _0209BFBE
	bl sub_020318EC
	bl sub_020D2FE4
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	beq _0209BFC6
_0209BFBE:
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #3]
	b _0209BFDE
_0209BFC6:
	mov r1, #1
	add r0, r1, #0
	ldr r2, [r4, #0x30]
	lsl r0, r6
	orr r0, r2
	str r0, [r4, #0x30]
	add r0, sp, #0
	strb r1, [r0, #3]
	bl sub_02035E18
	bl sub_02037B58
_0209BFDE:
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0
	mov r3, #4
	bl sub_0209BEBC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209BFEE:
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0209BFFC
	cmp r0, #1
	beq _0209C030
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209BFFC:
	ldrb r6, [r5]
	bl sub_0203608C
	cmp r6, r0
	bne _0209C03C
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _0209C01C
	ldr r0, [r4, #0]
	mov r1, #8
	ldr r0, [r0, #0x3c]
	add r2, r6, #0
	bl ov109_021D5140
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209C01C:
	ldrb r0, [r5, #1]
	mov r1, #7
	strh r0, [r4, #0x38]
	ldr r0, [r4, #0]
	ldrb r2, [r5]
	ldr r0, [r0, #0x3c]
	bl ov109_021D5140
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209C030:
	ldr r0, [r4, #0]
	ldrb r2, [r5]
	ldr r0, [r0, #0x3c]
	mov r1, #0x13
	bl ov109_021D5140
_0209C03C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0209BF64

	thumb_func_start sub_0209C040
sub_0209C040: ; 0x0209C040
	push {r4, lr}
	add r4, r3, #0
	ldr r0, [r4, #0]
	ldrb r2, [r2]
	ldr r0, [r0, #0x3c]
	mov r1, #1
	bl ov109_021D5258
	bl sub_0203608C
	cmp r0, #0
	bne _0209C05C
	mov r0, #0
	str r0, [r4, #0x34]
_0209C05C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209C040

	thumb_func_start sub_0209C060
sub_0209C060: ; 0x0209C060
	push {r4, lr}
	add r4, r3, #0
	bl sub_0203608C
	cmp r0, #0
	beq _0209C078
	ldr r0, [r4, #0]
	mov r1, #0xd
	ldr r0, [r0, #0x3c]
	mov r2, #0
	bl ov109_021D5140
_0209C078:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209C060

	thumb_func_start sub_0209C07C
sub_0209C07C: ; 0x0209C07C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_0203608C
	cmp r0, #0
	bne _0209C09A
	add r0, sp, #0
	strb r5, [r0]
	add r0, r4, #0
	mov r1, #0
	add r2, sp, #0
	mov r3, #1
	bl sub_0209BEBC
_0209C09A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0209C07C

	thumb_func_start sub_0209C09C
sub_0209C09C: ; 0x0209C09C
	add r0, r3, #0
	add r0, #0x40
	ldrh r1, [r0]
	ldrh r0, [r2]
	add r3, #0x40
	orr r0, r1
	strh r0, [r3]
	bx lr
	thumb_func_end sub_0209C09C

	thumb_func_start sub_0209C0AC
sub_0209C0AC: ; 0x0209C0AC
	add r1, r3, #0
	add r1, #0x42
	ldrh r2, [r1]
	mov r1, #1
	lsl r1, r0
	add r0, r2, #0
	orr r0, r1
	add r3, #0x42
	strh r0, [r3]
	bx lr
	thumb_func_end sub_0209C0AC

	thumb_func_start sub_0209C0C0
sub_0209C0C0: ; 0x0209C0C0
	ldr r0, [r3, #0]
	ldr r3, _0209C0CC ; =ov109_021D3B24
	ldr r0, [r0, #0x38]
	add r1, r2, #0
	bx r3
	nop
_0209C0CC: .word ov109_021D3B24
	thumb_func_end sub_0209C0C0

	thumb_func_start sub_0209C0D0
sub_0209C0D0: ; 0x0209C0D0
	ldr r0, [r3, #0]
	ldr r3, _0209C0DC ; =ov109_021D3B50
	ldr r0, [r0, #0x38]
	ldr r1, [r2, #0]
	bx r3
	nop
_0209C0DC: .word ov109_021D3B50
	thumb_func_end sub_0209C0D0

	thumb_func_start sub_0209C0E0
sub_0209C0E0: ; 0x0209C0E0
	ldr r0, [r3, #0]
	ldr r3, _0209C0EC ; =ov109_021D3A68
	ldr r0, [r0, #0x38]
	ldrb r1, [r2]
	bx r3
	nop
_0209C0EC: .word ov109_021D3A68
	thumb_func_end sub_0209C0E0

	thumb_func_start sub_0209C0F0
sub_0209C0F0: ; 0x0209C0F0
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r3, #0
	bl sub_0203608C
	cmp r0, #0
	beq _0209C108
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x38]
	bl ov109_021D3A70
_0209C108:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0209C0F0

	thumb_func_start sub_0209C10C
sub_0209C10C: ; 0x0209C10C
	add r1, r0, #0
	ldr r0, [r3, #0]
	ldr r3, _0209C118 ; =ov109_021D3BE4
	ldr r0, [r0, #0x38]
	ldr r2, [r2, #0]
	bx r3
	; .align 2, 0
_0209C118: .word ov109_021D3BE4
	thumb_func_end sub_0209C10C

	thumb_func_start sub_0209C11C
sub_0209C11C: ; 0x0209C11C
	ldr r0, [r3, #0]
	ldr r3, _0209C128 ; =ov109_021D3BEC
	ldr r0, [r0, #0x38]
	add r1, r2, #0
	bx r3
	nop
_0209C128: .word ov109_021D3BEC
	thumb_func_end sub_0209C11C

	thumb_func_start sub_0209C12C
sub_0209C12C: ; 0x0209C12C
	add r1, r3, #0
	add r1, #0x48
	ldrh r2, [r1]
	mov r1, #1
	lsl r1, r0
	add r0, r2, #0
	orr r0, r1
	add r3, #0x48
	strh r0, [r3]
	bx lr
	thumb_func_end sub_0209C12C

	thumb_func_start sub_0209C140
sub_0209C140: ; 0x0209C140
	add r1, r3, #0
	add r1, #0x4a
	ldrh r2, [r1]
	mov r1, #1
	lsl r1, r0
	add r0, r2, #0
	orr r0, r1
	add r3, #0x4a
	strh r0, [r3]
	bx lr
	thumb_func_end sub_0209C140

	thumb_func_start sub_0209C154
sub_0209C154: ; 0x0209C154
	mov r0, #0x18
	bx lr
	thumb_func_end sub_0209C154

	thumb_func_start sub_0209C158
sub_0209C158: ; 0x0209C158
	mov r0, #0x59
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209C158

	thumb_func_start sub_0209C160
sub_0209C160: ; 0x0209C160
	ldr r2, [r1, #0x4c]
	mov r1, #0x59
	lsl r1, r1, #4
	mul r1, r0
	add r0, r2, r1
	bx lr
	thumb_func_end sub_0209C160

	thumb_func_start sub_0209C16C
sub_0209C16C: ; 0x0209C16C
	push {r3, r4, r5, lr}
	mov r5, #0
	add r4, r5, #0
_0209C172:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _0209C17E
	add r5, r5, #1
_0209C17E:
	add r4, r4, #1
	cmp r4, #5
	blt _0209C172
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0209C16C

	thumb_func_start sub_0209C188
sub_0209C188: ; 0x0209C188
	ldr r2, [r0, #0x50]
	mov r0, #0x59
	lsl r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0209C188

	.rodata


	.global Unk_020F8E60
Unk_020F8E60: ; 0x020F8E60
	.incbin "incbin/arm9_rodata.bin", 0x14220, 0x14268 - 0x14220

	.global Unk_020F8EA8
Unk_020F8EA8: ; 0x020F8EA8
	.incbin "incbin/arm9_rodata.bin", 0x14268, 0x654

