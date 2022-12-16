	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov104_0223D9E4
ov104_0223D9E4: ; 0x0223D9E4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x5e
	mov r1, #0xc
	bl sub_02018144
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r5, #0
	bl ov104_0223DA40
	str r0, [r4, #0]
	add r0, r6, #0
	bl ov104_0223DBB8
	str r0, [r4, #4]
	mov r0, #9
	str r0, [sp]
	ldr r0, _0223DA24 ; =0x04000050
	mov r1, #4
	mov r2, #0x1f
	mov r3, #8
	bl sub_020BF55C
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223DA24: .word 0x04000050
	thumb_func_end ov104_0223D9E4

	thumb_func_start ov104_0223DA28
ov104_0223DA28: ; 0x0223DA28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov104_0223DB34
	ldr r0, [r4, #4]
	bl ov104_0223DC04
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov104_0223DA28

	thumb_func_start ov104_0223DA40
ov104_0223DA40: ; 0x0223DA40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r1, _0223DB1C ; =0x0002200C
	add r4, r0, #0
	mov r0, #0x5e
	bl sub_02018144
	ldr r2, _0223DB1C ; =0x0002200C
	str r0, [sp, #8]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, [sp, #8]
	mov r1, #0x5e
	str r4, [r0, #4]
	mov r0, #0x96
	bl sub_02006C24
	ldr r5, [sp, #8]
	ldr r4, _0223DB20 ; =0x022418B0
	str r0, [sp, #4]
	mov r6, #0
	add r5, #8
_0223DA6E:
	mov r0, #0x5e
	str r0, [sp]
	ldrh r1, [r4]
	ldr r0, [sp, #4]
	mov r2, #1
	add r3, sp, #0x10
	bl sub_020071D0
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	mov r2, #1
	add r0, #0xc
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl sub_020C4B68
	add r0, r7, #0
	bl sub_020181C4
	mov r0, #1
	lsl r0, r0, #0xc
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, r0
	cmp r6, #2
	blt _0223DA6E
	ldr r0, [sp, #4]
	bl sub_02006CA8
	mov r0, #0x96
	mov r1, #0x5e
	bl sub_02006C24
	mov r1, #0x5e
	str r1, [sp]
	mov r1, #0xe
	mov r2, #1
	add r3, sp, #0xc
	add r4, r0, #0
	bl sub_020071B4
	ldr r3, [sp, #0xc]
	add r5, r0, #0
	ldr r2, _0223DB24 ; =0x00002008
	ldr r1, [sp, #8]
	ldr r0, [r3, #0x14]
	add r1, r1, r2
	ldr r2, [r3, #0x10]
	bl sub_020C4B68
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0x5e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #1
	add r3, sp, #0xc
	bl sub_020071B4
	ldr r3, [sp, #0xc]
	add r5, r0, #0
	ldr r2, _0223DB28 ; =0x00012008
	ldr r1, [sp, #8]
	ldr r0, [r3, #0x14]
	add r1, r1, r2
	ldr r2, [r3, #0x10]
	bl sub_020C4B68
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, _0223DB2C ; =ov104_0223DB48
	ldr r1, [sp, #8]
	ldr r2, _0223DB30 ; =0x0001368C
	bl sub_0200D9E8
	ldr r1, [sp, #8]
	str r0, [r1, #0]
	add r0, r1, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223DB1C: .word 0x0002200C
_0223DB20: .word 0x022418B0
_0223DB24: .word 0x00002008
_0223DB28: .word 0x00012008
_0223DB2C: .word ov104_0223DB48
_0223DB30: .word 0x0001368C
	thumb_func_end ov104_0223DA40

	thumb_func_start ov104_0223DB34
ov104_0223DB34: ; 0x0223DB34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223DB34

	thumb_func_start ov104_0223DB48
ov104_0223DB48: ; 0x0223DB48
	push {r3, r4, lr}
	sub sp, #4
	ldr r3, _0223DBAC ; =0x00022008
	add r4, r1, #0
	ldrb r0, [r4, r3]
	cmp r0, #0xc
	bhs _0223DB5E
	add r0, r0, #1
	add sp, #4
	strb r0, [r4, r3]
	pop {r3, r4, pc}
_0223DB5E:
	mov r0, #0
	strb r0, [r4, r3]
	str r0, [sp]
	add r3, r3, #1
	ldrb r3, [r4, r3]
	ldr r2, _0223DBB0 ; =0x00002008
	ldr r0, [r4, #4]
	add r2, r4, r2
	lsl r3, r3, #0x10
	add r2, r2, r3
	mov r3, #1
	mov r1, #3
	lsl r3, r3, #0x10
	bl sub_0201958C
	ldr r2, _0223DBB4 ; =0x00022009
	add r3, r4, #0
	ldrb r2, [r4, r2]
	add r3, #8
	ldr r0, [r4, #4]
	lsl r2, r2, #0xc
	add r2, r3, r2
	mov r3, #1
	mov r1, #3
	lsl r3, r3, #0xc
	bl sub_02019574
	ldr r0, [r4, #4]
	mov r1, #3
	bl sub_0201C3C0
	ldr r1, _0223DBB4 ; =0x00022009
	mov r0, #1
	ldrb r2, [r4, r1]
	eor r0, r2
	strb r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223DBAC: .word 0x00022008
_0223DBB0: .word 0x00002008
_0223DBB4: .word 0x00022009
	thumb_func_end ov104_0223DB48

	thumb_func_start ov104_0223DBB8
ov104_0223DBB8: ; 0x0223DBB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x5e
	mov r1, #0x6c
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x6c
	bl sub_020C4CF4
	add r0, r4, #0
	str r5, [r4, #4]
	mov r1, #2
	add r0, #0x68
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0
	bl sub_02003164
	add r1, r4, #0
	add r0, #0xa0
	add r1, #8
	mov r2, #0x60
	bl sub_020C4B18
	ldr r0, _0223DBFC ; =ov104_0223DC18
	ldr r2, _0223DC00 ; =0x0001368D
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223DBFC: .word ov104_0223DC18
_0223DC00: .word 0x0001368D
	thumb_func_end ov104_0223DBB8

	thumb_func_start ov104_0223DC04
ov104_0223DC04: ; 0x0223DC04
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223DC04

	thumb_func_start ov104_0223DC18
ov104_0223DC18: ; 0x0223DC18
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0x69
	ldrb r0, [r0]
	cmp r0, #8
	bhs _0223DC38
	add r0, r4, #0
	add r0, #0x69
	ldrb r0, [r0]
	add r4, #0x69
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0223DC38:
	add r0, r4, #0
	mov r2, #0
	add r0, #0x69
	strb r2, [r0]
	mov r0, #0x20
	str r0, [sp]
	add r1, #0x68
	ldrb r1, [r1]
	add r3, r4, #0
	ldr r0, [r4, #4]
	add r3, #8
	lsl r1, r1, #5
	add r1, r3, r1
	mov r3, #0x60
	bl sub_02002FBC
	add r0, r4, #0
	add r0, #0x68
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x68
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x68
	ldrb r0, [r0]
	cmp r0, #3
	blo _0223DC76
	mov r0, #0
	add r4, #0x68
	strb r0, [r4]
_0223DC76:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223DC18

	.rodata


	.global Unk_ov104_022418B0
Unk_ov104_022418B0: ; 0x022418B0
	.incbin "incbin/overlay104_rodata.bin", 0x2620, 0x4

