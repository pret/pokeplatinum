	.include "macros/function.inc"
	.include "include/unk_02073C2C.inc"

	

	.text


	thumb_func_start sub_02073C2C
sub_02073C2C: ; 0x02073C2C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0xec
	bl MIi_CpuClearFast
	add r0, r4, #0
	ldrh r2, [r4, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
	add r0, r4, #0
	ldr r2, [r4, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	pop {r4, pc}
	thumb_func_end sub_02073C2C

	thumb_func_start sub_02073C54
sub_02073C54: ; 0x02073C54
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x88
	bl MIi_CpuClearFast
	add r0, r4, #0
	ldrh r2, [r4, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
	pop {r4, pc}
	thumb_func_end sub_02073C54

	thumb_func_start sub_02073C70
sub_02073C70: ; 0x02073C70
	mov r0, #0xec
	bx lr
	thumb_func_end sub_02073C70

	thumb_func_start sub_02073C74
sub_02073C74: ; 0x02073C74
	push {r4, lr}
	mov r1, #0xec
	bl sub_02018144
	add r4, r0, #0
	bl sub_02073C2C
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073C74

	thumb_func_start sub_02073C88
sub_02073C88: ; 0x02073C88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	mov r4, #0
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	bne _02073CCE
	lsl r0, r0, #0x1e
	mov r4, #1
	lsr r0, r0, #0x1f
	beq _02073CA2
	bl sub_02022974
_02073CA2:
	ldrh r1, [r5, #4]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strh r0, [r5, #4]
	ldrh r1, [r5, #4]
	mov r0, #2
	orr r0, r1
	strh r0, [r5, #4]
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_02078234
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
_02073CCE:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02073C88

	thumb_func_start sub_02073CD4
sub_02073CD4: ; 0x02073CD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r2, [r5, #4]
	mov r4, #0
	lsl r0, r2, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02073D1C
	cmp r1, #1
	bne _02073D1C
	mov r0, #1
	bic r2, r0
	strh r2, [r5, #4]
	ldrh r1, [r5, #4]
	mov r0, #2
	mov r4, #1
	bic r1, r0
	strh r1, [r5, #4]
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	strh r0, [r5, #6]
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_02073D1C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02073CD4

	thumb_func_start sub_02073D20
sub_02073D20: ; 0x02073D20
	push {r4, lr}
	add r2, r0, #0
	ldrh r1, [r2, #4]
	mov r4, #0
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1f
	bne _02073D42
	mov r0, #2
	orr r0, r1
	strh r0, [r2, #4]
	add r0, r2, #0
	ldrh r2, [r2, #6]
	add r0, #8
	mov r1, #0x80
	mov r4, #1
	bl sub_02078234
_02073D42:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02073D20

	thumb_func_start sub_02073D48
sub_02073D48: ; 0x02073D48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r2, [r5, #4]
	mov r4, #0
	lsl r0, r2, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02073D7C
	cmp r1, #1
	bne _02073D7C
	mov r0, #2
	bic r2, r0
	add r0, r5, #0
	strh r2, [r5, #4]
	add r0, #8
	mov r1, #0x80
	mov r4, #1
	bl sub_0207823C
	strh r0, [r5, #6]
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_02073D7C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02073D48

	thumb_func_start sub_02073D80
sub_02073D80: ; 0x02073D80
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	bl sub_02073C2C
	ldr r0, [sp, #0x50]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x54]
	add r3, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x58]
	str r0, [sp, #8]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x48]
	add r0, r5, #0
	bl sub_02073E18
	add r0, r5, #0
	add r0, #0x88
	mov r1, #0x64
	mov r2, #0
	bl sub_0207822C
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	add r0, r5, #0
	mov r1, #0xa1
	add r2, sp, #0x48
	bl sub_02074B30
	mov r0, #0
	bl sub_0202818C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xaa
	add r2, r4, #0
	bl sub_02074B30
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0xa2
	add r2, sp, #0x10
	bl sub_02074B30
	mov r0, #0
	add r1, sp, #0x14
	mov r2, #0x18
	bl MIi_CpuClearFast
	add r0, r5, #0
	mov r1, #0xab
	add r2, sp, #0x14
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	add sp, #0x2c
	pop {r3, r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_02073D80

	thumb_func_start sub_02073E18
sub_02073E18: ; 0x02073E18
	push {r0, r1, r2, r3}
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02073C54
	add r0, r5, #0
	bl sub_02073D20
	str r0, [sp]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _02073E42
	bl sub_0201D2E8
	add r4, r0, #0
	bl sub_0201D2E8
	lsl r0, r0, #0x10
	orr r0, r4
	str r0, [sp, #0x34]
_02073E42:
	add r0, r5, #0
	mov r1, #0
	add r2, sp, #0x34
	bl sub_02074C60
	ldr r0, [sp, #0x38]
	cmp r0, #2
	bne _02073E8A
	ldr r7, _02074038 ; =0xFFFF0000
	add r6, r7, #0
_02073E56:
	bl sub_0201D2E8
	add r4, r0, #0
	bl sub_0201D2E8
	ldr r1, [sp, #0x34]
	lsl r0, r0, #0x10
	add r3, r4, #0
	orr r3, r0
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	add r0, r1, #0
	and r0, r7
	lsr r1, r0, #0x10
	add r0, r3, #0
	str r3, [sp, #0x3c]
	and r0, r6
	lsl r3, r3, #0x10
	lsr r0, r0, #0x10
	lsr r3, r3, #0x10
	eor r0, r3
	eor r0, r1
	eor r0, r2
	cmp r0, #8
	blo _02073E56
	b _02073E92
_02073E8A:
	cmp r0, #1
	beq _02073E92
	mov r0, #0
	str r0, [sp, #0x3c]
_02073E92:
	add r0, r5, #0
	mov r1, #7
	add r2, sp, #0x3c
	bl sub_02074C60
	ldr r2, _0207403C ; =0x020E4C44
	add r0, r5, #0
	mov r1, #0xc
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #5
	add r2, sp, #0x24
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0xb3
	mov r2, #0
	bl sub_02074C60
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl sub_02075AD0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #8
	add r2, sp, #8
	bl sub_02074C60
	ldr r0, [sp, #0x24]
	mov r1, #0x14
	bl sub_020759F0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #9
	add r2, sp, #8
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x9c
	add r2, sp, #0x28
	bl sub_02074C60
	ldr r2, _02074040 ; =0x020E4C40
	add r0, r5, #0
	mov r1, #0x7a
	bl sub_02074C60
	mov r0, #4
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x9b
	add r2, sp, #8
	bl sub_02074C60
	ldr r0, [sp, #0x2c]
	cmp r0, #0x20
	bge _02073F48
	add r0, r5, #0
	mov r1, #0x46
	add r2, sp, #0x2c
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x47
	add r2, sp, #0x2c
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x48
	add r2, sp, #0x2c
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x49
	add r2, sp, #0x2c
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x4a
	add r2, sp, #0x2c
	bl sub_02074C60
	add r0, r5, #0
	mov r1, #0x4b
	add r2, sp, #0x2c
	bl sub_02074C60
	b _02073FCC
_02073F48:
	bl sub_0201D2E8
	mov r1, #0x1f
	str r0, [sp, #8]
	and r0, r1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x46
	add r2, sp, #4
	bl sub_02074C60
	mov r0, #0x3e
	ldr r1, [sp, #8]
	lsl r0, r0, #4
	and r0, r1
	lsr r0, r0, #5
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x47
	add r2, sp, #4
	bl sub_02074C60
	mov r0, #0x1f
	ldr r1, [sp, #8]
	lsl r0, r0, #0xa
	and r0, r1
	lsr r0, r0, #0xa
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x48
	add r2, sp, #4
	bl sub_02074C60
	bl sub_0201D2E8
	mov r1, #0x1f
	str r0, [sp, #8]
	and r0, r1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x49
	add r2, sp, #4
	bl sub_02074C60
	mov r0, #0x3e
	ldr r1, [sp, #8]
	lsl r0, r0, #4
	and r0, r1
	lsr r0, r0, #5
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x4a
	add r2, sp, #4
	bl sub_02074C60
	mov r0, #0x1f
	ldr r1, [sp, #8]
	lsl r0, r0, #0xa
	and r0, r1
	lsr r0, r0, #0xa
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x4b
	add r2, sp, #4
	bl sub_02074C60
_02073FCC:
	ldr r0, [sp, #0x24]
	mov r1, #0x18
	bl sub_020759F0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	mov r1, #0x19
	bl sub_020759F0
	str r0, [sp, #4]
	cmp r0, #0
	beq _02074004
	ldr r1, [sp, #0x34]
	mov r0, #1
	tst r0, r1
	beq _02073FF8
	add r0, r5, #0
	mov r1, #0xa
	add r2, sp, #4
	bl sub_02074C60
	b _0207400E
_02073FF8:
	add r0, r5, #0
	mov r1, #0xa
	add r2, sp, #8
	bl sub_02074C60
	b _0207400E
_02074004:
	add r0, r5, #0
	mov r1, #0xa
	add r2, sp, #8
	bl sub_02074C60
_0207400E:
	add r0, r5, #0
	bl sub_02075D74
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x6f
	add r2, sp, #8
	bl sub_02074C60
	add r0, r5, #0
	bl sub_02077020
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02073D48
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_02074038: .word 0xFFFF0000
_0207403C: .word 0x020E4C44
_02074040: .word 0x020E4C40
	thumb_func_end sub_02073E18

	thumb_func_start sub_02074044
sub_02074044: ; 0x02074044
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r4, [sp, #0x30]
	add r6, r0, #0
	add r7, r1, #0
_02074052:
	bl sub_0201D2E8
	add r5, r0, #0
	bl sub_0201D2E8
	lsl r0, r0, #0x10
	orr r5, r0
	add r0, r5, #0
	bl sub_02075BFC
	cmp r4, r0
	bne _02074052
	mov r0, #1
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02073D80
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02074044

	thumb_func_start sub_02074088
sub_02074088: ; 0x02074088
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x10]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x18]
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	cmp r0, #0
	beq _02074100
	cmp r0, #0x1d
	bhs _02074100
	sub r0, r0, #1
	str r0, [sp, #0x20]
_020740A8:
	bl sub_0201D2E8
	add r4, r0, #0
	bl sub_0201D2E8
	lsl r0, r0, #0x10
	orr r4, r0
	mov r3, #3
	lsl r3, r3, #0x10
	and r3, r4
	mov r0, #3
	add r2, r4, #0
	and r2, r0
	lsl r0, r0, #8
	and r0, r4
	lsr r1, r0, #6
	mov r0, #3
	lsl r0, r0, #0x18
	and r0, r4
	lsr r0, r0, #0x12
	lsr r3, r3, #0xc
	orr r0, r3
	orr r0, r1
	orr r0, r2
	mov r1, #0x1c
	bl _u32_div_f
	lsl r0, r1, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	bl sub_02075BFC
	cmp r7, r0
	bne _020740A8
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl sub_02075DAC
	cmp r6, r0
	bne _020740A8
	ldr r0, [sp, #0x20]
	cmp r5, r0
	bne _020740A8
	b _0207410C
_02074100:
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02074128
	add r4, r0, #0
_0207410C:
	mov r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_02073D80
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02074088

	thumb_func_start sub_02074128
sub_02074128: ; 0x02074128
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x12
	add r4, r2, #0
	bl sub_020759F0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _02074154
	cmp r0, #0xfe
	beq _02074154
	cmp r0, #0xff
	beq _02074154
	cmp r5, #0
	bne _02074154
	mov r1, #0x19
	bl _s32_div_f
	add r1, r0, #1
	mov r0, #0x19
	mul r0, r1
	add r4, r0, r4
_02074154:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02074128

	thumb_func_start sub_02074158
sub_02074158: ; 0x02074158
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, #0x10
	mov r3, #1
	str r3, [sp]
	ldr r3, [sp, #0x28]
	add r4, r0, #0
	str r3, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	bl sub_02073D80
	add r0, r4, #0
	mov r1, #0xaf
	add r2, sp, #0x24
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
	add sp, #0x10
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_02074158

	thumb_func_start sub_0207418C
sub_0207418C: ; 0x0207418C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02073C88
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02075B38
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xa1
	add r2, sp, #0
	bl sub_02074B30
	add r0, r5, #0
	bl sub_020741B8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02073CD4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207418C

	thumb_func_start sub_020741B8
sub_020741B8: ; 0x020741B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	bl sub_02073C88
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x54]
	add r0, r5, #0
	mov r1, #0x46
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #0x47
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x28]
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #0x48
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x24]
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0x49
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x20]
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0x4a
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x4b
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x38]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	mov r0, #0
	mov r1, #0x2c
	bl sub_02018144
	add r6, r0, #0
	ldr r1, [sp, #0x38]
	add r0, r7, #0
	add r2, r6, #0
	bl sub_02078208
	mov r0, #0x49
	lsl r0, r0, #2
	cmp r7, r0
	bne _020742B0
	mov r0, #1
	b _020742D2
_020742B0:
	ldr r0, [sp, #0x34]
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #0x34]
	add r1, r0, r1
	asr r0, r1, #2
	ldrb r1, [r6]
	lsl r2, r1, #1
	ldr r1, [sp, #0x30]
	add r1, r1, r2
	add r0, r0, r1
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	add r0, r4, r0
	add r0, #0xa
_020742D2:
	str r0, [sp, #0x50]
	add r0, r5, #0
	mov r1, #0xa4
	add r2, sp, #0x50
	bl sub_02074B30
	ldr r0, [sp, #0x14]
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	asr r0, r1, #2
	ldrb r1, [r6, #1]
	lsl r2, r1, #1
	ldr r1, [sp, #0x28]
	add r1, r1, r2
	add r0, r0, r1
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	add r0, r0, #5
	str r0, [sp, #0x4c]
	add r0, r5, #0
	bl sub_02075BCC
	ldr r1, [sp, #0x4c]
	mov r2, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02075C0C
	str r0, [sp, #0x4c]
	add r0, r5, #0
	mov r1, #0xa5
	add r2, sp, #0x4c
	bl sub_02074B30
	ldr r0, [sp, #0x10]
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	asr r0, r1, #2
	ldrb r1, [r6, #2]
	lsl r2, r1, #1
	ldr r1, [sp, #0x24]
	add r1, r1, r2
	add r0, r0, r1
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	add r0, r0, #5
	str r0, [sp, #0x48]
	add r0, r5, #0
	bl sub_02075BCC
	ldr r1, [sp, #0x48]
	mov r2, #2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02075C0C
	str r0, [sp, #0x48]
	add r0, r5, #0
	mov r1, #0xa6
	add r2, sp, #0x48
	bl sub_02074B30
	ldr r0, [sp, #0xc]
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	asr r0, r1, #2
	ldrb r1, [r6, #3]
	lsl r2, r1, #1
	ldr r1, [sp, #0x20]
	add r1, r1, r2
	add r0, r0, r1
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	add r0, r0, #5
	str r0, [sp, #0x44]
	add r0, r5, #0
	bl sub_02075BCC
	ldr r1, [sp, #0x44]
	mov r2, #3
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02075C0C
	str r0, [sp, #0x44]
	add r0, r5, #0
	mov r1, #0xa7
	add r2, sp, #0x44
	bl sub_02074B30
	ldr r0, [sp, #8]
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #8]
	add r1, r0, r1
	asr r0, r1, #2
	ldrb r1, [r6, #4]
	lsl r2, r1, #1
	ldr r1, [sp, #0x1c]
	add r1, r1, r2
	add r0, r0, r1
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	add r0, r0, #5
	str r0, [sp, #0x40]
	add r0, r5, #0
	bl sub_02075BCC
	ldr r1, [sp, #0x40]
	mov r2, #4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02075C0C
	str r0, [sp, #0x40]
	add r0, r5, #0
	mov r1, #0xa8
	add r2, sp, #0x40
	bl sub_02074B30
	ldr r0, [sp, #4]
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #4]
	add r1, r0, r1
	asr r0, r1, #2
	ldrb r1, [r6, #5]
	lsl r2, r1, #1
	ldr r1, [sp, #0x18]
	add r1, r1, r2
	add r0, r0, r1
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	add r0, r0, #5
	str r0, [sp, #0x3c]
	add r0, r5, #0
	bl sub_02075BCC
	ldr r1, [sp, #0x3c]
	mov r2, #5
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02075C0C
	str r0, [sp, #0x3c]
	add r0, r5, #0
	mov r1, #0xa9
	add r2, sp, #0x3c
	bl sub_02074B30
	add r0, r6, #0
	bl sub_020181C4
	ldr r1, [sp, #0x54]
	cmp r1, #0
	bne _02074430
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02074454
_02074430:
	mov r0, #0x49
	lsl r0, r0, #2
	cmp r7, r0
	bne _0207443E
	mov r0, #1
	str r0, [sp, #0x54]
	b _02074454
_0207443E:
	cmp r1, #0
	bne _02074448
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x54]
	b _02074454
_02074448:
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x54]
	sub r0, r1, r0
	add r0, r2, r0
	str r0, [sp, #0x54]
_02074454:
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _02074464
	add r0, r5, #0
	mov r1, #0xa3
	add r2, sp, #0x54
	bl sub_02074B30
_02074464:
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02073CD4
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020741B8

	thumb_func_start sub_02074470
sub_02074470: ; 0x02074470
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _020744B8
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_02078234
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	ldrh r1, [r5, #6]
	cmp r0, r1
	beq _020744B8
	cmp r0, r1
	beq _020744B0
	bl sub_02022974
_020744B0:
	ldrh r1, [r5, #4]
	mov r0, #4
	orr r0, r1
	strh r0, [r5, #4]
_020744B8:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020744E8
	add r4, r0, #0
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _020744E4
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_020744E4:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02074470

	thumb_func_start sub_020744E8
sub_020744E8: ; 0x020744E8
	push {r3, lr}
	add r3, r1, #0
	sub r3, #0xa0
	cmp r3, #0xb
	bhi _0207456A
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_020744FE: ; jump table
	.short _02074516 - _020744FE - 2 ; case 0
	.short _0207451C - _020744FE - 2 ; case 1
	.short _02074522 - _020744FE - 2 ; case 2
	.short _02074528 - _020744FE - 2 ; case 3
	.short _0207452E - _020744FE - 2 ; case 4
	.short _02074534 - _020744FE - 2 ; case 5
	.short _0207453A - _020744FE - 2 ; case 6
	.short _02074540 - _020744FE - 2 ; case 7
	.short _02074546 - _020744FE - 2 ; case 8
	.short _0207454C - _020744FE - 2 ; case 9
	.short _02074552 - _020744FE - 2 ; case 10
	.short _0207455E - _020744FE - 2 ; case 11
_02074516:
	add r0, #0x88
	ldr r0, [r0, #0]
	pop {r3, pc}
_0207451C:
	add r0, #0x8c
	ldrb r0, [r0]
	pop {r3, pc}
_02074522:
	add r0, #0x8d
	ldrb r0, [r0]
	pop {r3, pc}
_02074528:
	add r0, #0x8e
	ldrh r0, [r0]
	pop {r3, pc}
_0207452E:
	add r0, #0x90
	ldrh r0, [r0]
	pop {r3, pc}
_02074534:
	add r0, #0x92
	ldrh r0, [r0]
	pop {r3, pc}
_0207453A:
	add r0, #0x94
	ldrh r0, [r0]
	pop {r3, pc}
_02074540:
	add r0, #0x96
	ldrh r0, [r0]
	pop {r3, pc}
_02074546:
	add r0, #0x98
	ldrh r0, [r0]
	pop {r3, pc}
_0207454C:
	add r0, #0x9a
	ldrh r0, [r0]
	pop {r3, pc}
_02074552:
	add r0, #0x9c
	add r1, r2, #0
	bl sub_020281A0
	mov r0, #1
	pop {r3, pc}
_0207455E:
	add r0, #0xd4
	add r1, r2, #0
	bl sub_0202CA10
	mov r0, #1
	pop {r3, pc}
_0207456A:
	bl sub_020745D0
	pop {r3, pc}
	thumb_func_end sub_020744E8

	thumb_func_start sub_02074570
sub_02074570: ; 0x02074570
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _020745AC
	ldrh r2, [r5, #6]
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	ldrh r1, [r5, #6]
	cmp r0, r1
	beq _020745AC
	cmp r0, r1
	beq _020745A4
	bl sub_02022974
_020745A4:
	ldrh r1, [r5, #4]
	mov r0, #4
	orr r0, r1
	strh r0, [r5, #4]
_020745AC:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020745D0
	add r4, r0, #0
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _020745CC
	ldrh r2, [r5, #6]
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_020745CC:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02074570

	thumb_func_start sub_020745D0
sub_020745D0: ; 0x020745D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	add r1, r0, #0
	mov r4, #0
	str r2, [sp, #8]
	ldr r1, [r1, #0]
	str r0, [sp]
	add r2, r4, #0
	bl sub_0207825C
	add r5, r0, #0
	ldr r0, [sp]
	mov r2, #1
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	add r6, r0, #0
	ldr r0, [sp]
	mov r2, #2
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	add r7, r0, #0
	ldr r0, [sp]
	mov r2, #3
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	add r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0xb3
	bls _0207461A
	b _0207478E
_0207461A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02074626: ; jump table
	.short _02074792 - _02074626 - 2 ; case 0
	.short _02074798 - _02074626 - 2 ; case 1
	.short _020747A2 - _02074626 - 2 ; case 2
	.short _020747AC - _02074626 - 2 ; case 3
	.short _020747B6 - _02074626 - 2 ; case 4
	.short _02074802 - _02074626 - 2 ; case 5
	.short _02074814 - _02074626 - 2 ; case 6
	.short _02074818 - _02074626 - 2 ; case 7
	.short _0207481C - _02074626 - 2 ; case 8
	.short _02074820 - _02074626 - 2 ; case 9
	.short _02074824 - _02074626 - 2 ; case 10
	.short _02074828 - _02074626 - 2 ; case 11
	.short _0207482C - _02074626 - 2 ; case 12
	.short _02074830 - _02074626 - 2 ; case 13
	.short _02074834 - _02074626 - 2 ; case 14
	.short _02074838 - _02074626 - 2 ; case 15
	.short _0207483C - _02074626 - 2 ; case 16
	.short _02074840 - _02074626 - 2 ; case 17
	.short _02074844 - _02074626 - 2 ; case 18
	.short _02074848 - _02074626 - 2 ; case 19
	.short _0207484C - _02074626 - 2 ; case 20
	.short _02074850 - _02074626 - 2 ; case 21
	.short _02074854 - _02074626 - 2 ; case 22
	.short _02074858 - _02074626 - 2 ; case 23
	.short _0207485C - _02074626 - 2 ; case 24
	.short _02074860 - _02074626 - 2 ; case 25
	.short _02074860 - _02074626 - 2 ; case 26
	.short _02074860 - _02074626 - 2 ; case 27
	.short _02074860 - _02074626 - 2 ; case 28
	.short _02074860 - _02074626 - 2 ; case 29
	.short _02074860 - _02074626 - 2 ; case 30
	.short _02074860 - _02074626 - 2 ; case 31
	.short _02074860 - _02074626 - 2 ; case 32
	.short _02074860 - _02074626 - 2 ; case 33
	.short _02074860 - _02074626 - 2 ; case 34
	.short _02074860 - _02074626 - 2 ; case 35
	.short _02074860 - _02074626 - 2 ; case 36
	.short _02074860 - _02074626 - 2 ; case 37
	.short _02074860 - _02074626 - 2 ; case 38
	.short _02074860 - _02074626 - 2 ; case 39
	.short _02074860 - _02074626 - 2 ; case 40
	.short _02074860 - _02074626 - 2 ; case 41
	.short _02074860 - _02074626 - 2 ; case 42
	.short _02074860 - _02074626 - 2 ; case 43
	.short _02074860 - _02074626 - 2 ; case 44
	.short _02074860 - _02074626 - 2 ; case 45
	.short _02074860 - _02074626 - 2 ; case 46
	.short _02074860 - _02074626 - 2 ; case 47
	.short _02074860 - _02074626 - 2 ; case 48
	.short _02074860 - _02074626 - 2 ; case 49
	.short _02074860 - _02074626 - 2 ; case 50
	.short _02074860 - _02074626 - 2 ; case 51
	.short _02074860 - _02074626 - 2 ; case 52
	.short _02074860 - _02074626 - 2 ; case 53
	.short _02074886 - _02074626 - 2 ; case 54
	.short _02074886 - _02074626 - 2 ; case 55
	.short _02074886 - _02074626 - 2 ; case 56
	.short _02074886 - _02074626 - 2 ; case 57
	.short _02074892 - _02074626 - 2 ; case 58
	.short _02074892 - _02074626 - 2 ; case 59
	.short _02074892 - _02074626 - 2 ; case 60
	.short _02074892 - _02074626 - 2 ; case 61
	.short _0207489E - _02074626 - 2 ; case 62
	.short _0207489E - _02074626 - 2 ; case 63
	.short _0207489E - _02074626 - 2 ; case 64
	.short _0207489E - _02074626 - 2 ; case 65
	.short _020748AA - _02074626 - 2 ; case 66
	.short _020748AA - _02074626 - 2 ; case 67
	.short _020748AA - _02074626 - 2 ; case 68
	.short _020748AA - _02074626 - 2 ; case 69
	.short _020748C2 - _02074626 - 2 ; case 70
	.short _020748CA - _02074626 - 2 ; case 71
	.short _020748D2 - _02074626 - 2 ; case 72
	.short _020748DA - _02074626 - 2 ; case 73
	.short _020748E2 - _02074626 - 2 ; case 74
	.short _020748EA - _02074626 - 2 ; case 75
	.short _020748F2 - _02074626 - 2 ; case 76
	.short _02074906 - _02074626 - 2 ; case 77
	.short _0207490C - _02074626 - 2 ; case 78
	.short _0207490C - _02074626 - 2 ; case 79
	.short _0207490C - _02074626 - 2 ; case 80
	.short _0207490C - _02074626 - 2 ; case 81
	.short _0207490C - _02074626 - 2 ; case 82
	.short _0207490C - _02074626 - 2 ; case 83
	.short _0207490C - _02074626 - 2 ; case 84
	.short _0207490C - _02074626 - 2 ; case 85
	.short _0207490C - _02074626 - 2 ; case 86
	.short _0207490C - _02074626 - 2 ; case 87
	.short _0207490C - _02074626 - 2 ; case 88
	.short _0207490C - _02074626 - 2 ; case 89
	.short _0207490C - _02074626 - 2 ; case 90
	.short _0207490C - _02074626 - 2 ; case 91
	.short _0207490C - _02074626 - 2 ; case 92
	.short _0207490C - _02074626 - 2 ; case 93
	.short _0207490C - _02074626 - 2 ; case 94
	.short _0207490C - _02074626 - 2 ; case 95
	.short _0207490C - _02074626 - 2 ; case 96
	.short _0207490C - _02074626 - 2 ; case 97
	.short _0207490C - _02074626 - 2 ; case 98
	.short _0207490C - _02074626 - 2 ; case 99
	.short _0207490C - _02074626 - 2 ; case 100
	.short _0207490C - _02074626 - 2 ; case 101
	.short _0207490C - _02074626 - 2 ; case 102
	.short _0207490C - _02074626 - 2 ; case 103
	.short _0207490C - _02074626 - 2 ; case 104
	.short _0207490C - _02074626 - 2 ; case 105
	.short _0207490C - _02074626 - 2 ; case 106
	.short _0207490C - _02074626 - 2 ; case 107
	.short _0207490C - _02074626 - 2 ; case 108
	.short _0207490C - _02074626 - 2 ; case 109
	.short _02074932 - _02074626 - 2 ; case 110
	.short _0207493A - _02074626 - 2 ; case 111
	.short _02074968 - _02074626 - 2 ; case 112
	.short _02074970 - _02074626 - 2 ; case 113
	.short _02074974 - _02074626 - 2 ; case 114
	.short _02074A44 - _02074626 - 2 ; case 115
	.short _02074A56 - _02074626 - 2 ; case 116
	.short _02074978 - _02074626 - 2 ; case 117
	.short _0207478E - _02074626 - 2 ; case 118
	.short _020749AC - _02074626 - 2 ; case 119
	.short _020749A8 - _02074626 - 2 ; case 120
	.short _020749DA - _02074626 - 2 ; case 121
	.short _020749DE - _02074626 - 2 ; case 122
	.short _020749E2 - _02074626 - 2 ; case 123
	.short _020749E2 - _02074626 - 2 ; case 124
	.short _020749E2 - _02074626 - 2 ; case 125
	.short _020749E2 - _02074626 - 2 ; case 126
	.short _020749E2 - _02074626 - 2 ; case 127
	.short _020749E2 - _02074626 - 2 ; case 128
	.short _020749E2 - _02074626 - 2 ; case 129
	.short _020749E2 - _02074626 - 2 ; case 130
	.short _020749E2 - _02074626 - 2 ; case 131
	.short _020749E2 - _02074626 - 2 ; case 132
	.short _020749E2 - _02074626 - 2 ; case 133
	.short _020749E2 - _02074626 - 2 ; case 134
	.short _020749E2 - _02074626 - 2 ; case 135
	.short _020749E2 - _02074626 - 2 ; case 136
	.short _020749E2 - _02074626 - 2 ; case 137
	.short _020749E2 - _02074626 - 2 ; case 138
	.short _020749E2 - _02074626 - 2 ; case 139
	.short _020749E2 - _02074626 - 2 ; case 140
	.short _020749E2 - _02074626 - 2 ; case 141
	.short _020749E2 - _02074626 - 2 ; case 142
	.short _020749E2 - _02074626 - 2 ; case 143
	.short _02074A0A - _02074626 - 2 ; case 144
	.short _02074A24 - _02074626 - 2 ; case 145
	.short _02074A2C - _02074626 - 2 ; case 146
	.short _02074A30 - _02074626 - 2 ; case 147
	.short _02074A34 - _02074626 - 2 ; case 148
	.short _02074A38 - _02074626 - 2 ; case 149
	.short _02074A3C - _02074626 - 2 ; case 150
	.short _02074A40 - _02074626 - 2 ; case 151
	.short _02074A44 - _02074626 - 2 ; case 152
	.short _02074A56 - _02074626 - 2 ; case 153
	.short _02074A68 - _02074626 - 2 ; case 154
	.short _02074A6C - _02074626 - 2 ; case 155
	.short _02074A70 - _02074626 - 2 ; case 156
	.short _02074A78 - _02074626 - 2 ; case 157
	.short _02074A80 - _02074626 - 2 ; case 158
	.short _02074A84 - _02074626 - 2 ; case 159
	.short _0207478E - _02074626 - 2 ; case 160
	.short _020747F6 - _02074626 - 2 ; case 161
	.short _0207478E - _02074626 - 2 ; case 162
	.short _0207478E - _02074626 - 2 ; case 163
	.short _0207478E - _02074626 - 2 ; case 164
	.short _0207478E - _02074626 - 2 ; case 165
	.short _0207478E - _02074626 - 2 ; case 166
	.short _0207478E - _02074626 - 2 ; case 167
	.short _0207478E - _02074626 - 2 ; case 168
	.short _0207478E - _02074626 - 2 ; case 169
	.short _0207478E - _02074626 - 2 ; case 170
	.short _0207478E - _02074626 - 2 ; case 171
	.short _020747BC - _02074626 - 2 ; case 172
	.short _020747C6 - _02074626 - 2 ; case 173
	.short _020747D8 - _02074626 - 2 ; case 174
	.short _02074A88 - _02074626 - 2 ; case 175
	.short _02074ABA - _02074626 - 2 ; case 176
	.short _02074AE4 - _02074626 - 2 ; case 177
	.short _02074AE4 - _02074626 - 2 ; case 178
	.short _02074B1C - _02074626 - 2 ; case 179
_0207478E:
	mov r4, #0
	b _02074B26
_02074792:
	ldr r0, [sp]
	ldr r4, [r0, #0]
	b _02074B26
_02074798:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1f
	lsr r4, r0, #0x1f
	b _02074B26
_020747A2:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1e
	lsr r4, r0, #0x1f
	b _02074B26
_020747AC:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r4, r0, #0x1f
	b _02074B26
_020747B6:
	ldr r0, [sp]
	ldrh r4, [r0, #6]
	b _02074B26
_020747BC:
	ldrh r0, [r5]
	cmp r0, #0
	beq _020747F0
	mov r4, #1
	b _02074B26
_020747C6:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r4, r0, #0x1f
	bne _020747F0
	ldr r0, [r6, #0x10]
	lsl r0, r0, #1
	lsr r4, r0, #0x1f
	b _02074B26
_020747D8:
	ldrh r4, [r5]
	cmp r4, #0
	beq _020747F0
	ldr r0, [r6, #0x10]
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	bne _020747F2
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _020747F2
_020747F0:
	b _02074B26
_020747F2:
	ldr r4, _02074AD0 ; =0x000001EE
	b _02074B26
_020747F6:
	ldrh r0, [r5]
	ldr r1, [r5, #8]
	bl sub_02075B78
	add r4, r0, #0
	b _02074B26
_02074802:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _02074810
	ldr r4, _02074AD0 ; =0x000001EE
	b _02074B26
_02074810:
	ldrh r4, [r5]
	b _02074B26
_02074814:
	ldrh r4, [r5, #2]
	b _02074B26
_02074818:
	ldr r4, [r5, #4]
	b _02074B26
_0207481C:
	ldr r4, [r5, #8]
	b _02074B26
_02074820:
	ldrb r4, [r5, #0xc]
	b _02074B26
_02074824:
	ldrb r4, [r5, #0xd]
	b _02074B26
_02074828:
	ldrb r4, [r5, #0xe]
	b _02074B26
_0207482C:
	ldrb r4, [r5, #0xf]
	b _02074B26
_02074830:
	ldrb r4, [r5, #0x10]
	b _02074B26
_02074834:
	ldrb r4, [r5, #0x11]
	b _02074B26
_02074838:
	ldrb r4, [r5, #0x12]
	b _02074B26
_0207483C:
	ldrb r4, [r5, #0x13]
	b _02074B26
_02074840:
	ldrb r4, [r5, #0x14]
	b _02074B26
_02074844:
	ldrb r4, [r5, #0x15]
	b _02074B26
_02074848:
	ldrb r4, [r5, #0x16]
	b _02074B26
_0207484C:
	ldrb r4, [r5, #0x17]
	b _02074B26
_02074850:
	ldrb r4, [r5, #0x18]
	b _02074B26
_02074854:
	ldrb r4, [r5, #0x19]
	b _02074B26
_02074858:
	ldrb r4, [r5, #0x1a]
	b _02074B26
_0207485C:
	ldrb r4, [r5, #0x1b]
	b _02074B26
_02074860:
	ldr r2, [sp, #4]
	mov r0, #1
	sub r2, #0x19
	add r1, r4, #0
	str r2, [sp, #4]
	bl _ull_sll
	ldr r2, [r5, #0x1c]
	add r3, r4, #0
	and r3, r1
	and r2, r0
	mov r1, #0
	mov r0, #0
	eor r1, r3
	eor r0, r2
	orr r0, r1
	beq _020748FC
	mov r4, #1
	b _02074B26
_02074886:
	ldr r0, [sp, #4]
	sub r0, #0x36
	str r0, [sp, #4]
	lsl r0, r0, #1
	ldrh r4, [r6, r0]
	b _02074B26
_02074892:
	ldr r0, [sp, #4]
	sub r0, #0x3a
	str r0, [sp, #4]
	add r0, r6, r0
	ldrb r4, [r0, #8]
	b _02074B26
_0207489E:
	ldr r0, [sp, #4]
	sub r0, #0x3e
	str r0, [sp, #4]
	add r0, r6, r0
	ldrb r4, [r0, #0xc]
	b _02074B26
_020748AA:
	ldr r0, [sp, #4]
	sub r0, #0x42
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	lsl r0, r0, #1
	add r1, r6, r1
	ldrh r0, [r6, r0]
	ldrb r1, [r1, #0xc]
	bl sub_020790DC
	add r4, r0, #0
	b _02074B26
_020748C2:
	ldr r0, [r6, #0x10]
	lsl r0, r0, #0x1b
	lsr r4, r0, #0x1b
	b _02074B26
_020748CA:
	ldr r0, [r6, #0x10]
	lsl r0, r0, #0x16
	lsr r4, r0, #0x1b
	b _02074B26
_020748D2:
	ldr r0, [r6, #0x10]
	lsl r0, r0, #0x11
	lsr r4, r0, #0x1b
	b _02074B26
_020748DA:
	ldr r0, [r6, #0x10]
	lsl r0, r0, #0xc
	lsr r4, r0, #0x1b
	b _02074B26
_020748E2:
	ldr r0, [r6, #0x10]
	lsl r0, r0, #7
	lsr r4, r0, #0x1b
	b _02074B26
_020748EA:
	ldr r0, [r6, #0x10]
	lsl r0, r0, #2
	lsr r4, r0, #0x1b
	b _02074B26
_020748F2:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r4, r0, #0x1f
	beq _020748FE
_020748FC:
	b _02074B26
_020748FE:
	ldr r0, [r6, #0x10]
	lsl r0, r0, #1
	lsr r4, r0, #0x1f
	b _02074B26
_02074906:
	ldr r0, [r6, #0x10]
	lsr r4, r0, #0x1f
	b _02074B26
_0207490C:
	ldr r2, [sp, #4]
	mov r0, #1
	sub r2, #0x4e
	add r1, r4, #0
	str r2, [sp, #4]
	bl _ull_sll
	ldr r2, [r6, #0x14]
	add r3, r4, #0
	and r3, r1
	and r2, r0
	mov r1, #0
	mov r0, #0
	eor r1, r3
	eor r0, r2
	orr r0, r1
	beq _02074A04
	mov r4, #1
	b _02074B26
_02074932:
	ldrb r0, [r6, #0x18]
	lsl r0, r0, #0x1f
	lsr r4, r0, #0x1f
	b _02074B26
_0207493A:
	ldr r1, [sp]
	ldrh r0, [r5]
	ldr r1, [r1, #0]
	bl sub_02075DAC
	add r4, r0, #0
	ldrb r0, [r6, #0x18]
	mov r1, #6
	bic r0, r1
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1d
	orr r0, r1
	strb r0, [r6, #0x18]
	ldr r0, [sp]
	mov r1, #0x80
	add r0, #8
	bl sub_0207823C
	ldr r1, [sp]
	strh r0, [r1, #6]
	b _02074B26
_02074968:
	ldrb r0, [r6, #0x18]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x1b
	b _02074B26
_02074970:
	ldrb r4, [r6, #0x19]
	b _02074B26
_02074974:
	ldrh r4, [r6, #0x1a]
	b _02074B26
_02074978:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _0207498E
	ldr r0, _02074AD4 ; =0x000001EF
	ldr r2, [sp, #8]
	add r1, r4, #0
	bl sub_0200B274
	b _02074B26
_0207498E:
	ldr r1, [sp, #8]
_02074990:
	ldrh r0, [r7]
	add r4, r4, #1
	add r7, r7, #2
	strh r0, [r1]
	add r1, r1, #2
	cmp r4, #0xa
	blo _02074990
	ldr r2, _02074AD8 ; =0x0000FFFF
	ldr r0, [sp, #8]
	lsl r1, r4, #1
	strh r2, [r0, r1]
	b _02074B26
_020749A8:
	ldr r0, [r6, #0x10]
	lsr r4, r0, #0x1f
_020749AC:
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _020749D0
	ldr r0, _02074AD4 ; =0x000001EF
	mov r1, #0
	bl sub_0200B32C
	add r5, r0, #0
	ldr r0, [sp, #8]
	add r1, r5, #0
	bl sub_02023810
	add r0, r5, #0
	bl sub_020237BC
	b _02074B26
_020749D0:
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl sub_02023D28
	b _02074B26
_020749DA:
	ldrb r4, [r7, #0x16]
	b _02074B26
_020749DE:
	ldrb r4, [r7, #0x17]
	b _02074B26
_020749E2:
	ldr r2, [sp, #4]
	mov r0, #1
	sub r2, #0x7b
	add r1, r4, #0
	str r2, [sp, #4]
	bl _ull_sll
	ldr r3, [r7, #0x18]
	ldr r2, [r7, #0x1c]
	and r3, r0
	and r2, r1
	mov r1, #0
	mov r0, #0
	eor r1, r2
	eor r0, r3
	orr r0, r1
	bne _02074A06
_02074A04:
	b _02074B26
_02074A06:
	mov r4, #1
	b _02074B26
_02074A0A:
	ldr r2, [sp, #8]
_02074A0C:
	ldrh r0, [r1]
	add r4, r4, #1
	add r1, r1, #2
	strh r0, [r2]
	add r2, r2, #2
	cmp r4, #7
	blo _02074A0C
	ldr r2, _02074AD8 ; =0x0000FFFF
	ldr r0, [sp, #8]
	lsl r1, r4, #1
	strh r2, [r0, r1]
	b _02074B26
_02074A24:
	ldr r0, [sp, #8]
	bl sub_02023D28
	b _02074B26
_02074A2C:
	ldrb r4, [r1, #0x10]
	b _02074B26
_02074A30:
	ldrb r4, [r1, #0x11]
	b _02074B26
_02074A34:
	ldrb r4, [r1, #0x12]
	b _02074B26
_02074A38:
	ldrb r4, [r1, #0x13]
	b _02074B26
_02074A3C:
	ldrb r4, [r1, #0x14]
	b _02074B26
_02074A40:
	ldrb r4, [r1, #0x15]
	b _02074B26
_02074A44:
	ldrh r1, [r1, #0x16]
	ldr r0, _02074ADC ; =0x00000BBA
	cmp r1, r0
	bne _02074A52
	ldrh r4, [r6, #0x1c]
	cmp r4, #0
	bne _02074B26
_02074A52:
	add r4, r1, #0
	b _02074B26
_02074A56:
	ldrh r1, [r1, #0x18]
	ldr r0, _02074ADC ; =0x00000BBA
	cmp r1, r0
	bne _02074A64
	ldrh r4, [r6, #0x1e]
	cmp r4, #0
	bne _02074B26
_02074A64:
	add r4, r1, #0
	b _02074B26
_02074A68:
	ldrb r4, [r1, #0x1a]
	b _02074B26
_02074A6C:
	ldrb r4, [r1, #0x1b]
	b _02074B26
_02074A70:
	ldrb r0, [r1, #0x1c]
	lsl r0, r0, #0x19
	lsr r4, r0, #0x19
	b _02074B26
_02074A78:
	ldrb r0, [r1, #0x1c]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x1f
	b _02074B26
_02074A80:
	ldrb r4, [r1, #0x1d]
	b _02074B26
_02074A84:
	ldrh r4, [r1, #0x1e]
	b _02074B26
_02074A88:
	ldr r4, [r6, #0x10]
	lsl r0, r4, #2
	lsr r0, r0, #0x1b
	lsl r5, r0, #0x19
	lsl r0, r4, #7
	lsr r0, r0, #0x1b
	lsl r3, r0, #0x14
	lsl r0, r4, #0xc
	lsr r0, r0, #0x1b
	lsl r2, r0, #0xf
	lsl r0, r4, #0x11
	lsr r0, r0, #0x1b
	lsl r1, r0, #0xa
	lsl r0, r4, #0x1b
	lsl r4, r4, #0x16
	lsr r4, r4, #0x1b
	lsr r0, r0, #0x1b
	lsl r4, r4, #5
	orr r0, r4
	orr r0, r1
	orr r0, r2
	orr r0, r3
	add r4, r5, #0
	orr r4, r0
	b _02074B26
_02074ABA:
	ldrh r0, [r5]
	cmp r0, #0x1d
	beq _02074AC4
	cmp r0, #0x20
	bne _02074AE0
_02074AC4:
	ldr r0, [r6, #0x10]
	lsr r0, r0, #0x1f
	bne _02074AE0
	mov r4, #0
	b _02074B26
	nop
_02074AD0: .word 0x000001EE
_02074AD4: .word 0x000001EF
_02074AD8: .word 0x0000FFFF
_02074ADC: .word 0x00000BBA
_02074AE0:
	mov r4, #1
	b _02074B26
_02074AE4:
	ldrh r0, [r5]
	ldr r1, _02074B2C ; =0x000001ED
	cmp r0, r1
	bne _02074B08
	ldrb r1, [r5, #0xd]
	cmp r1, #0x79
	bne _02074B08
	ldrh r0, [r5, #2]
	mov r1, #1
	add r2, r4, #0
	bl sub_0207CFF0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02077988
	add r4, r0, #0
	b _02074B26
_02074B08:
	ldrb r1, [r6, #0x18]
	ldr r2, [sp, #4]
	lsl r1, r1, #0x18
	sub r2, #0xab
	lsr r1, r1, #0x1b
	str r2, [sp, #4]
	bl sub_020759CC
	add r4, r0, #0
	b _02074B26
_02074B1C:
	ldrh r0, [r5]
	ldr r2, [sp, #8]
	add r1, r4, #0
	bl sub_0200B274
_02074B26:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02074B2C: .word 0x000001ED
	thumb_func_end sub_020745D0

	thumb_func_start sub_02074B30
sub_02074B30: ; 0x02074B30
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02074B86
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_02078234
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	ldrh r1, [r5, #6]
	cmp r0, r1
	beq _02074B86
	cmp r0, r1
	beq _02074B70
	bl sub_02022974
_02074B70:
	ldrh r1, [r5, #4]
	mov r0, #4
	orr r0, r1
	strh r0, [r5, #4]
	ldrh r2, [r5, #6]
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
	pop {r4, r5, r6, pc}
_02074B86:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02074BC0
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02074BBC
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	strh r0, [r5, #6]
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_02074BBC:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02074B30

	thumb_func_start sub_02074BC0
sub_02074BC0: ; 0x02074BC0
	push {r3, lr}
	add r3, r0, #0
	add r0, r1, #0
	sub r0, #0xa0
	cmp r0, #0xb
	bhi _02074C58
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02074BD8: ; jump table
	.short _02074BF0 - _02074BD8 - 2 ; case 0
	.short _02074BF8 - _02074BD8 - 2 ; case 1
	.short _02074C00 - _02074BD8 - 2 ; case 2
	.short _02074C08 - _02074BD8 - 2 ; case 3
	.short _02074C10 - _02074BD8 - 2 ; case 4
	.short _02074C18 - _02074BD8 - 2 ; case 5
	.short _02074C20 - _02074BD8 - 2 ; case 6
	.short _02074C28 - _02074BD8 - 2 ; case 7
	.short _02074C30 - _02074BD8 - 2 ; case 8
	.short _02074C38 - _02074BD8 - 2 ; case 9
	.short _02074C40 - _02074BD8 - 2 ; case 10
	.short _02074C4C - _02074BD8 - 2 ; case 11
_02074BF0:
	ldr r0, [r2, #0]
	add r3, #0x88
	str r0, [r3, #0]
	pop {r3, pc}
_02074BF8:
	ldrb r0, [r2]
	add r3, #0x8c
	strb r0, [r3]
	pop {r3, pc}
_02074C00:
	ldrb r0, [r2]
	add r3, #0x8d
	strb r0, [r3]
	pop {r3, pc}
_02074C08:
	ldrh r0, [r2]
	add r3, #0x8e
	strh r0, [r3]
	pop {r3, pc}
_02074C10:
	ldrh r0, [r2]
	add r3, #0x90
	strh r0, [r3]
	pop {r3, pc}
_02074C18:
	ldrh r0, [r2]
	add r3, #0x92
	strh r0, [r3]
	pop {r3, pc}
_02074C20:
	ldrh r0, [r2]
	add r3, #0x94
	strh r0, [r3]
	pop {r3, pc}
_02074C28:
	ldrh r0, [r2]
	add r3, #0x96
	strh r0, [r3]
	pop {r3, pc}
_02074C30:
	ldrh r0, [r2]
	add r3, #0x98
	strh r0, [r3]
	pop {r3, pc}
_02074C38:
	ldrh r0, [r2]
	add r3, #0x9a
	strh r0, [r3]
	pop {r3, pc}
_02074C40:
	add r3, #0x9c
	add r0, r2, #0
	add r1, r3, #0
	bl sub_020281A0
	pop {r3, pc}
_02074C4C:
	add r3, #0xd4
	add r0, r2, #0
	add r1, r3, #0
	bl sub_0202CA10
	pop {r3, pc}
_02074C58:
	add r0, r3, #0
	bl sub_02074CD8
	pop {r3, pc}
	thumb_func_end sub_02074BC0

	thumb_func_start sub_02074C60
sub_02074C60: ; 0x02074C60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02074CAA
	ldrh r2, [r5, #6]
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	ldrh r1, [r5, #6]
	cmp r0, r1
	beq _02074CAA
	cmp r0, r1
	beq _02074C94
	bl sub_02022974
_02074C94:
	ldrh r1, [r5, #4]
	mov r0, #4
	orr r0, r1
	strh r0, [r5, #4]
	ldrh r2, [r5, #6]
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
	pop {r4, r5, r6, pc}
_02074CAA:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02074CD8
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02074CD4
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	strh r0, [r5, #6]
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_02074CD4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02074C60

	thumb_func_start sub_02074CD8
sub_02074CD8: ; 0x02074CD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r1, [sp, #4]
	add r1, r0, #0
	add r4, r2, #0
	ldr r1, [r1, #0]
	str r0, [sp]
	mov r2, #0
	bl sub_0207825C
	add r7, r0, #0
	ldr r0, [sp]
	mov r2, #1
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	add r5, r0, #0
	ldr r0, [sp]
	mov r2, #2
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r2, #3
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	add r6, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0xb3
	bls _02074D20
	b _02075348
_02074D20:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02074D2C: ; jump table
	.short _02074E94 - _02074D2C - 2 ; case 0
	.short _02074E9E - _02074D2C - 2 ; case 1
	.short _02074EBC - _02074D2C - 2 ; case 2
	.short _02074ED8 - _02074D2C - 2 ; case 3
	.short _02074EF0 - _02074D2C - 2 ; case 4
	.short _02074EFA - _02074D2C - 2 ; case 5
	.short _02074F02 - _02074D2C - 2 ; case 6
	.short _02074F0A - _02074D2C - 2 ; case 7
	.short _02074F12 - _02074D2C - 2 ; case 8
	.short _02074F1A - _02074D2C - 2 ; case 9
	.short _02074F22 - _02074D2C - 2 ; case 10
	.short _02074F2A - _02074D2C - 2 ; case 11
	.short _02074F32 - _02074D2C - 2 ; case 12
	.short _02074F3A - _02074D2C - 2 ; case 13
	.short _02074F42 - _02074D2C - 2 ; case 14
	.short _02074F4A - _02074D2C - 2 ; case 15
	.short _02074F52 - _02074D2C - 2 ; case 16
	.short _02074F5A - _02074D2C - 2 ; case 17
	.short _02074F62 - _02074D2C - 2 ; case 18
	.short _02074F6A - _02074D2C - 2 ; case 19
	.short _02074F72 - _02074D2C - 2 ; case 20
	.short _02074F7A - _02074D2C - 2 ; case 21
	.short _02074F82 - _02074D2C - 2 ; case 22
	.short _02074F8A - _02074D2C - 2 ; case 23
	.short _02074F92 - _02074D2C - 2 ; case 24
	.short _02074F9A - _02074D2C - 2 ; case 25
	.short _02074F9A - _02074D2C - 2 ; case 26
	.short _02074F9A - _02074D2C - 2 ; case 27
	.short _02074F9A - _02074D2C - 2 ; case 28
	.short _02074F9A - _02074D2C - 2 ; case 29
	.short _02074F9A - _02074D2C - 2 ; case 30
	.short _02074F9A - _02074D2C - 2 ; case 31
	.short _02074F9A - _02074D2C - 2 ; case 32
	.short _02074F9A - _02074D2C - 2 ; case 33
	.short _02074F9A - _02074D2C - 2 ; case 34
	.short _02074F9A - _02074D2C - 2 ; case 35
	.short _02074F9A - _02074D2C - 2 ; case 36
	.short _02074F9A - _02074D2C - 2 ; case 37
	.short _02074F9A - _02074D2C - 2 ; case 38
	.short _02074F9A - _02074D2C - 2 ; case 39
	.short _02074F9A - _02074D2C - 2 ; case 40
	.short _02074F9A - _02074D2C - 2 ; case 41
	.short _02074F9A - _02074D2C - 2 ; case 42
	.short _02074F9A - _02074D2C - 2 ; case 43
	.short _02074F9A - _02074D2C - 2 ; case 44
	.short _02074F9A - _02074D2C - 2 ; case 45
	.short _02074F9A - _02074D2C - 2 ; case 46
	.short _02074F9A - _02074D2C - 2 ; case 47
	.short _02074F9A - _02074D2C - 2 ; case 48
	.short _02074F9A - _02074D2C - 2 ; case 49
	.short _02074F9A - _02074D2C - 2 ; case 50
	.short _02074F9A - _02074D2C - 2 ; case 51
	.short _02074F9A - _02074D2C - 2 ; case 52
	.short _02074F9A - _02074D2C - 2 ; case 53
	.short _02074FC4 - _02074D2C - 2 ; case 54
	.short _02074FC4 - _02074D2C - 2 ; case 55
	.short _02074FC4 - _02074D2C - 2 ; case 56
	.short _02074FC4 - _02074D2C - 2 ; case 57
	.short _02074FD4 - _02074D2C - 2 ; case 58
	.short _02074FD4 - _02074D2C - 2 ; case 59
	.short _02074FD4 - _02074D2C - 2 ; case 60
	.short _02074FD4 - _02074D2C - 2 ; case 61
	.short _02074FE4 - _02074D2C - 2 ; case 62
	.short _02074FE4 - _02074D2C - 2 ; case 63
	.short _02074FE4 - _02074D2C - 2 ; case 64
	.short _02074FE4 - _02074D2C - 2 ; case 65
	.short _02075348 - _02074D2C - 2 ; case 66
	.short _02075348 - _02074D2C - 2 ; case 67
	.short _02075348 - _02074D2C - 2 ; case 68
	.short _02075348 - _02074D2C - 2 ; case 69
	.short _02074FF4 - _02074D2C - 2 ; case 70
	.short _02075008 - _02074D2C - 2 ; case 71
	.short _0207501C - _02074D2C - 2 ; case 72
	.short _02075030 - _02074D2C - 2 ; case 73
	.short _02075044 - _02074D2C - 2 ; case 74
	.short _02075058 - _02074D2C - 2 ; case 75
	.short _0207506C - _02074D2C - 2 ; case 76
	.short _02075080 - _02074D2C - 2 ; case 77
	.short _02075092 - _02074D2C - 2 ; case 78
	.short _02075092 - _02074D2C - 2 ; case 79
	.short _02075092 - _02074D2C - 2 ; case 80
	.short _02075092 - _02074D2C - 2 ; case 81
	.short _02075092 - _02074D2C - 2 ; case 82
	.short _02075092 - _02074D2C - 2 ; case 83
	.short _02075092 - _02074D2C - 2 ; case 84
	.short _02075092 - _02074D2C - 2 ; case 85
	.short _02075092 - _02074D2C - 2 ; case 86
	.short _02075092 - _02074D2C - 2 ; case 87
	.short _02075092 - _02074D2C - 2 ; case 88
	.short _02075092 - _02074D2C - 2 ; case 89
	.short _02075092 - _02074D2C - 2 ; case 90
	.short _02075092 - _02074D2C - 2 ; case 91
	.short _02075092 - _02074D2C - 2 ; case 92
	.short _02075092 - _02074D2C - 2 ; case 93
	.short _02075092 - _02074D2C - 2 ; case 94
	.short _02075092 - _02074D2C - 2 ; case 95
	.short _02075092 - _02074D2C - 2 ; case 96
	.short _02075092 - _02074D2C - 2 ; case 97
	.short _02075092 - _02074D2C - 2 ; case 98
	.short _02075092 - _02074D2C - 2 ; case 99
	.short _02075092 - _02074D2C - 2 ; case 100
	.short _02075092 - _02074D2C - 2 ; case 101
	.short _02075092 - _02074D2C - 2 ; case 102
	.short _02075092 - _02074D2C - 2 ; case 103
	.short _02075092 - _02074D2C - 2 ; case 104
	.short _02075092 - _02074D2C - 2 ; case 105
	.short _02075092 - _02074D2C - 2 ; case 106
	.short _02075092 - _02074D2C - 2 ; case 107
	.short _02075092 - _02074D2C - 2 ; case 108
	.short _02075092 - _02074D2C - 2 ; case 109
	.short _020750BC - _02074D2C - 2 ; case 110
	.short _020750D0 - _02074D2C - 2 ; case 111
	.short _020750EC - _02074D2C - 2 ; case 112
	.short _02075100 - _02074D2C - 2 ; case 113
	.short _02075108 - _02074D2C - 2 ; case 114
	.short _02075234 - _02074D2C - 2 ; case 115
	.short _0207525A - _02074D2C - 2 ; case 116
	.short _0207512E - _02074D2C - 2 ; case 117
	.short _02075110 - _02074D2C - 2 ; case 118
	.short _02075172 - _02074D2C - 2 ; case 119
	.short _02075146 - _02074D2C - 2 ; case 120
	.short _02075180 - _02074D2C - 2 ; case 121
	.short _0207518A - _02074D2C - 2 ; case 122
	.short _02075194 - _02074D2C - 2 ; case 123
	.short _02075194 - _02074D2C - 2 ; case 124
	.short _02075194 - _02074D2C - 2 ; case 125
	.short _02075194 - _02074D2C - 2 ; case 126
	.short _02075194 - _02074D2C - 2 ; case 127
	.short _02075194 - _02074D2C - 2 ; case 128
	.short _02075194 - _02074D2C - 2 ; case 129
	.short _02075194 - _02074D2C - 2 ; case 130
	.short _02075194 - _02074D2C - 2 ; case 131
	.short _02075194 - _02074D2C - 2 ; case 132
	.short _02075194 - _02074D2C - 2 ; case 133
	.short _02075194 - _02074D2C - 2 ; case 134
	.short _02075194 - _02074D2C - 2 ; case 135
	.short _02075194 - _02074D2C - 2 ; case 136
	.short _02075194 - _02074D2C - 2 ; case 137
	.short _02075194 - _02074D2C - 2 ; case 138
	.short _02075194 - _02074D2C - 2 ; case 139
	.short _02075194 - _02074D2C - 2 ; case 140
	.short _02075194 - _02074D2C - 2 ; case 141
	.short _02075194 - _02074D2C - 2 ; case 142
	.short _02075194 - _02074D2C - 2 ; case 143
	.short _020751E2 - _02074D2C - 2 ; case 144
	.short _020751F6 - _02074D2C - 2 ; case 145
	.short _02075204 - _02074D2C - 2 ; case 146
	.short _0207520C - _02074D2C - 2 ; case 147
	.short _02075214 - _02074D2C - 2 ; case 148
	.short _0207521C - _02074D2C - 2 ; case 149
	.short _02075224 - _02074D2C - 2 ; case 150
	.short _0207522C - _02074D2C - 2 ; case 151
	.short _02075234 - _02074D2C - 2 ; case 152
	.short _0207525A - _02074D2C - 2 ; case 153
	.short _02075280 - _02074D2C - 2 ; case 154
	.short _02075288 - _02074D2C - 2 ; case 155
	.short _02075290 - _02074D2C - 2 ; case 156
	.short _020752A4 - _02074D2C - 2 ; case 157
	.short _020752B8 - _02074D2C - 2 ; case 158
	.short _020752C0 - _02074D2C - 2 ; case 159
	.short _02075348 - _02074D2C - 2 ; case 160
	.short _02075348 - _02074D2C - 2 ; case 161
	.short _02075348 - _02074D2C - 2 ; case 162
	.short _02075348 - _02074D2C - 2 ; case 163
	.short _02075348 - _02074D2C - 2 ; case 164
	.short _02075348 - _02074D2C - 2 ; case 165
	.short _02075348 - _02074D2C - 2 ; case 166
	.short _02075348 - _02074D2C - 2 ; case 167
	.short _02075348 - _02074D2C - 2 ; case 168
	.short _02075348 - _02074D2C - 2 ; case 169
	.short _02075348 - _02074D2C - 2 ; case 170
	.short _02075348 - _02074D2C - 2 ; case 171
	.short _02075348 - _02074D2C - 2 ; case 172
	.short _02075348 - _02074D2C - 2 ; case 173
	.short _02075348 - _02074D2C - 2 ; case 174
	.short _020752C8 - _02074D2C - 2 ; case 175
	.short _02075348 - _02074D2C - 2 ; case 176
	.short _02075348 - _02074D2C - 2 ; case 177
	.short _02075348 - _02074D2C - 2 ; case 178
	.short _02075330 - _02074D2C - 2 ; case 179
_02074E94:
	ldr r0, [sp]
	ldr r1, [r4, #0]
	add sp, #0x50
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02074E9E:
	bl sub_02022974
	ldr r0, [sp]
	ldrb r1, [r4]
	ldrh r2, [r0, #4]
	mov r0, #1
	bic r2, r0
	mov r0, #1
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, [sp]
	add sp, #0x50
	strh r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02074EBC:
	bl sub_02022974
	ldr r0, [sp]
	ldrh r1, [r0, #4]
	mov r0, #2
	bic r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1e
	orr r1, r0
	ldr r0, [sp]
	add sp, #0x50
	strh r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02074ED8:
	ldr r0, [sp]
	ldrh r1, [r0, #4]
	mov r0, #4
	bic r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1d
	orr r1, r0
	ldr r0, [sp]
	add sp, #0x50
	strh r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02074EF0:
	ldrh r1, [r4]
	ldr r0, [sp]
	add sp, #0x50
	strh r1, [r0, #6]
	pop {r3, r4, r5, r6, r7, pc}
_02074EFA:
	ldrh r0, [r4]
	add sp, #0x50
	strh r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
_02074F02:
	ldrh r0, [r4]
	add sp, #0x50
	strh r0, [r7, #2]
	pop {r3, r4, r5, r6, r7, pc}
_02074F0A:
	ldr r0, [r4, #0]
	add sp, #0x50
	str r0, [r7, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02074F12:
	ldr r0, [r4, #0]
	add sp, #0x50
	str r0, [r7, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02074F1A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02074F22:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0xd]
	pop {r3, r4, r5, r6, r7, pc}
_02074F2A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02074F32:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0xf]
	pop {r3, r4, r5, r6, r7, pc}
_02074F3A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02074F42:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x11]
	pop {r3, r4, r5, r6, r7, pc}
_02074F4A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
_02074F52:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x13]
	pop {r3, r4, r5, r6, r7, pc}
_02074F5A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_02074F62:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x15]
	pop {r3, r4, r5, r6, r7, pc}
_02074F6A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x16]
	pop {r3, r4, r5, r6, r7, pc}
_02074F72:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x17]
	pop {r3, r4, r5, r6, r7, pc}
_02074F7A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_02074F82:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x19]
	pop {r3, r4, r5, r6, r7, pc}
_02074F8A:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x1a]
	pop {r3, r4, r5, r6, r7, pc}
_02074F92:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r7, #0x1b]
	pop {r3, r4, r5, r6, r7, pc}
_02074F9A:
	ldr r1, [sp, #4]
	mov r0, #1
	sub r1, #0x19
	str r1, [sp, #4]
	lsl r0, r1
	ldrb r1, [r4]
	cmp r1, #0
	beq _02074FB4
	ldr r1, [r7, #0x1c]
	add sp, #0x50
	orr r0, r1
	str r0, [r7, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_02074FB4:
	mov r1, #0
	sub r1, r1, #1
	ldr r2, [r7, #0x1c]
	eor r0, r1
	and r0, r2
	add sp, #0x50
	str r0, [r7, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_02074FC4:
	ldr r0, [sp, #4]
	ldrh r1, [r4]
	sub r0, #0x36
	str r0, [sp, #4]
	lsl r0, r0, #1
	add sp, #0x50
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02074FD4:
	ldr r0, [sp, #4]
	ldrb r1, [r4]
	sub r0, #0x3a
	str r0, [sp, #4]
	add r0, r5, r0
	strb r1, [r0, #8]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_02074FE4:
	ldr r0, [sp, #4]
	ldrb r1, [r4]
	sub r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, r0
	strb r1, [r0, #0xc]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_02074FF4:
	ldr r2, [r5, #0x10]
	mov r0, #0x1f
	bic r2, r0
	ldrb r1, [r4]
	mov r0, #0x1f
	add sp, #0x50
	and r0, r1
	orr r0, r2
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02075008:
	ldr r1, [r5, #0x10]
	ldr r0, _0207534C ; =0xFFFFFC1F
	add sp, #0x50
	and r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0207501C:
	ldr r1, [r5, #0x10]
	ldr r0, _02075350 ; =0xFFFF83FF
	add sp, #0x50
	and r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02075030:
	ldr r1, [r5, #0x10]
	ldr r0, _02075354 ; =0xFFF07FFF
	add sp, #0x50
	and r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02075044:
	ldr r1, [r5, #0x10]
	ldr r0, _02075358 ; =0xFE0FFFFF
	add sp, #0x50
	and r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #7
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02075058:
	ldr r1, [r5, #0x10]
	ldr r0, _0207535C ; =0xC1FFFFFF
	add sp, #0x50
	and r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0207506C:
	ldr r1, [r5, #0x10]
	ldr r0, _02075360 ; =0xBFFFFFFF
	add sp, #0x50
	and r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #1
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02075080:
	ldr r1, [r5, #0x10]
	ldr r0, _02075364 ; =0x7FFFFFFF
	add sp, #0x50
	and r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1f
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02075092:
	ldr r1, [sp, #4]
	mov r0, #1
	sub r1, #0x4e
	str r1, [sp, #4]
	lsl r0, r1
	ldrb r1, [r4]
	cmp r1, #0
	beq _020750AC
	ldr r1, [r5, #0x14]
	add sp, #0x50
	orr r0, r1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_020750AC:
	mov r1, #0
	sub r1, r1, #1
	ldr r2, [r5, #0x14]
	eor r0, r1
	and r0, r2
	add sp, #0x50
	str r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_020750BC:
	ldrb r2, [r5, #0x18]
	ldrb r1, [r4]
	mov r0, #1
	bic r2, r0
	mov r0, #1
	and r0, r1
	orr r0, r2
	add sp, #0x50
	strb r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_020750D0:
	ldr r1, [sp]
	ldrh r0, [r7]
	ldr r1, [r1, #0]
	bl sub_02075DAC
	lsl r0, r0, #0x1e
	ldrb r2, [r5, #0x18]
	mov r1, #6
	lsr r0, r0, #0x1d
	bic r2, r1
	orr r0, r2
	add sp, #0x50
	strb r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_020750EC:
	ldrb r1, [r5, #0x18]
	mov r0, #0xf8
	add sp, #0x50
	bic r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_02075100:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r5, #0x19]
	pop {r3, r4, r5, r6, r7, pc}
_02075108:
	ldrh r0, [r4]
	add sp, #0x50
	strh r0, [r5, #0x1a]
	pop {r3, r4, r5, r6, r7, pc}
_02075110:
	ldrh r0, [r7]
	mov r1, #0
	add r2, sp, #0x38
	bl sub_0200B274
	add r0, sp, #0x38
	add r1, r4, #0
	bl sub_0200220C
	ldr r2, [r5, #0x10]
	ldr r1, _02075364 ; =0x7FFFFFFF
	lsl r0, r0, #0x1f
	and r1, r2
	orr r0, r1
	str r0, [r5, #0x10]
_0207512E:
	mov r2, #0
_02075130:
	ldrh r1, [r4]
	ldr r0, [sp, #8]
	add r2, r2, #1
	strh r1, [r0]
	add r0, r0, #2
	add r4, r4, #2
	str r0, [sp, #8]
	cmp r2, #0xb
	blo _02075130
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_02075146:
	ldrh r0, [r7]
	add r2, sp, #0x20
	mov r1, #0
	add r2, #2
	bl sub_0200B274
	add r0, r4, #0
	add r1, sp, #0xc
	mov r2, #0xb
	bl sub_02023DF0
	add r0, sp, #0x20
	add r0, #2
	add r1, sp, #0xc
	bl sub_0200220C
	ldr r2, [r5, #0x10]
	ldr r1, _02075364 ; =0x7FFFFFFF
	lsl r0, r0, #0x1f
	and r1, r2
	orr r0, r1
	str r0, [r5, #0x10]
_02075172:
	ldr r1, [sp, #8]
	add r0, r4, #0
	mov r2, #0xb
	bl sub_02023DF0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_02075180:
	ldrb r1, [r4]
	ldr r0, [sp, #8]
	add sp, #0x50
	strb r1, [r0, #0x16]
	pop {r3, r4, r5, r6, r7, pc}
_0207518A:
	ldrb r1, [r4]
	ldr r0, [sp, #8]
	add sp, #0x50
	strb r1, [r0, #0x17]
	pop {r3, r4, r5, r6, r7, pc}
_02075194:
	ldr r0, [sp, #4]
	mov r1, #1
	sub r0, #0x7b
	add r2, r1, #0
	ldrb r3, [r4]
	lsl r2, r0
	str r0, [sp, #4]
	asr r0, r2, #0x1f
	cmp r3, #0
	beq _020751C0
	ldr r1, [sp, #8]
	ldr r3, [sp, #8]
	add r1, #0x18
	ldr r4, [r3, #0x18]
	ldr r3, [r1, #4]
	orr r2, r4
	orr r3, r0
	ldr r0, [sp, #8]
	add sp, #0x50
	str r2, [r0, #0x18]
	str r3, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020751C0:
	ldr r6, [sp, #8]
	ldr r3, [sp, #8]
	add r6, #0x18
	ldr r4, [r6, #4]
	ldr r5, [r3, #0x18]
	sub r3, r1, #2
	sub r1, r1, #2
	eor r1, r2
	eor r0, r3
	add r2, r4, #0
	and r2, r0
	ldr r0, [sp, #8]
	and r1, r5
	str r1, [r0, #0x18]
	add sp, #0x50
	str r2, [r6, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020751E2:
	mov r1, #0
_020751E4:
	ldrh r0, [r4]
	add r1, r1, #1
	add r4, r4, #2
	strh r0, [r6]
	add r6, r6, #2
	cmp r1, #8
	blo _020751E4
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_020751F6:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #8
	bl sub_02023DF0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_02075204:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0207520C:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x11]
	pop {r3, r4, r5, r6, r7, pc}
_02075214:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
_0207521C:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x13]
	pop {r3, r4, r5, r6, r7, pc}
_02075224:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0207522C:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x15]
	pop {r3, r4, r5, r6, r7, pc}
_02075234:
	ldrh r0, [r4]
	cmp r0, #0
	beq _02075242
	bl sub_0201708C
	cmp r0, #1
	bne _0207524E
_02075242:
	ldrh r0, [r4]
	add sp, #0x50
	strh r0, [r6, #0x16]
	ldrh r0, [r4]
	strh r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_0207524E:
	ldr r0, _02075368 ; =0x00000BBA
	add sp, #0x50
	strh r0, [r6, #0x16]
	ldrh r0, [r4]
	strh r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_0207525A:
	ldrh r0, [r4]
	cmp r0, #0
	beq _02075268
	bl sub_0201708C
	cmp r0, #1
	bne _02075274
_02075268:
	ldrh r0, [r4]
	add sp, #0x50
	strh r0, [r6, #0x18]
	ldrh r0, [r4]
	strh r0, [r5, #0x1e]
	pop {r3, r4, r5, r6, r7, pc}
_02075274:
	ldr r0, _02075368 ; =0x00000BBA
	add sp, #0x50
	strh r0, [r6, #0x18]
	ldrh r0, [r4]
	strh r0, [r5, #0x1e]
	pop {r3, r4, r5, r6, r7, pc}
_02075280:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x1a]
	pop {r3, r4, r5, r6, r7, pc}
_02075288:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x1b]
	pop {r3, r4, r5, r6, r7, pc}
_02075290:
	ldrb r2, [r6, #0x1c]
	ldrb r1, [r4]
	mov r0, #0x7f
	bic r2, r0
	mov r0, #0x7f
	and r0, r1
	orr r0, r2
	add sp, #0x50
	strb r0, [r6, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_020752A4:
	ldrb r1, [r6, #0x1c]
	mov r0, #0x80
	add sp, #0x50
	bic r1, r0
	ldrb r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r6, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_020752B8:
	ldrb r0, [r4]
	add sp, #0x50
	strb r0, [r6, #0x1d]
	pop {r3, r4, r5, r6, r7, pc}
_020752C0:
	ldrh r0, [r4]
	add sp, #0x50
	strh r0, [r6, #0x1e]
	pop {r3, r4, r5, r6, r7, pc}
_020752C8:
	ldr r2, [r5, #0x10]
	mov r0, #0x1f
	bic r2, r0
	ldr r1, [r4, #0]
	mov r0, #0x1f
	and r1, r0
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0207534C ; =0xFFFFFC1F
	str r1, [r5, #0x10]
	and r1, r0
	ldr r0, [r4, #0]
	add sp, #0x50
	lsr r0, r0, #5
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x16
	orr r1, r0
	ldr r0, _02075350 ; =0xFFFF83FF
	str r1, [r5, #0x10]
	and r1, r0
	ldr r0, [r4, #0]
	lsr r0, r0, #0xa
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x11
	orr r1, r0
	ldr r0, _02075354 ; =0xFFF07FFF
	str r1, [r5, #0x10]
	and r1, r0
	ldr r0, [r4, #0]
	lsr r0, r0, #0xf
	lsl r0, r0, #0x1b
	lsr r0, r0, #0xc
	orr r1, r0
	ldr r0, _02075358 ; =0xFE0FFFFF
	str r1, [r5, #0x10]
	and r1, r0
	ldr r0, [r4, #0]
	lsr r0, r0, #0x14
	lsl r0, r0, #0x1b
	lsr r0, r0, #7
	orr r1, r0
	ldr r0, _0207535C ; =0xC1FFFFFF
	str r1, [r5, #0x10]
	and r1, r0
	ldr r0, [r4, #0]
	lsr r0, r0, #0x19
	lsl r0, r0, #0x1b
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02075330:
	ldrh r0, [r7]
	mov r1, #0
	bl sub_0200B32C
	ldr r1, [sp, #8]
	add r4, r0, #0
	mov r2, #0xb
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
_02075348:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0207534C: .word 0xFFFFFC1F
_02075350: .word 0xFFFF83FF
_02075354: .word 0xFFF07FFF
_02075358: .word 0xFE0FFFFF
_0207535C: .word 0xC1FFFFFF
_02075360: .word 0xBFFFFFFF
_02075364: .word 0x7FFFFFFF
_02075368: .word 0x00000BBA
	thumb_func_end sub_02074CD8

	thumb_func_start sub_0207536C
sub_0207536C: ; 0x0207536C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _020753BA
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_02078234
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	ldrh r1, [r5, #6]
	cmp r0, r1
	beq _020753BA
	cmp r0, r1
	beq _020753AC
	bl sub_02022974
_020753AC:
	ldrh r2, [r5, #6]
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
	pop {r4, r5, r6, pc}
_020753BA:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020753F4
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _020753F0
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	strh r0, [r5, #6]
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_020753F0:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0207536C

	thumb_func_start sub_020753F4
sub_020753F4: ; 0x020753F4
	push {r3, lr}
	add r3, r1, #0
	sub r3, #0xa0
	cmp r3, #0xa
	bhi _0207544C
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0207540A: ; jump table
	.short _02075446 - _0207540A - 2 ; case 0
	.short _02075446 - _0207540A - 2 ; case 1
	.short _02075446 - _0207540A - 2 ; case 2
	.short _02075420 - _0207540A - 2 ; case 3
	.short _02075446 - _0207540A - 2 ; case 4
	.short _02075446 - _0207540A - 2 ; case 5
	.short _02075446 - _0207540A - 2 ; case 6
	.short _02075446 - _0207540A - 2 ; case 7
	.short _02075446 - _0207540A - 2 ; case 8
	.short _02075446 - _0207540A - 2 ; case 9
	.short _02075446 - _0207540A - 2 ; case 10
_02075420:
	add r1, r0, #0
	add r1, #0x90
	ldrh r3, [r1]
	add r1, r0, #0
	add r1, #0x8e
	ldrh r1, [r1]
	add r1, r1, r2
	cmp r1, r3
	ble _02075438
	add r0, #0x8e
	strh r3, [r0]
	pop {r3, pc}
_02075438:
	add r1, r0, #0
	add r1, #0x8e
	ldrh r1, [r1]
	add r0, #0x8e
	add r1, r1, r2
	strh r1, [r0]
	pop {r3, pc}
_02075446:
	bl sub_02022974
	pop {r3, pc}
_0207544C:
	bl sub_02075454
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020753F4

	thumb_func_start sub_02075454
sub_02075454: ; 0x02075454
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r1, r0, #0
	add r6, r2, #0
	ldr r1, [r1, #0]
	str r0, [sp]
	mov r2, #0
	bl sub_0207825C
	add r4, r0, #0
	ldr r0, [sp]
	mov r2, #1
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	add r5, r0, #0
	ldr r0, [sp]
	mov r2, #2
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	ldr r0, [sp]
	mov r2, #3
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl sub_0207825C
	cmp r7, #0xb3
	bls _02075496
	b _02075856
_02075496:
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020754A2: ; jump table
	.short _02075856 - _020754A2 - 2 ; case 0
	.short _02075856 - _020754A2 - 2 ; case 1
	.short _02075856 - _020754A2 - 2 ; case 2
	.short _02075856 - _020754A2 - 2 ; case 3
	.short _02075856 - _020754A2 - 2 ; case 4
	.short _02075856 - _020754A2 - 2 ; case 5
	.short _02075856 - _020754A2 - 2 ; case 6
	.short _02075856 - _020754A2 - 2 ; case 7
	.short _0207560A - _020754A2 - 2 ; case 8
	.short _0207562E - _020754A2 - 2 ; case 9
	.short _02075856 - _020754A2 - 2 ; case 10
	.short _02075856 - _020754A2 - 2 ; case 11
	.short _02075856 - _020754A2 - 2 ; case 12
	.short _02075644 - _020754A2 - 2 ; case 13
	.short _0207564E - _020754A2 - 2 ; case 14
	.short _02075658 - _020754A2 - 2 ; case 15
	.short _02075662 - _020754A2 - 2 ; case 16
	.short _0207566C - _020754A2 - 2 ; case 17
	.short _02075676 - _020754A2 - 2 ; case 18
	.short _02075680 - _020754A2 - 2 ; case 19
	.short _02075696 - _020754A2 - 2 ; case 20
	.short _020756AC - _020754A2 - 2 ; case 21
	.short _020756C2 - _020754A2 - 2 ; case 22
	.short _020756D8 - _020754A2 - 2 ; case 23
	.short _020756EE - _020754A2 - 2 ; case 24
	.short _02075856 - _020754A2 - 2 ; case 25
	.short _02075856 - _020754A2 - 2 ; case 26
	.short _02075856 - _020754A2 - 2 ; case 27
	.short _02075856 - _020754A2 - 2 ; case 28
	.short _02075856 - _020754A2 - 2 ; case 29
	.short _02075856 - _020754A2 - 2 ; case 30
	.short _02075856 - _020754A2 - 2 ; case 31
	.short _02075856 - _020754A2 - 2 ; case 32
	.short _02075856 - _020754A2 - 2 ; case 33
	.short _02075856 - _020754A2 - 2 ; case 34
	.short _02075856 - _020754A2 - 2 ; case 35
	.short _02075856 - _020754A2 - 2 ; case 36
	.short _02075856 - _020754A2 - 2 ; case 37
	.short _02075856 - _020754A2 - 2 ; case 38
	.short _02075856 - _020754A2 - 2 ; case 39
	.short _02075856 - _020754A2 - 2 ; case 40
	.short _02075856 - _020754A2 - 2 ; case 41
	.short _02075856 - _020754A2 - 2 ; case 42
	.short _02075856 - _020754A2 - 2 ; case 43
	.short _02075856 - _020754A2 - 2 ; case 44
	.short _02075856 - _020754A2 - 2 ; case 45
	.short _02075856 - _020754A2 - 2 ; case 46
	.short _02075856 - _020754A2 - 2 ; case 47
	.short _02075856 - _020754A2 - 2 ; case 48
	.short _02075856 - _020754A2 - 2 ; case 49
	.short _02075856 - _020754A2 - 2 ; case 50
	.short _02075856 - _020754A2 - 2 ; case 51
	.short _02075856 - _020754A2 - 2 ; case 52
	.short _02075856 - _020754A2 - 2 ; case 53
	.short _02075856 - _020754A2 - 2 ; case 54
	.short _02075856 - _020754A2 - 2 ; case 55
	.short _02075856 - _020754A2 - 2 ; case 56
	.short _02075856 - _020754A2 - 2 ; case 57
	.short _02075704 - _020754A2 - 2 ; case 58
	.short _02075704 - _020754A2 - 2 ; case 59
	.short _02075704 - _020754A2 - 2 ; case 60
	.short _02075704 - _020754A2 - 2 ; case 61
	.short _02075740 - _020754A2 - 2 ; case 62
	.short _02075740 - _020754A2 - 2 ; case 63
	.short _02075740 - _020754A2 - 2 ; case 64
	.short _02075740 - _020754A2 - 2 ; case 65
	.short _0207585A - _020754A2 - 2 ; case 66
	.short _0207585A - _020754A2 - 2 ; case 67
	.short _0207585A - _020754A2 - 2 ; case 68
	.short _0207585A - _020754A2 - 2 ; case 69
	.short _0207575A - _020754A2 - 2 ; case 70
	.short _02075784 - _020754A2 - 2 ; case 71
	.short _020757AE - _020754A2 - 2 ; case 72
	.short _020757D8 - _020754A2 - 2 ; case 73
	.short _02075802 - _020754A2 - 2 ; case 74
	.short _0207582C - _020754A2 - 2 ; case 75
	.short _02075856 - _020754A2 - 2 ; case 76
	.short _02075856 - _020754A2 - 2 ; case 77
	.short _02075856 - _020754A2 - 2 ; case 78
	.short _02075856 - _020754A2 - 2 ; case 79
	.short _02075856 - _020754A2 - 2 ; case 80
	.short _02075856 - _020754A2 - 2 ; case 81
	.short _02075856 - _020754A2 - 2 ; case 82
	.short _02075856 - _020754A2 - 2 ; case 83
	.short _02075856 - _020754A2 - 2 ; case 84
	.short _02075856 - _020754A2 - 2 ; case 85
	.short _02075856 - _020754A2 - 2 ; case 86
	.short _02075856 - _020754A2 - 2 ; case 87
	.short _02075856 - _020754A2 - 2 ; case 88
	.short _02075856 - _020754A2 - 2 ; case 89
	.short _02075856 - _020754A2 - 2 ; case 90
	.short _02075856 - _020754A2 - 2 ; case 91
	.short _02075856 - _020754A2 - 2 ; case 92
	.short _02075856 - _020754A2 - 2 ; case 93
	.short _02075856 - _020754A2 - 2 ; case 94
	.short _02075856 - _020754A2 - 2 ; case 95
	.short _02075856 - _020754A2 - 2 ; case 96
	.short _02075856 - _020754A2 - 2 ; case 97
	.short _02075856 - _020754A2 - 2 ; case 98
	.short _02075856 - _020754A2 - 2 ; case 99
	.short _02075856 - _020754A2 - 2 ; case 100
	.short _02075856 - _020754A2 - 2 ; case 101
	.short _02075856 - _020754A2 - 2 ; case 102
	.short _02075856 - _020754A2 - 2 ; case 103
	.short _02075856 - _020754A2 - 2 ; case 104
	.short _02075856 - _020754A2 - 2 ; case 105
	.short _02075856 - _020754A2 - 2 ; case 106
	.short _02075856 - _020754A2 - 2 ; case 107
	.short _02075856 - _020754A2 - 2 ; case 108
	.short _02075856 - _020754A2 - 2 ; case 109
	.short _02075856 - _020754A2 - 2 ; case 110
	.short _02075856 - _020754A2 - 2 ; case 111
	.short _02075856 - _020754A2 - 2 ; case 112
	.short _02075856 - _020754A2 - 2 ; case 113
	.short _02075856 - _020754A2 - 2 ; case 114
	.short _02075856 - _020754A2 - 2 ; case 115
	.short _02075856 - _020754A2 - 2 ; case 116
	.short _02075856 - _020754A2 - 2 ; case 117
	.short _02075856 - _020754A2 - 2 ; case 118
	.short _02075856 - _020754A2 - 2 ; case 119
	.short _02075856 - _020754A2 - 2 ; case 120
	.short _02075856 - _020754A2 - 2 ; case 121
	.short _02075856 - _020754A2 - 2 ; case 122
	.short _02075856 - _020754A2 - 2 ; case 123
	.short _02075856 - _020754A2 - 2 ; case 124
	.short _02075856 - _020754A2 - 2 ; case 125
	.short _02075856 - _020754A2 - 2 ; case 126
	.short _02075856 - _020754A2 - 2 ; case 127
	.short _02075856 - _020754A2 - 2 ; case 128
	.short _02075856 - _020754A2 - 2 ; case 129
	.short _02075856 - _020754A2 - 2 ; case 130
	.short _02075856 - _020754A2 - 2 ; case 131
	.short _02075856 - _020754A2 - 2 ; case 132
	.short _02075856 - _020754A2 - 2 ; case 133
	.short _02075856 - _020754A2 - 2 ; case 134
	.short _02075856 - _020754A2 - 2 ; case 135
	.short _02075856 - _020754A2 - 2 ; case 136
	.short _02075856 - _020754A2 - 2 ; case 137
	.short _02075856 - _020754A2 - 2 ; case 138
	.short _02075856 - _020754A2 - 2 ; case 139
	.short _02075856 - _020754A2 - 2 ; case 140
	.short _02075856 - _020754A2 - 2 ; case 141
	.short _02075856 - _020754A2 - 2 ; case 142
	.short _02075856 - _020754A2 - 2 ; case 143
	.short _02075856 - _020754A2 - 2 ; case 144
	.short _02075856 - _020754A2 - 2 ; case 145
	.short _02075856 - _020754A2 - 2 ; case 146
	.short _02075856 - _020754A2 - 2 ; case 147
	.short _02075856 - _020754A2 - 2 ; case 148
	.short _02075856 - _020754A2 - 2 ; case 149
	.short _02075856 - _020754A2 - 2 ; case 150
	.short _02075856 - _020754A2 - 2 ; case 151
	.short _02075856 - _020754A2 - 2 ; case 152
	.short _02075856 - _020754A2 - 2 ; case 153
	.short _02075856 - _020754A2 - 2 ; case 154
	.short _02075856 - _020754A2 - 2 ; case 155
	.short _02075856 - _020754A2 - 2 ; case 156
	.short _02075856 - _020754A2 - 2 ; case 157
	.short _02075856 - _020754A2 - 2 ; case 158
	.short _02075856 - _020754A2 - 2 ; case 159
	.short _02075856 - _020754A2 - 2 ; case 160
	.short _02075856 - _020754A2 - 2 ; case 161
	.short _02075856 - _020754A2 - 2 ; case 162
	.short _02075856 - _020754A2 - 2 ; case 163
	.short _02075856 - _020754A2 - 2 ; case 164
	.short _02075856 - _020754A2 - 2 ; case 165
	.short _02075856 - _020754A2 - 2 ; case 166
	.short _02075856 - _020754A2 - 2 ; case 167
	.short _02075856 - _020754A2 - 2 ; case 168
	.short _02075856 - _020754A2 - 2 ; case 169
	.short _02075856 - _020754A2 - 2 ; case 170
	.short _02075856 - _020754A2 - 2 ; case 171
	.short _02075856 - _020754A2 - 2 ; case 172
	.short _02075856 - _020754A2 - 2 ; case 173
	.short _02075856 - _020754A2 - 2 ; case 174
	.short _02075856 - _020754A2 - 2 ; case 175
	.short _02075856 - _020754A2 - 2 ; case 176
	.short _02075856 - _020754A2 - 2 ; case 177
	.short _02075856 - _020754A2 - 2 ; case 178
	.short _02075856 - _020754A2 - 2 ; case 179
_0207560A:
	ldrh r0, [r4]
	mov r1, #0x64
	bl sub_02075AD0
	ldr r1, [r4, #8]
	add r1, r1, r6
	cmp r1, r0
	bls _02075628
	ldrh r0, [r4]
	mov r1, #0x64
	bl sub_02075AD0
	add sp, #0xc
	str r0, [r4, #8]
	pop {r4, r5, r6, r7, pc}
_02075628:
	add sp, #0xc
	str r1, [r4, #8]
	pop {r4, r5, r6, r7, pc}
_0207562E:
	ldrb r1, [r4, #0xc]
	add r0, r1, r6
	cmp r0, #0xff
	ble _02075638
	mov r1, #0xff
_02075638:
	add r1, r1, r6
	bpl _0207563E
	mov r1, #0
_0207563E:
	add sp, #0xc
	strb r1, [r4, #0xc]
	pop {r4, r5, r6, r7, pc}
_02075644:
	ldrb r0, [r4, #0x10]
	add sp, #0xc
	add r0, r0, r6
	strb r0, [r4, #0x10]
	pop {r4, r5, r6, r7, pc}
_0207564E:
	ldrb r0, [r4, #0x11]
	add sp, #0xc
	add r0, r0, r6
	strb r0, [r4, #0x11]
	pop {r4, r5, r6, r7, pc}
_02075658:
	ldrb r0, [r4, #0x12]
	add sp, #0xc
	add r0, r0, r6
	strb r0, [r4, #0x12]
	pop {r4, r5, r6, r7, pc}
_02075662:
	ldrb r0, [r4, #0x13]
	add sp, #0xc
	add r0, r0, r6
	strb r0, [r4, #0x13]
	pop {r4, r5, r6, r7, pc}
_0207566C:
	ldrb r0, [r4, #0x14]
	add sp, #0xc
	add r0, r0, r6
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, r7, pc}
_02075676:
	ldrb r0, [r4, #0x15]
	add sp, #0xc
	add r0, r0, r6
	strb r0, [r4, #0x15]
	pop {r4, r5, r6, r7, pc}
_02075680:
	ldrb r0, [r4, #0x16]
	add r0, r0, r6
	cmp r0, #0xff
	ble _02075690
	mov r0, #0xff
	add sp, #0xc
	strb r0, [r4, #0x16]
	pop {r4, r5, r6, r7, pc}
_02075690:
	add sp, #0xc
	strb r0, [r4, #0x16]
	pop {r4, r5, r6, r7, pc}
_02075696:
	ldrb r0, [r4, #0x17]
	add r0, r0, r6
	cmp r0, #0xff
	ble _020756A6
	mov r0, #0xff
	add sp, #0xc
	strb r0, [r4, #0x17]
	pop {r4, r5, r6, r7, pc}
_020756A6:
	add sp, #0xc
	strb r0, [r4, #0x17]
	pop {r4, r5, r6, r7, pc}
_020756AC:
	ldrb r0, [r4, #0x18]
	add r0, r0, r6
	cmp r0, #0xff
	ble _020756BC
	mov r0, #0xff
	add sp, #0xc
	strb r0, [r4, #0x18]
	pop {r4, r5, r6, r7, pc}
_020756BC:
	add sp, #0xc
	strb r0, [r4, #0x18]
	pop {r4, r5, r6, r7, pc}
_020756C2:
	ldrb r0, [r4, #0x19]
	add r0, r0, r6
	cmp r0, #0xff
	ble _020756D2
	mov r0, #0xff
	add sp, #0xc
	strb r0, [r4, #0x19]
	pop {r4, r5, r6, r7, pc}
_020756D2:
	add sp, #0xc
	strb r0, [r4, #0x19]
	pop {r4, r5, r6, r7, pc}
_020756D8:
	ldrb r0, [r4, #0x1a]
	add r0, r0, r6
	cmp r0, #0xff
	ble _020756E8
	mov r0, #0xff
	add sp, #0xc
	strb r0, [r4, #0x1a]
	pop {r4, r5, r6, r7, pc}
_020756E8:
	add sp, #0xc
	strb r0, [r4, #0x1a]
	pop {r4, r5, r6, r7, pc}
_020756EE:
	ldrb r0, [r4, #0x1b]
	add r0, r0, r6
	cmp r0, #0xff
	ble _020756FE
	mov r0, #0xff
	add sp, #0xc
	strb r0, [r4, #0x1b]
	pop {r4, r5, r6, r7, pc}
_020756FE:
	add sp, #0xc
	strb r0, [r4, #0x1b]
	pop {r4, r5, r6, r7, pc}
_02075704:
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	sub r7, #0x3a
	ldr r1, [sp, #4]
	lsl r0, r7, #1
	str r0, [sp, #8]
	add r4, r5, #0
	ldrh r0, [r5, r0]
	ldrb r1, [r1, r7]
	add r4, #8
	bl sub_020790DC
	ldrb r1, [r4, r7]
	add r1, r6, r1
	cmp r1, r0
	ble _0207573A
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	ldrh r0, [r5, r0]
	ldrb r1, [r1, r7]
	bl sub_020790DC
	add sp, #0xc
	strb r0, [r4, r7]
	pop {r4, r5, r6, r7, pc}
_0207573A:
	add sp, #0xc
	strb r1, [r4, r7]
	pop {r4, r5, r6, r7, pc}
_02075740:
	add r5, #0xc
	sub r7, #0x3e
	ldrb r0, [r5, r7]
	add r0, r6, r0
	cmp r0, #3
	ble _02075754
	mov r0, #3
	add sp, #0xc
	strb r0, [r5, r7]
	pop {r4, r5, r6, r7, pc}
_02075754:
	add sp, #0xc
	strb r0, [r5, r7]
	pop {r4, r5, r6, r7, pc}
_0207575A:
	ldr r1, [r5, #0x10]
	lsl r0, r1, #0x1b
	lsr r0, r0, #0x1b
	add r2, r0, r6
	cmp r2, #0x1f
	bls _02075774
	mov r0, #0x1f
	bic r1, r0
	mov r0, #0x1f
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_02075774:
	mov r0, #0x1f
	bic r1, r0
	mov r0, #0x1f
	and r0, r2
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_02075784:
	ldr r1, [r5, #0x10]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1b
	add r2, r0, r6
	cmp r2, #0x1f
	ldr r0, _02075860 ; =0xFFFFFC1F
	bls _020757A0
	and r1, r0
	mov r0, #0x3e
	lsl r0, r0, #4
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_020757A0:
	and r1, r0
	lsl r0, r2, #0x1b
	lsr r0, r0, #0x16
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_020757AE:
	ldr r1, [r5, #0x10]
	lsl r0, r1, #0x11
	lsr r0, r0, #0x1b
	add r2, r0, r6
	cmp r2, #0x1f
	ldr r0, _02075864 ; =0xFFFF83FF
	bls _020757CA
	and r1, r0
	mov r0, #0x1f
	lsl r0, r0, #0xa
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_020757CA:
	and r1, r0
	lsl r0, r2, #0x1b
	lsr r0, r0, #0x11
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_020757D8:
	ldr r1, [r5, #0x10]
	lsl r0, r1, #0xc
	lsr r0, r0, #0x1b
	add r2, r0, r6
	cmp r2, #0x1f
	ldr r0, _02075868 ; =0xFFF07FFF
	bls _020757F4
	and r1, r0
	mov r0, #0x3e
	lsl r0, r0, #0xe
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_020757F4:
	and r1, r0
	lsl r0, r2, #0x1b
	lsr r0, r0, #0xc
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_02075802:
	ldr r1, [r5, #0x10]
	lsl r0, r1, #7
	lsr r0, r0, #0x1b
	add r2, r0, r6
	cmp r2, #0x1f
	ldr r0, _0207586C ; =0xFE0FFFFF
	bls _0207581E
	and r1, r0
	mov r0, #0x1f
	lsl r0, r0, #0x14
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_0207581E:
	and r1, r0
	lsl r0, r2, #0x1b
	lsr r0, r0, #7
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_0207582C:
	ldr r1, [r5, #0x10]
	lsl r0, r1, #2
	lsr r0, r0, #0x1b
	add r2, r0, r6
	cmp r2, #0x1f
	ldr r0, _02075870 ; =0xC1FFFFFF
	bls _02075848
	and r1, r0
	mov r0, #0x3e
	lsl r0, r0, #0x18
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_02075848:
	and r1, r0
	lsl r0, r2, #0x1b
	lsr r0, r0, #2
	orr r0, r1
	add sp, #0xc
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_02075856:
	bl sub_02022974
_0207585A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02075860: .word 0xFFFFFC1F
_02075864: .word 0xFFFF83FF
_02075868: .word 0xFFF07FFF
_0207586C: .word 0xFE0FFFFF
_02075870: .word 0xC1FFFFFF
	thumb_func_end sub_02075454

	thumb_func_start sub_02075874
sub_02075874: ; 0x02075874
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	mov r1, #0x2c
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02078208
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02075874

	thumb_func_start sub_02075894
sub_02075894: ; 0x02075894
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x2c
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020781F8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02075894

	thumb_func_start sub_020758B0
sub_020758B0: ; 0x020758B0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	cmp r4, #0
	bne _020758BE
	bl sub_02022974
_020758BE:
	cmp r6, #0x20
	bhi _020759B2
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020758CE: ; jump table
	.short _02075910 - _020758CE - 2 ; case 0
	.short _02075914 - _020758CE - 2 ; case 1
	.short _02075918 - _020758CE - 2 ; case 2
	.short _0207591C - _020758CE - 2 ; case 3
	.short _02075920 - _020758CE - 2 ; case 4
	.short _02075924 - _020758CE - 2 ; case 5
	.short _02075928 - _020758CE - 2 ; case 6
	.short _0207592C - _020758CE - 2 ; case 7
	.short _02075930 - _020758CE - 2 ; case 8
	.short _02075934 - _020758CE - 2 ; case 9
	.short _02075938 - _020758CE - 2 ; case 10
	.short _02075940 - _020758CE - 2 ; case 11
	.short _02075948 - _020758CE - 2 ; case 12
	.short _02075950 - _020758CE - 2 ; case 13
	.short _02075958 - _020758CE - 2 ; case 14
	.short _02075960 - _020758CE - 2 ; case 15
	.short _02075968 - _020758CE - 2 ; case 16
	.short _0207596C - _020758CE - 2 ; case 17
	.short _02075970 - _020758CE - 2 ; case 18
	.short _02075974 - _020758CE - 2 ; case 19
	.short _02075978 - _020758CE - 2 ; case 20
	.short _0207597C - _020758CE - 2 ; case 21
	.short _02075980 - _020758CE - 2 ; case 22
	.short _02075984 - _020758CE - 2 ; case 23
	.short _02075988 - _020758CE - 2 ; case 24
	.short _0207598C - _020758CE - 2 ; case 25
	.short _02075990 - _020758CE - 2 ; case 26
	.short _02075994 - _020758CE - 2 ; case 27
	.short _0207599C - _020758CE - 2 ; case 28
	.short _020759A4 - _020758CE - 2 ; case 29
	.short _020759A8 - _020758CE - 2 ; case 30
	.short _020759AC - _020758CE - 2 ; case 31
	.short _020759B0 - _020758CE - 2 ; case 32
_02075910:
	ldrb r5, [r4]
	b _020759B2
_02075914:
	ldrb r5, [r4, #1]
	b _020759B2
_02075918:
	ldrb r5, [r4, #2]
	b _020759B2
_0207591C:
	ldrb r5, [r4, #3]
	b _020759B2
_02075920:
	ldrb r5, [r4, #4]
	b _020759B2
_02075924:
	ldrb r5, [r4, #5]
	b _020759B2
_02075928:
	ldrb r5, [r4, #6]
	b _020759B2
_0207592C:
	ldrb r5, [r4, #7]
	b _020759B2
_02075930:
	ldrb r5, [r4, #8]
	b _020759B2
_02075934:
	ldrb r5, [r4, #9]
	b _020759B2
_02075938:
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x1e
	lsr r5, r0, #0x1e
	b _020759B2
_02075940:
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x1c
	lsr r5, r0, #0x1e
	b _020759B2
_02075948:
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x1a
	lsr r5, r0, #0x1e
	b _020759B2
_02075950:
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x1e
	b _020759B2
_02075958:
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x16
	lsr r5, r0, #0x1e
	b _020759B2
_02075960:
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x14
	lsr r5, r0, #0x1e
	b _020759B2
_02075968:
	ldrh r5, [r4, #0xc]
	b _020759B2
_0207596C:
	ldrh r5, [r4, #0xe]
	b _020759B2
_02075970:
	ldrb r5, [r4, #0x10]
	b _020759B2
_02075974:
	ldrb r5, [r4, #0x11]
	b _020759B2
_02075978:
	ldrb r5, [r4, #0x12]
	b _020759B2
_0207597C:
	ldrb r5, [r4, #0x13]
	b _020759B2
_02075980:
	ldrb r5, [r4, #0x14]
	b _020759B2
_02075984:
	ldrb r5, [r4, #0x15]
	b _020759B2
_02075988:
	ldrb r5, [r4, #0x16]
	b _020759B2
_0207598C:
	ldrb r5, [r4, #0x17]
	b _020759B2
_02075990:
	ldrb r5, [r4, #0x18]
	b _020759B2
_02075994:
	ldrb r0, [r4, #0x19]
	lsl r0, r0, #0x19
	lsr r5, r0, #0x19
	b _020759B2
_0207599C:
	ldrb r0, [r4, #0x19]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x1f
	b _020759B2
_020759A4:
	ldr r5, [r4, #0x1c]
	b _020759B2
_020759A8:
	ldr r5, [r4, #0x20]
	b _020759B2
_020759AC:
	ldr r5, [r4, #0x24]
	b _020759B2
_020759B0:
	ldr r5, [r4, #0x28]
_020759B2:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020758B0

	thumb_func_start sub_020759B8
sub_020759B8: ; 0x020759B8
	push {r4, lr}
	add r4, r0, #0
	bne _020759C2
	bl sub_02022974
_020759C2:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020759B8

	thumb_func_start sub_020759CC
sub_020759CC: ; 0x020759CC
	push {r3, r4, r5, lr}
	add r4, r2, #0
	bl sub_02078740
	mov r1, #0
	bl sub_02075894
	add r5, r0, #0
	add r1, r4, #0
	bl sub_020758B0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020759B8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020759CC

	thumb_func_start sub_020759F0
sub_020759F0: ; 0x020759F0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	bl sub_02075894
	add r5, r0, #0
	add r1, r4, #0
	bl sub_020758B0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020759B8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020759F0

	thumb_func_start sub_02075A10
sub_02075A10: ; 0x02075A10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02073C88
	str r0, [sp]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02075AD0
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #1
	bl sub_02075AD0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02073CD4
	sub r1, r7, r4
	mov r0, #0x64
	mul r0, r1
	sub r1, r6, r4
	bl _u32_div_f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02075A10

	thumb_func_start sub_02075A70
sub_02075A70: ; 0x02075A70
	ldr r3, _02075A74 ; =sub_02075A78
	bx r3
	; .align 2, 0
_02075A74: .word sub_02075A78
	thumb_func_end sub_02075A70

	thumb_func_start sub_02075A78
sub_02075A78: ; 0x02075A78
	push {r4, r5, r6, lr}
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #0
	bl sub_02075B40
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02075AD0
	sub r0, r0, r4
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02075A78

	thumb_func_start sub_02075AAC
sub_02075AAC: ; 0x02075AAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02075AD0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02075AAC

	thumb_func_start sub_02075AD0
sub_02075AD0: ; 0x02075AD0
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x15
	bl sub_020759F0
	add r1, r4, #0
	bl sub_02075B00
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02075AD0

	thumb_func_start sub_02075AE4
sub_02075AE4: ; 0x02075AE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #8
	blt _02075AF2
	bl sub_02022974
_02075AF2:
	add r0, r4, #0
	mov r1, #3
	add r2, r5, #0
	bl sub_02006AA4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02075AE4

	thumb_func_start sub_02075B00
sub_02075B00: ; 0x02075B00
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	cmp r6, #8
	blt _02075B0E
	bl sub_02022974
_02075B0E:
	cmp r5, #0x65
	ble _02075B16
	bl sub_02022974
_02075B16:
	mov r1, #0x65
	mov r0, #0
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02075AE4
	lsl r0, r5, #2
	ldr r5, [r4, r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02075B00

	thumb_func_start sub_02075B38
sub_02075B38: ; 0x02075B38
	ldr r3, _02075B3C ; =sub_02075B40
	bx r3
	; .align 2, 0
_02075B3C: .word sub_02075B40
	thumb_func_end sub_02075B38

	thumb_func_start sub_02075B40
sub_02075B40: ; 0x02075B40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02073D20
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074570
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02073D48
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	add r1, r7, #0
	bl sub_02075B78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02075B40

	thumb_func_start sub_02075B78
sub_02075B78: ; 0x02075B78
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	bl sub_02075894
	add r6, r0, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02075B9C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020759B8
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02075B78

	thumb_func_start sub_02075B9C
sub_02075B9C: ; 0x02075B9C
	push {r4, lr}
	mov r1, #0x15
	add r4, r2, #0
	bl sub_020758B0
	ldr r1, _02075BC4 ; =0x021C089C
	bl sub_02075AE4
	ldr r2, _02075BC8 ; =0x021C08A0
	mov r1, #1
_02075BB0:
	ldr r0, [r2, #0]
	cmp r0, r4
	bhi _02075BBE
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x65
	blt _02075BB0
_02075BBE:
	sub r0, r1, #1
	pop {r4, pc}
	nop
_02075BC4: .word 0x021C089C
_02075BC8: .word 0x021C08A0
	thumb_func_end sub_02075B9C

	thumb_func_start sub_02075BCC
sub_02075BCC: ; 0x02075BCC
	ldr r3, _02075BD0 ; =sub_02075BD4
	bx r3
	; .align 2, 0
_02075BD0: .word sub_02075BD4
	thumb_func_end sub_02075BCC

	thumb_func_start sub_02075BD4
sub_02075BD4: ; 0x02075BD4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02073D20
	mov r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074570
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02073D48
	add r0, r6, #0
	bl sub_02075BFC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02075BD4

	thumb_func_start sub_02075BFC
sub_02075BFC: ; 0x02075BFC
	push {r3, lr}
	mov r1, #0x19
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02075BFC

	thumb_func_start sub_02075C0C
sub_02075C0C: ; 0x02075C0C
	push {r3, lr}
	cmp r2, #1
	blo _02075C16
	cmp r2, #5
	bls _02075C1A
_02075C16:
	add r0, r1, #0
	pop {r3, pc}
_02075C1A:
	lsl r3, r0, #2
	add r3, r0, r3
	ldr r0, _02075C5C ; =0x020F0618
	sub r2, r2, #1
	add r0, r0, r3
	ldrsb r2, [r2, r0]
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	beq _02075C46
	cmp r2, #1
	bne _02075C58
	mov r0, #0x6e
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	b _02075C58
_02075C46:
	mov r0, #0x5a
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
_02075C58:
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
_02075C5C: .word 0x020F0618
	thumb_func_end sub_02075C0C

	thumb_func_start sub_02075C60
sub_02075C60: ; 0x02075C60
	lsl r2, r0, #2
	add r2, r0, r2
	ldr r0, _02075C70 ; =0x020F0618
	sub r1, r1, #1
	add r0, r0, r2
	ldrsb r0, [r1, r0]
	bx lr
	nop
_02075C70: .word 0x020F0618
	thumb_func_end sub_02075C60

	thumb_func_start sub_02075C74
sub_02075C74: ; 0x02075C74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r5, r0, #0
	str r2, [sp]
	cmp r6, #5
	bne _02075C8C
	bl sub_0201D2E8
	mov r1, #1
	tst r0, r1
	bne _02075D60
_02075C8C:
	add r0, r5, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	beq _02075D60
	ldr r0, _02075D64 ; =0x000001EE
	cmp r1, r0
	beq _02075D60
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	mov r2, #0
	bl sub_0207CFF0
	lsl r0, r0, #0x18
	mov r4, #0
	lsr r7, r0, #0x18
	add r0, r5, #0
	mov r1, #9
	add r2, r4, #0
	bl sub_02074470
	add r1, sp, #4
	strh r0, [r1]
	add r0, r4, #0
	ldrsh r1, [r1, r0]
	cmp r1, #0x64
	blt _02075CDA
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02075CDA:
	cmp r1, #0xc8
	blt _02075CE4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02075CE4:
	lsl r0, r6, #1
	add r1, r6, r0
	ldr r0, _02075D68 ; =0x020F05A0
	add r0, r0, r1
	ldrsb r4, [r4, r0]
	cmp r4, #0
	ble _02075D06
	add r0, r5, #0
	mov r1, #0x9b
	mov r2, #0
	bl sub_02074470
	cmp r0, #0xb
	bne _02075D06
	add r0, r4, #1
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
_02075D06:
	cmp r4, #0
	ble _02075D20
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp]
	cmp r1, r0
	bne _02075D20
	add r0, r4, #1
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
_02075D20:
	cmp r4, #0
	ble _02075D36
	cmp r7, #0x35
	bne _02075D36
	mov r0, #0x96
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
_02075D36:
	add r0, sp, #4
	mov r1, #0
	ldrsh r2, [r0, r1]
	add r2, r2, r4
	strh r2, [r0]
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bge _02075D48
	strh r1, [r0]
_02075D48:
	add r1, sp, #4
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, #0xff
	ble _02075D56
	mov r0, #0xff
	strh r0, [r1]
_02075D56:
	add r0, r5, #0
	mov r1, #9
	add r2, sp, #4
	bl sub_02074B30
_02075D60:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02075D64: .word 0x000001EE
_02075D68: .word 0x020F05A0
	thumb_func_end sub_02075C74

	thumb_func_start sub_02075D6C
sub_02075D6C: ; 0x02075D6C
	ldr r3, _02075D70 ; =sub_02075D74
	bx r3
	; .align 2, 0
_02075D70: .word sub_02075D74
	thumb_func_end sub_02075D6C

	thumb_func_start sub_02075D74
sub_02075D74: ; 0x02075D74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02073D20
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	mov r1, #0
	lsr r4, r0, #0x10
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074570
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02073D48
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02075DAC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02075D74

	thumb_func_start sub_02075DAC
sub_02075DAC: ; 0x02075DAC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	bl sub_02075894
	add r6, r0, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02075DD0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020759B8
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02075DAC

	thumb_func_start sub_02075DD0
sub_02075DD0: ; 0x02075DD0
	push {r4, lr}
	mov r1, #0x12
	add r4, r2, #0
	bl sub_020758B0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	beq _02075DEA
	cmp r1, #0xfe
	beq _02075DEE
	cmp r1, #0xff
	beq _02075DF2
	b _02075DF6
_02075DEA:
	mov r0, #0
	pop {r4, pc}
_02075DEE:
	mov r0, #1
	pop {r4, pc}
_02075DF2:
	mov r0, #2
	pop {r4, pc}
_02075DF6:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	cmp r1, r0
	bls _02075E02
	mov r0, #1
	b _02075E04
_02075E02:
	mov r0, #0
_02075E04:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02075DD0

	thumb_func_start sub_02075E0C
sub_02075E0C: ; 0x02075E0C
	ldr r3, _02075E10 ; =sub_02075E14
	bx r3
	; .align 2, 0
_02075E10: .word sub_02075E14
	thumb_func_end sub_02075E0C

	thumb_func_start sub_02075E14
sub_02075E14: ; 0x02075E14
	push {r3, r4, r5, lr}
	mov r1, #7
	mov r2, #0
	add r5, r0, #0
	bl sub_02074570
	mov r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074570
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02075E38
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02075E14

	thumb_func_start sub_02075E38
sub_02075E38: ; 0x02075E38
	ldr r3, _02075E60 ; =0xFFFF0000
	lsl r2, r1, #0x10
	and r1, r3
	and r3, r0
	lsl r0, r0, #0x10
	lsr r3, r3, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	eor r0, r3
	lsr r2, r2, #0x10
	eor r0, r1
	eor r0, r2
	cmp r0, #8
	bhs _02075E58
	mov r0, #1
	b _02075E5A
_02075E58:
	mov r0, #0
_02075E5A:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
_02075E60: .word 0xFFFF0000
	thumb_func_end sub_02075E38

	thumb_func_start sub_02075E64
sub_02075E64: ; 0x02075E64
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02075EF0 ; =0xFFFF0000
	and r0, r7
	lsr r1, r0, #0x10
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	eor r0, r1
	lsr r7, r0, #3
	bl sub_0201D2E8
	mov r1, #7
	and r0, r1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	bl sub_0201D2E8
	mov r1, #7
	and r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	mov r4, #0
_02075E90:
	add r0, r4, #0
	bl sub_020787CC
	tst r0, r7
	beq _02075EC0
	bl sub_0201D2E8
	mov r1, #1
	tst r0, r1
	beq _02075EB2
	add r0, r4, #3
	bl sub_020787CC
	orr r0, r6
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	b _02075EE2
_02075EB2:
	add r0, r4, #3
	bl sub_020787CC
	orr r0, r5
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	b _02075EE2
_02075EC0:
	bl sub_0201D2E8
	mov r1, #1
	tst r0, r1
	beq _02075EE2
	add r0, r4, #3
	bl sub_020787CC
	orr r0, r6
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #3
	bl sub_020787CC
	orr r0, r5
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_02075EE2:
	add r4, r4, #1
	cmp r4, #0xd
	blt _02075E90
	lsl r0, r5, #0x10
	orr r0, r6
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02075EF0: .word 0xFFFF0000
	thumb_func_end sub_02075E64

	thumb_func_start sub_02075EF4
sub_02075EF4: ; 0x02075EF4
	push {r3, lr}
	mov r3, #0
	bl sub_02075F0C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02075EF4

	thumb_func_start sub_02075F00
sub_02075F00: ; 0x02075F00
	push {r3, lr}
	mov r3, #1
	bl sub_02075F0C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02075F00

	thumb_func_start sub_02075F0C
sub_02075F0C: ; 0x02075F0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_02073D20
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	bl sub_02075D74
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02075E14
	mov r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074570
	add r6, r0, #0
	ldr r0, _02075FAC ; =0x000001EE
	cmp r4, r0
	bne _02075F68
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	ldr r1, _02075FB0 ; =0x000001EA
	cmp r0, r1
	bne _02075F64
	mov r1, #1
	b _02075F76
_02075F64:
	mov r1, #0
	b _02075F76
_02075F68:
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_02075F76:
	ldr r0, [sp, #0x14]
	str r7, [sp]
	cmp r0, #1
	bne _02075F90
	str r1, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x10]
	add r1, r4, #0
	bl sub_02076300
	b _02075FA0
_02075F90:
	str r1, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x10]
	add r1, r4, #0
	bl sub_02075FB4
_02075FA0:
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	bl sub_02073D48
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02075FAC: .word 0x000001EE
_02075FB0: .word 0x000001EA
	thumb_func_end sub_02075F0C

	thumb_func_start sub_02075FB4
sub_02075FB4: ; 0x02075FB4
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	add r4, r1, #0
	add r5, r0, #0
	ldr r6, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	mov r0, #0
	strh r0, [r5, #6]
	strb r0, [r5, #8]
	str r0, [r5, #0xc]
	add r0, r4, #0
	add r7, r3, #0
	bl sub_020761E8
	ldr r1, _020761E0 ; =0x000001A5
	cmp r4, r1
	bgt _02076024
	blt _02075FDA
	b _020760E4
_02075FDA:
	add r2, r1, #0
	sub r2, #0x46
	cmp r4, r2
	bgt _02075FF2
	sub r1, #0x46
	cmp r4, r1
	blt _02075FEA
	b _0207610E
_02075FEA:
	cmp r4, #0xc9
	bne _02075FF0
	b _02076136
_02075FF0:
	b _020761AA
_02075FF2:
	add r2, r1, #0
	sub r2, #0x23
	cmp r4, r2
	bgt _02076004
	sub r1, #0x23
	cmp r4, r1
	bne _02076002
	b _02076124
_02076002:
	b _020761AA
_02076004:
	add r2, r1, #0
	sub r2, #8
	cmp r4, r2
	bgt _02076022
	add r2, r1, #0
	sub r2, #9
	cmp r4, r2
	blt _02076022
	add r2, r1, #0
	sub r2, #9
	cmp r4, r2
	beq _02076090
	sub r1, #8
	cmp r4, r1
	beq _020760A6
_02076022:
	b _020761AA
_02076024:
	add r2, r1, #0
	add r2, #0x42
	cmp r4, r2
	bgt _02076056
	add r2, r1, #0
	add r2, #0x42
	cmp r4, r2
	blt _02076036
	b _02076194
_02076036:
	add r2, r1, #2
	cmp r4, r2
	bgt _0207604C
	add r2, r1, #1
	cmp r4, r2
	blt _0207604A
	beq _020760BC
	add r1, r1, #2
	cmp r4, r1
	beq _020760D0
_0207604A:
	b _020761AA
_0207604C:
	add r1, #0x3a
	cmp r4, r1
	bne _02076054
	b _0207617E
_02076054:
	b _020761AA
_02076056:
	add r2, r1, #0
	add r2, #0x47
	cmp r4, r2
	bgt _02076068
	add r1, #0x47
	cmp r4, r1
	bne _02076066
	b _02076168
_02076066:
	b _020761AA
_02076068:
	add r2, r1, #0
	add r2, #0x4a
	cmp r4, r2
	bgt _0207608E
	add r2, r1, #0
	add r2, #0x48
	cmp r4, r2
	blt _0207608E
	add r2, r1, #0
	add r2, #0x48
	cmp r4, r2
	beq _020760F8
	add r2, r1, #0
	add r2, #0x49
	cmp r4, r2
	beq _0207614A
	add r1, #0x4a
	cmp r4, r1
	beq _0207615A
_0207608E:
	b _020761AA
_02076090:
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x48
	add r0, r0, r1
	add r6, #0xa6
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020760A6:
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x4e
	add r0, r0, r1
	add r6, #0xac
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020760BC:
	mov r1, #0x75
	add r7, #0x54
	strh r1, [r5]
	add r1, r7, r0
	add r6, #0xb2
	lsl r0, r0, #1
	strh r1, [r5, #2]
	add r0, r6, r0
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020760D0:
	mov r1, #0x75
	add r7, #0x58
	strh r1, [r5]
	add r1, r7, r0
	add r6, #0xb6
	lsl r0, r0, #1
	strh r1, [r5, #2]
	add r0, r6, r0
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020760E4:
	mov r1, #0x75
	add r7, #0x5c
	strh r1, [r5]
	add r1, r7, r0
	strh r1, [r5, #2]
	lsl r1, r6, #1
	add r1, #0xba
	add r0, r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020760F8:
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x60
	add r0, r0, r1
	add r6, #0xbe
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207610E:
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r7, #1
	add r1, #0x40
	add r1, r0, r1
	strh r1, [r5, #2]
	lsl r1, r6, #2
	add r1, #0x9e
	add r0, r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076124:
	mov r1, #0x75
	strh r1, [r5]
	lsr r1, r7, #1
	lsl r0, r0, #1
	add r0, r1, r0
	strh r0, [r5, #2]
	add r6, #0x9a
	strh r6, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076136:
	mov r1, #0x75
	strh r1, [r5]
	lsr r1, r7, #1
	add r1, #8
	lsl r0, r0, #1
	add r0, r1, r0
	strh r0, [r5, #2]
	add r6, #0x9c
	strh r6, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207614A:
	mov r1, #0x75
	strh r1, [r5]
	add r1, r0, #0
	add r1, #0x84
	strh r1, [r5, #2]
	add r0, #0xe2
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207615A:
	mov r0, #0x75
	strh r0, [r5]
	mov r0, #0x84
	strh r0, [r5, #2]
	mov r0, #0xe2
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076168:
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x86
	add r0, r0, r1
	add r6, #0xe4
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207617E:
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x8a
	add r0, r0, r1
	add r6, #0xe8
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076194:
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x96
	add r0, r0, r1
	add r6, #0xf4
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020761AA:
	mov r0, #4
	strh r0, [r5]
	ldr r0, [sp]
	cmp r0, #1
	beq _020761B8
	mov r1, #1
	b _020761BA
_020761B8:
	mov r1, #0
_020761BA:
	mov r0, #6
	mul r0, r4
	add r2, r7, r0
	add r1, r2, r1
	add r0, r0, #4
	strh r1, [r5, #2]
	add r0, r6, r0
	strh r0, [r5, #4]
	ldr r0, _020761E4 ; =0x00000147
	cmp r4, r0
	bne _020761DE
	cmp r7, #2
	bne _020761DE
	strh r0, [r5, #6]
	mov r0, #0
	strb r0, [r5, #8]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0xc]
_020761DE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020761E0: .word 0x000001A5
_020761E4: .word 0x00000147
	thumb_func_end sub_02075FB4

	thumb_func_start sub_020761E8
sub_020761E8: ; 0x020761E8
	ldr r2, _020762FC ; =0x000001A5
	cmp r0, r2
	bgt _02076234
	bge _020762B2
	add r3, r2, #0
	sub r3, #0x46
	cmp r0, r3
	bgt _02076204
	sub r2, #0x46
	cmp r0, r2
	bge _020762C2
	cmp r0, #0xc9
	beq _020762D2
	b _020762F8
_02076204:
	add r3, r2, #0
	sub r3, #0x23
	cmp r0, r3
	bgt _02076214
	sub r2, #0x23
	cmp r0, r2
	beq _020762CA
	b _020762F8
_02076214:
	add r3, r2, #0
	sub r3, #8
	cmp r0, r3
	bgt _020762F8
	add r3, r2, #0
	sub r3, #9
	cmp r0, r3
	blt _020762F8
	add r3, r2, #0
	sub r3, #9
	cmp r0, r3
	beq _02076292
	sub r2, #8
	cmp r0, r2
	beq _0207629A
	b _020762F8
_02076234:
	add r3, r2, #0
	add r3, #0x42
	cmp r0, r3
	bgt _02076262
	add r3, r2, #0
	add r3, #0x42
	cmp r0, r3
	bge _020762F2
	add r3, r2, #2
	cmp r0, r3
	bgt _0207625A
	add r3, r2, #1
	cmp r0, r3
	blt _020762F8
	beq _020762A2
	add r2, r2, #2
	cmp r0, r2
	beq _020762AA
	b _020762F8
_0207625A:
	add r2, #0x3a
	cmp r0, r2
	beq _020762EA
	b _020762F8
_02076262:
	add r3, r2, #0
	add r3, #0x47
	cmp r0, r3
	bgt _02076272
	add r2, #0x47
	cmp r0, r2
	beq _020762E2
	b _020762F8
_02076272:
	add r3, r2, #0
	add r3, #0x49
	cmp r0, r3
	bgt _020762F8
	add r3, r2, #0
	add r3, #0x48
	cmp r0, r3
	blt _020762F8
	add r3, r2, #0
	add r3, #0x48
	cmp r0, r3
	beq _020762BA
	add r2, #0x49
	cmp r0, r2
	beq _020762DA
	b _020762F8
_02076292:
	cmp r1, #2
	bls _020762F8
	mov r1, #0
	b _020762F8
_0207629A:
	cmp r1, #2
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762A2:
	cmp r1, #1
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762AA:
	cmp r1, #1
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762B2:
	cmp r1, #1
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762BA:
	cmp r1, #0x11
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762C2:
	cmp r1, #3
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762CA:
	cmp r1, #3
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762D2:
	cmp r1, #0x1c
	blo _020762F8
	mov r1, #0
	b _020762F8
_020762DA:
	cmp r1, #1
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762E2:
	cmp r1, #1
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762EA:
	cmp r1, #5
	bls _020762F8
	mov r1, #0
	b _020762F8
_020762F2:
	cmp r1, #1
	bls _020762F8
	mov r1, #0
_020762F8:
	add r0, r1, #0
	bx lr
	; .align 2, 0
_020762FC: .word 0x000001A5
	thumb_func_end sub_020761E8

	thumb_func_start sub_02076300
sub_02076300: ; 0x02076300
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	add r4, r1, #0
	add r5, r0, #0
	ldr r6, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	mov r0, #0
	strh r0, [r5, #6]
	strb r0, [r5, #8]
	str r0, [r5, #0xc]
	add r0, r4, #0
	add r7, r3, #0
	bl sub_020761E8
	ldr r1, _020765A4 ; =0x000001A5
	cmp r4, r1
	bgt _02076370
	blt _02076326
	b _02076430
_02076326:
	add r2, r1, #0
	sub r2, #0x46
	cmp r4, r2
	bgt _0207633E
	sub r1, #0x46
	cmp r4, r1
	blt _02076336
	b _0207645A
_02076336:
	cmp r4, #0xc9
	bne _0207633C
	b _02076482
_0207633C:
	b _0207656C
_0207633E:
	add r2, r1, #0
	sub r2, #0x23
	cmp r4, r2
	bgt _02076350
	sub r1, #0x23
	cmp r4, r1
	bne _0207634E
	b _02076470
_0207634E:
	b _0207656C
_02076350:
	add r2, r1, #0
	sub r2, #8
	cmp r4, r2
	bgt _0207636E
	add r2, r1, #0
	sub r2, #9
	cmp r4, r2
	blt _0207636E
	add r2, r1, #0
	sub r2, #9
	cmp r4, r2
	beq _020763DC
	sub r1, #8
	cmp r4, r1
	beq _020763F2
_0207636E:
	b _0207656C
_02076370:
	add r2, r1, #0
	add r2, #0x42
	cmp r4, r2
	bgt _020763A2
	add r2, r1, #0
	add r2, #0x42
	cmp r4, r2
	blt _02076382
	b _0207652E
_02076382:
	add r2, r1, #2
	cmp r4, r2
	bgt _02076398
	add r2, r1, #1
	cmp r4, r2
	blt _02076396
	beq _02076408
	add r1, r1, #2
	cmp r4, r1
	beq _0207641C
_02076396:
	b _0207656C
_02076398:
	add r1, #0x3a
	cmp r4, r1
	bne _020763A0
	b _020764F0
_020763A0:
	b _0207656C
_020763A2:
	add r2, r1, #0
	add r2, #0x47
	cmp r4, r2
	bgt _020763B4
	add r1, #0x47
	cmp r4, r1
	bne _020763B2
	b _020764B4
_020763B2:
	b _0207656C
_020763B4:
	add r2, r1, #0
	add r2, #0x4a
	cmp r4, r2
	bgt _020763DA
	add r2, r1, #0
	add r2, #0x48
	cmp r4, r2
	blt _020763DA
	add r2, r1, #0
	add r2, #0x48
	cmp r4, r2
	beq _02076444
	add r2, r1, #0
	add r2, #0x49
	cmp r4, r2
	beq _02076496
	add r1, #0x4a
	cmp r4, r1
	beq _020764A6
_020763DA:
	b _0207656C
_020763DC:
	mov r1, #0xa6
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x48
	add r0, r0, r1
	add r6, #0x92
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020763F2:
	mov r1, #0xa6
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x4e
	add r0, r0, r1
	add r6, #0x98
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076408:
	mov r1, #0xa6
	add r7, #0x54
	strh r1, [r5]
	add r1, r7, r0
	add r6, #0x9e
	lsl r0, r0, #1
	strh r1, [r5, #2]
	add r0, r6, r0
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207641C:
	mov r1, #0xa6
	add r7, #0x58
	strh r1, [r5]
	add r1, r7, r0
	add r6, #0xa2
	lsl r0, r0, #1
	strh r1, [r5, #2]
	add r0, r6, r0
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076430:
	mov r1, #0xa6
	add r7, #0x5c
	strh r1, [r5]
	add r1, r7, r0
	strh r1, [r5, #2]
	lsl r1, r6, #1
	add r1, #0xa6
	add r0, r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076444:
	mov r1, #0xa6
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x60
	add r0, r0, r1
	add r6, #0xaa
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207645A:
	mov r1, #0xa6
	strh r1, [r5]
	lsl r1, r7, #1
	add r1, #0x40
	add r1, r0, r1
	strh r1, [r5, #2]
	lsl r1, r6, #2
	add r1, #0x8a
	add r0, r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076470:
	mov r1, #0xa6
	strh r1, [r5]
	lsr r1, r7, #1
	lsl r0, r0, #1
	add r0, r1, r0
	strh r0, [r5, #2]
	add r6, #0x86
	strh r6, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076482:
	mov r1, #0xa6
	strh r1, [r5]
	lsr r1, r7, #1
	add r1, #8
	lsl r0, r0, #1
	add r0, r1, r0
	strh r0, [r5, #2]
	add r6, #0x88
	strh r6, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076496:
	mov r1, #0xa6
	strh r1, [r5]
	add r1, r0, #0
	add r1, #0x84
	strh r1, [r5, #2]
	add r0, #0xce
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020764A6:
	mov r0, #0xa6
	strh r0, [r5]
	mov r0, #0x84
	strh r0, [r5, #2]
	mov r0, #0xce
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020764B4:
	cmp r0, #0
	beq _020764CC
	mov r1, #0x75
	strh r1, [r5]
	lsr r1, r7, #1
	add r1, #0x86
	lsl r0, r0, #1
	add r0, r1, r0
	strh r0, [r5, #2]
	add r6, #0xe6
	strh r6, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020764CC:
	mov r0, #0xa5
	strh r0, [r5]
	ldr r0, [sp]
	cmp r0, #1
	beq _020764DA
	mov r2, #1
	b _020764DC
_020764DA:
	mov r2, #0
_020764DC:
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	add r0, r7, r1
	add r0, r0, r2
	strh r0, [r5, #2]
	add r0, r1, #4
	add r0, r6, r0
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_020764F0:
	cmp r0, #0
	beq _0207650A
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x8a
	add r0, r0, r1
	add r6, #0xe8
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207650A:
	mov r0, #0xa5
	strh r0, [r5]
	ldr r0, [sp]
	cmp r0, #1
	beq _02076518
	mov r2, #1
	b _0207651A
_02076518:
	mov r2, #0
_0207651A:
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	add r0, r7, r1
	add r0, r0, r2
	strh r0, [r5, #2]
	add r0, r1, #4
	add r0, r6, r0
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207652E:
	cmp r0, #0
	beq _02076548
	mov r1, #0x75
	strh r1, [r5]
	lsl r1, r0, #1
	lsr r0, r7, #1
	add r0, #0x96
	add r0, r0, r1
	add r6, #0xf4
	strh r0, [r5, #2]
	add r0, r6, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02076548:
	mov r0, #0xa5
	strh r0, [r5]
	ldr r0, [sp]
	cmp r0, #1
	beq _02076556
	mov r2, #1
	b _02076558
_02076556:
	mov r2, #0
_02076558:
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	add r0, r7, r1
	add r0, r0, r2
	strh r0, [r5, #2]
	add r0, r1, #4
	add r0, r6, r0
	strh r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0207656C:
	mov r0, #0xa5
	strh r0, [r5]
	ldr r0, [sp]
	cmp r0, #1
	beq _0207657A
	mov r1, #1
	b _0207657C
_0207657A:
	mov r1, #0
_0207657C:
	mov r0, #6
	mul r0, r4
	add r2, r7, r0
	add r1, r2, r1
	add r0, r0, #4
	strh r1, [r5, #2]
	add r0, r6, r0
	strh r0, [r5, #4]
	ldr r0, _020765A8 ; =0x00000147
	cmp r4, r0
	bne _020765A0
	cmp r7, #2
	bne _020765A0
	strh r0, [r5, #6]
	mov r0, #0
	strb r0, [r5, #8]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0xc]
_020765A0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020765A4: .word 0x000001A5
_020765A8: .word 0x00000147
	thumb_func_end sub_02076300

	thumb_func_start sub_020765AC
sub_020765AC: ; 0x020765AC
	ldr r3, _020765B4 ; =sub_020765C4
	mov r2, #0
	bx r3
	nop
_020765B4: .word sub_020765C4
	thumb_func_end sub_020765AC

	thumb_func_start sub_020765B8
sub_020765B8: ; 0x020765B8
	ldr r3, _020765C0 ; =sub_020765C4
	mov r2, #1
	bx r3
	nop
_020765C0: .word sub_020765C4
	thumb_func_end sub_020765B8

	thumb_func_start sub_020765C4
sub_020765C4: ; 0x020765C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	str r2, [sp, #4]
	mov r1, #0xae
	mov r2, #0
	add r5, r0, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	bl sub_02075D74
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074570
	add r6, r0, #0
	ldr r0, _02076640 ; =0x000001EE
	cmp r4, r0
	bne _0207660C
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	ldr r1, _02076644 ; =0x000001EA
	cmp r0, r1
	bne _02076608
	mov r3, #1
	b _0207661A
_02076608:
	mov r3, #0
	b _0207661A
_0207660C:
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
_0207661A:
	ldr r0, [sp, #4]
	str r6, [sp]
	cmp r0, #1
	bne _02076630
	ldr r1, [sp, #8]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_020767BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02076630:
	ldr r1, [sp, #8]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_02076648
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02076640: .word 0x000001EE
_02076644: .word 0x000001EA
	thumb_func_end sub_020765C4

	thumb_func_start sub_02076648
sub_02076648: ; 0x02076648
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r1, r3, #0
	add r5, r0, #0
	add r4, r2, #0
	bl sub_020761E8
	ldr r1, _020767B8 ; =0x000001A5
	cmp r5, r1
	bgt _020766A4
	bge _02076732
	add r2, r1, #0
	sub r2, #0x46
	cmp r5, r2
	bgt _02076674
	sub r1, #0x46
	cmp r5, r1
	bge _02076746
	cmp r5, #0xc9
	beq _0207675A
	b _02076798
_02076674:
	add r2, r1, #0
	sub r2, #0x23
	cmp r5, r2
	bgt _02076684
	sub r1, #0x23
	cmp r5, r1
	beq _02076750
	b _02076798
_02076684:
	add r2, r1, #0
	sub r2, #8
	cmp r5, r2
	bgt _020766A2
	add r2, r1, #0
	sub r2, #9
	cmp r5, r2
	blt _020766A2
	add r2, r1, #0
	sub r2, #9
	cmp r5, r2
	beq _0207670A
	sub r1, #8
	cmp r5, r1
	beq _02076716
_020766A2:
	b _02076798
_020766A4:
	add r2, r1, #0
	add r2, #0x42
	cmp r5, r2
	bgt _020766D2
	add r2, r1, #0
	add r2, #0x42
	cmp r5, r2
	bge _0207678C
	add r2, r1, #2
	cmp r5, r2
	bgt _020766CA
	add r2, r1, #1
	cmp r5, r2
	blt _02076798
	beq _02076722
	add r1, r1, #2
	cmp r5, r1
	beq _0207672A
	b _02076798
_020766CA:
	add r1, #0x3a
	cmp r5, r1
	beq _02076780
	b _02076798
_020766D2:
	add r2, r1, #0
	add r2, #0x47
	cmp r5, r2
	bgt _020766E2
	add r1, #0x47
	cmp r5, r1
	beq _02076774
	b _02076798
_020766E2:
	add r2, r1, #0
	add r2, #0x4a
	cmp r5, r2
	bgt _02076798
	add r2, r1, #0
	add r2, #0x48
	cmp r5, r2
	blt _02076798
	add r2, r1, #0
	add r2, #0x48
	cmp r5, r2
	beq _0207673A
	add r2, r1, #0
	add r2, #0x49
	cmp r5, r2
	beq _02076766
	add r1, #0x4a
	cmp r5, r1
	beq _0207676E
	b _02076798
_0207670A:
	lsr r2, r4, #1
	add r2, #0x48
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_02076716:
	lsr r2, r4, #1
	add r2, #0x4e
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_02076722:
	add r4, #0x54
	mov r1, #0x79
	add r2, r4, r0
	b _020767AA
_0207672A:
	add r4, #0x58
	mov r1, #0x79
	add r2, r4, r0
	b _020767AA
_02076732:
	add r4, #0x5c
	mov r1, #0x79
	add r2, r4, r0
	b _020767AA
_0207673A:
	lsr r2, r4, #1
	add r2, #0x60
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_02076746:
	lsl r2, r4, #1
	add r2, #0x40
	mov r1, #0x79
	add r2, r0, r2
	b _020767AA
_02076750:
	lsr r2, r4, #1
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_0207675A:
	lsr r2, r4, #1
	add r2, #8
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_02076766:
	add r2, r0, #0
	mov r1, #0x79
	add r2, #0x84
	b _020767AA
_0207676E:
	mov r1, #0x79
	mov r2, #0x84
	b _020767AA
_02076774:
	lsr r2, r4, #1
	add r2, #0x88
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_02076780:
	lsr r2, r4, #1
	add r2, #0x8c
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_0207678C:
	lsr r2, r4, #1
	add r2, #0x98
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _020767AA
_02076798:
	mov r1, #5
	cmp r6, #1
	beq _020767A2
	mov r2, #1
	b _020767A4
_020767A2:
	mov r2, #0
_020767A4:
	lsl r0, r5, #2
	add r0, r4, r0
	add r2, r0, r2
_020767AA:
	add r0, sp, #0
	bl sub_02006AA4
	add r0, sp, #0
	ldrb r0, [r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_020767B8: .word 0x000001A5
	thumb_func_end sub_02076648

	thumb_func_start sub_020767BC
sub_020767BC: ; 0x020767BC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r1, r3, #0
	add r5, r0, #0
	add r4, r2, #0
	bl sub_020761E8
	ldr r1, _02076978 ; =0x000001A5
	cmp r5, r1
	bgt _02076818
	bge _020768A8
	add r2, r1, #0
	sub r2, #0x46
	cmp r5, r2
	bgt _020767E8
	sub r1, #0x46
	cmp r5, r1
	bge _020768BC
	cmp r5, #0xc9
	beq _020768D0
	b _02076956
_020767E8:
	add r2, r1, #0
	sub r2, #0x23
	cmp r5, r2
	bgt _020767F8
	sub r1, #0x23
	cmp r5, r1
	beq _020768C6
	b _02076956
_020767F8:
	add r2, r1, #0
	sub r2, #8
	cmp r5, r2
	bgt _02076816
	add r2, r1, #0
	sub r2, #9
	cmp r5, r2
	blt _02076816
	add r2, r1, #0
	sub r2, #9
	cmp r5, r2
	beq _02076880
	sub r1, #8
	cmp r5, r1
	beq _0207688C
_02076816:
	b _02076956
_02076818:
	add r2, r1, #0
	add r2, #0x42
	cmp r5, r2
	bgt _02076848
	add r2, r1, #0
	add r2, #0x42
	cmp r5, r2
	blt _0207682A
	b _02076932
_0207682A:
	add r2, r1, #2
	cmp r5, r2
	bgt _02076840
	add r2, r1, #1
	cmp r5, r2
	blt _0207683E
	beq _02076898
	add r1, r1, #2
	cmp r5, r1
	beq _020768A0
_0207683E:
	b _02076956
_02076840:
	add r1, #0x3a
	cmp r5, r1
	beq _0207690E
	b _02076956
_02076848:
	add r2, r1, #0
	add r2, #0x47
	cmp r5, r2
	bgt _02076858
	add r1, #0x47
	cmp r5, r1
	beq _020768EA
	b _02076956
_02076858:
	add r2, r1, #0
	add r2, #0x4a
	cmp r5, r2
	bgt _02076956
	add r2, r1, #0
	add r2, #0x48
	cmp r5, r2
	blt _02076956
	add r2, r1, #0
	add r2, #0x48
	cmp r5, r2
	beq _020768B0
	add r2, r1, #0
	add r2, #0x49
	cmp r5, r2
	beq _020768DC
	add r1, #0x4a
	cmp r5, r1
	beq _020768E4
	b _02076956
_02076880:
	lsr r2, r4, #1
	add r2, #0x48
	lsl r0, r0, #1
	mov r1, #0xa8
	add r2, r2, r0
	b _02076968
_0207688C:
	lsr r2, r4, #1
	add r2, #0x4e
	lsl r0, r0, #1
	mov r1, #0xa8
	add r2, r2, r0
	b _02076968
_02076898:
	add r4, #0x54
	mov r1, #0xa8
	add r2, r4, r0
	b _02076968
_020768A0:
	add r4, #0x58
	mov r1, #0xa8
	add r2, r4, r0
	b _02076968
_020768A8:
	add r4, #0x5c
	mov r1, #0xa8
	add r2, r4, r0
	b _02076968
_020768B0:
	lsr r2, r4, #1
	add r2, #0x60
	lsl r0, r0, #1
	mov r1, #0xa8
	add r2, r2, r0
	b _02076968
_020768BC:
	lsl r2, r4, #1
	add r2, #0x40
	mov r1, #0xa8
	add r2, r0, r2
	b _02076968
_020768C6:
	lsr r2, r4, #1
	lsl r0, r0, #1
	mov r1, #0xa8
	add r2, r2, r0
	b _02076968
_020768D0:
	lsr r2, r4, #1
	add r2, #8
	lsl r0, r0, #1
	mov r1, #0xa8
	add r2, r2, r0
	b _02076968
_020768DC:
	add r2, r0, #0
	mov r1, #0xa8
	add r2, #0x84
	b _02076968
_020768E4:
	mov r1, #0xa8
	mov r2, #0x84
	b _02076968
_020768EA:
	cmp r0, #0
	beq _020768FA
	lsr r2, r4, #1
	add r2, #0x88
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _02076968
_020768FA:
	mov r1, #0xa7
	cmp r6, #1
	beq _02076904
	mov r2, #1
	b _02076906
_02076904:
	mov r2, #0
_02076906:
	lsl r0, r5, #2
	add r0, r4, r0
	add r2, r0, r2
	b _02076968
_0207690E:
	cmp r0, #0
	beq _0207691E
	lsr r2, r4, #1
	add r2, #0x8c
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _02076968
_0207691E:
	mov r1, #0xa7
	cmp r6, #1
	beq _02076928
	mov r2, #1
	b _0207692A
_02076928:
	mov r2, #0
_0207692A:
	lsl r0, r5, #2
	add r0, r4, r0
	add r2, r0, r2
	b _02076968
_02076932:
	cmp r0, #0
	beq _02076942
	lsr r2, r4, #1
	add r2, #0x98
	lsl r0, r0, #1
	mov r1, #0x79
	add r2, r2, r0
	b _02076968
_02076942:
	mov r1, #0xa7
	cmp r6, #1
	beq _0207694C
	mov r2, #1
	b _0207694E
_0207694C:
	mov r2, #0
_0207694E:
	lsl r0, r5, #2
	add r0, r4, r0
	add r2, r0, r2
	b _02076968
_02076956:
	mov r1, #0xa7
	cmp r6, #1
	beq _02076960
	mov r2, #1
	b _02076962
_02076960:
	mov r2, #0
_02076962:
	lsl r0, r5, #2
	add r0, r4, r0
	add r2, r0, r2
_02076968:
	add r0, sp, #0
	bl sub_02006AA4
	add r0, sp, #0
	ldrb r0, [r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02076978: .word 0x000001A5
	thumb_func_end sub_020767BC

	thumb_func_start sub_0207697C
sub_0207697C: ; 0x0207697C
	mov r2, #0x3c
	strh r2, [r0]
	lsl r1, r1, #1
	strh r1, [r0, #2]
	add r1, r1, #1
	strh r1, [r0, #4]
	mov r1, #0
	strh r1, [r0, #6]
	strb r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207697C

	thumb_func_start sub_02076994
sub_02076994: ; 0x02076994
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r6, r0, #0
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	add r2, sp, #0x24
	str r3, [sp, #0x20]
	ldr r5, [sp, #0x94]
	mov r7, #1
	bl sub_02076AAC
	ldr r0, [sp, #0x8c]
	cmp r0, #0x66
	bne _020769B6
	mov r7, #2
_020769B6:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x98]
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02076A98 ; =0x00004E2F
	ldr r1, [sp, #0x18]
	add r0, r5, r0
	str r0, [sp, #8]
	ldr r3, [sp, #0x28]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CC3C
	str r4, [sp]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x18]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _02076A9C ; =0x00004E2A
	mov r1, #2
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r2, r6, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	ldr r0, _02076AA0 ; =0x00004E27
	ldr r1, [sp, #0x18]
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r3, [sp, #0x30]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02076AA0 ; =0x00004E27
	ldr r1, [sp, #0x18]
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r3, [sp, #0x34]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CE54
	add r0, r4, #0
	bl sub_02006CA8
	ldr r4, _02076AA4 ; =0x020F05E4
	add r3, sp, #0x3c
	mov r2, #6
_02076A34:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02076A34
	ldr r0, [r4, #0]
	ldr r1, _02076A98 ; =0x00004E2F
	str r0, [r3, #0]
	add r0, r5, r1
	str r0, [sp, #0x50]
	sub r0, r1, #5
	add r0, r5, r0
	sub r1, #8
	str r0, [sp, #0x54]
	add r0, r5, r1
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	ldr r0, _02076AA8 ; =0x020F0588
	lsl r1, r5, #2
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x44]
	add r0, r6, #0
	add r2, sp, #0x3c
	bl sub_0200CE6C
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021F24
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x88]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r4, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r4, #0
	bl sub_0200D330
	add r0, r4, #0
	mov r1, #1
	bl sub_0200D390
	add r0, r4, #0
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02076A98: .word 0x00004E2F
_02076A9C: .word 0x00004E2A
_02076AA0: .word 0x00004E27
_02076AA4: .word 0x020F05E4
_02076AA8: .word 0x020F0588
	thumb_func_end sub_02076994

	thumb_func_start sub_02076AAC
sub_02076AAC: ; 0x02076AAC
	push {r4, lr}
	add r4, r2, #0
	cmp r1, #2
	bne _02076AD0
	mov r1, #0x3c
	str r1, [r4, #0]
	lsl r1, r0, #2
	add r1, r0, r1
	str r1, [r4, #4]
	add r0, r1, #1
	str r0, [r4, #8]
	add r0, r1, #2
	str r0, [r4, #0xc]
	add r0, r1, #3
	str r0, [r4, #0x10]
	add r0, r1, #4
	str r0, [r4, #0x14]
	pop {r4, pc}
_02076AD0:
	mov r1, #6
	str r1, [r4, #0]
	bl sub_020788D0
	lsl r1, r0, #2
	add r1, r0, r1
	str r1, [r4, #4]
	add r0, r1, #1
	str r0, [r4, #8]
	add r0, r1, #2
	str r0, [r4, #0xc]
	add r0, r1, #3
	str r0, [r4, #0x10]
	add r0, r1, #4
	str r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end sub_02076AAC

	thumb_func_start sub_02076AF0
sub_02076AF0: ; 0x02076AF0
	mov r0, #0xec
	bx lr
	thumb_func_end sub_02076AF0

	thumb_func_start sub_02076AF4
sub_02076AF4: ; 0x02076AF4
	mov r0, #0x88
	bx lr
	thumb_func_end sub_02076AF4

	thumb_func_start sub_02076AF8
sub_02076AF8: ; 0x02076AF8
	ldr r3, _02076AFC ; =sub_02076B00
	bx r3
	; .align 2, 0
_02076AFC: .word sub_02076B00
	thumb_func_end sub_02076AF8

	thumb_func_start sub_02076B00
sub_02076B00: ; 0x02076B00
	push {r3, lr}
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end sub_02076B00

	thumb_func_start sub_02076B10
sub_02076B10: ; 0x02076B10
	bx lr
	; .align 2, 0
	thumb_func_end sub_02076B10

	thumb_func_start sub_02076B14
sub_02076B14: ; 0x02076B14
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r1, r0, #1
	add r0, sp, #0
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x15
	bl sub_020759F0
	mov r1, #0x64
	add r5, r0, #0
	bl sub_02075B00
	ldr r1, [sp, #4]
	cmp r1, r0
	bls _02076B64
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #4
	bl sub_02074B30
_02076B64:
	add r0, sp, #0
	ldrb r1, [r0]
	cmp r1, #0x64
	bls _02076B72
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02076B72:
	add r0, r5, #0
	bl sub_02075B00
	ldr r1, [sp, #4]
	cmp r1, r0
	blo _02076B8E
	add r0, r4, #0
	mov r1, #0xa1
	add r2, sp, #0
	bl sub_02074B30
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_02076B8E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02076B14

	thumb_func_start sub_02076B94
sub_02076B94: ; 0x02076B94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r7, r1, #0
	str r0, [sp]
	mov r6, #0
	add r4, r2, #0
	add r0, r7, #0
	mov r1, #5
	add r2, r6, #0
	str r3, [sp, #4]
	ldr r5, [sp, #0x58]
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x2c]
	add r0, r7, #0
	mov r1, #6
	add r2, r6, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r6, #0
	str r0, [sp, #0x28]
	add r0, r7, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp, #0x30]
	add r0, r7, #0
	mov r1, #0x14
	add r2, r6, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r1, _02076EB4 ; =0xFFFF0000
	ldr r0, [sp, #0x30]
	add r2, r6, #0
	and r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	mov r1, #1
	bl sub_0207CFF0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x2c]
	cmp r0, #0x40
	beq _02076C10
	cmp r1, #0x40
	bne _02076C10
	cmp r4, #3
	beq _02076C10
	add sp, #0x44
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_02076C10:
	cmp r5, #0
	bne _02076C16
	add r5, sp, #0x40
_02076C16:
	mov r0, #0
	mov r1, #0x2a
	bl sub_02018144
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x18]
	bl sub_0207821C
	cmp r4, #3
	bls _02076C2E
	b _02076F78
_02076C2E:
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02076C3A: ; jump table
	.short _02076C42 - _02076C3A - 2 ; case 0
	.short _02076EB8 - _02076C3A - 2 ; case 1
	.short _02076EEC - _02076C3A - 2 ; case 2
	.short _02076EEC - _02076C3A - 2 ; case 3
_02076C42:
	add r0, r7, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	mov r1, #0xa
	ldr r4, [sp, #0x18]
	bl _s32_div_f
	str r1, [sp, #8]
_02076C72:
	ldrh r0, [r4]
	cmp r0, #0x1a
	bls _02076C7A
	b _02076E9E
_02076C7A:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02076C86: ; jump table
	.short _02076E9E - _02076C86 - 2 ; case 0
	.short _02076CBC - _02076C86 - 2 ; case 1
	.short _02076CCA - _02076C86 - 2 ; case 2
	.short _02076CE0 - _02076C86 - 2 ; case 3
	.short _02076CF6 - _02076C86 - 2 ; case 4
	.short _02076E9E - _02076C86 - 2 ; case 5
	.short _02076E9E - _02076C86 - 2 ; case 6
	.short _02076E9E - _02076C86 - 2 ; case 7
	.short _02076D06 - _02076C86 - 2 ; case 8
	.short _02076D32 - _02076C86 - 2 ; case 9
	.short _02076D5E - _02076C86 - 2 ; case 10
	.short _02076D8A - _02076C86 - 2 ; case 11
	.short _02076DA2 - _02076C86 - 2 ; case 12
	.short _02076DB8 - _02076C86 - 2 ; case 13
	.short _02076DC8 - _02076C86 - 2 ; case 14
	.short _02076DCE - _02076C86 - 2 ; case 15
	.short _02076E9E - _02076C86 - 2 ; case 16
	.short _02076E9E - _02076C86 - 2 ; case 17
	.short _02076DDE - _02076C86 - 2 ; case 18
	.short _02076DF6 - _02076C86 - 2 ; case 19
	.short _02076E0E - _02076C86 - 2 ; case 20
	.short _02076E22 - _02076C86 - 2 ; case 21
	.short _02076E3A - _02076C86 - 2 ; case 22
	.short _02076E58 - _02076C86 - 2 ; case 23
	.short _02076E76 - _02076C86 - 2 ; case 24
	.short _02076E84 - _02076C86 - 2 ; case 25
	.short _02076E92 - _02076C86 - 2 ; case 26
_02076CBC:
	ldr r0, [sp, #0x20]
	cmp r0, #0xdc
	blo _02076D98
	ldrh r6, [r4, #4]
	mov r0, #1
	str r0, [r5, #0]
	b _02076E9E
_02076CCA:
	bl sub_02013948
	cmp r0, #0
	bne _02076D98
	ldr r0, [sp, #0x20]
	cmp r0, #0xdc
	blo _02076D98
	ldrh r6, [r4, #4]
	mov r0, #2
	str r0, [r5, #0]
	b _02076E9E
_02076CE0:
	bl sub_02013948
	cmp r0, #1
	bne _02076D98
	ldr r0, [sp, #0x20]
	cmp r0, #0xdc
	blo _02076D98
	ldrh r6, [r4, #4]
	mov r0, #3
	str r0, [r5, #0]
	b _02076E9E
_02076CF6:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076D98
	ldrh r6, [r4, #4]
	mov r0, #4
	str r0, [r5, #0]
	b _02076E9E
_02076D06:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076D98
	add r0, r7, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x34]
	add r0, r7, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x34]
	cmp r1, r0
	bls _02076D98
	ldrh r6, [r4, #4]
	mov r0, #8
	str r0, [r5, #0]
	b _02076E9E
_02076D32:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076D98
	add r0, r7, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x38]
	add r0, r7, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x38]
	cmp r1, r0
	bne _02076D98
	ldrh r6, [r4, #4]
	mov r0, #9
	str r0, [r5, #0]
	b _02076E9E
_02076D5E:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076D98
	add r0, r7, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x3c]
	add r0, r7, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x3c]
	cmp r1, r0
	bhs _02076D98
	ldrh r6, [r4, #4]
	mov r0, #0xa
	str r0, [r5, #0]
	b _02076E9E
_02076D8A:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076D98
	ldr r0, [sp, #8]
	cmp r0, #5
	blt _02076D9A
_02076D98:
	b _02076E9E
_02076D9A:
	ldrh r6, [r4, #4]
	mov r0, #0xb
	str r0, [r5, #0]
	b _02076E9E
_02076DA2:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076E9E
	ldr r0, [sp, #8]
	cmp r0, #5
	blt _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0xc
	str r0, [r5, #0]
	b _02076E9E
_02076DB8:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0xd
	str r0, [r5, #0]
	b _02076E9E
_02076DC8:
	mov r0, #0xe
	str r0, [r5, #0]
	b _02076E9E
_02076DCE:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bgt _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0xf
	str r0, [r5, #0]
	b _02076E9E
_02076DDE:
	bl sub_02013948
	cmp r0, #0
	bne _02076E9E
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x12
	str r0, [r5, #0]
	b _02076E9E
_02076DF6:
	bl sub_02013948
	cmp r0, #1
	bne _02076E9E
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x13
	str r0, [r5, #0]
	b _02076E9E
_02076E0E:
	ldrh r1, [r4, #2]
	add r0, r7, #0
	bl sub_0207749C
	cmp r0, #1
	bne _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x14
	str r0, [r5, #0]
	b _02076E9E
_02076E22:
	ldr r0, [sp]
	cmp r0, #0
	beq _02076E9E
	ldrh r1, [r4, #2]
	bl sub_0207A230
	cmp r0, #1
	bne _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x15
	str r0, [r5, #0]
	b _02076E9E
_02076E3A:
	add r0, r7, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02076E9E
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x16
	str r0, [r5, #0]
	b _02076E9E
_02076E58:
	add r0, r7, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02076E9E
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x17
	str r0, [r5, #0]
	b _02076E9E
_02076E76:
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x18
	str r0, [r5, #0]
	b _02076E9E
_02076E84:
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x19
	str r0, [r5, #0]
	b _02076E9E
_02076E92:
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _02076E9E
	ldrh r6, [r4, #4]
	mov r0, #0x1a
	str r0, [r5, #0]
_02076E9E:
	cmp r6, #0
	bne _02076F78
	ldr r0, [sp, #0x24]
	add r4, r4, #6
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #7
	bge _02076EB0
	b _02076C72
_02076EB0:
	b _02076F78
	nop
_02076EB4: .word 0xFFFF0000
_02076EB8:
	ldr r3, [sp, #0x18]
	mov r4, #0
	mov r7, #6
	mov r2, #5
_02076EC0:
	ldrh r0, [r3]
	cmp r0, #5
	beq _02076ECC
	cmp r0, #6
	beq _02076ED2
	b _02076EDE
_02076ECC:
	ldrh r6, [r3, #4]
	str r2, [r5, #0]
	b _02076EDE
_02076ED2:
	ldrh r1, [r3, #2]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _02076EDE
	ldrh r6, [r3, #4]
	str r7, [r5, #0]
_02076EDE:
	cmp r6, #0
	bne _02076F78
	add r4, r4, #1
	add r3, r3, #6
	cmp r4, #7
	blt _02076EC0
	b _02076F78
_02076EEC:
	mov r0, #0
	ldr r4, [sp, #0x18]
	str r0, [sp, #0xc]
_02076EF2:
	ldrh r2, [r4]
	cmp r2, #7
	bne _02076F12
	ldrh r1, [r4, #2]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _02076F12
	ldr r0, [sp, #0xc]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldrh r6, [r0, #4]
	mov r0, #0
	str r0, [r5, #0]
	b _02076F78
_02076F12:
	cmp r2, #0x10
	bne _02076F3E
	add r0, r7, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02076F3E
	ldrh r1, [r4, #2]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _02076F3E
	ldr r0, [sp, #0xc]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldrh r6, [r0, #4]
	mov r0, #0
	str r0, [r5, #0]
	b _02076F78
_02076F3E:
	ldrh r0, [r4]
	cmp r0, #0x11
	bne _02076F6C
	add r0, r7, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02076F6C
	ldrh r1, [r4, #2]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _02076F6C
	ldr r0, [sp, #0xc]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldrh r6, [r0, #4]
	mov r0, #0
	str r0, [r5, #0]
	b _02076F78
_02076F6C:
	ldr r0, [sp, #0xc]
	add r4, r4, #6
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #7
	blt _02076EF2
_02076F78:
	ldr r0, [sp, #0x18]
	bl sub_020181C4
	add r0, r6, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02076B94

	thumb_func_start sub_02076F84
sub_02076F84: ; 0x02076F84
	push {r3, r4, lr}
	sub sp, #0x4c
	add r4, r0, #0
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0]
	ldr r0, _02076FCC ; =0x000001EE
	cmp r4, r0
	blo _02076F9A
	bl sub_02022974
_02076F9A:
	add r0, sp, #4
	bl FS_InitFile
	ldr r1, _02076FD0 ; =0x02100BB0
	add r0, sp, #4
	bl FS_OpenFile
	add r0, sp, #4
	lsl r1, r4, #1
	mov r2, #0
	bl FS_SeekFile
	add r0, sp, #4
	add r1, sp, #0
	mov r2, #2
	bl FS_ReadFile
	add r0, sp, #4
	bl FS_CloseFile
	add r0, sp, #0
	ldrh r0, [r0]
	add sp, #0x4c
	pop {r3, r4, pc}
	nop
_02076FCC: .word 0x000001EE
_02076FD0: .word 0x02100BB0
	thumb_func_end sub_02076F84

	thumb_func_start sub_02076FD4
sub_02076FD4: ; 0x02076FD4
	push {r3, lr}
	cmp r0, #0xb9
	bgt _02076FF8
	cmp r0, #0xb7
	blt _02076FE6
	beq _02077018
	cmp r0, #0xb9
	beq _02077018
	b _02077014
_02076FE6:
	cmp r0, #0x7a
	bgt _02076FF2
	bge _02077018
	cmp r0, #0x71
	beq _02077018
	b _02077014
_02076FF2:
	cmp r0, #0x8f
	beq _02077018
	b _02077014
_02076FF8:
	cmp r0, #0xe2
	bgt _02077004
	bge _02077018
	cmp r0, #0xca
	beq _02077018
	b _02077014
_02077004:
	ldr r1, _0207701C ; =0x0000013B
	cmp r0, r1
	bgt _0207700E
	beq _02077018
	b _02077014
_0207700E:
	add r1, #0x2b
	cmp r0, r1
	beq _02077018
_02077014:
	bl sub_02076F84
_02077018:
	pop {r3, pc}
	nop
_0207701C: .word 0x0000013B
	thumb_func_end sub_02076FD4

	thumb_func_start sub_02077020
sub_02077020: ; 0x02077020
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	mov r1, #0x2c
	bl sub_02018144
	str r0, [sp]
	add r0, r5, #0
	bl sub_02073D20
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02075B40
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02077D28
	ldr r0, [sp]
	ldrh r1, [r0]
	ldr r0, _020770BC ; =0x0000FFFF
	cmp r1, r0
	beq _020770A8
	ldr r4, [sp]
	lsl r7, r6, #9
_02077074:
	ldrh r1, [r4]
	mov r0, #0xfe
	lsl r0, r0, #8
	and r0, r1
	cmp r0, r7
	bgt _020770A8
	ldr r0, _020770C0 ; =0x000001FF
	and r0, r1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020770D4
	ldr r1, _020770BC ; =0x0000FFFF
	cmp r0, r1
	bne _0207709E
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02077144
_0207709E:
	add r4, r4, #2
	ldrh r1, [r4]
	ldr r0, _020770BC ; =0x0000FFFF
	cmp r1, r0
	bne _02077074
_020770A8:
	ldr r0, [sp]
	bl sub_020181C4
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_02073D48
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020770BC: .word 0x0000FFFF
_020770C0: .word 0x000001FF
	thumb_func_end sub_02077020

	thumb_func_start sub_020770C4
sub_020770C4: ; 0x020770C4
	push {r4, lr}
	add r4, r1, #0
	bl sub_02076B10
	add r1, r4, #0
	bl sub_020770D4
	pop {r4, pc}
	thumb_func_end sub_020770C4

	thumb_func_start sub_020770D4
sub_020770D4: ; 0x020770D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, _0207712C ; =0x0000FFFF
	add r6, r0, #0
	str r1, [sp, #4]
	bl sub_02073D20
	mov r4, #0
	str r0, [sp]
	add r7, r4, #0
_020770EA:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	add r2, r7, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bne _0207710C
	lsl r2, r4, #0x18
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl sub_02077238
	str r5, [sp, #4]
	b _0207711C
_0207710C:
	cmp r0, r5
	bne _02077116
	ldr r0, _02077130 ; =0x0000FFFE
	str r0, [sp, #4]
	b _0207711C
_02077116:
	add r4, r4, #1
	cmp r4, #4
	blt _020770EA
_0207711C:
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_02073D48
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207712C: .word 0x0000FFFF
_02077130: .word 0x0000FFFE
	thumb_func_end sub_020770D4

	thumb_func_start sub_02077134
sub_02077134: ; 0x02077134
	push {r4, lr}
	add r4, r1, #0
	bl sub_02076B10
	add r1, r4, #0
	bl sub_02077144
	pop {r4, pc}
	thumb_func_end sub_02077134

	thumb_func_start sub_02077144
sub_02077144: ; 0x02077144
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r1, [sp]
	bl sub_02073D20
	str r0, [sp, #0xc]
	add r0, sp, #0x18
	mov r4, #0
	str r0, [sp, #4]
	add r7, sp, #0x14
	add r6, sp, #0x10
_0207715C:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x37
	mov r2, #0
	bl sub_02074570
	ldr r1, [sp, #4]
	mov r2, #0
	strh r0, [r1]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3b
	bl sub_02074570
	add r1, r4, #0
	strb r0, [r7]
	add r0, r5, #0
	add r1, #0x3f
	mov r2, #0
	bl sub_02074570
	strb r0, [r6]
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, r0, #2
	str r0, [sp, #4]
	add r7, r7, #1
	add r6, r6, #1
	cmp r4, #3
	blt _0207715C
	ldr r0, [sp]
	add r1, sp, #0x10
	strh r0, [r1, #0xe]
	ldr r0, [sp]
	mov r1, #5
	bl sub_020790C4
	add r1, sp, #0x10
	strb r0, [r1, #7]
	mov r4, #0
	add r0, sp, #0x18
	strb r4, [r1, #3]
	str r0, [sp, #8]
	add r7, sp, #0x14
	add r6, sp, #0x10
_020771B6:
	add r1, r4, #0
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, #0x36
	bl sub_02074C60
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3a
	add r2, r7, #0
	bl sub_02074C60
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3e
	add r2, r6, #0
	bl sub_02074C60
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r0, r0, #2
	str r0, [sp, #8]
	add r7, r7, #1
	add r6, r6, #1
	cmp r4, #4
	blt _020771B6
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_02073D48
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02077144

	thumb_func_start sub_020771F8
sub_020771F8: ; 0x020771F8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02077230
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, #0x3e
	add r2, sp, #0
	bl sub_02074B30
	add r0, r6, #0
	mov r1, #0
	bl sub_020790DC
	add r4, #0x3a
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #4
	bl sub_02074B30
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020771F8

	thumb_func_start sub_02077230
sub_02077230: ; 0x02077230
	ldr r3, _02077234 ; =sub_02077238
	bx r3
	; .align 2, 0
_02077234: .word sub_02077238
	thumb_func_end sub_02077230

	thumb_func_start sub_02077238
sub_02077238: ; 0x02077238
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r1, r4, #0
	add r1, #0x36
	add r2, sp, #0x14
	add r5, r0, #0
	bl sub_02074C60
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, sp, #0x10
	ldrh r0, [r0, #4]
	bl sub_020790DC
	add r1, sp, #0
	strb r0, [r1]
	add r4, #0x3a
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_02074C60
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end sub_02077238

	thumb_func_start sub_0207727C
sub_0207727C: ; 0x0207727C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0
	mov r1, #0x2c
	str r2, [sp]
	str r0, [sp, #8]
	bl sub_02018144
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	add r2, r4, #0
	bl sub_02077D28
	ldr r0, [r5, #0]
	lsl r0, r0, #1
	ldrh r2, [r4, r0]
	ldr r0, _0207733C ; =0x0000FFFF
	cmp r2, r0
	bne _020772DE
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020772DE:
	mov r0, #0xfe
	lsl r0, r0, #8
	add r3, r2, #0
	and r3, r0
	lsl r6, r6, #9
	cmp r6, r3
	beq _02077310
	ldr r1, _0207733C ; =0x0000FFFF
_020772EE:
	ldr r2, [r5, #0]
	add r2, r2, #1
	str r2, [r5, #0]
	lsl r2, r2, #1
	ldrh r2, [r4, r2]
	cmp r2, r1
	bne _02077308
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02077308:
	add r3, r2, #0
	and r3, r0
	cmp r6, r3
	bne _020772EE
_02077310:
	cmp r6, r3
	bne _02077330
	ldr r0, _02077340 ; =0x000001FF
	add r1, r2, #0
	and r1, r0
	ldr r0, [sp]
	strh r1, [r0]
	ldr r0, [r5, #0]
	ldr r1, [sp]
	add r0, r0, #1
	str r0, [r5, #0]
	ldrh r1, [r1]
	add r0, r7, #0
	bl sub_020770C4
	str r0, [sp, #8]
_02077330:
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0207733C: .word 0x0000FFFF
_02077340: .word 0x000001FF
	thumb_func_end sub_0207727C

	thumb_func_start sub_02077344
sub_02077344: ; 0x02077344
	ldr r3, _02077348 ; =sub_0207734C
	bx r3
	; .align 2, 0
_02077348: .word sub_0207734C
	thumb_func_end sub_02077344

	thumb_func_start sub_0207734C
sub_0207734C: ; 0x0207734C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r6, r2, #0
	add r1, #0x36
	mov r2, #0
	add r5, r0, #0
	bl sub_02074570
	add r1, sp, #0
	strh r0, [r1, #4]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3a
	mov r2, #0
	bl sub_02074570
	add r1, sp, #0
	strb r0, [r1, #2]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_02074570
	add r1, sp, #0
	strb r0, [r1]
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074570
	add r1, sp, #0
	strh r0, [r1, #6]
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x3a
	mov r2, #0
	bl sub_02074570
	add r1, sp, #0
	strb r0, [r1, #3]
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_02074570
	add r1, sp, #0
	strb r0, [r1, #1]
	add r1, r4, #0
	add r2, sp, #4
	add r0, r5, #0
	add r1, #0x36
	add r2, #2
	bl sub_02074C60
	add r1, r4, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #0x3a
	add r2, #3
	bl sub_02074C60
	add r4, #0x3e
	add r2, sp, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, #1
	bl sub_02074C60
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x36
	add r2, sp, #4
	bl sub_02074C60
	add r1, r6, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #0x3a
	add r2, #2
	bl sub_02074C60
	add r6, #0x3e
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0
	bl sub_02074C60
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0207734C

	thumb_func_start sub_02077408
sub_02077408: ; 0x02077408
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	bhs _0207746E
	mov r7, #0
	add r6, sp, #0
_02077416:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x37
	add r2, r7, #0
	bl sub_02074470
	add r1, r4, #0
	strh r0, [r6, #2]
	add r0, r5, #0
	add r1, #0x3b
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	strb r0, [r6, #1]
	add r0, r5, #0
	add r1, #0x3f
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r2, sp, #0
	strb r0, [r6]
	add r0, r5, #0
	add r1, #0x36
	add r2, #2
	bl sub_02074B30
	add r1, r4, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #0x3a
	add r2, #1
	bl sub_02074B30
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3e
	add r2, sp, #0
	bl sub_02074B30
	add r4, r4, #1
	cmp r4, #3
	blo _02077416
_0207746E:
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0, #2]
	strb r1, [r0, #1]
	strb r1, [r0]
	add r2, sp, #0
	add r0, r5, #0
	mov r1, #0x39
	add r2, #2
	bl sub_02074B30
	add r2, sp, #0
	add r0, r5, #0
	mov r1, #0x3d
	add r2, #1
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #0x41
	add r2, sp, #0
	bl sub_02074B30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02077408

	thumb_func_start sub_0207749C
sub_0207749C: ; 0x0207749C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r1, #0
	add r7, r4, #0
_020774A6:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	add r2, r7, #0
	bl sub_02074470
	cmp r5, r0
	beq _020774BC
	add r4, r4, #1
	cmp r4, #4
	blt _020774A6
_020774BC:
	cmp r4, #4
	beq _020774C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020774C4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207749C

	thumb_func_start sub_020774C8
sub_020774C8: ; 0x020774C8
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	str r0, [sp]
	add r3, r4, #0
	mov r2, #0x11
_020774D8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020774D8
	ldrh r1, [r4, #4]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1f
	beq _020774F2
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strh r0, [r4, #4]
_020774F2:
	add r0, r4, #0
	mov r1, #0xa0
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0xa3
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0xa4
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	bl sub_0202818C
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xaa
	add r2, r5, #0
	bl sub_02074B30
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	mov r1, #0xa2
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	add r1, sp, #4
	mov r2, #0x18
	bl MIi_CpuClearFast
	add r0, r4, #0
	mov r1, #0xab
	add r2, sp, #4
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end sub_020774C8

	thumb_func_start sub_02077550
sub_02077550: ; 0x02077550
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0207A0F8
	add r7, r0, #0
	mov r6, #1
	mov r5, #0
	cmp r7, #0
	ble _020775A0
_02077562:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0207759A
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0207759A
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r6
	bls _0207759A
	add r6, r0, #0
_0207759A:
	add r5, r5, #1
	cmp r5, r7
	blt _02077562
_020775A0:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02077550

	thumb_func_start sub_020775A4
sub_020775A4: ; 0x020775A4
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, sp, #4
	mov r1, #0x6d
	mov r2, #0
	lsl r3, r3, #1
	bl sub_02006AFC
	add r0, sp, #4
	ldrh r0, [r0]
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020775A4

	thumb_func_start sub_020775C4
sub_020775C4: ; 0x020775C4
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	mov r2, #0
	add r0, sp, #4
	strh r2, [r0]
	cmp r3, #0xd2
	bhi _020775E2
	mov r0, #2
	str r0, [sp]
	add r0, sp, #4
	mov r1, #0x91
	lsl r3, r3, #1
	bl sub_02006AFC
_020775E2:
	add r0, sp, #4
	ldrh r0, [r0]
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020775C4

	thumb_func_start sub_020775EC
sub_020775EC: ; 0x020775EC
	push {r3, r4}
	add r4, r0, #0
	add r3, r1, #0
	mov r2, #0x1d
_020775F4:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020775F4
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020775EC

	thumb_func_start sub_02077604
sub_02077604: ; 0x02077604
	push {r3, r4}
	add r4, r0, #0
	add r3, r1, #0
	mov r2, #0x11
_0207760C:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0207760C
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02077604

	thumb_func_start sub_02077618
sub_02077618: ; 0x02077618
	push {r3, r4}
	add r4, r0, #0
	add r3, r1, #0
	mov r2, #0x11
_02077620:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02077620
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02077618

	thumb_func_start sub_0207762C
sub_0207762C: ; 0x0207762C
	ldr r3, _02077630 ; =sub_02077634
	bx r3
	; .align 2, 0
_02077630: .word sub_02077634
	thumb_func_end sub_0207762C

	thumb_func_start sub_02077634
sub_02077634: ; 0x02077634
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0
	add r2, r1, #0
	bl sub_02074570
	add r1, r4, #0
	bl sub_02077648
	pop {r4, pc}
	thumb_func_end sub_02077634

	thumb_func_start sub_02077648
sub_02077648: ; 0x02077648
	push {r4, lr}
	add r4, r1, #0
	bl sub_02075BFC
	lsl r1, r0, #2
	add r1, r0, r1
	ldr r0, _0207765C ; =0x020F0695
	add r0, r0, r1
	ldrsb r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0207765C: .word 0x020F0695
	thumb_func_end sub_02077648

	thumb_func_start sub_02077660
sub_02077660: ; 0x02077660
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	mov r0, #0
	mov r1, #0x2c
	add r5, r2, #0
	bl sub_02018144
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02077D28
	ldrh r1, [r6]
	ldr r0, _020776A8 ; =0x0000FFFF
	mov r4, #0
	cmp r1, r0
	beq _0207769E
	ldr r1, _020776AC ; =0x000001FF
	ldr r2, _020776A8 ; =0x0000FFFF
	add r0, r6, #0
_0207768C:
	ldrh r3, [r0]
	add r0, r0, #2
	add r4, r4, #1
	and r3, r1
	strh r3, [r5]
	ldrh r3, [r0]
	add r5, r5, #2
	cmp r3, r2
	bne _0207768C
_0207769E:
	add r0, r6, #0
	bl sub_020181C4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020776A8: .word 0x0000FFFF
_020776AC: .word 0x000001FF
	thumb_func_end sub_02077660

	thumb_func_start sub_020776B0
sub_020776B0: ; 0x020776B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0207A0F8
	add r6, r0, #0
	bl sub_0201D2E8
	mov r1, #1
	lsl r1, r1, #0xe
	cmp r0, r1
	beq _020776D4
	lsl r1, r1, #1
	cmp r0, r1
	beq _020776D4
	mov r1, #3
	lsl r1, r1, #0xe
	cmp r0, r1
	bne _02077756
_020776D4:
	bl sub_0201D2E8
	add r1, r6, #0
	bl _s32_div_f
	add r0, r5, #0
	add r7, r1, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _020776D4
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _020776D4
	add r0, r7, #0
	bl sub_020787CC
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02077758
	cmp r0, #0
	bne _02077756
	add r5, sp, #0
	mov r6, #7
_0207771C:
	bl sub_0201D2E8
	strb r0, [r5]
	ldrb r2, [r5]
	add r1, r2, #0
	and r1, r6
	beq _0207771C
	mov r0, #0xf0
	tst r0, r2
	beq _02077734
	add r0, sp, #0
	strb r1, [r0]
_02077734:
	add r1, sp, #0
	ldrb r2, [r1]
	lsl r0, r2, #4
	orr r0, r2
	strb r0, [r1]
	ldrb r2, [r1]
	mov r0, #0xf3
	and r0, r2
	strb r0, [r1]
	ldrb r0, [r1]
	add r2, sp, #0
	add r0, r0, #1
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x9a
	bl sub_02074B30
_02077756:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020776B0

	thumb_func_start sub_02077758
sub_02077758: ; 0x02077758
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r1, #0
	str r0, [sp]
	mov r4, #1
	add r7, r6, #0
	cmp r5, #0
	beq _02077796
_02077768:
	mov r0, #1
	tst r0, r5
	beq _0207778A
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x9a
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0207778A
	add r0, r7, #0
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_0207778A:
	lsl r0, r5, #0x17
	add r6, r6, #1
	lsl r4, r4, #1
	lsr r5, r0, #0x18
	bne _02077768
	b _020777AE
_02077796:
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x9a
	add r2, r6, #0
	bl sub_02074470
	cmp r0, #0
	beq _020777AE
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_020777AE:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02077758

	thumb_func_start sub_020777B4
sub_020777B4: ; 0x020777B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r5, r1, #0
	bl sub_0207A0F8
	mov r6, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _02077826
	add r4, sp, #8
_020777CA:
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0207781E
	add r0, r7, #0
	mov r1, #0x9a
	mov r2, #0
	bl sub_02074470
	strb r0, [r4]
	ldrb r1, [r4]
	mov r0, #0xf
	and r0, r1
	beq _0207781E
	cmp r0, r5
	blt _020777FC
	cmp r5, #4
	ble _02077806
_020777FC:
	ldrb r1, [r4]
	mov r0, #0xf0
	and r0, r1
	strb r0, [r4]
	b _0207780A
_02077806:
	sub r0, r1, r5
	strb r0, [r4]
_0207780A:
	ldrb r0, [r4]
	cmp r0, #0
	bne _02077814
	mov r0, #0x10
	strb r0, [r4]
_02077814:
	add r0, r7, #0
	mov r1, #0x9a
	add r2, sp, #8
	bl sub_02074B30
_0207781E:
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _020777CA
_02077826:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020777B4

	thumb_func_start sub_0207782C
sub_0207782C: ; 0x0207782C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0207A0F8
	add r7, r0, #0
	bl sub_0201D2E8
	mov r1, #3
	bl _s32_div_f
	cmp r1, #0
	bne _020778D4
	mov r4, #0
	cmp r7, #0
	ble _020778D4
	sub r0, r7, #1
	str r0, [sp]
_02077850:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _020778CE
	add r0, r6, #0
	mov r1, #0x9a
	mov r2, #0
	bl sub_02074470
	add r1, sp, #4
	strb r0, [r1]
	add r0, r1, #0
	ldrb r1, [r0]
	mov r0, #0xf
	tst r0, r1
	beq _020778CE
	cmp r4, #0
	beq _020778A4
	add r0, r5, #0
	sub r1, r4, #1
	bl sub_0207A0FC
	mov r1, #0x9a
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	mov r1, #0xf0
	tst r0, r1
	bne _020778A4
	add r0, r6, #0
	mov r1, #0x9a
	add r2, sp, #4
	bl sub_02074B30
_020778A4:
	ldr r0, [sp]
	cmp r4, r0
	bge _020778CE
	add r0, r5, #0
	add r1, r4, #1
	bl sub_0207A0FC
	mov r1, #0x9a
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	mov r1, #0xf0
	tst r0, r1
	bne _020778CE
	add r0, r6, #0
	mov r1, #0x9a
	add r2, sp, #4
	bl sub_02074B30
	add r4, r4, #1
_020778CE:
	add r4, r4, #1
	cmp r4, r7
	blt _02077850
_020778D4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207782C

	thumb_func_start sub_020778D8
sub_020778D8: ; 0x020778D8
	ldr r3, _020778DC ; =sub_020778E0
	bx r3
	; .align 2, 0
_020778DC: .word sub_020778E0
	thumb_func_end sub_020778D8

	thumb_func_start sub_020778E0
sub_020778E0: ; 0x020778E0
	push {r3, lr}
	mov r1, #0x9a
	mov r2, #0
	bl sub_02074570
	mov r1, #0xf
	tst r0, r1
	beq _020778F4
	mov r0, #1
	pop {r3, pc}
_020778F4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020778E0

	thumb_func_start sub_020778F8
sub_020778F8: ; 0x020778F8
	ldr r3, _020778FC ; =sub_02077900
	bx r3
	; .align 2, 0
_020778FC: .word sub_02077900
	thumb_func_end sub_020778F8

	thumb_func_start sub_02077900
sub_02077900: ; 0x02077900
	push {r3, lr}
	mov r1, #0x9a
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0xf
	tst r0, r1
	beq _02077918
	mov r0, #0
	pop {r3, pc}
_02077918:
	mov r0, #0xf0
	tst r0, r1
	beq _02077922
	mov r0, #1
	pop {r3, pc}
_02077922:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02077900

	thumb_func_start sub_02077928
sub_02077928: ; 0x02077928
	ldr r3, _0207792C ; =sub_02077930
	bx r3
	; .align 2, 0
_0207792C: .word sub_02077930
	thumb_func_end sub_02077928

	thumb_func_start sub_02077930
sub_02077930: ; 0x02077930
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074570
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	ldr r1, _02077984 ; =0x000001ED
	cmp r4, r1
	bne _02077980
	cmp r6, #0x79
	bne _02077980
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	mov r2, #0
	bl sub_0207CFF0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02077988
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x70
	add r2, sp, #0
	bl sub_02074C60
_02077980:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02077984: .word 0x000001ED
	thumb_func_end sub_02077930

	thumb_func_start sub_02077988
sub_02077988: ; 0x02077988
	sub r0, #0x7e
	cmp r0, #0xf
	bhi _020779FA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207799A: ; jump table
	.short _020779BA - _0207799A - 2 ; case 0
	.short _020779BE - _0207799A - 2 ; case 1
	.short _020779C2 - _0207799A - 2 ; case 2
	.short _020779C6 - _0207799A - 2 ; case 3
	.short _020779CA - _0207799A - 2 ; case 4
	.short _020779CE - _0207799A - 2 ; case 5
	.short _020779D2 - _0207799A - 2 ; case 6
	.short _020779D6 - _0207799A - 2 ; case 7
	.short _020779DA - _0207799A - 2 ; case 8
	.short _020779DE - _0207799A - 2 ; case 9
	.short _020779E2 - _0207799A - 2 ; case 10
	.short _020779E6 - _0207799A - 2 ; case 11
	.short _020779EA - _0207799A - 2 ; case 12
	.short _020779EE - _0207799A - 2 ; case 13
	.short _020779F2 - _0207799A - 2 ; case 14
	.short _020779F6 - _0207799A - 2 ; case 15
_020779BA:
	mov r0, #0xa
	bx lr
_020779BE:
	mov r0, #0xb
	bx lr
_020779C2:
	mov r0, #0xd
	bx lr
_020779C6:
	mov r0, #0xc
	bx lr
_020779CA:
	mov r0, #0xf
	bx lr
_020779CE:
	mov r0, #1
	bx lr
_020779D2:
	mov r0, #3
	bx lr
_020779D6:
	mov r0, #4
	bx lr
_020779DA:
	mov r0, #2
	bx lr
_020779DE:
	mov r0, #0xe
	bx lr
_020779E2:
	mov r0, #6
	bx lr
_020779E6:
	mov r0, #5
	bx lr
_020779EA:
	mov r0, #7
	bx lr
_020779EE:
	mov r0, #0x10
	bx lr
_020779F2:
	mov r0, #0x11
	bx lr
_020779F6:
	mov r0, #8
	bx lr
_020779FA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02077988

	thumb_func_start sub_02077A00
sub_02077A00: ; 0x02077A00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02077A1C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02077A18
	add r0, r5, #0
	bl sub_0207418C
_02077A18:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02077A00

	thumb_func_start sub_02077A1C
sub_02077A1C: ; 0x02077A1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	ldr r1, _02077A60 ; =0x000001E7
	cmp r4, r1
	bne _02077A5A
	cmp r0, #0x70
	bne _02077A42
	mov r0, #1
	b _02077A44
_02077A42:
	mov r0, #0
_02077A44:
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x70
	add r2, sp, #0
	bl sub_02074C60
	add r0, r5, #0
	bl sub_02078044
	ldr r0, [sp]
	pop {r3, r4, r5, pc}
_02077A5A:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02077A60: .word 0x000001E7
	thumb_func_end sub_02077A1C

	thumb_func_start sub_02077A64
sub_02077A64: ; 0x02077A64
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #1
	str r1, [sp]
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	ldr r1, _02077A98 ; =0x000001E7
	cmp r0, r1
	bne _02077A92
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #0
	bl sub_02074C60
	add r0, r4, #0
	bl sub_02078044
	add r0, r4, #0
	bl sub_0207418C
_02077A92:
	add sp, #4
	pop {r3, r4, pc}
	nop
_02077A98: .word 0x000001E7
	thumb_func_end sub_02077A64

	thumb_func_start sub_02077A9C
sub_02077A9C: ; 0x02077A9C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	bl sub_0207A0F8
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _02077ACA
_02077AAE:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0207A0FC
	cmp r5, #0
	beq _02077AC0
	bl sub_02077A64
	b _02077AC4
_02077AC0:
	bl sub_02077A00
_02077AC4:
	add r4, r4, #1
	cmp r4, r6
	blt _02077AAE
_02077ACA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02077A9C

	thumb_func_start sub_02077ACC
sub_02077ACC: ; 0x02077ACC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02077ADC
	add r0, r4, #0
	bl sub_0207418C
	pop {r4, pc}
	thumb_func_end sub_02077ACC

	thumb_func_start sub_02077ADC
sub_02077ADC: ; 0x02077ADC
	push {r0, r1, r2, r3}
	push {r4, lr}
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074570
	mov r1, #0x7b
	lsl r1, r1, #2
	cmp r0, r1
	bne _02077B0C
	ldr r0, [sp, #0xc]
	cmp r0, #1
	ble _02077AFC
	bl sub_02022974
_02077AFC:
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #0xc
	bl sub_02074C60
	add r0, r4, #0
	bl sub_02078044
_02077B0C:
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_02077ADC

	thumb_func_start sub_02077B14
sub_02077B14: ; 0x02077B14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, sp, #4
	bl sub_02013880
	mov r0, #0x7b
	lsl r0, r0, #2
	cmp r5, r0
	bne _02077B86
	cmp r6, #0
	bne _02077B86
	ldr r0, [sp]
	cmp r0, #0
	beq _02077B86
	cmp r4, #1
	bne _02077B86
	mov r0, #0x20
	tst r0, r7
	bne _02077B86
	ldr r0, [sp, #4]
	cmp r0, #4
	blo _02077B86
	cmp r0, #0x14
	bhs _02077B86
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02077B86:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02077B14

	thumb_func_start sub_02077B8C
sub_02077B8C: ; 0x02077B8C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0207A0F8
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _02077BD4
_02077B9C:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	mov r1, #0x7b
	lsl r1, r1, #2
	cmp r6, r1
	bne _02077BCE
	cmp r0, #1
	bne _02077BCE
	add r0, r4, #0
	mov r1, #0
	bl sub_02077ACC
_02077BCE:
	add r5, r5, #1
	cmp r5, r7
	blt _02077B9C
_02077BD4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02077B8C

	thumb_func_start sub_02077BD8
sub_02077BD8: ; 0x02077BD8
	push {r4, lr}
	ldr r3, [r2, #0]
	cmp r3, #0x14
	bhs _02077BE4
	cmp r3, #4
	bhs _02077C06
_02077BE4:
	cmp r3, #4
	bge _02077BEA
	add r3, #0x18
_02077BEA:
	ldr r4, [r2, #4]
	sub r3, #0x14
	mov r2, #0x3c
	mul r2, r3
	add r2, r4, r2
	add r1, r1, #1
	cmp r2, r1
	bge _02077C02
	bl sub_02077B8C
	mov r0, #1
	pop {r4, pc}
_02077C02:
	mov r0, #0
	pop {r4, pc}
_02077C06:
	ldr r4, [r2, #4]
	sub r3, r3, #4
	mov r2, #0x3c
	mul r2, r3
	add r2, r4, r2
	cmp r2, r1
	bge _02077C1C
	bl sub_02077B8C
	mov r0, #1
	pop {r4, pc}
_02077C1C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02077BD8

	thumb_func_start sub_02077C20
sub_02077C20: ; 0x02077C20
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	ldr r1, _02077D1C ; =0x000001DF
	cmp r0, r1
	beq _02077C40
	mov r0, #0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
_02077C40:
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	ldr r0, [sp, #0x1c]
	mov r5, #0
	lsl r1, r0, #1
	ldr r0, _02077D20 ; =0x020F057C
	add r7, r5, #0
	ldrh r6, [r0, r1]
_02077C56:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x36
	add r2, r7, #0
	bl sub_02074470
	ldr r3, _02077D24 ; =0x020F057E
	add r2, r0, #0
	mov r1, #1
_02077C68:
	cmp r2, #0
	beq _02077C94
	ldrh r0, [r3]
	cmp r2, r0
	bne _02077C94
	cmp r6, #0
	beq _02077C88
	lsl r1, r6, #0x10
	lsl r2, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	bl sub_020771F8
	mov r6, #0
	b _02077C9C
_02077C88:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02077408
	sub r5, r5, #1
	b _02077C9C
_02077C94:
	add r1, r1, #1
	add r3, r3, #2
	cmp r1, #6
	blo _02077C68
_02077C9C:
	add r5, r5, #1
	cmp r5, #4
	blt _02077C56
	cmp r6, #0
	beq _02077CE4
	mov r5, #0
	add r7, r5, #0
_02077CAA:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x36
	add r2, r7, #0
	bl sub_02074470
	cmp r0, #0
	bne _02077CCA
	lsl r1, r6, #0x10
	lsl r2, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	bl sub_020771F8
	b _02077CD0
_02077CCA:
	add r5, r5, #1
	cmp r5, #4
	blt _02077CAA
_02077CD0:
	cmp r5, #4
	bne _02077CE4
	ldr r2, [sp]
	lsl r1, r6, #0x10
	lsl r2, r2, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	bl sub_020771F8
_02077CE4:
	add r0, r4, #0
	mov r1, #0x36
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02077CFC
	add r0, r4, #0
	mov r1, #0x54
	mov r2, #0
	bl sub_020771F8
_02077CFC:
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #0x1c
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207803C
	add r0, r4, #0
	bl sub_0207418C
	mov r0, #1
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_02077D1C: .word 0x000001DF
_02077D20: .word 0x020F057C
_02077D24: .word 0x020F057E
	thumb_func_end sub_02077C20

	thumb_func_start sub_02077D28
sub_02077D28: ; 0x02077D28
	push {r4, lr}
	add r4, r2, #0
	bl sub_02078740
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x21
	bl sub_02006AA4
	pop {r4, pc}
	thumb_func_end sub_02077D28

	thumb_func_start sub_02077D3C
sub_02077D3C: ; 0x02077D3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, _02077DB0 ; =0x000001B9
	add r5, r2, #0
	add r6, r1, #0
	add r4, r3, #0
	cmp r5, r0
	bne _02077D94
	add r0, r6, #0
	bl sub_020064C8
	cmp r0, #0
	bne _02077D78
	mov r0, #1
	bl sub_020063D4
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r3, [sp, #0x24]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020059D0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02077D78:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02077D84
	mov r0, #1
	bl sub_020063D4
_02077D84:
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x20]
	add r0, r7, #0
	mov r1, #0
	bl sub_020063E4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02077D94:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r3, [sp, #0x24]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020059D0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02077DB0: .word 0x000001B9
	thumb_func_end sub_02077D3C

	thumb_func_start sub_02077DB4
sub_02077DB4: ; 0x02077DB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, _02077E38 ; =0x000001B9
	add r5, r2, #0
	add r6, r1, #0
	add r4, r3, #0
	cmp r5, r0
	bne _02077E18
	add r0, r6, #0
	bl sub_020064C8
	cmp r0, #0
	bne _02077DF6
	mov r0, #1
	bl sub_020063D4
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	add r0, sp, #0x30
	ldrb r0, [r0]
	ldr r3, [sp, #0x24]
	add r1, r5, #0
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_02005F4C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02077DF6:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02077E02
	mov r0, #1
	bl sub_020063D4
_02077E02:
	add r0, sp, #0x30
	ldrb r0, [r0]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0
	bl sub_02006438
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02077E18:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	add r0, sp, #0x30
	ldrb r0, [r0]
	ldr r3, [sp, #0x24]
	add r1, r5, #0
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_02005F4C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02077E38: .word 0x000001B9
	thumb_func_end sub_02077DB4

	thumb_func_start sub_02077E3C
sub_02077E3C: ; 0x02077E3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	lsl r0, r4, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl sub_02005844
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02077E3C

	thumb_func_start sub_02077E64
sub_02077E64: ; 0x02077E64
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, [sp, #0x20]
	add r5, r0, #0
	str r6, [sp]
	ldr r6, [sp, #0x24]
	add r4, r2, #0
	str r6, [sp, #4]
	bl sub_02077EA4
	cmp r4, #0xe
	bne _02077EA0
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa3
	add r2, sp, #8
	bl sub_02074B30
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa0
	add r2, sp, #8
	bl sub_02074B30
_02077EA0:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02077E64

	thumb_func_start sub_02077EA4
sub_02077EA4: ; 0x02077EA4
	push {r0, r1, r2, r3}
	push {r3, r4, lr}
	sub sp, #4
	ldr r2, [sp, #0x24]
	add r4, r0, #0
	str r2, [sp]
	mov r2, #0
	bl sub_0209305C
	ldr r2, _02077EE0 ; =0x020E4C40
	add r0, r4, #0
	mov r1, #0x7a
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x9b
	add r2, sp, #0x18
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #0x9e
	add r2, sp, #0x20
	bl sub_02074C60
	add sp, #4
	pop {r3, r4}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02077EE0: .word 0x020E4C40
	thumb_func_end sub_02077EA4

	thumb_func_start sub_02077EE4
sub_02077EE4: ; 0x02077EE4
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_02077EF8
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02077EE4

	thumb_func_start sub_02077EF8
sub_02077EF8: ; 0x02077EF8
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_02077EA4
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02077EF8

	thumb_func_start sub_02077F0C
sub_02077F0C: ; 0x02077F0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x81
	add r7, r2, #0
	tst r0, r1
	bne _02077FA6
	bl sub_0201D2E8
	mov r1, #0x64
	bl _s32_div_f
	add r4, r1, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp]
	add r0, r6, #0
	mov r2, #0x10
	bl sub_020759CC
	add r1, sp, #4
	strh r0, [r1, #2]
	ldr r1, [sp]
	add r0, r6, #0
	mov r2, #0x11
	bl sub_020759CC
	add r1, sp, #4
	strh r0, [r1]
	ldrh r2, [r1, #2]
	ldrh r0, [r1]
	cmp r2, r0
	bne _02077F7C
	cmp r2, #0
	beq _02077F7C
	add r2, sp, #4
	add r0, r5, #0
	mov r1, #6
	add r2, #2
	bl sub_02074B30
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02077F7C:
	ldr r0, _02077FAC ; =0x020F0574
	lsl r1, r7, #2
	ldrh r0, [r0, r1]
	cmp r4, r0
	blo _02077FA6
	ldr r0, _02077FB0 ; =0x020F0576
	ldrh r0, [r0, r1]
	cmp r4, r0
	add r2, sp, #4
	bhs _02077F9E
	add r0, r5, #0
	mov r1, #6
	add r2, #2
	bl sub_02074B30
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02077F9E:
	add r0, r5, #0
	mov r1, #6
	bl sub_02074B30
_02077FA6:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02077FAC: .word 0x020F0574
_02077FB0: .word 0x020F0576
	thumb_func_end sub_02077F0C

	thumb_func_start sub_02077FB4
sub_02077FB4: ; 0x02077FB4
	ldr r3, _02077FB8 ; =sub_02077FBC
	bx r3
	; .align 2, 0
_02077FB8: .word sub_02077FBC
	thumb_func_end sub_02077FB4

	thumb_func_start sub_02077FBC
sub_02077FBC: ; 0x02077FBC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0xae
	mov r2, #0
	add r5, r0, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	bl sub_02077FE4
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02077FBC

	thumb_func_start sub_02077FE4
sub_02077FE4: ; 0x02077FE4
	push {r4, lr}
	ldr r3, _02078038 ; =0x000001EE
	cmp r0, r3
	bne _02077FF0
	mov r0, #0
	pop {r4, pc}
_02077FF0:
	cmp r2, #0x20
	bhs _02077FFE
	mov r3, #1
	add r4, r3, #0
	lsl r4, r2
	mov r2, #0x1d
	b _02078028
_02077FFE:
	cmp r2, #0x40
	bhs _0207800E
	mov r3, #1
	sub r2, #0x20
	add r4, r3, #0
	lsl r4, r2
	mov r2, #0x1e
	b _02078028
_0207800E:
	cmp r2, #0x60
	bhs _0207801E
	mov r3, #1
	sub r2, #0x40
	add r4, r3, #0
	lsl r4, r2
	mov r2, #0x1f
	b _02078028
_0207801E:
	mov r3, #1
	sub r2, #0x60
	add r4, r3, #0
	lsl r4, r2
	mov r2, #0x20
_02078028:
	bl sub_020759CC
	tst r0, r4
	beq _02078034
	mov r0, #1
	pop {r4, pc}
_02078034:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02078038: .word 0x000001EE
	thumb_func_end sub_02077FE4

	thumb_func_start sub_0207803C
sub_0207803C: ; 0x0207803C
	ldr r3, _02078040 ; =sub_02078044
	bx r3
	; .align 2, 0
_02078040: .word sub_02078044
	thumb_func_end sub_0207803C

	thumb_func_start sub_02078044
sub_02078044: ; 0x02078044
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02073D20
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	mov r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074570
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	str r0, [sp]
	ldr r1, [sp]
	add r0, r4, #0
	mov r2, #0x18
	bl sub_020759CC
	str r0, [sp, #8]
	ldr r1, [sp]
	add r0, r4, #0
	mov r2, #0x19
	bl sub_020759CC
	str r0, [sp, #4]
	cmp r0, #0
	beq _020780AE
	mov r0, #1
	tst r0, r6
	beq _020780A2
	add r0, r5, #0
	mov r1, #0xa
	add r2, sp, #4
	bl sub_02074C60
	b _020780B8
_020780A2:
	add r0, r5, #0
	mov r1, #0xa
	add r2, sp, #8
	bl sub_02074C60
	b _020780B8
_020780AE:
	add r0, r5, #0
	mov r1, #0xa
	add r2, sp, #8
	bl sub_02074C60
_020780B8:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02073D48
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02078044

	thumb_func_start sub_020780C4
sub_020780C4: ; 0x020780C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r1, [sp]
	bl sub_02073C74
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_020775EC
	ldr r0, [sp, #4]
	ldr r1, [r5, #0]
	mov r2, #0
	bl sub_0207825C
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r5, #0]
	mov r2, #1
	bl sub_0207825C
	add r6, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r5, #0]
	mov r2, #2
	bl sub_0207825C
	add r7, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r5, #0]
	mov r2, #3
	bl sub_0207825C
	str r0, [sp, #8]
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0
	bl sub_0207825C
	str r0, [sp, #0xc]
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #1
	bl sub_0207825C
	str r0, [sp, #0x10]
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #2
	bl sub_0207825C
	str r0, [sp, #0x14]
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #3
	bl sub_0207825C
	ldr r2, [sp, #4]
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	ldrh r2, [r2, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_02078234
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
	ldr r0, [sp]
	str r0, [r5, #0]
	ldr r2, [sp, #0xc]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0xc]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0xc]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0xc]
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x10]
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x10]
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x10]
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x14]
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x14]
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x14]
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #0x14]
	mov r0, #0x10
_020781B6:
	ldr r1, [sp, #8]
	ldrh r2, [r1]
	add r1, r1, #2
	str r1, [sp, #8]
	ldr r1, [sp, #0x18]
	strh r2, [r1]
	add r1, r1, #2
	str r1, [sp, #0x18]
	sub r0, r0, #1
	bne _020781B6
	add r0, r5, #0
	add r0, #8
	mov r1, #0x80
	bl sub_0207823C
	strh r0, [r5, #6]
	add r0, r5, #0
	ldrh r2, [r5, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
	add r0, r5, #0
	ldr r2, [r5, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	ldr r0, [sp, #4]
	bl sub_020181C4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020780C4

	thumb_func_start sub_020781F8
sub_020781F8: ; 0x020781F8
	ldr r3, _02078204 ; =sub_02006AA4
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #2
	bx r3
	nop
_02078204: .word sub_02006AA4
	thumb_func_end sub_020781F8

	thumb_func_start sub_02078208
sub_02078208: ; 0x02078208
	push {r4, lr}
	add r4, r2, #0
	bl sub_02078740
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #2
	bl sub_02006AA4
	pop {r4, pc}
	thumb_func_end sub_02078208

	thumb_func_start sub_0207821C
sub_0207821C: ; 0x0207821C
	ldr r3, _02078228 ; =sub_02006AA4
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #0x22
	bx r3
	nop
_02078228: .word sub_02006AA4
	thumb_func_end sub_0207821C

	thumb_func_start sub_0207822C
sub_0207822C: ; 0x0207822C
	ldr r3, _02078230 ; =sub_0201D5D4
	bx r3
	; .align 2, 0
_02078230: .word sub_0201D5D4
	thumb_func_end sub_0207822C

	thumb_func_start sub_02078234
sub_02078234: ; 0x02078234
	ldr r3, _02078238 ; =sub_0201D600
	bx r3
	; .align 2, 0
_02078238: .word sub_0201D600
	thumb_func_end sub_02078234

	thumb_func_start sub_0207823C
sub_0207823C: ; 0x0207823C
	push {r3, r4}
	mov r3, #0
	add r2, r3, #0
	lsr r4, r1, #1
	beq _02078256
_02078246:
	ldrh r1, [r0]
	add r2, r2, #1
	add r0, r0, #2
	add r1, r3, r1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	cmp r2, r4
	blo _02078246
_02078256:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0207823C

	thumb_func_start sub_0207825C
sub_0207825C: ; 0x0207825C
	push {r3, lr}
	mov r3, #0x3e
	lsl r3, r3, #0xc
	and r3, r1
	lsr r3, r3, #0xd
	cmp r3, #0x1f
	bhi _020782BC
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02078276: ; jump table
	.short _020782B6 - _02078276 - 2 ; case 0
	.short _020782E8 - _02078276 - 2 ; case 1
	.short _02078318 - _02078276 - 2 ; case 2
	.short _02078348 - _02078276 - 2 ; case 3
	.short _02078378 - _02078276 - 2 ; case 4
	.short _020783A8 - _02078276 - 2 ; case 5
	.short _020783D8 - _02078276 - 2 ; case 6
	.short _0207840A - _02078276 - 2 ; case 7
	.short _0207843A - _02078276 - 2 ; case 8
	.short _0207846A - _02078276 - 2 ; case 9
	.short _0207849A - _02078276 - 2 ; case 10
	.short _020784CA - _02078276 - 2 ; case 11
	.short _020784FA - _02078276 - 2 ; case 12
	.short _0207852C - _02078276 - 2 ; case 13
	.short _0207855C - _02078276 - 2 ; case 14
	.short _0207858C - _02078276 - 2 ; case 15
	.short _020785BC - _02078276 - 2 ; case 16
	.short _020785EC - _02078276 - 2 ; case 17
	.short _0207861C - _02078276 - 2 ; case 18
	.short _0207864E - _02078276 - 2 ; case 19
	.short _0207867E - _02078276 - 2 ; case 20
	.short _020786AE - _02078276 - 2 ; case 21
	.short _020786DE - _02078276 - 2 ; case 22
	.short _0207870E - _02078276 - 2 ; case 23
	.short _020782B6 - _02078276 - 2 ; case 24
	.short _020782E8 - _02078276 - 2 ; case 25
	.short _02078318 - _02078276 - 2 ; case 26
	.short _02078348 - _02078276 - 2 ; case 27
	.short _02078378 - _02078276 - 2 ; case 28
	.short _020783A8 - _02078276 - 2 ; case 29
	.short _020783D8 - _02078276 - 2 ; case 30
	.short _0207840A - _02078276 - 2 ; case 31
_020782B6:
	add r0, #8
	cmp r2, #3
	bls _020782BE
_020782BC:
	b _0207873C
_020782BE:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020782CA: ; jump table
	.short _020782D2 - _020782CA - 2 ; case 0
	.short _020782D6 - _020782CA - 2 ; case 1
	.short _020782DC - _020782CA - 2 ; case 2
	.short _020782E2 - _020782CA - 2 ; case 3
_020782D2:
	add r1, r0, #0
	b _0207873C
_020782D6:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020782DC:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020782E2:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020782E8:
	add r0, #8
	cmp r2, #3
	bhi _020783DE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020782FA: ; jump table
	.short _02078302 - _020782FA - 2 ; case 0
	.short _02078306 - _020782FA - 2 ; case 1
	.short _0207830C - _020782FA - 2 ; case 2
	.short _02078312 - _020782FA - 2 ; case 3
_02078302:
	add r1, r0, #0
	b _0207873C
_02078306:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207830C:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_02078312:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_02078318:
	add r0, #8
	cmp r2, #3
	bhi _020783DE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207832A: ; jump table
	.short _02078332 - _0207832A - 2 ; case 0
	.short _02078336 - _0207832A - 2 ; case 1
	.short _0207833C - _0207832A - 2 ; case 2
	.short _02078342 - _0207832A - 2 ; case 3
_02078332:
	add r1, r0, #0
	b _0207873C
_02078336:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207833C:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_02078342:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_02078348:
	add r0, #8
	cmp r2, #3
	bhi _020783DE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207835A: ; jump table
	.short _02078362 - _0207835A - 2 ; case 0
	.short _02078366 - _0207835A - 2 ; case 1
	.short _0207836C - _0207835A - 2 ; case 2
	.short _02078372 - _0207835A - 2 ; case 3
_02078362:
	add r1, r0, #0
	b _0207873C
_02078366:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207836C:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_02078372:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_02078378:
	add r0, #8
	cmp r2, #3
	bhi _020783DE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207838A: ; jump table
	.short _02078392 - _0207838A - 2 ; case 0
	.short _02078396 - _0207838A - 2 ; case 1
	.short _0207839C - _0207838A - 2 ; case 2
	.short _020783A2 - _0207838A - 2 ; case 3
_02078392:
	add r1, r0, #0
	b _0207873C
_02078396:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207839C:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020783A2:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020783A8:
	add r0, #8
	cmp r2, #3
	bhi _020783DE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020783BA: ; jump table
	.short _020783C2 - _020783BA - 2 ; case 0
	.short _020783C6 - _020783BA - 2 ; case 1
	.short _020783CC - _020783BA - 2 ; case 2
	.short _020783D2 - _020783BA - 2 ; case 3
_020783C2:
	add r1, r0, #0
	b _0207873C
_020783C6:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020783CC:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020783D2:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020783D8:
	add r0, #8
	cmp r2, #3
	bls _020783E0
_020783DE:
	b _0207873C
_020783E0:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020783EC: ; jump table
	.short _020783F4 - _020783EC - 2 ; case 0
	.short _020783FA - _020783EC - 2 ; case 1
	.short _020783FE - _020783EC - 2 ; case 2
	.short _02078404 - _020783EC - 2 ; case 3
_020783F4:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020783FA:
	add r1, r0, #0
	b _0207873C
_020783FE:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_02078404:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207840A:
	add r0, #8
	cmp r2, #3
	bhi _02078500
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207841C: ; jump table
	.short _02078424 - _0207841C - 2 ; case 0
	.short _0207842A - _0207841C - 2 ; case 1
	.short _0207842E - _0207841C - 2 ; case 2
	.short _02078434 - _0207841C - 2 ; case 3
_02078424:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207842A:
	add r1, r0, #0
	b _0207873C
_0207842E:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_02078434:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207843A:
	add r0, #8
	cmp r2, #3
	bhi _02078500
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207844C: ; jump table
	.short _02078454 - _0207844C - 2 ; case 0
	.short _0207845A - _0207844C - 2 ; case 1
	.short _0207845E - _0207844C - 2 ; case 2
	.short _02078464 - _0207844C - 2 ; case 3
_02078454:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207845A:
	add r1, r0, #0
	b _0207873C
_0207845E:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_02078464:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207846A:
	add r0, #8
	cmp r2, #3
	bhi _02078500
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207847C: ; jump table
	.short _02078484 - _0207847C - 2 ; case 0
	.short _0207848A - _0207847C - 2 ; case 1
	.short _0207848E - _0207847C - 2 ; case 2
	.short _02078494 - _0207847C - 2 ; case 3
_02078484:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207848A:
	add r1, r0, #0
	b _0207873C
_0207848E:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_02078494:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207849A:
	add r0, #8
	cmp r2, #3
	bhi _02078500
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020784AC: ; jump table
	.short _020784B4 - _020784AC - 2 ; case 0
	.short _020784BA - _020784AC - 2 ; case 1
	.short _020784BE - _020784AC - 2 ; case 2
	.short _020784C4 - _020784AC - 2 ; case 3
_020784B4:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020784BA:
	add r1, r0, #0
	b _0207873C
_020784BE:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020784C4:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020784CA:
	add r0, #8
	cmp r2, #3
	bhi _02078500
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020784DC: ; jump table
	.short _020784E4 - _020784DC - 2 ; case 0
	.short _020784EA - _020784DC - 2 ; case 1
	.short _020784EE - _020784DC - 2 ; case 2
	.short _020784F4 - _020784DC - 2 ; case 3
_020784E4:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020784EA:
	add r1, r0, #0
	b _0207873C
_020784EE:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020784F4:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020784FA:
	add r0, #8
	cmp r2, #3
	bls _02078502
_02078500:
	b _0207873C
_02078502:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207850E: ; jump table
	.short _02078516 - _0207850E - 2 ; case 0
	.short _0207851C - _0207850E - 2 ; case 1
	.short _02078522 - _0207850E - 2 ; case 2
	.short _02078526 - _0207850E - 2 ; case 3
_02078516:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207851C:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_02078522:
	add r1, r0, #0
	b _0207873C
_02078526:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207852C:
	add r0, #8
	cmp r2, #3
	bhi _02078622
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207853E: ; jump table
	.short _02078546 - _0207853E - 2 ; case 0
	.short _0207854C - _0207853E - 2 ; case 1
	.short _02078552 - _0207853E - 2 ; case 2
	.short _02078556 - _0207853E - 2 ; case 3
_02078546:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207854C:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_02078552:
	add r1, r0, #0
	b _0207873C
_02078556:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207855C:
	add r0, #8
	cmp r2, #3
	bhi _02078622
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207856E: ; jump table
	.short _02078576 - _0207856E - 2 ; case 0
	.short _0207857C - _0207856E - 2 ; case 1
	.short _02078582 - _0207856E - 2 ; case 2
	.short _02078586 - _0207856E - 2 ; case 3
_02078576:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207857C:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_02078582:
	add r1, r0, #0
	b _0207873C
_02078586:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207858C:
	add r0, #8
	cmp r2, #3
	bhi _02078622
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207859E: ; jump table
	.short _020785A6 - _0207859E - 2 ; case 0
	.short _020785AC - _0207859E - 2 ; case 1
	.short _020785B2 - _0207859E - 2 ; case 2
	.short _020785B6 - _0207859E - 2 ; case 3
_020785A6:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020785AC:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020785B2:
	add r1, r0, #0
	b _0207873C
_020785B6:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020785BC:
	add r0, #8
	cmp r2, #3
	bhi _02078622
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020785CE: ; jump table
	.short _020785D6 - _020785CE - 2 ; case 0
	.short _020785DC - _020785CE - 2 ; case 1
	.short _020785E2 - _020785CE - 2 ; case 2
	.short _020785E6 - _020785CE - 2 ; case 3
_020785D6:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020785DC:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020785E2:
	add r1, r0, #0
	b _0207873C
_020785E6:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020785EC:
	add r0, #8
	cmp r2, #3
	bhi _02078622
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020785FE: ; jump table
	.short _02078606 - _020785FE - 2 ; case 0
	.short _0207860C - _020785FE - 2 ; case 1
	.short _02078612 - _020785FE - 2 ; case 2
	.short _02078616 - _020785FE - 2 ; case 3
_02078606:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207860C:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_02078612:
	add r1, r0, #0
	b _0207873C
_02078616:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207861C:
	add r0, #8
	cmp r2, #3
	bls _02078624
_02078622:
	b _0207873C
_02078624:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02078630: ; jump table
	.short _02078638 - _02078630 - 2 ; case 0
	.short _0207863E - _02078630 - 2 ; case 1
	.short _02078644 - _02078630 - 2 ; case 2
	.short _0207864A - _02078630 - 2 ; case 3
_02078638:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207863E:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_02078644:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207864A:
	add r1, r0, #0
	b _0207873C
_0207864E:
	add r0, #8
	cmp r2, #3
	bhi _0207873C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02078660: ; jump table
	.short _02078668 - _02078660 - 2 ; case 0
	.short _0207866E - _02078660 - 2 ; case 1
	.short _02078674 - _02078660 - 2 ; case 2
	.short _0207867A - _02078660 - 2 ; case 3
_02078668:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207866E:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_02078674:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207867A:
	add r1, r0, #0
	b _0207873C
_0207867E:
	add r0, #8
	cmp r2, #3
	bhi _0207873C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02078690: ; jump table
	.short _02078698 - _02078690 - 2 ; case 0
	.short _0207869E - _02078690 - 2 ; case 1
	.short _020786A4 - _02078690 - 2 ; case 2
	.short _020786AA - _02078690 - 2 ; case 3
_02078698:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_0207869E:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020786A4:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020786AA:
	add r1, r0, #0
	b _0207873C
_020786AE:
	add r0, #8
	cmp r2, #3
	bhi _0207873C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020786C0: ; jump table
	.short _020786C8 - _020786C0 - 2 ; case 0
	.short _020786CE - _020786C0 - 2 ; case 1
	.short _020786D4 - _020786C0 - 2 ; case 2
	.short _020786DA - _020786C0 - 2 ; case 3
_020786C8:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_020786CE:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_020786D4:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020786DA:
	add r1, r0, #0
	b _0207873C
_020786DE:
	add r0, #8
	cmp r2, #3
	bhi _0207873C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020786F0: ; jump table
	.short _020786F8 - _020786F0 - 2 ; case 0
	.short _020786FE - _020786F0 - 2 ; case 1
	.short _02078704 - _020786F0 - 2 ; case 2
	.short _0207870A - _020786F0 - 2 ; case 3
_020786F8:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_020786FE:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_02078704:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207870A:
	add r1, r0, #0
	b _0207873C
_0207870E:
	add r0, #8
	cmp r2, #3
	bhi _0207873C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02078720: ; jump table
	.short _02078728 - _02078720 - 2 ; case 0
	.short _0207872E - _02078720 - 2 ; case 1
	.short _02078734 - _02078720 - 2 ; case 2
	.short _0207873A - _02078720 - 2 ; case 3
_02078728:
	add r1, r0, #0
	add r1, #0x60
	b _0207873C
_0207872E:
	add r1, r0, #0
	add r1, #0x40
	b _0207873C
_02078734:
	add r1, r0, #0
	add r1, #0x20
	b _0207873C
_0207873A:
	add r1, r0, #0
_0207873C:
	add r0, r1, #0
	pop {r3, pc}
	thumb_func_end sub_0207825C

	thumb_func_start sub_02078740
sub_02078740: ; 0x02078740
	ldr r2, _020787C8 ; =0x000001DF
	cmp r0, r2
	bgt _02078764
	bge _020787B8
	add r3, r2, #0
	sub r3, #0x5d
	cmp r0, r3
	bgt _0207875A
	add r3, r2, #0
	sub r3, #0x5d
	cmp r0, r3
	beq _02078780
	bx lr
_0207875A:
	add r3, r2, #0
	sub r3, #0x42
	cmp r0, r3
	beq _0207878E
	bx lr
_02078764:
	add r3, r2, #0
	add r3, #8
	cmp r0, r3
	bgt _02078776
	add r3, r2, #0
	add r3, #8
	cmp r0, r3
	beq _0207879C
	bx lr
_02078776:
	add r3, r2, #0
	add r3, #0xd
	cmp r0, r3
	beq _020787AA
	bx lr
_02078780:
	cmp r1, #0
	beq _020787C4
	cmp r1, #3
	bgt _020787C4
	add r2, #0x10
	add r0, r1, r2
	bx lr
_0207878E:
	cmp r1, #0
	beq _020787C4
	cmp r1, #2
	bgt _020787C4
	add r2, #0x13
	add r0, r1, r2
	bx lr
_0207879C:
	cmp r1, #0
	beq _020787C4
	cmp r1, #1
	bgt _020787C4
	add r2, #0x15
	add r0, r1, r2
	bx lr
_020787AA:
	cmp r1, #0
	beq _020787C4
	cmp r1, #1
	bgt _020787C4
	add r2, #0x16
	add r0, r1, r2
	bx lr
_020787B8:
	cmp r1, #0
	beq _020787C4
	cmp r1, #5
	bgt _020787C4
	add r2, #0x17
	add r0, r1, r2
_020787C4:
	bx lr
	nop
_020787C8: .word 0x000001DF
	thumb_func_end sub_02078740

	thumb_func_start sub_020787CC
sub_020787CC: ; 0x020787CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #1
	cmp r5, #0x20
	blt _020787DA
	bl sub_02022974
_020787DA:
	mov r0, #0
	cmp r5, #0
	ble _020787E8
_020787E0:
	add r0, r0, #1
	lsl r4, r4, #1
	cmp r0, r5
	blt _020787E0
_020787E8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020787CC

	thumb_func_start sub_020787EC
sub_020787EC: ; 0x020787EC
	mov r3, #1
	mov r2, #0
_020787F0:
	add r1, r0, #0
	tst r1, r3
	bne _020787FE
	add r2, r2, #1
	lsl r3, r3, #1
	cmp r2, #0x20
	blt _020787F0
_020787FE:
	add r0, r2, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020787EC

	thumb_func_start sub_02078804
sub_02078804: ; 0x02078804
	ldr r3, _02078820 ; =0x020F05BE
	mov r2, #0
_02078808:
	ldrh r1, [r3]
	cmp r0, r1
	bne _02078812
	mov r0, #1
	bx lr
_02078812:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0x12
	blo _02078808
	mov r0, #0
	bx lr
	nop
_02078820: .word 0x020F05BE
	thumb_func_end sub_02078804

	thumb_func_start sub_02078824
sub_02078824: ; 0x02078824
	cmp r0, #0x12
	blo _0207882A
	mov r0, #0
_0207882A:
	lsl r1, r0, #1
	ldr r0, _02078834 ; =0x020F05BE
	ldrh r0, [r0, r1]
	bx lr
	nop
_02078834: .word 0x020F05BE
	thumb_func_end sub_02078824

	thumb_func_start sub_02078838
sub_02078838: ; 0x02078838
	push {r3, lr}
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02078804
	pop {r3, pc}
	thumb_func_end sub_02078838

	thumb_func_start sub_0207884C
sub_0207884C: ; 0x0207884C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_02025F20
	str r0, [sp]
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074570
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02025F30
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x9d
	mov r2, #0
	bl sub_02074570
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02025F04
	add r7, r0, #0
	mov r0, #8
	add r1, r6, #0
	bl sub_02023790
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x91
	add r2, r6, #0
	mov r4, #0
	bl sub_02074570
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _020788BC
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _020788BC
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02023BE0
	cmp r0, #0
	bne _020788BC
	mov r4, #1
_020788BC:
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207884C

	thumb_func_start sub_020788D0
sub_020788D0: ; 0x020788D0
	push {r3, lr}
	cmp r0, #0x3f
	bgt _020788E8
	bge _02078920
	cmp r0, #1
	bgt _0207892C
	cmp r0, #0
	blt _0207892C
	beq _0207893A
	cmp r0, #1
	beq _0207893A
	b _0207892C
_020788E8:
	cmp r0, #0x5a
	bgt _020788F0
	beq _02078924
	b _0207892C
_020788F0:
	add r1, r0, #0
	sub r1, #0x5b
	cmp r1, #0xd
	bhi _0207892C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02078904: ; jump table
	.short _02078924 - _02078904 - 2 ; case 0
	.short _02078924 - _02078904 - 2 ; case 1
	.short _02078924 - _02078904 - 2 ; case 2
	.short _02078924 - _02078904 - 2 ; case 3
	.short _0207892C - _02078904 - 2 ; case 4
	.short _0207892C - _02078904 - 2 ; case 5
	.short _0207892C - _02078904 - 2 ; case 6
	.short _0207892C - _02078904 - 2 ; case 7
	.short _0207892C - _02078904 - 2 ; case 8
	.short _0207892C - _02078904 - 2 ; case 9
	.short _0207892C - _02078904 - 2 ; case 10
	.short _0207892C - _02078904 - 2 ; case 11
	.short _02078928 - _02078904 - 2 ; case 12
	.short _02078928 - _02078904 - 2 ; case 13
_02078920:
	mov r0, #2
	pop {r3, pc}
_02078924:
	sub r0, #0x57
	pop {r3, pc}
_02078928:
	sub r0, #0x5f
	pop {r3, pc}
_0207892C:
	bl sub_020793AC
	cmp r0, #1
	bne _02078938
	mov r0, #1
	pop {r3, pc}
_02078938:
	mov r0, #0
_0207893A:
	pop {r3, pc}
	thumb_func_end sub_020788D0

	thumb_func_start sub_0207893C
sub_0207893C: ; 0x0207893C
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r0, #0
	add r1, sp, #0
	strb r0, [r1]
	add r1, sp, #0
	add r1, #1
	mov r2, #0x18
	bl MIi_CpuClearFast
	add r0, r4, #0
	mov r1, #0xa2
	add r2, sp, #0
	bl sub_02074B30
	add r2, sp, #0
	add r0, r4, #0
	mov r1, #0xab
	add r2, #1
	bl sub_02074B30
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end sub_0207893C

	thumb_func_start sub_0207896C
sub_0207896C: ; 0x0207896C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02073D20
	mov r4, #0
	str r0, [sp]
	add r7, r4, #0
	add r6, sp, #4
_0207897E:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	add r2, r7, #0
	bl sub_02074570
	cmp r0, #0
	beq _020789A8
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x42
	mov r2, #0
	bl sub_02074570
	add r1, r4, #0
	strb r0, [r6]
	add r0, r5, #0
	add r1, #0x3a
	add r2, sp, #4
	bl sub_02074C60
_020789A8:
	add r4, r4, #1
	cmp r4, #4
	blt _0207897E
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02073D48
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207896C

	thumb_func_start sub_020789BC
sub_020789BC: ; 0x020789BC
	push {r4, r5, r6, lr}
	sub sp, #0x60
	add r4, r1, #0
	mov r5, #1
	add r1, r3, #0
	add r6, r2, #0
	tst r1, r5
	beq _020789CE
	mov r5, #0
_020789CE:
	add r1, sp, #4
	str r1, [sp]
	mov r3, #0x59
	add r2, r6, #0
	mov r1, #0
	mul r2, r3
	bl sub_02006DC8
	mov r0, #0x2b
	add r1, sp, #4
	mul r0, r5
	add r0, r1, r0
	add r0, r0, #3
	add r1, r4, #0
	mov r2, #0x28
	bl MI_CpuCopy8
	add sp, #0x60
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020789BC

	thumb_func_start sub_020789F4
sub_020789F4: ; 0x020789F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r5, r1, #0
	ldr r1, [sp, #0x78]
	add r6, r2, #0
	add r2, r3, #0
	cmp r1, #2
	beq _02078A08
	mov r4, #1
	b _02078A0A
_02078A08:
	mov r4, #0
_02078A0A:
	add r1, sp, #8
	add r1, #2
	str r1, [sp]
	mov r7, #0x59
	add r3, r2, #0
	mul r3, r7
	add r2, r3, #0
	mov r1, #0
	add r3, r7, #0
	bl sub_02006DC8
	mov r0, #0x2b
	add r1, sp, #8
	ldr r3, [sp, #0x80]
	mul r0, r4
	add r1, #3
	ldrb r2, [r1, r0]
	add r1, sp, #4
	lsl r3, r3, #0x18
	strh r2, [r1]
	add r2, sp, #0xc
	ldrb r0, [r2, r0]
	add r2, sp, #4
	lsr r3, r3, #0x18
	strh r0, [r1, #2]
	ldr r0, [sp, #0x7c]
	strb r0, [r1, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02015FCC
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020789F4

	thumb_func_start sub_02078A4C
sub_02078A4C: ; 0x02078A4C
	push {r4, r5, r6, lr}
	sub sp, #0x60
	add r4, r1, #0
	mov r5, #1
	add r1, r3, #0
	add r6, r2, #0
	tst r1, r5
	beq _02078A5E
	mov r5, #0
_02078A5E:
	add r1, sp, #4
	str r1, [sp]
	mov r3, #0x59
	add r2, r6, #0
	mov r1, #0
	mul r2, r3
	bl sub_02006DC8
	mov r0, #0x2b
	add r1, r5, #0
	mul r1, r0
	add r0, sp, #4
	ldrb r0, [r0, r1]
	strb r0, [r4]
	add sp, #0x60
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02078A4C

	thumb_func_start sub_02078A80
sub_02078A80: ; 0x02078A80
	push {r3, r4, r5, lr}
	sub sp, #0x60
	mov r3, #0x59
	add r5, r2, #0
	add r4, r1, #0
	add r1, sp, #4
	mul r5, r3
	str r1, [sp]
	mov r1, #0
	add r2, r5, #0
	bl sub_02006DC8
	add r1, sp, #0x44
	mov r0, #0x16
	ldrsb r0, [r1, r0]
	strb r0, [r4]
	add sp, #0x60
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02078A80

	thumb_func_start sub_02078AA4
sub_02078AA4: ; 0x02078AA4
	push {r3, r4, r5, lr}
	sub sp, #0x60
	mov r3, #0x59
	add r5, r2, #0
	add r4, r1, #0
	add r1, sp, #4
	mul r5, r3
	str r1, [sp]
	mov r1, #0
	add r2, r5, #0
	bl sub_02006DC8
	add r1, sp, #0x44
	mov r0, #0x17
	ldrsb r0, [r1, r0]
	strb r0, [r4]
	add sp, #0x60
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02078AA4

	thumb_func_start sub_02078AC8
sub_02078AC8: ; 0x02078AC8
	push {r3, r4, r5, lr}
	sub sp, #0x60
	mov r3, #0x59
	add r5, r2, #0
	add r4, r1, #0
	add r1, sp, #4
	mul r5, r3
	str r1, [sp]
	mov r1, #0
	add r2, r5, #0
	bl sub_02006DC8
	add r0, sp, #0x44
	ldrb r0, [r0, #0x18]
	strb r0, [r4]
	add sp, #0x60
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02078AC8

	thumb_func_start sub_02078AEC
sub_02078AEC: ; 0x02078AEC
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02078AFE
	add sp, #0x20
	mov r0, #0
	pop {r4, r5, r6, pc}
_02078AFE:
	mov r0, #0x98
	add r1, r2, #0
	bl sub_02006C24
	mov r1, #1
	sub r5, r5, #1
	str r1, [sp, #4]
	add r1, sp, #8
	str r1, [sp]
	mov r3, #0x18
	add r2, r5, #0
	mov r1, #0
	mul r2, r3
	add r6, r0, #0
	bl sub_02006DC8
	add r0, r4, #0
	mov r1, #0xa2
	add r2, sp, #4
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0xab
	add r2, sp, #8
	bl sub_02074B30
	add r0, r6, #0
	bl sub_02006CA8
	mov r0, #1
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02078AEC

	thumb_func_start sub_02078B40
sub_02078B40: ; 0x02078B40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldrh r0, [r0, #4]
	add r4, r1, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02078B6C
	ldr r2, [sp]
	ldr r0, [sp]
	ldr r2, [r2, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_02078234
	ldr r2, [sp]
	ldr r0, [sp]
	ldrh r2, [r2, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_02078234
_02078B6C:
	ldr r0, [sp]
	bl sub_02076B10
	add r6, r0, #0
	ldr r1, [r6, #0]
	mov r2, #0
	bl sub_0207825C
	add r5, r0, #0
	ldr r1, [r6, #0]
	add r0, r6, #0
	mov r2, #1
	bl sub_0207825C
	str r0, [sp, #4]
	ldr r1, [r6, #0]
	add r0, r6, #0
	mov r2, #2
	bl sub_0207825C
	add r7, r0, #0
	ldr r1, [r6, #0]
	add r0, r6, #0
	mov r2, #3
	bl sub_0207825C
	mov ip, r0
	ldr r0, [r6, #0]
	ldr r3, [sp, #4]
	str r0, [r4, #0]
	ldrh r1, [r4, #4]
	mov r0, #1
	mov r2, #0
	bic r1, r0
	strh r1, [r4, #4]
	ldrh r1, [r4, #4]
	mov r0, #2
	bic r1, r0
	strh r1, [r4, #4]
	ldrh r0, [r4, #4]
	mov r1, #4
	bic r0, r1
	ldrh r1, [r6, #4]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	orr r0, r1
	strh r0, [r4, #4]
	ldrh r0, [r5]
	strh r0, [r4, #6]
	ldrh r0, [r5, #2]
	strh r0, [r4, #8]
	ldr r0, [r5, #4]
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	str r0, [r4, #0x10]
	ldrb r0, [r5, #0xc]
	strb r0, [r4, #0x14]
	ldrb r0, [r5, #0xd]
	strb r0, [r4, #0x15]
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x16]
	ldrb r0, [r5, #0x11]
	strb r0, [r4, #0x17]
	ldrb r0, [r5, #0x12]
	strb r0, [r4, #0x18]
	ldrb r0, [r5, #0x13]
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #0x14]
	strb r0, [r4, #0x1a]
	ldrb r0, [r5, #0x15]
	strb r0, [r4, #0x1b]
	ldrb r1, [r5, #0xf]
	add r0, r4, #0
	add r0, #0x59
	strb r1, [r0]
	add r5, r4, #0
_02078C08:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r5, #0x1c]
	ldr r0, [sp, #4]
	add r5, r5, #2
	add r6, r0, r2
	add r0, r4, r2
	ldrb r1, [r6, #8]
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, r2
	ldrb r1, [r6, #0xc]
	add r0, #0x28
	add r2, r2, #1
	strb r1, [r0]
	cmp r2, #4
	blt _02078C08
	ldr r0, [r4, #0x2c]
	mov r1, #0x1f
	bic r0, r1
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	lsl r1, r1, #0x1b
	lsr r2, r1, #0x1b
	mov r1, #0x1f
	and r1, r2
	orr r1, r0
	ldr r0, _02078DF0 ; =0xFFFFFC1F
	str r1, [r4, #0x2c]
	and r0, r1
	ldr r1, [sp, #4]
	mov r2, #1
	ldr r1, [r1, #0x10]
	lsl r1, r1, #0x16
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	orr r1, r0
	ldr r0, _02078DF4 ; =0xFFFF83FF
	str r1, [r4, #0x2c]
	and r0, r1
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x11
	orr r1, r0
	ldr r0, _02078DF8 ; =0xFFF07FFF
	str r1, [r4, #0x2c]
	and r0, r1
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, _02078DFC ; =0xFE0FFFFF
	str r1, [r4, #0x2c]
	and r0, r1
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	lsl r1, r1, #7
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #7
	orr r1, r0
	ldr r0, _02078E00 ; =0xC1FFFFFF
	str r1, [r4, #0x2c]
	and r0, r1
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	lsl r1, r1, #2
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #2
	orr r1, r0
	ldr r0, _02078E04 ; =0xBFFFFFFF
	str r1, [r4, #0x2c]
	and r0, r1
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	lsl r1, r1, #1
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	lsr r1, r1, #1
	orr r1, r0
	ldr r0, _02078E08 ; =0x7FFFFFFF
	str r1, [r4, #0x2c]
	and r0, r1
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	orr r0, r1
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	add r1, r4, #0
	add r1, #0x30
	bic r0, r2
	ldr r2, [sp, #4]
	ldrb r2, [r2, #0x18]
	lsl r2, r2, #0x1f
	lsr r3, r2, #0x1f
	mov r2, #1
	and r2, r3
	orr r2, r0
	add r0, r4, #0
	add r0, #0x30
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	mov r2, #6
	bic r0, r2
	ldr r2, [sp, #4]
	ldrb r2, [r2, #0x18]
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1e
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1d
	orr r2, r0
	add r0, r4, #0
	add r0, #0x30
	strb r2, [r0]
	ldrb r0, [r1]
	mov r2, #0xf8
	bic r0, r2
	ldr r2, [sp, #4]
	ldrb r2, [r2, #0x18]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1b
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x18
	orr r0, r2
	strb r0, [r1]
	mov r2, #0
	add r1, r4, #0
_02078D22:
	ldrh r0, [r7]
	add r2, r2, #1
	add r7, r7, #2
	strh r0, [r1, #0x32]
	add r1, r1, #2
	cmp r2, #0xb
	blt _02078D22
	mov r5, #0
	mov r2, ip
	add r3, r4, #0
_02078D36:
	ldrh r1, [r2]
	add r0, r3, #0
	add r0, #0x48
	add r5, r5, #1
	strh r1, [r0]
	add r2, r2, #2
	add r3, r3, #2
	cmp r5, #8
	blt _02078D36
	mov r0, ip
	ldrb r1, [r0, #0x1b]
	add r0, r4, #0
	add r0, #0x58
	strb r1, [r0]
	ldr r0, [sp]
	add r0, #0x88
	ldr r0, [r0, #0]
	str r0, [r4, #0x5c]
	ldr r0, [sp]
	add r0, #0x8c
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x60
	strb r1, [r0]
	ldr r0, [sp]
	add r0, #0x8d
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x61
	strb r1, [r0]
	ldr r0, [sp]
	add r0, #0x8e
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x62
	strh r1, [r0]
	ldr r0, [sp]
	add r0, #0x90
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	strh r1, [r0]
	ldr r0, [sp]
	add r0, #0x92
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	strh r1, [r0]
	ldr r0, [sp]
	add r0, #0x94
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x68
	strh r1, [r0]
	ldr r0, [sp]
	add r0, #0x96
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	strh r1, [r0]
	ldr r0, [sp]
	add r0, #0x98
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6c
	strh r1, [r0]
	ldr r0, [sp]
	add r4, #0x6e
	add r0, #0x9a
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02078DEA
	ldr r2, [sp]
	ldr r0, [sp]
	ldr r2, [r2, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	ldr r2, [sp]
	ldr r0, [sp]
	ldrh r2, [r2, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
_02078DEA:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02078DF0: .word 0xFFFFFC1F
_02078DF4: .word 0xFFFF83FF
_02078DF8: .word 0xFFF07FFF
_02078DFC: .word 0xFE0FFFFF
_02078E00: .word 0xC1FFFFFF
_02078E04: .word 0xBFFFFFFF
_02078E08: .word 0x7FFFFFFF
	thumb_func_end sub_02078B40

	thumb_func_start sub_02078E0C
sub_02078E0C: ; 0x02078E0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0
	mov r2, #0xec
	bl MIi_CpuClearFast
	ldr r0, [sp]
	bl sub_02076B10
	ldr r1, [r4, #0]
	str r0, [sp, #4]
	mov r2, #0
	bl sub_0207825C
	add r5, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r4, #0]
	mov r2, #1
	bl sub_0207825C
	add r6, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r4, #0]
	mov r2, #2
	bl sub_0207825C
	add r7, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r4, #0]
	mov r2, #3
	bl sub_0207825C
	mov ip, r0
	ldr r1, [r4, #0]
	ldr r0, [sp, #4]
	add r2, r4, #0
	str r1, [r0, #0]
	ldrh r0, [r0, #4]
	mov r1, #1
	add r3, r6, #0
	bic r0, r1
	ldr r1, [sp, #4]
	strh r0, [r1, #4]
	add r0, r1, #0
	ldrh r0, [r0, #4]
	mov r1, #2
	bic r0, r1
	ldr r1, [sp, #4]
	strh r0, [r1, #4]
	add r0, r1, #0
	ldrh r0, [r0, #4]
	mov r1, #4
	bic r0, r1
	ldrh r1, [r4, #4]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	orr r1, r0
	ldr r0, [sp, #4]
	strh r1, [r0, #4]
	ldrh r0, [r4, #6]
	mov r1, #0
	strh r0, [r5]
	ldrh r0, [r4, #8]
	strh r0, [r5, #2]
	ldr r0, [r4, #0xc]
	str r0, [r5, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #8]
	ldrb r0, [r4, #0x14]
	strb r0, [r5, #0xc]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0xd]
	ldrb r0, [r4, #0x16]
	strb r0, [r5, #0x10]
	ldrb r0, [r4, #0x17]
	strb r0, [r5, #0x11]
	ldrb r0, [r4, #0x18]
	strb r0, [r5, #0x12]
	ldrb r0, [r4, #0x19]
	strb r0, [r5, #0x13]
	ldrb r0, [r4, #0x1a]
	strb r0, [r5, #0x14]
	ldrb r0, [r4, #0x1b]
	strb r0, [r5, #0x15]
	add r0, r4, #0
	add r0, #0x59
	ldrb r0, [r0]
	strb r0, [r5, #0xf]
_02078EC4:
	ldrh r0, [r2, #0x1c]
	add r5, r4, r1
	add r5, #0x24
	strh r0, [r3]
	ldrb r5, [r5]
	add r0, r6, r1
	add r2, r2, #2
	strb r5, [r0, #8]
	add r5, r4, r1
	add r5, #0x28
	ldrb r5, [r5]
	add r1, r1, #1
	add r3, r3, #2
	strb r5, [r0, #0xc]
	cmp r1, #4
	blt _02078EC4
	ldr r0, [r6, #0x10]
	mov r1, #0x1f
	bic r0, r1
	ldr r1, [r4, #0x2c]
	lsl r1, r1, #0x1b
	lsr r2, r1, #0x1b
	mov r1, #0x1f
	and r1, r2
	orr r1, r0
	ldr r0, _02079094 ; =0xFFFFFC1F
	str r1, [r6, #0x10]
	and r0, r1
	ldr r1, [r4, #0x2c]
	add r2, r6, #0
	lsl r1, r1, #0x16
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	orr r1, r0
	ldr r0, _02079098 ; =0xFFFF83FF
	str r1, [r6, #0x10]
	and r0, r1
	ldr r1, [r4, #0x2c]
	add r2, #0x18
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x11
	orr r1, r0
	ldr r0, _0207909C ; =0xFFF07FFF
	str r1, [r6, #0x10]
	and r0, r1
	ldr r1, [r4, #0x2c]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, _020790A0 ; =0xFE0FFFFF
	str r1, [r6, #0x10]
	and r0, r1
	ldr r1, [r4, #0x2c]
	lsl r1, r1, #7
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #7
	orr r1, r0
	ldr r0, _020790A4 ; =0xC1FFFFFF
	str r1, [r6, #0x10]
	and r0, r1
	ldr r1, [r4, #0x2c]
	lsl r1, r1, #2
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #2
	orr r1, r0
	ldr r0, _020790A8 ; =0xBFFFFFFF
	str r1, [r6, #0x10]
	and r0, r1
	ldr r1, [r4, #0x2c]
	lsl r1, r1, #1
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	lsr r1, r1, #1
	orr r1, r0
	ldr r0, _020790AC ; =0x7FFFFFFF
	str r1, [r6, #0x10]
	and r0, r1
	ldr r1, [r4, #0x2c]
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	orr r0, r1
	str r0, [r6, #0x10]
	ldrb r3, [r6, #0x18]
	mov r0, #1
	bic r3, r0
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1f
	mov r0, #1
	and r0, r1
	orr r0, r3
	strb r0, [r6, #0x18]
	ldrb r0, [r6, #0x18]
	mov r1, #6
	bic r0, r1
	add r1, r4, #0
	add r1, #0x30
	ldrb r1, [r1]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1e
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1d
	orr r0, r1
	strb r0, [r6, #0x18]
	ldrb r0, [r2]
	mov r1, #0xf8
	bic r0, r1
	add r1, r4, #0
	add r1, #0x30
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r2]
	mov r2, #0
	add r1, r4, #0
_02078FC2:
	ldrh r0, [r1, #0x32]
	add r2, r2, #1
	add r1, r1, #2
	strh r0, [r7]
	add r7, r7, #2
	cmp r2, #0xb
	blt _02078FC2
	mov r3, #0
	add r1, r4, #0
	mov r2, ip
_02078FD6:
	add r0, r1, #0
	add r0, #0x48
	ldrh r0, [r0]
	add r3, r3, #1
	add r1, r1, #2
	strh r0, [r2]
	add r2, r2, #2
	cmp r3, #8
	blt _02078FD6
	add r0, r4, #0
	add r0, #0x58
	ldrb r1, [r0]
	mov r0, ip
	ldr r2, [sp]
	strb r1, [r0, #0x1b]
	ldr r0, [sp]
	ldr r1, [r4, #0x5c]
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x60
	ldrb r1, [r0]
	ldr r0, [sp]
	add r0, #0x8c
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x61
	ldrb r1, [r0]
	ldr r0, [sp]
	add r0, #0x8d
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x62
	ldrh r1, [r0]
	ldr r0, [sp]
	add r0, #0x8e
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrh r1, [r0]
	ldr r0, [sp]
	add r0, #0x90
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrh r1, [r0]
	ldr r0, [sp]
	add r0, #0x92
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x68
	ldrh r1, [r0]
	ldr r0, [sp]
	add r0, #0x94
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrh r1, [r0]
	ldr r0, [sp]
	add r0, #0x96
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x6c
	ldrh r1, [r0]
	ldr r0, [sp]
	add r4, #0x6e
	add r0, #0x98
	strh r1, [r0]
	ldr r0, [sp]
	ldrh r1, [r4]
	add r0, #0x9a
	strh r1, [r0]
	ldr r0, [sp]
	ldr r2, [r2, #0]
	add r0, #0x88
	mov r1, #0x64
	bl sub_0207822C
	ldr r0, [sp]
	mov r1, #0x80
	add r0, #8
	bl sub_0207823C
	ldr r1, [sp]
	ldr r2, [sp]
	strh r0, [r1, #6]
	add r0, r1, #0
	ldrh r2, [r2, #6]
	add r0, #8
	mov r1, #0x80
	bl sub_0207822C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02079094: .word 0xFFFFFC1F
_02079098: .word 0xFFFF83FF
_0207909C: .word 0xFFF07FFF
_020790A0: .word 0xFE0FFFFF
_020790A4: .word 0xC1FFFFFF
_020790A8: .word 0xBFFFFFFF
_020790AC: .word 0x7FFFFFFF
	thumb_func_end sub_02078E0C

	.rodata


	.global Unk_020F0574
Unk_020F0574: ; 0x020F0574
	.incbin "incbin/arm9_rodata.bin", 0xB934, 0xB93C - 0xB934

	.global Unk_020F057C
Unk_020F057C: ; 0x020F057C
	.incbin "incbin/arm9_rodata.bin", 0xB93C, 0xB948 - 0xB93C

	.global Unk_020F0588
Unk_020F0588: ; 0x020F0588
	.incbin "incbin/arm9_rodata.bin", 0xB948, 0xB960 - 0xB948

	.global Unk_020F05A0
Unk_020F05A0: ; 0x020F05A0
	.incbin "incbin/arm9_rodata.bin", 0xB960, 0xB97E - 0xB960

	.global Unk_020F05BE
Unk_020F05BE: ; 0x020F05BE
	.incbin "incbin/arm9_rodata.bin", 0xB97E, 0xB9A4 - 0xB97E

	.global Unk_020F05E4
Unk_020F05E4: ; 0x020F05E4
	.incbin "incbin/arm9_rodata.bin", 0xB9A4, 0xB9D8 - 0xB9A4

	.global Unk_020F0618
Unk_020F0618: ; 0x020F0618
	.incbin "incbin/arm9_rodata.bin", 0xB9D8, 0xBA55 - 0xB9D8

	.global Unk_020F0695
Unk_020F0695: ; 0x020F0695
	.incbin "incbin/arm9_rodata.bin", 0xBA55, 0x7D



	.data


	.global Unk_02100BB0
Unk_02100BB0: ; 0x02100BB0
	.incbin "incbin/arm9_data.bin", 0x1ED0, 0x1B



	.bss


	.global Unk_021C089C
Unk_021C089C: ; 0x021C089C
	.space 0x194

