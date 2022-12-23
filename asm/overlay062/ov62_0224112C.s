	.include "macros/function.inc"
	.include "overlay062/ov62_0224112C.inc"

	

	.text


	thumb_func_start ov62_0224112C
ov62_0224112C: ; 0x0224112C
	add r0, #0x68
	bx lr
	thumb_func_end ov62_0224112C

	thumb_func_start ov62_02241130
ov62_02241130: ; 0x02241130
	push {r4, lr}
	sub sp, #0x40
	add r4, r0, #0
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02025CCC
	bl sub_02025D74
	str r0, [sp]
	mov r0, #0x66
	str r0, [sp, #4]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0
	str r0, [sp, #8]
	ldr r0, _02241190 ; =ov62_02239D34
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02241194 ; =ov62_02239D38
	str r4, [sp, #0x3c]
	str r0, [sp, #0x14]
	ldr r0, _02241198 ; =ov62_0223CAA4
	add r4, #0x68
	str r0, [sp, #0x18]
	ldr r0, _0224119C ; =ov62_0223CAA8
	str r0, [sp, #0x1c]
	ldr r0, _022411A0 ; =ov62_0223DF10
	str r0, [sp, #0x20]
	ldr r0, _022411A4 ; =ov62_0223DF4C
	str r0, [sp, #0x24]
	ldr r0, _022411A8 ; =ov62_02246944
	str r0, [sp, #0x28]
	ldr r0, _022411AC ; =ov62_02233828
	str r0, [sp, #0x2c]
	ldr r0, _022411B0 ; =ov62_02246968
	str r0, [sp, #0x30]
	ldr r0, _022411B4 ; =ov62_0224699C
	str r0, [sp, #0x34]
	mov r0, #0
	str r0, [sp, #0x38]
	add r0, r4, #0
	bl ov61_0222B008
	add sp, #0x40
	pop {r4, pc}
	; .align 2, 0
_02241190: .word ov62_02239D34
_02241194: .word ov62_02239D38
_02241198: .word ov62_0223CAA4
_0224119C: .word ov62_0223CAA8
_022411A0: .word ov62_0223DF10
_022411A4: .word ov62_0223DF4C
_022411A8: .word ov62_02246944
_022411AC: .word ov62_02233828
_022411B0: .word ov62_02246968
_022411B4: .word ov62_0224699C
	thumb_func_end ov62_02241130

	thumb_func_start ov62_022411B8
ov62_022411B8: ; 0x022411B8
	push {r3, lr}
	mov r1, #0x42
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _022411C8
	mov r0, #0
	pop {r3, pc}
_022411C8:
	bl ov62_0224112C
	bl ov61_0222BBBC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_022411B8

	thumb_func_start ov62_022411D4
ov62_022411D4: ; 0x022411D4
	push {r3, lr}
	mov r1, #0x42
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _022411E8
	bl ov62_0224112C
	bl ov61_0222B57C
_022411E8:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_022411D4

	thumb_func_start ov62_022411EC
ov62_022411EC: ; 0x022411EC
	push {r3, lr}
	mov r1, #0x42
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02241200
	bl ov62_0224112C
	bl ov61_0222B0F0
_02241200:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_022411EC