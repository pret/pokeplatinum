	.include "macros/function.inc"
	.include "include/unk_0203F6C4.inc"

	

	.text


	thumb_func_start sub_0203F6C4
sub_0203F6C4: ; 0x0203F6C4
	mov r0, #0
	bx lr
	thumb_func_end sub_0203F6C4

	thumb_func_start sub_0203F6C8
sub_0203F6C8: ; 0x0203F6C8
	mov r0, #0
	bx lr
	thumb_func_end sub_0203F6C8

	thumb_func_start sub_0203F6CC
sub_0203F6CC: ; 0x0203F6CC
	push {r3, lr}
	bl sub_0203E76C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203F6CC

	thumb_func_start sub_0203F6D8
sub_0203F6D8: ; 0x0203F6D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0203F118
	strh r7, [r0]
	ldr r1, _0203F708 ; =sub_0203F70C
	add r0, r5, #0
	str r4, [r5, #0x64]
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203F708: .word sub_0203F70C
	thumb_func_end sub_0203F6D8

	thumb_func_start sub_0203F70C
sub_0203F70C: ; 0x0203F70C
	push {r3, lr}
	add r1, r0, #0
	ldr r1, [r1, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	ldrh r1, [r0]
	sub r1, r1, #1
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	bne _0203F72E
	mov r0, #1
	pop {r3, pc}
_0203F72E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203F70C

	thumb_func_start sub_0203F734
sub_0203F734: ; 0x0203F734
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F734

	thumb_func_start sub_0203F74C
sub_0203F74C: ; 0x0203F74C
	ldr r1, [r0, #8]
	add r2, r1, #1
	str r2, [r0, #8]
	ldrb r3, [r1]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r2, [r2]
	lsl r1, r3, #2
	add r0, r0, r1
	str r2, [r0, #0x64]
	mov r0, #0
	bx lr
	thumb_func_end sub_0203F74C

	thumb_func_start sub_0203F764
sub_0203F764: ; 0x0203F764
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r5, [r2]
	bl sub_0203E850
	lsl r1, r5, #2
	add r1, r4, r1
	str r0, [r1, #0x64]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203F764

	thumb_func_start sub_0203F780
sub_0203F780: ; 0x0203F780
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E850
	ldrb r1, [r0]
	lsl r0, r4, #2
	add r0, r5, r0
	str r1, [r0, #0x64]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203F780

	thumb_func_start sub_0203F79C
sub_0203F79C: ; 0x0203F79C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E850
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	strb r1, [r0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F79C

	thumb_func_start sub_0203F7B4
sub_0203F7B4: ; 0x0203F7B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E850
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #0x64]
	strb r1, [r0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203F7B4

	thumb_func_start sub_0203F7D0
sub_0203F7D0: ; 0x0203F7D0
	ldr r1, [r0, #8]
	add r2, r1, #1
	str r2, [r0, #8]
	ldrb r3, [r1]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r1, [r2]
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r2, [r1, #0x64]
	lsl r1, r3, #2
	add r0, r0, r1
	str r2, [r0, #0x64]
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203F7D0

	thumb_func_start sub_0203F7F0
sub_0203F7F0: ; 0x0203F7F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E850
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E850
	ldrb r0, [r0]
	strb r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203F7F0

	thumb_func_start sub_0203F808
sub_0203F808: ; 0x0203F808
	cmp r0, r1
	bhs _0203F810
	mov r0, #0
	bx lr
_0203F810:
	cmp r0, r1
	bne _0203F818
	mov r0, #1
	bx lr
_0203F818:
	mov r0, #2
	bx lr
	thumb_func_end sub_0203F808

	thumb_func_start sub_0203F81C
sub_0203F81C: ; 0x0203F81C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r1, r0, #1
	str r1, [r4, #8]
	ldrb r0, [r0]
	add r2, r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x64]
	str r2, [r4, #8]
	ldrb r1, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #0x64]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0203F808
	strb r0, [r4, #2]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203F81C

	thumb_func_start sub_0203F84C
sub_0203F84C: ; 0x0203F84C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r1, r0, #1
	str r1, [r4, #8]
	ldrb r0, [r0]
	add r2, r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x64]
	str r2, [r4, #8]
	ldrb r1, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0203F808
	strb r0, [r4, #2]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F84C

	thumb_func_start sub_0203F874
sub_0203F874: ; 0x0203F874
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #0x64]
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	bl sub_0203E850
	ldrb r1, [r0]
	add r0, r5, #0
	bl sub_0203F808
	strb r0, [r4, #2]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203F874

	thumb_func_start sub_0203F89C
sub_0203F89C: ; 0x0203F89C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E850
	ldr r2, [r4, #8]
	ldrb r0, [r0]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #0x64]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0203F808
	strb r0, [r4, #2]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203F89C

	thumb_func_start sub_0203F8C4
sub_0203F8C4: ; 0x0203F8C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E850
	ldr r2, [r4, #8]
	ldrb r0, [r0]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	bl sub_0203F808
	strb r0, [r4, #2]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203F8C4

	thumb_func_start sub_0203F8E0
sub_0203F8E0: ; 0x0203F8E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E850
	ldrb r4, [r0]
	add r0, r5, #0
	bl sub_0203E850
	ldrb r1, [r0]
	add r0, r4, #0
	bl sub_0203F808
	strb r0, [r5, #2]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203F8E0

	thumb_func_start sub_0203F900
sub_0203F900: ; 0x0203F900
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	ldrh r5, [r0]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203F808
	strb r0, [r4, #2]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203F900

	thumb_func_start sub_0203F92C
sub_0203F92C: ; 0x0203F92C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r1, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r1]
	bl sub_0203F808
	strb r0, [r5, #2]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203F92C

	thumb_func_start sub_0203F964
sub_0203F964: ; 0x0203F964
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #7
	add r0, r5, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xe
	bl sub_0203F098
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203EAB8
	str r0, [r6, #0]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0203F964

	thumb_func_start sub_0203F99C
sub_0203F99C: ; 0x0203F99C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #5
	add r0, r5, #0
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #7
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xe
	bl sub_0203F098
	add r7, r0, #0
	ldr r0, [sp]
	bl sub_0203E838
	add r1, r0, #0
	mov r0, #1
	strb r0, [r6]
	add r0, r5, #0
	bl sub_0203EAB8
	str r0, [r7, #0]
	ldrb r0, [r4]
	ldr r1, _0203F9E8 ; =sub_0203F9EC
	add r0, r0, #1
	strb r0, [r4]
	ldr r0, [sp]
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203F9E8: .word sub_0203F9EC
	thumb_func_end sub_0203F99C

	thumb_func_start sub_0203F9EC
sub_0203F9EC: ; 0x0203F9EC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #5
	bl sub_0203F098
	ldrb r0, [r0]
	cmp r0, #0
	bne _0203FA02
	mov r0, #1
	pop {r3, pc}
_0203FA02:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203F9EC

	thumb_func_start sub_0203FA08
sub_0203FA08: ; 0x0203FA08
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #5
	bl sub_0203F098
	mov r1, #0
	strb r1, [r0]
	add r0, r1, #0
	pop {r3, pc}
	thumb_func_end sub_0203FA08

	thumb_func_start sub_0203FA1C
sub_0203FA1C: ; 0x0203FA1C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E850
	add r2, r0, #0
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r1, r1, r2
	bl sub_0203E818
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203FA1C

	thumb_func_start sub_0203FA34
sub_0203FA34: ; 0x0203FA34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E850
	add r7, r0, #0
	ldr r0, [r6, #0]
	bl sub_02062910
	cmp r4, r0
	bne _0203FA68
	ldr r1, [r5, #8]
	add r0, r5, #0
	add r1, r1, r7
	bl sub_0203E818
_0203FA68:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203FA34

	thumb_func_start sub_0203FA6C
sub_0203FA6C: ; 0x0203FA6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x74]
	bl sub_02050A6C
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r4, [r1]
	add r0, r5, #0
	bl sub_0203E850
	add r2, r0, #0
	cmp r6, r4
	bne _0203FA96
	ldr r1, [r5, #8]
	add r0, r5, #0
	add r1, r1, r2
	bl sub_0203E818
_0203FA96:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0203FA6C

	thumb_func_start sub_0203FA9C
sub_0203FA9C: ; 0x0203FA9C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #9
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r4, [r1]
	add r0, r5, #0
	bl sub_0203E850
	add r2, r0, #0
	ldr r0, [r6, #0]
	cmp r0, r4
	bne _0203FACC
	ldr r1, [r5, #8]
	add r0, r5, #0
	add r1, r1, r2
	bl sub_0203E818
_0203FACC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203FA9C

	thumb_func_start sub_0203FAD0
sub_0203FAD0: ; 0x0203FAD0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E850
	add r2, r0, #0
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r1, r1, r2
	bl sub_0203E81C
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203FAD0

	thumb_func_start sub_0203FAE8
sub_0203FAE8: ; 0x0203FAE8
	push {r3, lr}
	bl sub_0203E82C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203FAE8

	thumb_func_start sub_0203FAF4
sub_0203FAF4: ; 0x0203FAF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E850
	add r1, r0, #0
	lsl r0, r4, #1
	add r3, r4, r0
	ldr r0, _0203FB24 ; =0x020EABA6
	ldrb r2, [r5, #2]
	add r0, r0, r3
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _0203FB20
	ldr r2, [r5, #8]
	add r0, r5, #0
	add r1, r2, r1
	bl sub_0203E818
_0203FB20:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203FB24: .word 0x020EABA6
	thumb_func_end sub_0203FAF4

	thumb_func_start sub_0203FB28
sub_0203FB28: ; 0x0203FB28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E850
	add r1, r0, #0
	lsl r0, r4, #1
	add r3, r4, r0
	ldr r0, _0203FB58 ; =0x020EABA6
	ldrb r2, [r5, #2]
	add r0, r0, r3
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _0203FB54
	ldr r2, [r5, #8]
	add r0, r5, #0
	add r1, r2, r1
	bl sub_0203E81C
_0203FB54:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203FB58: .word 0x020EABA6
	thumb_func_end sub_0203FB28

	thumb_func_start sub_0203FB5C
sub_0203FB5C: ; 0x0203FB5C
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0203F19C
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203FB5C

	thumb_func_start sub_0203FB74
sub_0203FB74: ; 0x0203FB74
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0203F1B0
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203FB74

	thumb_func_start sub_0203FB8C
sub_0203FB8C: ; 0x0203FB8C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203F188
	strb r0, [r4, #2]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203FB8C

	thumb_func_start sub_0203FBA8
sub_0203FBA8: ; 0x0203FBA8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldrh r1, [r6]
	add r0, r5, #0
	bl sub_0203F188
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203FBA8

	thumb_func_start sub_0203FBE4
sub_0203FBE4: ; 0x0203FBE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r1, r0, #0
	ldrh r1, [r1]
	add r0, r4, #0
	bl sub_0203F19C
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203FBE4

	thumb_func_start sub_0203FC0C
sub_0203FC0C: ; 0x0203FC0C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203F2BC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203FC0C

	thumb_func_start sub_0203FC30
sub_0203FC30: ; 0x0203FC30
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203F2D8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203FC30

	thumb_func_start sub_0203FC54
sub_0203FC54: ; 0x0203FC54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0203F2A0
	strb r0, [r5, #2]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203FC54

	thumb_func_start sub_0203FC7C
sub_0203FC7C: ; 0x0203FC7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	ldrh r1, [r4]
	add r0, r1, r0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203FC7C

	thumb_func_start sub_0203FCAC
sub_0203FCAC: ; 0x0203FCAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	ldrh r1, [r4]
	sub r0, r1, r0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203FCAC

	thumb_func_start sub_0203FCDC
sub_0203FCDC: ; 0x0203FCDC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203FCDC

	thumb_func_start sub_0203FD00
sub_0203FD00: ; 0x0203FD00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	ldrh r0, [r0]
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203FD00

	thumb_func_start sub_0203FD30
sub_0203FD30: ; 0x0203FD30
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203FD30

	thumb_func_start sub_0203FD5C
sub_0203FD5C: ; 0x0203FD5C
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r2, [r2]
	ldr r1, [r0, #0x78]
	bl ov5_021DD498
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0203FD5C

	thumb_func_start sub_0203FD70
sub_0203FD70: ; 0x0203FD70
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	mov r0, #1
	mov r1, #0x1a
	add r2, r5, #0
	mov r3, #0x20
	bl sub_0200B144
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov5_021DD498
	add r0, r5, #0
	bl sub_0200B190
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203FD70

	thumb_func_start sub_0203FDBC
sub_0203FDBC: ; 0x0203FDBC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	mov r0, #1
	mov r1, #0x1a
	add r2, r5, #0
	mov r3, #0x20
	bl sub_0200B144
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl ov5_021DD444
	add r0, r5, #0
	bl sub_0200B190
	ldr r1, _0203FE1C ; =sub_02040014
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0203FE1C: .word sub_02040014
	thumb_func_end sub_0203FDBC

	thumb_func_start sub_0203FE20
sub_0203FE20: ; 0x0203FE20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov5_021DD4CC
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0203FE20

	thumb_func_start sub_0203FE60
sub_0203FE60: ; 0x0203FE60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov5_021DD4CC
	ldr r1, _0203FEA8 ; =sub_02040014
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203FEA8: .word sub_02040014
	thumb_func_end sub_0203FE60

	thumb_func_start sub_0203FEAC
sub_0203FEAC: ; 0x0203FEAC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldrb r3, [r2]
	add r1, #0xac
	ldr r2, [r1, #0]
	cmp r2, #0
	bne _0203FECE
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203FECE:
	lsl r1, r3, #4
	add r1, r3, r1
	add r2, #0x90
	lsl r1, r1, #4
	add r4, r2, r1
	ldrh r1, [r2, r1]
	ldr r2, _0203FF28 ; =0x0000FFFF
	cmp r1, r2
	bne _0203FF06
	ldr r2, _0203FF2C ; =0x00000265
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x20
	bl sub_0200B144
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #1
	bl ov5_021DD444
	add r0, r6, #0
	bl sub_0200B190
	b _0203FF18
_0203FF06:
	mov r2, #6
	ldrsh r2, [r4, r2]
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	ldrh r2, [r4, #2]
	ldrh r3, [r4, #4]
	bl ov5_021DD4CC
_0203FF18:
	ldr r1, _0203FF30 ; =sub_02040014
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0203FF28: .word 0x0000FFFF
_0203FF2C: .word 0x00000265
_0203FF30: .word sub_02040014
	thumb_func_end sub_0203FEAC

	thumb_func_start sub_0203FF34
sub_0203FF34: ; 0x0203FF34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r2, [r5, #8]
	ldr r6, [r1, #0]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	ldr r1, [r5, #8]
	add r2, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r3, [r1]
	mov r1, #0
	add r0, sp, #4
	strb r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [r6, #0xc]
	add r1, r7, #0
	bl sub_0204AEE8
	add r6, r0, #0
	add r2, sp, #4
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, r2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #1
	bl ov5_021DD530
	add r0, r6, #0
	bl sub_0200B3F0
	ldr r1, _0203FFA8 ; =sub_02040014
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203FFA8: .word sub_02040014
	thumb_func_end sub_0203FF34

	thumb_func_start sub_0203FFAC
sub_0203FFAC: ; 0x0203FFAC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, sp, #4
	add r1, r5, #0
	bl ov5_021DD42C
	mov r1, #3
	add r0, sp, #4
	strb r1, [r0, #2]
	add r0, sp, #4
	str r0, [sp]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov5_021DD444
	ldr r1, _0203FFE4 ; =sub_02040014
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203FFE4: .word sub_02040014
	thumb_func_end sub_0203FFAC

	thumb_func_start sub_0203FFE8
sub_0203FFE8: ; 0x0203FFE8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r2, [r4, #8]
	mov r3, #1
	add r1, r2, #1
	str r1, [r4, #8]
	mov r1, #0
	str r1, [sp]
	ldrb r2, [r2]
	ldr r1, [r4, #0x78]
	bl ov5_021DD444
	ldr r1, _02040010 ; =sub_02040014
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02040010: .word sub_02040014
	thumb_func_end sub_0203FFE8

	thumb_func_start sub_02040014
sub_02040014: ; 0x02040014
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0203F098
	ldrb r0, [r0]
	bl sub_0205DA04
	pop {r3, pc}
	thumb_func_end sub_02040014

	thumb_func_start sub_02040028
sub_02040028: ; 0x02040028
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	lsl r2, r2, #0x18
	ldr r1, [r4, #0x78]
	add r0, r4, #0
	lsr r2, r2, #0x18
	mov r3, #1
	bl ov5_021DD444
	ldr r1, _02040060 ; =sub_02040014
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02040060: .word sub_02040014
	thumb_func_end sub_02040028

	thumb_func_start sub_02040064
sub_02040064: ; 0x02040064
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, sp, #4
	add r1, r5, #0
	bl ov5_021DD42C
	lsl r2, r4, #0x18
	mov r3, #1
	add r0, sp, #4
	strb r3, [r0, #1]
	add r0, sp, #4
	str r0, [sp]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl ov5_021DD444
	ldr r1, _020400A8 ; =sub_02040014
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020400A8: .word sub_02040014
	thumb_func_end sub_02040064

	thumb_func_start sub_020400AC
sub_020400AC: ; 0x020400AC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r3, #0
	str r3, [sp]
	lsl r2, r2, #0x18
	ldr r1, [r4, #0x78]
	add r0, r4, #0
	lsr r2, r2, #0x18
	bl ov5_021DD444
	ldr r1, _020400E4 ; =sub_02040014
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_020400E4: .word sub_02040014
	thumb_func_end sub_020400AC

	thumb_func_start sub_020400E8
sub_020400E8: ; 0x020400E8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_02062950
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0
	str r0, [sp]
	ldr r1, [r4, #0x78]
	add r0, r4, #0
	mov r3, #1
	bl ov5_021DD444
	ldr r1, _02040120 ; =sub_02040014
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_02040120: .word sub_02040014
	thumb_func_end sub_020400E8

	thumb_func_start sub_02040124
sub_02040124: ; 0x02040124
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r1, [r5, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r4, [r1]
	bl sub_02035E38
	cmp r0, #0
	bne _0204014C
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #1
	bl ov5_021DD444
	b _0204016C
_0204014C:
	add r0, sp, #4
	add r1, r5, #0
	bl ov5_021DD42C
	mov r1, #1
	add r0, sp, #4
	strb r1, [r0]
	strb r1, [r0, #1]
	add r0, sp, #4
	str r0, [sp]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov5_021DD444
_0204016C:
	ldr r1, _0204017C ; =sub_02040014
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0204017C: .word sub_02040014
	thumb_func_end sub_02040124

	thumb_func_start sub_02040180
sub_02040180: ; 0x02040180
	push {r3, lr}
	ldr r1, _0204018C ; =sub_02040190
	bl sub_0203E764
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_0204018C: .word sub_02040190
	thumb_func_end sub_02040180

	thumb_func_start sub_02040190
sub_02040190: ; 0x02040190
	ldr r0, _020401A4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0204019E
	mov r0, #1
	bx lr
_0204019E:
	mov r0, #0
	bx lr
	nop
_020401A4: .word 0x021BF67C
	thumb_func_end sub_02040190

	thumb_func_start sub_020401A8
sub_020401A8: ; 0x020401A8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [r4, #0x64]
	ldr r1, _020401CC ; =sub_020401D0
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_020401CC: .word sub_020401D0
	thumb_func_end sub_020401A8

	thumb_func_start sub_020401D0
sub_020401D0: ; 0x020401D0
	ldr r1, _020401F0 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	beq _020401DE
	mov r0, #1
	bx lr
_020401DE:
	ldr r1, [r0, #0x64]
	sub r1, r1, #1
	str r1, [r0, #0x64]
	bne _020401EA
	mov r0, #1
	bx lr
_020401EA:
	mov r0, #0
	bx lr
	nop
_020401F0: .word 0x021BF67C
	thumb_func_end sub_020401D0

	thumb_func_start sub_020401F4
sub_020401F4: ; 0x020401F4
	push {r3, lr}
	ldr r1, _02040200 ; =sub_02040204
	bl sub_0203E764
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02040200: .word sub_02040204
	thumb_func_end sub_020401F4

	thumb_func_start sub_02040204
sub_02040204: ; 0x02040204
	push {r4, lr}
	ldr r1, _02040280 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	add r3, r2, #0
	tst r3, r1
	beq _02040216
	mov r0, #1
	pop {r4, pc}
_02040216:
	mov r3, #0x40
	tst r3, r2
	beq _0204022A
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	b _0204027A
_0204022A:
	mov r3, #0x80
	tst r3, r2
	beq _0204023E
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	b _0204027A
_0204023E:
	mov r3, #0x20
	tst r3, r2
	beq _02040252
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	b _0204027A
_02040252:
	mov r3, #0x10
	add r4, r2, #0
	tst r4, r3
	beq _02040266
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	b _0204027A
_02040266:
	lsl r1, r3, #6
	tst r1, r2
	beq _02040276
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F0C0
	b _0204027A
_02040276:
	mov r0, #0
	pop {r4, pc}
_0204027A:
	mov r0, #1
	pop {r4, pc}
	nop
_02040280: .word 0x021BF67C
	thumb_func_end sub_02040204

	thumb_func_start sub_02040284
sub_02040284: ; 0x02040284
	push {r3, lr}
	ldr r1, _02040290 ; =sub_02040294
	bl sub_0203E764
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02040290: .word sub_02040294
	thumb_func_end sub_02040284

	thumb_func_start sub_02040294
sub_02040294: ; 0x02040294
	ldr r0, _020402B0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _020402A2
	mov r0, #1
	bx lr
_020402A2:
	mov r0, #0xf0
	tst r0, r1
	beq _020402AC
	mov r0, #1
	bx lr
_020402AC:
	mov r0, #0
	bx lr
	; .align 2, 0
_020402B0: .word 0x021BF67C
	thumb_func_end sub_02040294

	thumb_func_start sub_020402B4
sub_020402B4: ; 0x020402B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #6
	add r0, r4, #0
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_0203F098
	add r1, r0, #0
	ldr r0, [r4, #8]
	mov r2, #3
	bl sub_0205D8F4
	add r0, r4, #0
	mov r1, #1
	bl sub_0203F098
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205D944
	mov r0, #1
	strb r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020402B4

	thumb_func_start sub_020402FC
sub_020402FC: ; 0x020402FC
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #1
	add r0, r4, #0
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #6
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0200E084
	add r0, r5, #0
	bl sub_0201A8FC
	mov r0, #0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020402FC

	thumb_func_start sub_0204032C
sub_0204032C: ; 0x0204032C
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #1
	add r0, r4, #0
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #6
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201A8FC
	mov r0, #0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204032C

	thumb_func_start sub_02040354
sub_02040354: ; 0x02040354
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #0x31
	add r0, r4, #0
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x2d
	bl sub_0203F098
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x32
	bl sub_0203F098
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x33
	bl sub_0203F098
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x2e
	bl sub_0203F098
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x34
	bl sub_0203F098
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	strh r1, [r6]
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	strh r1, [r7]
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r2, [r2]
	ldr r1, [sp]
	strh r2, [r1]
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r2, [r2]
	ldr r1, [sp, #4]
	strh r2, [r1]
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r2, [r2]
	ldr r1, [sp, #8]
	strh r2, [r1]
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	strh r1, [r0]
	ldr r1, _020403E8 ; =sub_020403EC
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020403E8: .word sub_020403EC
	thumb_func_end sub_02040354

	thumb_func_start sub_020403EC
sub_020403EC: ; 0x020403EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #0x31
	add r0, r4, #0
	bl sub_0203F098
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x32
	bl sub_0203F098
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x33
	bl sub_0203F098
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x34
	bl sub_0203F098
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x2d
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x2e
	bl sub_0203F098
	add r5, r0, #0
	ldrh r0, [r6]
	cmp r0, #0
	bne _02040442
	ldrh r0, [r5]
	cmp r0, #0
	bne _02040442
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02040442:
	ldrh r3, [r7]
	cmp r3, #0
	beq _02040464
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _0204045C
	mov r1, #3
	mov r2, #1
	bl sub_02019184
	b _02040464
_0204045C:
	mov r1, #3
	mov r2, #2
	bl sub_02019184
_02040464:
	ldr r0, [sp, #4]
	ldrh r3, [r0]
	cmp r3, #0
	beq _02040488
	ldr r0, [sp]
	ldrh r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _02040480
	mov r1, #3
	mov r2, #4
	bl sub_02019184
	b _02040488
_02040480:
	mov r1, #3
	mov r2, #5
	bl sub_02019184
_02040488:
	ldrh r0, [r6]
	cmp r0, #0
	beq _02040492
	sub r0, r0, #1
	strh r0, [r6]
_02040492:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0204049C
	sub r0, r0, #1
	strh r0, [r5]
_0204049C:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020403EC

	thumb_func_start sub_020404A4
sub_020404A4: ; 0x020404A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #0x11
	add r0, r4, #0
	bl sub_0203F098
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0x10
	bl sub_0203F098
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0203F098
	str r0, [sp, #0x14]
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r1]
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	cmp r6, #0
	bne _02040504
	add r0, r4, #0
	mov r1, #0xa
	bl sub_0203F098
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_020629D8
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_02040504:
	ldr r0, [r4, #0x64]
	ldr r1, [sp, #0x10]
	add r2, r6, #0
	bl ov5_021E1B38
	ldr r0, [r4, #0x64]
	mov r1, #1
	bl ov5_021E1B40
	add r0, r4, #0
	bl ov5_021E1B68
	ldr r2, [sp, #0x18]
	ldr r0, [r5, #0x78]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	bl sub_0200B1B8
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0, #0]
	ldr r1, [r7, #0]
	ldr r2, [r2, #0]
	bl sub_0200C388
	ldr r0, [r4, #0x64]
	bl ov5_021E1B50
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r7, #0]
	mov r1, #1
	bl sub_0201D738
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020404A4

	thumb_func_start sub_02040554
sub_02040554: ; 0x02040554
	push {r3, r4, r5, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r2, [r0, #8]
	ldr r4, [r1, #0]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r5, [r2]
	bl sub_0203E838
	add r2, r0, #0
	ldr r0, [r4, #0x64]
	add r1, r5, #0
	bl ov5_021E1B38
	ldr r0, [r4, #0x64]
	mov r1, #1
	bl ov5_021E1B40
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02040554

	thumb_func_start sub_02040580
sub_02040580: ; 0x02040580
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r2, [r0, #8]
	ldr r3, [r1, #0]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r1, [r2]
	ldr r0, [r3, #0x64]
	bl ov5_021E1B40
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02040580

	thumb_func_start sub_0204059C
sub_0204059C: ; 0x0204059C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x64]
	bl ov5_021E1B58
	cmp r0, #1
	bne _020405B2
	mov r0, #0
	pop {r4, pc}
_020405B2:
	ldr r1, _020405C0 ; =sub_020405C4
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_020405C0: .word sub_020405C4
	thumb_func_end sub_0204059C

	thumb_func_start sub_020405C4
sub_020405C4: ; 0x020405C4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x64]
	bl ov5_021E1B58
	cmp r0, #1
	bne _020405D8
	mov r0, #1
	pop {r3, pc}
_020405D8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020405C4

	thumb_func_start sub_020405DC
sub_020405DC: ; 0x020405DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #3
	add r0, r4, #0
	bl sub_0203F098
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x11
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	bl sub_0203F098
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	str r0, [sp, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r1]
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x78]
	ldr r1, [sp]
	ldr r2, [r6, #0]
	bl sub_0200B1B8
	ldr r0, [sp, #8]
	ldr r1, [r7, #0]
	ldr r0, [r0, #0]
	ldr r2, [r6, #0]
	bl sub_0200C388
	ldr r0, [r4, #0x64]
	bl ov5_021E1B50
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	ldr r1, [r7, #0]
	add r0, r4, #0
	mov r3, #1
	bl sub_0205D994
	ldr r1, [sp, #4]
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	ldr r1, _0204066C ; =sub_02040670
	str r0, [r5, #0x64]
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204066C: .word sub_02040670
	thumb_func_end sub_020405DC

	thumb_func_start sub_02040670
sub_02040670: ; 0x02040670
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #3
	add r0, r5, #0
	bl sub_0203F098
	ldr r1, [r7, #0x64]
	add r6, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0x64]
	bl ov5_021E1B54
	ldrb r0, [r6]
	ldr r5, _0204070C ; =0x0000FFFF
	bl sub_0205DA04
	cmp r0, #1
	bne _020406AA
	mov r0, #2
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020406AA:
	ldr r0, _02040710 ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _020406B8
	mov r5, #0
	b _020406D4
_020406B8:
	mov r1, #0x80
	tst r1, r0
	beq _020406C2
	mov r5, #1
	b _020406D4
_020406C2:
	mov r1, #0x20
	tst r1, r0
	beq _020406CC
	mov r5, #2
	b _020406D4
_020406CC:
	mov r1, #0x10
	tst r1, r0
	beq _020406D4
	mov r5, #3
_020406D4:
	ldr r1, _0204070C ; =0x0000FFFF
	cmp r5, r1
	beq _020406F4
	ldrb r0, [r6]
	bl sub_0201D730
	add r7, #0x80
	ldr r0, [r7, #0]
	add r1, r5, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	mov r0, #0
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020406F4:
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _02040708
	ldrb r0, [r6]
	bl sub_0201D730
	mov r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02040708:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204070C: .word 0x0000FFFF
_02040710: .word 0x021BF67C
	thumb_func_end sub_02040670

	thumb_func_start sub_02040714
sub_02040714: ; 0x02040714
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	str r0, [r4, #0x64]
	ldr r1, _0204072C ; =sub_02040730
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_0204072C: .word sub_02040730
	thumb_func_end sub_02040714

	thumb_func_start sub_02040730
sub_02040730: ; 0x02040730
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, _020407AC ; =0x021BF67C
	ldr r1, _020407B0 ; =0x0000FFFF
	ldr r2, [r0, #0x48]
	mov r0, #3
	add r3, r2, #0
	tst r3, r0
	beq _0204075A
	mov r0, #0
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204075A:
	mov r3, #0x40
	tst r3, r2
	beq _02040764
	mov r1, #0
	b _02040780
_02040764:
	mov r3, #0x80
	tst r3, r2
	beq _0204076E
	mov r1, #1
	b _02040780
_0204076E:
	mov r3, #0x20
	tst r3, r2
	beq _02040778
	mov r1, #2
	b _02040780
_02040778:
	mov r3, #0x10
	tst r3, r2
	beq _02040780
	add r1, r0, #0
_02040780:
	ldr r0, _020407B0 ; =0x0000FFFF
	cmp r1, r0
	beq _02040798
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	mov r0, #0
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02040798:
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r2
	beq _020407A6
	mov r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_020407A6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_020407AC: .word 0x021BF67C
_020407B0: .word 0x0000FFFF
	thumb_func_end sub_02040730

	thumb_func_start sub_020407B4
sub_020407B4: ; 0x020407B4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F0C0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020407B4

	thumb_func_start sub_020407C4
sub_020407C4: ; 0x020407C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #2
	add r0, r4, #0
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	ldr r2, _02040818 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, _0204081C ; =0x020EAB84
	ldr r2, _02040818 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r6, #0]
	ldr r1, _02040820 ; =sub_02040824
	add r0, r5, #0
	str r7, [r5, #0x64]
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02040818: .word 0x000003D9
_0204081C: .word 0x020EAB84
_02040820: .word sub_02040824
	thumb_func_end sub_020407C4

	thumb_func_start sub_02040824
sub_02040824: ; 0x02040824
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #2
	add r0, r6, #0
	bl sub_0203F098
	ldr r1, [r5, #0x64]
	add r4, r0, #0
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02040858
	mov r0, #0
	pop {r4, r5, r6, pc}
_02040858:
	cmp r0, #0
	bne _02040860
	mov r0, #0
	b _02040862
_02040860:
	mov r0, #1
_02040862:
	strh r0, [r5]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02040824

	thumb_func_start sub_02040868
sub_02040868: ; 0x02040868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0203F098
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x12
	bl sub_0203F098
	add r5, r0, #0
	ldr r1, _02040894 ; =0x000003E2
	add r0, r4, #0
	bl sub_0200E7FC
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02040894: .word 0x000003E2
	thumb_func_end sub_02040868

	thumb_func_start sub_02040898
sub_02040898: ; 0x02040898
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x12
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_0200EBA0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02040898

	thumb_func_start sub_020408B0
sub_020408B0: ; 0x020408B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0
	add r0, r6, #0
	bl sub_0203F098
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #0xf
	bl sub_0203F098
	str r0, [sp, #0x20]
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r0, [r0]
	add r2, r1, #1
	str r0, [sp, #0x18]
	str r2, [r5, #8]
	ldrb r0, [r1]
	add r1, r2, #1
	str r0, [sp, #0x14]
	str r1, [r5, #8]
	ldrb r7, [r2]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	add r0, r6, #0
	bl sub_0203F118
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0203F098
	ldr r1, [sp, #0x28]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x20]
	add r3, r7, #0
	ldr r1, [r1, #0]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl ov5_021DC150
	ldr r1, [sp, #0x1c]
	str r0, [r1, #0]
	ldr r0, [sp, #0x24]
	str r0, [r5, #0x64]
	mov r0, #1
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020408B0

	thumb_func_start sub_02040938
sub_02040938: ; 0x02040938
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0
	add r0, r6, #0
	bl sub_0203F098
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #0xf
	bl sub_0203F098
	str r0, [sp, #0x20]
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r0, [r0]
	add r2, r1, #1
	str r0, [sp, #0x18]
	str r2, [r5, #8]
	ldrb r0, [r1]
	add r1, r2, #1
	str r0, [sp, #0x14]
	str r1, [r5, #8]
	ldrb r7, [r2]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	add r0, r6, #0
	bl sub_0203F118
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0203F098
	ldr r1, [sp, #0x28]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x20]
	add r3, r7, #0
	ldr r1, [r1, #0]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x78]
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl ov5_021DC150
	ldr r1, [sp, #0x1c]
	str r0, [r1, #0]
	ldr r0, [sp, #0x24]
	str r0, [r5, #0x64]
	mov r0, #1
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02040938

	thumb_func_start sub_020409C0
sub_020409C0: ; 0x020409C0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r1, [r4, #8]
	add r3, r1, #1
	str r3, [r4, #8]
	ldrb r1, [r1]
	add r2, r3, #1
	str r2, [r4, #8]
	ldrb r2, [r3]
	ldr r0, [r0, #0]
	bl ov5_021DC1A4
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020409C0

	thumb_func_start sub_020409E8
sub_020409E8: ; 0x020409E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov5_021DC1A4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020409E8

	thumb_func_start sub_02040A2C
sub_02040A2C: ; 0x02040A2C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021DC1AC
	ldr r1, _02040A4C ; =sub_02040A50
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02040A4C: .word sub_02040A50
	thumb_func_end sub_02040A2C

	thumb_func_start sub_02040A50
sub_02040A50: ; 0x02040A50
	push {r3, lr}
	add r1, r0, #0
	ldr r1, [r1, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	ldrh r1, [r0]
	ldr r0, _02040A74 ; =0x0000EEEE
	cmp r1, r0
	beq _02040A6E
	mov r0, #1
	pop {r3, pc}
_02040A6E:
	mov r0, #0
	pop {r3, pc}
	nop
_02040A74: .word 0x0000EEEE
	thumb_func_end sub_02040A50

	thumb_func_start sub_02040A78
sub_02040A78: ; 0x02040A78
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021DC1AC
	ldr r1, _02040A98 ; =sub_02040A9C
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02040A98: .word sub_02040A9C
	thumb_func_end sub_02040A78

	thumb_func_start sub_02040A9C
sub_02040A9C: ; 0x02040A9C
	push {r4, r5, r6, lr}
	add r1, r0, #0
	add r0, #0x80
	ldr r1, [r1, #0x64]
	ldr r5, [r0, #0]
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0203F098
	add r6, r0, #0
	ldrh r1, [r4]
	ldr r0, _02040AE4 ; =0x0000EEEE
	cmp r1, r0
	bne _02040AE0
	ldr r0, [r5, #0x7c]
	bl sub_0205B9E8
	cmp r0, #0
	beq _02040ADC
	mov r0, #8
	strh r0, [r4]
	ldr r0, [r6, #0]
	bl ov5_021DC424
	mov r0, #1
	pop {r4, r5, r6, pc}
_02040ADC:
	mov r0, #0
	pop {r4, r5, r6, pc}
_02040AE0:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02040AE4: .word 0x0000EEEE
	thumb_func_end sub_02040A9C

	thumb_func_start sub_02040AE8
sub_02040AE8: ; 0x02040AE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0
	add r0, r6, #0
	bl sub_0203F098
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #0xf
	bl sub_0203F098
	str r0, [sp, #0x20]
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r0, [r0]
	add r2, r1, #1
	str r0, [sp, #0x18]
	str r2, [r5, #8]
	ldrb r0, [r1]
	add r1, r2, #1
	str r0, [sp, #0x14]
	str r1, [r5, #8]
	ldrb r7, [r2]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	add r0, r6, #0
	bl sub_0203F118
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0203F098
	ldr r1, [sp, #0x28]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x20]
	add r3, r7, #0
	ldr r1, [r1, #0]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl ov5_021DC48C
	ldr r1, [sp, #0x1c]
	str r0, [r1, #0]
	ldr r0, [sp, #0x24]
	str r0, [r5, #0x64]
	mov r0, #1
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02040AE8

	thumb_func_start sub_02040B70
sub_02040B70: ; 0x02040B70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0
	add r0, r6, #0
	bl sub_0203F098
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #0xf
	bl sub_0203F098
	str r0, [sp, #0x20]
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r0, [r0]
	add r2, r1, #1
	str r0, [sp, #0x18]
	str r2, [r5, #8]
	ldrb r0, [r1]
	add r1, r2, #1
	str r0, [sp, #0x14]
	str r1, [r5, #8]
	ldrb r7, [r2]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	add r0, r6, #0
	bl sub_0203F118
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0203F098
	ldr r1, [sp, #0x28]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x20]
	add r3, r7, #0
	ldr r1, [r1, #0]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x78]
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl ov5_021DC48C
	ldr r1, [sp, #0x1c]
	str r0, [r1, #0]
	ldr r0, [sp, #0x24]
	str r0, [r5, #0x64]
	mov r0, #1
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02040B70

	thumb_func_start sub_02040BF8
sub_02040BF8: ; 0x02040BF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r3, r0, #0
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov5_021DC4B0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02040BF8

	thumb_func_start sub_02040C58
sub_02040C58: ; 0x02040C58
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021DC4B8
	ldr r1, _02040C78 ; =sub_02040A50
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02040C78: .word sub_02040A50
	thumb_func_end sub_02040C58

	thumb_func_start sub_02040C7C
sub_02040C7C: ; 0x02040C7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov5_021DC528
	ldr r1, _02040CB4 ; =sub_02040A50
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02040CB4: .word sub_02040A50
	thumb_func_end sub_02040C7C

	thumb_func_start sub_02040CB8
sub_02040CB8: ; 0x02040CB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov5_021DC600
	ldr r1, _02040D04 ; =sub_02040A50
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02040D04: .word sub_02040A50
	thumb_func_end sub_02040CB8

	thumb_func_start sub_02040D08
sub_02040D08: ; 0x02040D08
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl ov5_021DCD94
	ldr r1, _02040D30 ; =sub_02040A50
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02040D30: .word sub_02040A50
	thumb_func_end sub_02040D08

	thumb_func_start sub_02040D34
sub_02040D34: ; 0x02040D34
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl ov5_021DD3F4
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02040D34

	thumb_func_start sub_02040D54
sub_02040D54: ; 0x02040D54
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0203F098
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl ov5_021DD410
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02040D54

	thumb_func_start sub_02040D74
sub_02040D74: ; 0x02040D74
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E850
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_02040ED4
	cmp r0, #0
	bne _02040DAA
	bl GF_AssertFail
	mov r0, #0
	pop {r4, r5, r6, pc}
_02040DAA:
	ldr r1, [r5, #8]
	add r1, r1, r4
	bl sub_02065700
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_0203F098
	ldrb r1, [r0]
	add r5, #0x80
	mov r2, #0
	add r1, r1, #1
	strb r1, [r0]
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_02040F28
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02040D74

	thumb_func_start sub_02040DD8
sub_02040DD8: ; 0x02040DD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_02040ED4
	str r0, [sp, #4]
	cmp r0, #0
	bne _02040E2E
	bl GF_AssertFail
_02040E2E:
	mov r0, #4
	add r1, r0, #0
	add r1, #0xfc
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl sub_02063020
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp, #4]
	bl sub_02063040
	lsl r0, r0, #0x10
	ldr r2, [sp]
	lsr r0, r0, #0x10
	mov r1, #0
	cmp r6, r2
	bhs _02040E64
	mov r2, #0xf
	strh r2, [r4]
	ldr r2, [sp]
	add r1, r1, #1
	sub r2, r2, r6
	strh r2, [r4, #2]
	b _02040E74
_02040E64:
	cmp r6, r2
	bls _02040E74
	mov r2, #0xe
	strh r2, [r4]
	ldr r2, [sp]
	add r1, r1, #1
	sub r2, r6, r2
	strh r2, [r4, #2]
_02040E74:
	cmp r0, r7
	bhs _02040E88
	lsl r2, r1, #2
	mov r3, #0xc
	strh r3, [r4, r2]
	sub r3, r7, r0
	add r0, r4, r2
	strh r3, [r0, #2]
	add r1, r1, #1
	b _02040E9A
_02040E88:
	cmp r0, r7
	bls _02040E9A
	lsl r2, r1, #2
	mov r3, #0xd
	strh r3, [r4, r2]
	sub r3, r0, r7
	add r0, r4, r2
	strh r3, [r0, #2]
	add r1, r1, #1
_02040E9A:
	lsl r2, r1, #2
	mov r0, #0xfe
	strh r0, [r4, r2]
	mov r1, #0
	add r0, r4, r2
	strh r1, [r0, #2]
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_02065700
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_0203F098
	ldrb r1, [r0]
	add r5, #0x80
	add r2, r4, #0
	add r1, r1, #1
	strb r1, [r0]
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl sub_02040F28
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02040DD8

	thumb_func_start sub_02040ED4
sub_02040ED4: ; 0x02040ED4
	push {r3, lr}
	cmp r1, #0xf2
	bne _02040EE4
	ldr r0, [r0, #0x38]
	mov r1, #0x30
	bl sub_02062570
	pop {r3, pc}
_02040EE4:
	cmp r1, #0xf1
	bne _02040EF2
	mov r1, #0xb
	bl sub_0203F098
	ldr r0, [r0, #0]
	pop {r3, pc}
_02040EF2:
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02040ED4

	thumb_func_start sub_02040EFC
sub_02040EFC: ; 0x02040EFC
	push {r3, lr}
	ldr r1, _02040F08 ; =sub_02040F0C
	bl sub_0203E764
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02040F08: .word sub_02040F0C
	thumb_func_end sub_02040EFC

	thumb_func_start sub_02040F0C
sub_02040F0C: ; 0x02040F0C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_0203F098
	ldrb r0, [r0]
	cmp r0, #0
	bne _02040F22
	mov r0, #1
	pop {r3, pc}
_02040F22:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02040F0C

	thumb_func_start sub_02040F28
sub_02040F28: ; 0x02040F28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x10
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02040F42
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_02040F42:
	str r5, [r4, #0xc]
	str r6, [r4, #4]
	ldr r0, _02040F58 ; =sub_02040F5C
	add r1, r4, #0
	mov r2, #0
	str r7, [r4, #8]
	bl sub_0200D9E8
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02040F58: .word sub_02040F5C
	thumb_func_end sub_02040F28

	thumb_func_start sub_02040F5C
sub_02040F5C: ; 0x02040F5C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0xc]
	mov r1, #4
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_0206574C
	cmp r0, #1
	bne _02040FA0
	ldr r0, [r5, #4]
	bl sub_02065758
	ldr r0, [r5, #0]
	bl sub_0200DA58
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02040F8A
	bl sub_020181C4
_02040F8A:
	add r0, r5, #0
	bl sub_020181C4
	ldrb r0, [r4]
	cmp r0, #0
	bne _02040F9C
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
_02040F9C:
	sub r0, r0, #1
	strb r0, [r4]
_02040FA0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02040F5C

	thumb_func_start sub_02040FA4
sub_02040FA4: ; 0x02040FA4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0xa
	add r0, r5, #0
	bl sub_0203F098
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02040FF6
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	ldr r0, [r5, #0x38]
	mov r1, #0x30
	bl sub_02062570
	add r4, r0, #0
	beq _02040FFC
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _02040FFC
	add r0, r4, #0
	bl sub_02062D1C
	cmp r0, #0
	beq _02040FFC
	add r0, r4, #0
	bl sub_02062DDC
	ldr r1, _02041000 ; =sub_020410CC
	add r0, r6, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
_02040FF6:
	add r0, r6, #0
	bl sub_020410F4
_02040FFC:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02041000: .word sub_020410CC
	thumb_func_end sub_02040FA4

	thumb_func_start sub_02041004
sub_02041004: ; 0x02041004
	push {r4, r5, r6, lr}
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #0xa
	add r0, r4, #0
	bl sub_0203F098
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	ldr r1, _020410C8 ; =0x021C07E0
	add r6, r0, #0
	ldrb r2, [r1]
	mov r1, #1
	tst r1, r2
	beq _0204103E
	bl sub_02065684
	cmp r0, #1
	bne _0204103E
	add r0, r6, #0
	bl sub_02062DD0
	ldr r1, _020410C8 ; =0x021C07E0
	mov r0, #0xfe
	ldrb r2, [r1]
	and r0, r2
	strb r0, [r1]
_0204103E:
	ldr r0, _020410C8 ; =0x021C07E0
	ldrb r1, [r0]
	mov r0, #4
	tst r0, r1
	beq _02041062
	ldr r0, [r5, #0]
	bl sub_02062D1C
	cmp r0, #0
	bne _02041062
	ldr r0, [r5, #0]
	bl sub_02062DD0
	ldr r1, _020410C8 ; =0x021C07E0
	mov r0, #0xfb
	ldrb r2, [r1]
	and r0, r2
	strb r0, [r1]
_02041062:
	ldr r0, _020410C8 ; =0x021C07E0
	ldrb r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _0204108E
	ldr r0, [r4, #0x38]
	mov r1, #0x30
	bl sub_02062570
	add r4, r0, #0
	bl sub_02062D1C
	cmp r0, #0
	bne _0204108E
	add r0, r4, #0
	bl sub_02062DD0
	ldr r1, _020410C8 ; =0x021C07E0
	mov r0, #0xfd
	ldrb r2, [r1]
	and r0, r2
	strb r0, [r1]
_0204108E:
	ldr r0, _020410C8 ; =0x021C07E0
	ldrb r1, [r0]
	mov r0, #8
	tst r0, r1
	beq _020410B8
	ldr r0, [r5, #0]
	bl sub_02069EB8
	add r4, r0, #0
	bl sub_02062D1C
	cmp r0, #0
	bne _020410B8
	add r0, r4, #0
	bl sub_02062DD0
	ldr r1, _020410C8 ; =0x021C07E0
	mov r0, #0xf7
	ldrb r2, [r1]
	and r0, r2
	strb r0, [r1]
_020410B8:
	ldr r0, _020410C8 ; =0x021C07E0
	ldrb r0, [r0]
	cmp r0, #0
	bne _020410C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_020410C4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020410C8: .word 0x021C07E0
	thumb_func_end sub_02041004

	thumb_func_start sub_020410CC
sub_020410CC: ; 0x020410CC
	push {r4, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x30
	ldr r0, [r0, #0x38]
	bl sub_02062570
	add r4, r0, #0
	bl sub_02062D1C
	cmp r0, #0
	bne _020410EE
	add r0, r4, #0
	bl sub_02062DD0
	mov r0, #1
	pop {r4, pc}
_020410EE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020410CC

	thumb_func_start sub_020410F4
sub_020410F4: ; 0x020410F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #0xa
	add r0, r4, #0
	bl sub_0203F098
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	str r0, [sp, #4]
	ldr r0, [r4, #0x38]
	mov r1, #0x30
	bl sub_02062570
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl sub_02069EB8
	add r6, r0, #0
	ldr r0, [r4, #0x38]
	ldr r1, _020411BC ; =0x021C07E0
	mov r2, #0
	strb r2, [r1]
	bl sub_02062C48
	ldr r0, [sp, #4]
	bl sub_02065684
	cmp r0, #0
	bne _02041148
	ldr r1, _020411BC ; =0x021C07E0
	mov r0, #1
	ldrb r2, [r1]
	orr r0, r2
	strb r0, [r1]
	ldr r0, [sp, #4]
	bl sub_02062DDC
_02041148:
	ldr r0, [r5, #0]
	bl sub_02062D1C
	cmp r0, #0
	beq _02041162
	ldr r1, _020411BC ; =0x021C07E0
	mov r0, #4
	ldrb r2, [r1]
	orr r0, r2
	strb r0, [r1]
	ldr r0, [r5, #0]
	bl sub_02062DDC
_02041162:
	cmp r7, #0
	beq _0204118E
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #1
	bne _0204118E
	add r0, r7, #0
	bl sub_02062D1C
	cmp r0, #0
	beq _0204118E
	ldr r1, _020411BC ; =0x021C07E0
	mov r0, #2
	ldrb r2, [r1]
	orr r0, r2
	strb r0, [r1]
	add r0, r7, #0
	bl sub_02062DDC
_0204118E:
	cmp r6, #0
	beq _020411AC
	add r0, r6, #0
	bl sub_02062D1C
	cmp r0, #0
	beq _020411AC
	ldr r1, _020411BC ; =0x021C07E0
	mov r0, #8
	ldrb r2, [r1]
	orr r0, r2
	strb r0, [r1]
	add r0, r6, #0
	bl sub_02062DDC
_020411AC:
	ldr r0, [sp]
	ldr r1, _020411C0 ; =sub_02041004
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020411BC: .word 0x021C07E0
_020411C0: .word sub_02041004
	thumb_func_end sub_020410F4

	thumb_func_start sub_020411C4
sub_020411C4: ; 0x020411C4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	bl sub_02062C78
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020411C4

	thumb_func_start sub_020411D4
sub_020411D4: ; 0x020411D4
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_0206251C
	bl sub_02062DD0
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020411D4

	thumb_func_start sub_020411F0
sub_020411F0: ; 0x020411F0
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_0206251C
	bl sub_02062DDC
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020411F0

	thumb_func_start sub_0204120C
sub_0204120C: ; 0x0204120C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203A4B4
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203A4BC
	str r0, [sp]
	ldr r3, [r5, #0x1c]
	ldr r0, [r5, #0x38]
	ldr r3, [r3, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02061A74
	cmp r0, #0
	bne _0204124E
	bl GF_AssertFail
_0204124E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0204120C

	thumb_func_start sub_02041254
sub_02041254: ; 0x02041254
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0206251C
	cmp r0, #0
	bne _0204127E
	bl GF_AssertFail
	b _02041282
_0204127E:
	bl sub_02061B28
_02041282:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02041254

	thumb_func_start sub_02041288
sub_02041288: ; 0x02041288
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r1, [r0, #0x1c]
	add r2, r7, #0
	ldr r1, [r1, #0]
	str r1, [sp, #8]
	ldr r0, [r0, #0x38]
	add r1, r6, #0
	bl sub_020619DC
	str r0, [r4, #0]
	bl sub_020642F8
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02062D64
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02062D80
	ldr r0, [r4, #0]
	bl sub_02063070
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	add r4, r0, #0
	ldr r1, [r1, #0x28]
	bl ov5_021E931C
	add r5, #0x80
	ldr r1, [r5, #0]
	add r0, r4, #0
	ldr r1, [r1, #0x24]
	bl sub_02020690
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02041288

	thumb_func_start sub_02041320
sub_02041320: ; 0x02041320
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_02061AF4
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xff
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	bl sub_02063070
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	add r4, r0, #0
	ldr r1, [r1, #0x28]
	bl ov5_021E931C
	add r5, #0x80
	ldr r1, [r5, #0]
	add r0, r4, #0
	ldr r1, [r1, #0x24]
	bl sub_02020690
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02041320

	thumb_func_start sub_02041364
sub_02041364: ; 0x02041364
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl sub_0203F098
	mov r1, #2
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	lsl r1, r1, #0xc
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r1, [r0, #0x1c]
	add r2, r7, #0
	ldr r1, [r1, #0]
	str r1, [sp, #8]
	ldr r0, [r0, #0x38]
	add r1, r6, #0
	bl sub_020619DC
	str r0, [r4, #0]
	bl sub_020642F8
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02062D64
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02062D80
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02041364

	thumb_func_start sub_020413D8
sub_020413D8: ; 0x020413D8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_02061AF4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020413D8

	thumb_func_start sub_020413F0
sub_020413F0: ; 0x020413F0
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r5, [r0, #0]
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	bl sub_0206447C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xa
	bl sub_0203F098
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02041414
	mov r0, #0
	pop {r3, r4, r5, pc}
_02041414:
	add r1, r4, #0
	bl ov5_021ECDFC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020413F0

	thumb_func_start sub_02041420
sub_02041420: ; 0x02041420
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	strh r0, [r6]
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02041420

	thumb_func_start sub_02041464
sub_02041464: ; 0x02041464
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0206251C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02063020
	strh r0, [r6]
	add r0, r5, #0
	bl sub_02063040
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02041464

	thumb_func_start sub_020414C4
sub_020414C4: ; 0x020414C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020414C4

	thumb_func_start sub_020414EC
sub_020414EC: ; 0x020414EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	cmp r7, #0
	beq _02041542
	lsl r0, r7, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02041550
_02041542:
	lsl r0, r7, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02041550:
	bl _f_ftoi
	str r0, [sp]
	cmp r6, #0
	beq _0204156C
	lsl r0, r6, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0204157A
_0204156C:
	lsl r0, r6, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0204157A:
	bl _f_ftoi
	str r0, [sp, #4]
	cmp r4, #0
	beq _02041596
	lsl r0, r4, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _020415A4
_02041596:
	lsl r0, r4, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_020415A4:
	bl _f_ftoi
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	add r1, sp, #0
	bl sub_020630AC
	add r5, #0x80
	ldr r1, [r5, #0]
	add r0, sp, #0
	ldr r1, [r1, #0x24]
	bl sub_02020990
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020414EC

	thumb_func_start sub_020415D0
sub_020415D0: ; 0x020415D0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	bl sub_02062E5C
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020415D0

	thumb_func_start sub_02041604
sub_02041604: ; 0x02041604
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020633A8
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02041604

	thumb_func_start sub_0204163C
sub_0204163C: ; 0x0204163C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	cmp r0, #0
	beq _0204167E
	bl sub_02062948
	strh r0, [r4]
_0204167E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204163C

	thumb_func_start sub_02041684
sub_02041684: ; 0x02041684
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x30
	ldr r0, [r0, #0x38]
	bl sub_02062570
	mov r1, #0xfe
	bl sub_020633C8
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02041684

	thumb_func_start sub_0204169C
sub_0204169C: ; 0x0204169C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CA1C
	bl sub_0202CBA8
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204169C

	thumb_func_start sub_020416C8
sub_020416C8: ; 0x020416C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CA1C
	add r1, r6, #0
	bl sub_0202CBC8
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020416C8

	thumb_func_start sub_02041708
sub_02041708: ; 0x02041708
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CA1C
	lsl r2, r4, #0x10
	add r1, r6, #0
	asr r2, r2, #0x10
	bl sub_0202CAE0
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02041708

	thumb_func_start sub_0204174C
sub_0204174C: ; 0x0204174C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	bl sub_02076AF8
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204174C

	thumb_func_start sub_02041790
sub_02041790: ; 0x02041790
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r1, r5, #0
	add r1, #0x80
	add r4, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0x20
	bl sub_0203D3C0
	str r0, [r4, #0]
	ldr r1, _020417BC ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_020417BC: .word sub_02041D60
	thumb_func_end sub_02041790

	thumb_func_start sub_020417C0
sub_020417C0: ; 0x020417C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r1, r5, #0
	add r1, #0x80
	add r4, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0x20
	bl sub_0203D3E4
	str r0, [r4, #0]
	ldr r1, _020417EC ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_020417EC: .word sub_02041D60
	thumb_func_end sub_020417C0

	thumb_func_start sub_020417F0
sub_020417F0: ; 0x020417F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x20
	ldr r0, [r0, #0x10]
	bl sub_0203D50C
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020417F0

	thumb_func_start sub_02041814
sub_02041814: ; 0x02041814
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02041840
	bl GF_AssertFail
_02041840:
	ldr r0, [r4, #0]
	bl sub_0203D408
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #7
	bne _02041852
	mov r0, #0xff
	strh r0, [r5]
_02041852:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02041814

	thumb_func_start sub_02041860
sub_02041860: ; 0x02041860
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r6, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r7, [r4, #0]
	cmp r7, #0
	bne _020418A0
	bl GF_AssertFail
_020418A0:
	ldr r0, [r4, #0]
	bl sub_0203D408
	cmp r0, #7
	bne _020418B0
	mov r0, #0xff
	strh r0, [r5]
	b _020418D2
_020418B0:
	cmp r0, #6
	bne _020418D2
	add r0, r7, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r7, #0x2d
	strh r0, [r5]
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	ldrb r0, [r7]
	strh r0, [r6]
	ldrh r0, [r6]
	cmp r0, #0
	beq _020418D2
	sub r0, r0, #1
	strh r0, [r6]
_020418D2:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02041860

	thumb_func_start sub_020418E0
sub_020418E0: ; 0x020418E0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r7, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r6, r0, #0
	ldr r4, [r6, #0]
	cmp r4, #0
	bne _02041934
	bl GF_AssertFail
_02041934:
	ldr r0, [r6, #0]
	bl sub_0203D408
	cmp r0, #7
	bne _02041944
	mov r0, #0xff
	strh r0, [r5]
	b _02041978
_02041944:
	cmp r0, #6
	bne _02041978
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	strh r0, [r5]
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	add r0, r4, #0
	add r0, #0x2d
	ldrb r1, [r0]
	ldr r0, [sp]
	add r4, #0x2e
	strh r1, [r0]
	ldrh r0, [r0]
	sub r1, r0, #1
	ldr r0, [sp]
	strh r1, [r0]
	ldrb r0, [r4]
	strh r0, [r7]
	ldrh r0, [r7]
	cmp r0, #0
	beq _02041978
	sub r0, r0, #1
	strh r0, [r7]
_02041978:
	ldr r0, [r6, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020418E0

	thumb_func_start sub_02041984
sub_02041984: ; 0x02041984
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r7, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r6, r0, #0
	ldr r4, [r6, #0]
	cmp r4, #0
	bne _020419D8
	bl GF_AssertFail
_020419D8:
	ldr r0, [r6, #0]
	bl sub_0203D408
	cmp r0, #7
	bne _020419E8
	mov r0, #0xff
	strh r0, [r5]
	b _02041A1C
_020419E8:
	cmp r0, #6
	bne _02041A1C
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	strh r0, [r5]
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	add r0, r4, #0
	add r0, #0x2d
	ldrb r1, [r0]
	ldr r0, [sp]
	add r4, #0x2e
	strh r1, [r0]
	ldrh r0, [r0]
	sub r1, r0, #1
	ldr r0, [sp]
	strh r1, [r0]
	ldrb r0, [r4]
	strh r0, [r7]
	ldrh r0, [r7]
	cmp r0, #0
	beq _02041A1C
	sub r0, r0, #1
	strh r0, [r7]
_02041A1C:
	ldr r0, [r6, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02041984

	thumb_func_start sub_02041A28
sub_02041A28: ; 0x02041A28
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r1, r5, #0
	str r6, [sp, #4]
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r2, [sp, #8]
	mov r0, #0x20
	add r3, r7, #0
	bl sub_0203D578
	str r0, [r4, #0]
	ldr r1, _02041AAC ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02041AAC: .word sub_02041D60
	thumb_func_end sub_02041A28

	thumb_func_start sub_02041AB0
sub_02041AB0: ; 0x02041AB0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02041AF0
	bl GF_AssertFail
_02041AF0:
	ldr r0, [r4, #0]
	bl sub_0203D408
	strh r0, [r6]
	ldrh r0, [r6]
	cmp r0, #7
	bne _02041B02
	mov r0, #0xff
	strh r0, [r6]
_02041B02:
	ldr r0, [r4, #0]
	bl sub_0203D438
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #1
	bne _02041B14
	mov r0, #1
	b _02041B16
_02041B14:
	mov r0, #0
_02041B16:
	strh r0, [r5]
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02041AB0

	thumb_func_start sub_02041B24
sub_02041B24: ; 0x02041B24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r5, #0
	add r1, #0x80
	add r2, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0x20
	bl sub_0203D5C8
	str r0, [r4, #0]
	ldr r1, _02041B64 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02041B64: .word sub_02041D60
	thumb_func_end sub_02041B24

	thumb_func_start sub_02041B68
sub_02041B68: ; 0x02041B68
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02041B94
	bl GF_AssertFail
_02041B94:
	ldr r0, [r4, #0]
	bl sub_0203D440
	strh r0, [r5]
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02041B68

	thumb_func_start sub_02041BA8
sub_02041BA8: ; 0x02041BA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r5, #0
	add r1, #0x80
	add r3, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0x20
	add r2, r6, #0
	bl sub_0203E63C
	str r0, [r4, #0]
	ldr r1, _02041BFC ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02041BFC: .word sub_02041D60
	thumb_func_end sub_02041BA8

	thumb_func_start sub_02041C00
sub_02041C00: ; 0x02041C00
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02041C2C
	bl GF_AssertFail
_02041C2C:
	ldr r0, [r4, #0]
	ldrb r0, [r0, #0x16]
	strh r0, [r5]
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02041C00

	thumb_func_start sub_02041C40
sub_02041C40: ; 0x02041C40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	add r2, r7, #0
	bl ov5_021DBD98
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02041C40

	thumb_func_start sub_02041C8C
sub_02041C8C: ; 0x02041C8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A74C
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02041C8C

	thumb_func_start sub_02041CB8
sub_02041CB8: ; 0x02041CB8
	mov r0, #0
	bx lr
	thumb_func_end sub_02041CB8

	thumb_func_start sub_02041CBC
sub_02041CBC: ; 0x02041CBC
	mov r0, #0
	bx lr
	thumb_func_end sub_02041CBC

	thumb_func_start sub_02041CC0
sub_02041CC0: ; 0x02041CC0
	mov r0, #1
	bx lr
	thumb_func_end sub_02041CC0

	thumb_func_start sub_02041CC4
sub_02041CC4: ; 0x02041CC4
	mov r0, #0
	bx lr
	thumb_func_end sub_02041CC4

	thumb_func_start sub_02041CC8
sub_02041CC8: ; 0x02041CC8
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0x13
	add r0, r5, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	beq _02041CE6
	mov r0, #0
	pop {r3, r4, r5, pc}
_02041CE6:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02041CC8

	thumb_func_start sub_02041CF4
sub_02041CF4: ; 0x02041CF4
	push {r4, r5, r6, lr}
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0x13
	add r0, r5, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	ldr r6, [r4, #0]
	bl sub_020509B4
	cmp r0, #0
	beq _02041D14
	mov r0, #0
	pop {r4, r5, r6, pc}
_02041D14:
	ldr r0, [r6, #8]
	cmp r0, #1
	bne _02041D2C
	mov r0, #0xb
	bl sub_0202BCFC
	add r5, #0x9c
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #1
	bl sub_0202B758
_02041D2C:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02041CF4

	thumb_func_start sub_02041D3C
sub_02041D3C: ; 0x02041D3C
	push {r4, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0209C238
	cmp r0, #0
	bne _02041D58
	mov r0, #0
	pop {r4, pc}
_02041D58:
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02041D3C

	thumb_func_start sub_02041D60
sub_02041D60: ; 0x02041D60
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020509B4
	cmp r0, #0
	bne _02041D72
	mov r0, #1
	pop {r3, pc}
_02041D72:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02041D60

	thumb_func_start sub_02041D78
sub_02041D78: ; 0x02041D78
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_02055868
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02041D78

	thumb_func_start sub_02041D88
sub_02041D88: ; 0x02041D88
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_02055820
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02041D88

	thumb_func_start sub_02041D98
sub_02041D98: ; 0x02041D98
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0202A750
	cmp r5, #0
	bne _02041DB6
	add r1, r4, #0
	bl sub_02029D10
	cmp r0, #0
	bne _02041DC4
	mov r0, #0
	pop {r3, r4, r5, pc}
_02041DB6:
	add r1, r4, #0
	bl sub_02029D2C
	cmp r0, #0
	bne _02041DC4
	mov r0, #0
	pop {r3, r4, r5, pc}
_02041DC4:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02041D98

	thumb_func_start sub_02041DC8
sub_02041DC8: ; 0x02041DC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0202A750
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02041D98
	cmp r0, #0
	bne _02041DEC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02041DEC:
	ldr r0, [sp]
	mov r1, #0xc
	bl sub_02018144
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	str r7, [r0, #0]
	str r4, [r0, #8]
	str r6, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02041DC8

	thumb_func_start sub_02041E18
sub_02041E18: ; 0x02041E18
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov5_021EAF50
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02041E18

	thumb_func_start sub_02041E28
sub_02041E28: ; 0x02041E28
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl sub_0207DDC0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02041E28

	thumb_func_start sub_02041E34
sub_02041E34: ; 0x02041E34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	ldr r1, [r4, #0]
	ldr r1, [r1, #4]
	strh r1, [r0]
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02041E34

	thumb_func_start sub_02041E64
sub_02041E64: ; 0x02041E64
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	bl sub_0203608C
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02041E64

	thumb_func_start sub_02041E84
sub_02041E84: ; 0x02041E84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r2, _02041F10 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0xb
	str r0, [sp]
	ldr r0, _02041F10 ; =0x000003D9
	mov r1, #3
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	str r4, [sp, #8]
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r2, #0xa
	ldr r0, [r0, #8]
	mov r3, #5
	bl sub_0200EBF0
	add r5, #0x80
	str r0, [r6, #0]
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_020451B4
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02041F10: .word 0x000003D9
	thumb_func_end sub_02041E84

	thumb_func_start sub_02041F14
sub_02041F14: ; 0x02041F14
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r2, _02041FA8 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0xb
	str r0, [sp]
	ldr r0, _02041FA8 ; =0x000003D9
	mov r1, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r2, #0xa
	ldr r0, [r0, #8]
	mov r3, #5
	bl sub_0200EC48
	str r0, [r6, #0]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	add r5, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r5, #0]
	lsr r1, r1, #0x10
	bl sub_020451B4
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02041FA8: .word 0x000003D9
	thumb_func_end sub_02041F14

	thumb_func_start sub_02041FAC
sub_02041FAC: ; 0x02041FAC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	mov r1, #1
	strb r1, [r0]
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02041FAC

	thumb_func_start sub_02041FC4
sub_02041FC4: ; 0x02041FC4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	mov r1, #2
	strb r1, [r0]
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02041FC4

	thumb_func_start sub_02041FDC
sub_02041FDC: ; 0x02041FDC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	str r0, [r4, #0x64]
	ldr r1, _02041FF4 ; =sub_02041FF8
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_02041FF4: .word sub_02041FF8
	thumb_func_end sub_02041FDC

	thumb_func_start sub_02041FF8
sub_02041FF8: ; 0x02041FF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	ldr r0, [r4, #0]
	ldrb r0, [r0]
	cmp r0, #3
	beq _02042024
	mov r0, #1
	pop {r3, r4, r5, pc}
_02042024:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02041FF8

	thumb_func_start sub_02042028
sub_02042028: ; 0x02042028
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_0203F118
	add r2, r0, #0
	ldr r0, [r5, #0x74]
	ldr r1, [r4, #0]
	bl ov5_021DB888
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02042028

	thumb_func_start sub_0204205C
sub_0204205C: ; 0x0204205C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0204209C
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02071CB4
	cmp r0, #0
	beq _02042092
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl ov8_0224C5DC
	cmp r0, #0
	bne _0204209C
_02042092:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl ov5_021DBED4
_0204209C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204205C

	thumb_func_start sub_020420A0
sub_020420A0: ; 0x020420A0
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl sub_0209ACF4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020420A0

	thumb_func_start sub_020420AC
sub_020420AC: ; 0x020420AC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	bl sub_0209B344
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020420AC

	thumb_func_start sub_020420CC
sub_020420CC: ; 0x020420CC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	ldr r2, [r5, #0]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [r2, #0x10]
	ldr r2, [r2, #0xc]
	add r3, r4, #0
	bl sub_0203DAC0
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020420CC

	thumb_func_start sub_02042124
sub_02042124: ; 0x02042124
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r1, r5, #0
	add r1, #0x80
	add r6, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0xb
	mov r2, #0
	add r3, r7, #0
	bl sub_02041DC8
	str r0, [r4, #0]
	cmp r0, #0
	bne _0204216C
	mov r0, #1
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_0204216C:
	mov r0, #0
	strh r0, [r6]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_0203DB24
	ldr r1, _02042188 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02042188: .word sub_02041CC8
	thumb_func_end sub_02042124

	thumb_func_start sub_0204218C
sub_0204218C: ; 0x0204218C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r1, r5, #0
	add r1, #0x80
	add r6, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0xb
	mov r2, #1
	add r3, r7, #0
	bl sub_02041DC8
	str r0, [r4, #0]
	cmp r0, #0
	bne _020421D4
	mov r0, #1
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_020421D4:
	mov r0, #0
	strh r0, [r6]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_0203DB24
	ldr r1, _020421F0 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020421F0: .word sub_02041CC8
	thumb_func_end sub_0204218C

	thumb_func_start sub_020421F4
sub_020421F4: ; 0x020421F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0
	add r2, r6, #0
	bl sub_02041D98
	cmp r0, #1
	bne _02042228
	mov r0, #1
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_02042228:
	mov r0, #0
	strh r0, [r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020421F4

	thumb_func_start sub_02042230
sub_02042230: ; 0x02042230
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #1
	add r2, r6, #0
	bl sub_02041D98
	cmp r0, #1
	bne _02042264
	mov r0, #1
	strh r0, [r4]
	pop {r4, r5, r6, pc}
_02042264:
	mov r0, #0
	strh r0, [r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02042230

	thumb_func_start sub_0204226C
sub_0204226C: ; 0x0204226C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	mov r1, #0
	bl sub_02029CA8
	add r1, r4, #0
	bl sub_0202A0A0
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204226C

	thumb_func_start sub_0204229C
sub_0204229C: ; 0x0204229C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203E224
	ldr r1, _020422B4 ; =sub_02041D60
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_020422B4: .word sub_02041D60
	thumb_func_end sub_0204229C

	thumb_func_start sub_020422B8
sub_020422B8: ; 0x020422B8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203E704
	ldr r1, _020422D0 ; =sub_02041D60
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_020422D0: .word sub_02041D60
	thumb_func_end sub_020422B8

	thumb_func_start sub_020422D4
sub_020422D4: ; 0x020422D4
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x74]
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	bl sub_020980DC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020422D4

	thumb_func_start sub_020422E8
sub_020422E8: ; 0x020422E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	mov r1, #5
	add r4, r0, #0
	mov r0, #0xb
	lsl r1, r1, #6
	bl sub_02018144
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	mov r2, #2
	bl sub_0206B70C
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_0203D884
	ldr r1, _0204232C ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0204232C: .word sub_02041CC8
	thumb_func_end sub_020422E8

	thumb_func_start sub_02042330
sub_02042330: ; 0x02042330
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r2, #0xb
	bl sub_02099674
	str r0, [r4, #0]
	ldr r1, _02042364 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02042364: .word sub_02041CC8
	thumb_func_end sub_02042330

	thumb_func_start sub_02042368
sub_02042368: ; 0x02042368
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	mov r1, #4
	bl sub_0207D69C
	cmp r0, #0
	bne _0204239C
	mov r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204239C:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202AB28
	bl sub_0202AC98
	cmp r0, #0x64
	blo _020423B6
	mov r0, #2
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
_020423B6:
	mov r0, #0
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042368

	thumb_func_start sub_020423BC
sub_020423BC: ; 0x020423BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r6, r0, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018144
	mov r1, #0
	mov r2, #8
	str r0, [r6, #0]
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	strh r7, [r4, #4]
	strh r0, [r4, #6]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r6, #0]
	bl sub_0203D9D8
	ldr r1, _02042430 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02042430: .word sub_02041CC8
	thumb_func_end sub_020423BC

	thumb_func_start sub_02042434
sub_02042434: ; 0x02042434
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018144
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0]
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	str r1, [r0, #4]
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_0203D754
	ldr r1, _0204247C ; =sub_02041CF4
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0204247C: .word sub_02041CF4
	thumb_func_end sub_02042434

	thumb_func_start sub_02042480
sub_02042480: ; 0x02042480
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203DDFC
	ldr r1, _02042498 ; =sub_02041D60
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02042498: .word sub_02041D60
	thumb_func_end sub_02042480

	thumb_func_start sub_0204249C
sub_0204249C: ; 0x0204249C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02072204
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204249C

	thumb_func_start sub_020424AC
sub_020424AC: ; 0x020424AC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_0203DDDC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020424AC

	thumb_func_start sub_020424BC
sub_020424BC: ; 0x020424BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203DE34
	str r0, [r4, #0]
	ldr r1, _020424E4 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020424E4: .word sub_02041CC8
	thumb_func_end sub_020424BC

	thumb_func_start sub_020424E8
sub_020424E8: ; 0x020424E8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_02052E58
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020424E8

	thumb_func_start sub_020424F8
sub_020424F8: ; 0x020424F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203E244
	str r0, [r4, #0]
	ldr r1, _02042520 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02042520: .word sub_02041CC8
	thumb_func_end sub_020424F8

	thumb_func_start sub_02042524
sub_02042524: ; 0x02042524
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #4
	ldr r0, [r0, #0xc]
	add r2, sp, #0
	bl sub_0202444C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	mov r1, #0
	strh r1, [r0]
	ldr r1, [sp]
	cmp r1, #2
	bne _02042556
	mov r1, #1
	strh r1, [r0]
_02042556:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042524

	thumb_func_start sub_02042560
sub_02042560: ; 0x02042560
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02039074
	cmp r0, #0
	beq _020425B4
	mov r0, #1
	strh r0, [r4]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_0203E0FC
	ldr r1, _020425BC ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	b _020425B8
_020425B4:
	mov r0, #0
	strh r0, [r4]
_020425B8:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020425BC: .word sub_02041D60
	thumb_func_end sub_02042560

	thumb_func_start sub_020425C0
sub_020425C0: ; 0x020425C0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	bl sub_0207DDE0
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020425C0

	thumb_func_start sub_020425E0
sub_020425E0: ; 0x020425E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018144
	str r0, [r4, #0]
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	str r0, [r6, #4]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_0203E0C0
	ldr r1, _02042624 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02042624: .word sub_02041D60
	thumb_func_end sub_020425E0

	thumb_func_start sub_02042628
sub_02042628: ; 0x02042628
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r1, [r4, #0]
	ldr r1, [r1, #0]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0206B044
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042628

	thumb_func_start sub_02042658
sub_02042658: ; 0x02042658
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r1]
	cmp r0, #0
	beq _0204266C
	mov r0, #1
	b _0204266E
_0204266C:
	mov r0, #0
_0204266E:
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _0204268A
	bl GF_AssertFail
_0204268A:
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_0203D264
	str r0, [r6, #0]
	ldr r1, _020426A4 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020426A4: .word sub_02041D60
	thumb_func_end sub_02042658

	thumb_func_start sub_020426A8
sub_020426A8: ; 0x020426A8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _020426D4
	bl GF_AssertFail
_020426D4:
	ldr r0, [r4, #0]
	bl sub_0203D2C4
	strh r0, [r5]
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020426A8

	thumb_func_start sub_020426E8
sub_020426E8: ; 0x020426E8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x74]
	add r2, r1, #0
	mov r3, #7
	bl sub_0203DFE8
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020426E8

	thumb_func_start sub_02042718
sub_02042718: ; 0x02042718
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0x75
	add r2, sp, #0xc
	add r7, r0, #0
	bl sub_02074470
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	str r6, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x74]
	mov r1, #1
	mov r3, #0xa
	bl sub_0203DFE8
	mov r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02042718

	thumb_func_start sub_02042784
sub_02042784: ; 0x02042784
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x74]
	mov r1, #6
	mov r3, #0xa
	bl sub_0203DFE8
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02042784

	thumb_func_start sub_020427B4
sub_020427B4: ; 0x020427B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0209C1EC
	str r0, [r4, #0]
	ldr r1, _020427DC ; =sub_02041D3C
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020427DC: .word sub_02041D3C
	thumb_func_end sub_020427B4

	thumb_func_start sub_020427E0
sub_020427E0: ; 0x020427E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	bl sub_0205BE38
	add r5, r0, #0
	bl sub_02025FD4
	cmp r5, r0
	bne _02042806
	mov r0, #0
	b _02042808
_02042806:
	mov r0, #1
_02042808:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020427E0

	thumb_func_start sub_02042810
sub_02042810: ; 0x02042810
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r2, r0, #0
	ldr r0, _02042864 ; =0x0000FFFF
	add r5, #0x80
	strh r0, [r2]
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x10]
	mov r3, #0
	bl sub_0203D80C
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02042864: .word 0x0000FFFF
	thumb_func_end sub_02042810

	thumb_func_start sub_02042868
sub_02042868: ; 0x02042868
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r3, r0, #0
	ldr r0, _020428D0 ; =0x0000FFFF
	add r5, #0x80
	strh r0, [r4]
	strh r0, [r3]
	ldr r0, [r5, #0]
	add r1, r6, #0
	ldr r0, [r0, #0x10]
	add r2, r4, #0
	bl sub_0203D80C
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020428D0: .word 0x0000FFFF
	thumb_func_end sub_02042868

	thumb_func_start sub_020428D4
sub_020428D4: ; 0x020428D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl sub_0200BE48
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020428D4

	thumb_func_start sub_02042918
sub_02042918: ; 0x02042918
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	str r4, [sp]
	add r3, r0, #0
	str r6, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r1, r7, #0
	add r2, r7, #0
	bl sub_0200F174
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02042918

	thumb_func_start sub_02042960
sub_02042960: ; 0x02042960
	push {r3, lr}
	ldr r1, _0204296C ; =sub_02042970
	bl sub_0203E764
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_0204296C: .word sub_02042970
	thumb_func_end sub_02042960

	thumb_func_start sub_02042970
sub_02042970: ; 0x02042970
	push {r3, lr}
	bl sub_0200F2AC
	cmp r0, #1
	bne _0204297E
	mov r0, #1
	pop {r3, pc}
_0204297E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02042970

	thumb_func_start sub_02042984
sub_02042984: ; 0x02042984
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r4, [sp]
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, [r5, #0x74]
	add r1, r6, #0
	mvn r2, r2
	add r3, r7, #0
	bl sub_02053A80
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02042984

	thumb_func_start sub_020429F4
sub_020429F4: ; 0x020429F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	str r4, [sp]
	mov r2, #0
	add r5, #0x80
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, r6, #0
	ldr r0, [r0, #0x10]
	mvn r2, r2
	add r3, r7, #0
	bl sub_02054800
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020429F4

	thumb_func_start sub_02042A50
sub_02042A50: ; 0x02042A50
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_02054864
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02042A50

	thumb_func_start sub_02042A60
sub_02042A60: ; 0x02042A60
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A728
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	ldr r1, [r5, #0]
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042A60

	thumb_func_start sub_02042A8C
sub_02042A8C: ; 0x02042A8C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	ldr r1, [r4, #0]
	ldr r1, [r1, #0x1c]
	ldr r1, [r1, #0]
	strh r1, [r0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02042A8C

	thumb_func_start sub_02042AB0
sub_02042AB0: ; 0x02042AB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	add r2, r4, #0
	bl ov5_021E0734
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042AB0

	thumb_func_start sub_02042AE0
sub_02042AE0: ; 0x02042AE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205F16C
	cmp r0, #1
	bne _02042B0E
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	b _02042B1A
_02042B0E:
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA94
_02042B1A:
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	bl ov5_021E00EC
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042AE0

	thumb_func_start sub_02042B3C
sub_02042B3C: ; 0x02042B3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	add r2, r4, #0
	bl ov5_021E0998
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042B3C

	thumb_func_start sub_02042B6C
sub_02042B6C: ; 0x02042B6C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r5, #0x80
	ldr r0, [r5, #0]
	add r1, r4, #0
	sub r2, r2, #2
	add r3, r6, #0
	bl sub_02053AB4
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02042B6C

	thumb_func_start sub_02042BB8
sub_02042BB8: ; 0x02042BB8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	add r5, r0, #0
	mov r1, #0
	bl sub_0203A754
	add r0, r5, #0
	bl sub_0203A74C
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	bl ov5_021D5F7C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02042BB8

	thumb_func_start sub_02042BE8
sub_02042BE8: ; 0x02042BE8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	add r5, r0, #0
	mov r1, #0
	bl sub_0203A754
	add r0, r5, #0
	bl sub_0203A74C
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	bl ov5_021D5F7C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02042BE8

	thumb_func_start sub_02042C18
sub_02042C18: ; 0x02042C18
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A0FC
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB98
	add r3, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	add r2, r6, #0
	bl ov6_02243F88
	str r0, [r4, #0]
	ldr r1, _02042C7C ; =sub_02042C80
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02042C7C: .word sub_02042C80
	thumb_func_end sub_02042C18

	thumb_func_start sub_02042C80
sub_02042C80: ; 0x02042C80
	push {r4, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov6_02243FBC
	cmp r0, #1
	bne _02042CA2
	ldr r0, [r4, #0]
	bl ov6_02243FC8
	mov r0, #1
	pop {r4, pc}
_02042CA2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02042C80

	thumb_func_start sub_02042CA8
sub_02042CA8: ; 0x02042CA8
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl ov5_021E0DD4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02042CA8

	thumb_func_start sub_02042CB4
sub_02042CB4: ; 0x02042CB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB74
	cmp r0, #1
	bne _02042CDC
	mov r0, #1
	b _02042CDE
_02042CDC:
	mov r0, #0
_02042CDE:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042CB4

	thumb_func_start sub_02042CE4
sub_02042CE4: ; 0x02042CE4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	add r0, r1, #1
	str r0, [r4, #8]
	ldrb r0, [r1]
	cmp r0, #1
	bne _02042D2C
	add r0, r4, #0
	add r0, #0x80
	mov r1, #0x12
	ldr r0, [r0, #0]
	lsl r1, r1, #6
	bl sub_020553F0
	add r0, r4, #0
	add r0, #0x80
	mov r1, #0x12
	ldr r0, [r0, #0]
	lsl r1, r1, #6
	mov r2, #1
	bl sub_02055554
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x3c]
	bl ov5_021DFB54
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x3c]
	bl ov5_021DFB5C
	b _02042D6C
_02042D2C:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	ldr r0, [r0, #0x3c]
	bl ov5_021DFB54
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl ov5_021DFB5C
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_020553F0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x1c]
	ldr r1, [r1, #0]
	bl sub_02055428
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #1
	bl sub_02055554
_02042D6C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02042CE4

	thumb_func_start sub_02042D70
sub_02042D70: ; 0x02042D70
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, _02042D80 ; =0x000004A5
	bl sub_020553F0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02042D80: .word 0x000004A5
	thumb_func_end sub_02042D70

	thumb_func_start sub_02042D84
sub_02042D84: ; 0x02042D84
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	ldrb r1, [r2]
	ldr r0, [r0, #0x3c]
	bl sub_0205EFC4
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02042D84

	thumb_func_start sub_02042D9C
sub_02042D9C: ; 0x02042D9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB74
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02042D9C

	thumb_func_start sub_02042DC4
sub_02042DC4: ; 0x02042DC4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB84
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02042DC4

	thumb_func_start sub_02042DDC
sub_02042DDC: ; 0x02042DDC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl ov5_021DFB5C
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02042DDC

	thumb_func_start sub_02042DEC
sub_02042DEC: ; 0x02042DEC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202D834
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_0202D814
	add r1, r6, #0
	add r2, r4, #0
	bl ov6_0224322C
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02042DEC

	thumb_func_start sub_02042E38
sub_02042E38: ; 0x02042E38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B054
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02042E38

	thumb_func_start sub_02042E64
sub_02042E64: ; 0x02042E64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #8
	add r0, r4, #0
	bl sub_0203F098
	add r0, r4, #0
	mov r1, #0x10
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #6
	bl sub_0203F098
	add r0, r4, #0
	mov r1, #3
	bl sub_0203F098
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [sp]
	ldr r2, [r6, #0]
	mov r3, #0xb
	bl sub_020792F8
	add r0, r4, #0
	mov r1, #1
	bl sub_0203F098
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	mov r1, #1
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	ldr r1, [r6, #0]
	add r0, r4, #0
	mov r3, #1
	bl sub_0205D994
	strb r0, [r7]
	ldr r1, _02042F00 ; =sub_02040014
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02042F00: .word sub_02040014
	thumb_func_end sub_02042E64

	thumb_func_start sub_02042F04
sub_02042F04: ; 0x02042F04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	ldr r2, [sp]
	ldr r3, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov7_0224B414
	ldr r1, _02042F70 ; =sub_02042F74
	add r0, r5, #0
	str r6, [r5, #0x64]
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02042F70: .word sub_02042F74
	thumb_func_end sub_02042F04

	thumb_func_start sub_02042F74
sub_02042F74: ; 0x02042F74
	push {r4, lr}
	add r1, r0, #0
	ldr r1, [r1, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r4, r0, #0
	bl ov7_0224B460
	cmp r0, #0
	bne _02042F94
	mov r0, #0
	pop {r4, pc}
_02042F94:
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02042F74

	thumb_func_start sub_02042F9C
sub_02042F9C: ; 0x02042F9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	ldr r2, [sp]
	ldr r3, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov7_0224B47C
	ldr r1, _02043008 ; =sub_0204300C
	add r0, r5, #0
	str r6, [r5, #0x64]
	bl sub_0203E764
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02043008: .word sub_0204300C
	thumb_func_end sub_02042F9C

	thumb_func_start sub_0204300C
sub_0204300C: ; 0x0204300C
	push {r4, lr}
	add r1, r0, #0
	ldr r1, [r1, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r4, r0, #0
	bl ov7_0224B4C8
	cmp r0, #0
	bne _0204302C
	mov r0, #0
	pop {r4, pc}
_0204302C:
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204300C

	thumb_func_start sub_02043034
sub_02043034: ; 0x02043034
	push {r3, lr}
	bl sub_0203E838
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043034

	thumb_func_start sub_02043040
sub_02043040: ; 0x02043040
	push {r3, lr}
	bl sub_0203E838
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043040

	thumb_func_start sub_0204304C
sub_0204304C: ; 0x0204304C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r6, r0, #0
	add r5, #0x80
	ldr r4, [r6, #0]
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x10]
	add r1, #0x2c
	mov r2, #5
	bl sub_0205167C
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204304C

	thumb_func_start sub_0204307C
sub_0204307C: ; 0x0204307C
	mov r0, #1
	bx lr
	thumb_func_end sub_0204307C

	thumb_func_start sub_02043080
sub_02043080: ; 0x02043080
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, #0x80
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	add r1, sp, #0
	bl sub_0203A734
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02043080

	thumb_func_start sub_02043100
sub_02043100: ; 0x02043100
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A730
	ldr r0, [r0, #0]
	bl ov5_021DCCC8
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02043100

	thumb_func_start sub_02043130
sub_02043130: ; 0x02043130
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	str r0, [sp, #8]
	bl sub_0203F098
	add r7, r0, #0
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r6, [r0]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	ldr r1, [r7, #0]
	ldr r3, [sp, #0xc]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r6, #0
	add r2, r4, #0
	bl ov5_021DCB24
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02043130

	thumb_func_start sub_02043190
sub_02043190: ; 0x02043190
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02026EAC
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02043190

	thumb_func_start sub_020431C0
sub_020431C0: ; 0x020431C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02026E64
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020431C0

	thumb_func_start sub_020431F0
sub_020431F0: ; 0x020431F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02026E0C
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020431F0

	thumb_func_start sub_02043220
sub_02043220: ; 0x02043220
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02026DD0
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02043220

	thumb_func_start sub_02043250
sub_02043250: ; 0x02043250
	mov r0, #0
	bx lr
	thumb_func_end sub_02043250

	thumb_func_start sub_02043254
sub_02043254: ; 0x02043254
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	ldr r1, [r5, #8]
	str r0, [sp]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r6, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	cmp r6, #0
	bne _020432BA
	add r0, r7, #0
	bl sub_02026F58
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0xa
	bl sub_0206AF3C
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0205E078
	b _020432D4
_020432BA:
	add r0, r7, #0
	bl sub_02026F20
	add r5, r0, #0
	ldr r0, [sp]
	bl sub_02025F30
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0205E0E4
_020432D4:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02043254

	thumb_func_start sub_020432DC
sub_020432DC: ; 0x020432DC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	lsl r2, r2, #0x18
	ldr r0, [r5, #0x74]
	add r1, r6, #0
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl sub_02051270
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020432DC

	thumb_func_start sub_02043330
sub_02043330: ; 0x02043330
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r2, r2, #0x18
	ldr r0, [r5, #0x74]
	add r1, r6, #0
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl sub_02051270
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043330

	thumb_func_start sub_02043384
sub_02043384: ; 0x02043384
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r2, r2, #0x18
	ldr r0, [r5, #0x74]
	add r1, r6, #0
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl sub_02051ABC
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043384

	thumb_func_start sub_020433D8
sub_020433D8: ; 0x020433D8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r2, r2, #0x18
	ldr r0, [r5, #0x74]
	add r1, r6, #0
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl sub_020512E4
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020433D8

	thumb_func_start sub_0204342C
sub_0204342C: ; 0x0204342C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0xb
	add r3, r4, #0
	bl sub_02051480
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204342C

	thumb_func_start sub_02043460
sub_02043460: ; 0x02043460
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl sub_02051590
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02043460

	thumb_func_start sub_0204346C
sub_0204346C: ; 0x0204346C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov5_021EFBDC
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204346C

	thumb_func_start sub_0204347C
sub_0204347C: ; 0x0204347C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl ov5_021EFB94
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204347C

	thumb_func_start sub_020434A4
sub_020434A4: ; 0x020434A4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x17
	bl sub_0203F098
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	bl sub_0205120C
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020434A4

	thumb_func_start sub_020434C0
sub_020434C0: ; 0x020434C0
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov5_021EFC90
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020434C0

	thumb_func_start sub_020434D0
sub_020434D0: ; 0x020434D0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203E0D0
	ldr r1, _020434E8 ; =sub_02041D60
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_020434E8: .word sub_02041D60
	thumb_func_end sub_020434D0

	thumb_func_start sub_020434EC
sub_020434EC: ; 0x020434EC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r5, [r1, #0xc]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020247E0
	cmp r0, #0
	beq _02043518
	mov r0, #0
	strh r0, [r4]
	b _0204353C
_02043518:
	add r0, r5, #0
	bl sub_020247C0
	cmp r0, #0
	bne _02043528
	mov r0, #1
	strh r0, [r4]
	b _0204353C
_02043528:
	add r0, r5, #0
	bl sub_02024800
	cmp r0, #0
	beq _02043538
	mov r0, #2
	strh r0, [r4]
	b _0204353C
_02043538:
	mov r0, #3
	strh r0, [r4]
_0204353C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020434EC

	thumb_func_start sub_02043540
sub_02043540: ; 0x02043540
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl ov5_021E200C
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02043540

	thumb_func_start sub_02043568
sub_02043568: ; 0x02043568
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025340
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02043568

	thumb_func_start sub_02043578
sub_02043578: ; 0x02043578
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020247C8
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02043578

	thumb_func_start sub_020435A0
sub_020435A0: ; 0x020435A0
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl ov5_021DDBC8
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_020435A0

	thumb_func_start sub_020435AC
sub_020435AC: ; 0x020435AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02056B24
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020567E0
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020435AC

	thumb_func_start sub_020435DC
sub_020435DC: ; 0x020435DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02056B24
	add r1, r5, #0
	bl sub_020567F0
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020435DC

	thumb_func_start sub_02043608
sub_02043608: ; 0x02043608
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02056B24
	add r1, r6, #0
	bl sub_020567E8
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02043608

	thumb_func_start sub_02043648
sub_02043648: ; 0x02043648
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [r4, #0x64]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020364F0
	ldr r1, _02043674 ; =sub_02043678
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_02043674: .word sub_02043678
	thumb_func_end sub_02043648

	thumb_func_start sub_02043678
sub_02043678: ; 0x02043678
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035E18
	cmp r0, #2
	bge _02043688
	mov r0, #1
	pop {r4, pc}
_02043688:
	ldr r0, [r4, #0x64]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02036540
	pop {r4, pc}
	thumb_func_end sub_02043678

	thumb_func_start sub_02043694
sub_02043694: ; 0x02043694
	push {r3, lr}
	bl sub_020365F4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043694

	thumb_func_start sub_020436A0
sub_020436A0: ; 0x020436A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0205BC50
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020436A0

	thumb_func_start sub_020436D0
sub_020436D0: ; 0x020436D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r1, r0, #0
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r1, [r1, #0]
	ldr r0, [r0, #0x7c]
	bl sub_0205BF44
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020436D0

	thumb_func_start sub_02043708
sub_02043708: ; 0x02043708
	push {r4, lr}
	bl sub_0203E838
	add r4, r0, #0
	cmp r4, #5
	beq _02043728
	cmp r4, #7
	beq _02043728
	cmp r4, #9
	beq _02043728
	cmp r4, #6
	beq _02043728
	cmp r4, #0xc
	beq _02043728
	cmp r4, #0xa
	bne _0204372E
_02043728:
	bl sub_02036BC8
	b _02043736
_0204372E:
	cmp r4, #0xb
	bne _02043736
	bl sub_02036BD8
_02043736:
	bl sub_0203608C
	cmp r0, #0
	bne _02043744
	add r0, r4, #0
	bl sub_0205BEA8
_02043744:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02043708

	thumb_func_start sub_02043748
sub_02043748: ; 0x02043748
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r5, #0x80
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	bl sub_0203D174
	bl sub_02014EC4
	add r5, r0, #0
	cmp r4, #0
	bne _0204379E
	ldr r0, [r7, #0]
	bl sub_02062910
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	b _020437A0
_0204379E:
	mov r2, #0
_020437A0:
	str r5, [sp]
	ldr r0, [r6, #0]
	ldr r3, [sp, #4]
	add r1, r4, #0
	bl sub_0205C040
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02043748

	thumb_func_start sub_020437B4
sub_020437B4: ; 0x020437B4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02099514
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020437B4

	thumb_func_start sub_020437C4
sub_020437C4: ; 0x020437C4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0205C2B0
	bl sub_02036AC4
	ldr r1, _020437E4 ; =sub_020437E8
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_020437E4: .word sub_020437E8
	thumb_func_end sub_020437C4

	thumb_func_start sub_020437E8
sub_020437E8: ; 0x020437E8
	push {r3, lr}
	bl sub_02035E18
	cmp r0, #2
	bge _020437F6
	mov r0, #1
	pop {r3, pc}
_020437F6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020437E8

	thumb_func_start sub_020437FC
sub_020437FC: ; 0x020437FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r7, r0, #0
	ldr r0, [r4, #0]
	bl sub_02062910
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r2, [sp]
	ldr r0, [r0, #0x7c]
	ldr r3, [r7, #0]
	bl sub_0205BCF4
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020437FC

	thumb_func_start sub_02043854
sub_02043854: ; 0x02043854
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x7c]
	bl sub_0205BA7C
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	beq _0204388E
	add r5, #0x80
	ldr r0, [r5, #0]
	mov r1, #0x13
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_020181C4
_0204388E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02043854

	thumb_func_start sub_02043894
sub_02043894: ; 0x02043894
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0xa
	add r0, r5, #0
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r6, #0]
	bl sub_02062910
	add r1, r0, #0
	ldr r0, [r5, #0x7c]
	bl sub_0205B780
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02043894

	thumb_func_start sub_020438CC
sub_020438CC: ; 0x020438CC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0xa
	add r0, r5, #0
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r6, #0]
	bl sub_02062910
	add r1, r0, #0
	ldr r0, [r5, #0x7c]
	add r2, r7, #0
	bl sub_0205B804
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020438CC

	thumb_func_start sub_0204391C
sub_0204391C: ; 0x0204391C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	str r0, [r4, #0x64]
	ldr r1, _02043934 ; =sub_02043938
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_02043934: .word sub_02043938
	thumb_func_end sub_0204391C

	thumb_func_start sub_02043938
sub_02043938: ; 0x02043938
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	ldr r0, [r5, #0x7c]
	bl sub_0205B8D8
	ldr r1, [r6, #0x64]
	add r4, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0203F118
	cmp r4, #0
	bne _0204395C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0204395C:
	strh r4, [r0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043938

	thumb_func_start sub_02043964
sub_02043964: ; 0x02043964
	push {r3, lr}
	add r0, #0x80
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x38]
	add r1, #0x80
	ldr r1, [r1, #0]
	bl sub_0205C820
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02043964

	thumb_func_start sub_02043978
sub_02043978: ; 0x02043978
	push {r3, lr}
	mov r0, #4
	bl sub_0205BEA8
	bl sub_02036BA0
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02043978

	thumb_func_start sub_02043988
sub_02043988: ; 0x02043988
	push {r3, lr}
	bl sub_02036BD8
	bl sub_02036AC4
	mov r0, #0
	bl sub_0205BEA8
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02043988

	thumb_func_start sub_0204399C
sub_0204399C: ; 0x0204399C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r4, #0x7c]
	add r1, r6, #0
	bl sub_0205B930
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204399C

	thumb_func_start sub_020439D8
sub_020439D8: ; 0x020439D8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	str r0, [r4, #0x64]
	ldr r1, _020439F0 ; =sub_020439F4
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_020439F0: .word sub_020439F4
	thumb_func_end sub_020439D8

	thumb_func_start sub_020439F4
sub_020439F4: ; 0x020439F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x7c]
	bl sub_0205B8DC
	cmp r0, #1
	blo _02043A28
	add r5, #0x80
	strh r0, [r4]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x7c]
	bl sub_0205C154
	mov r0, #1
	pop {r3, r4, r5, pc}
_02043A28:
	mov r0, #0
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020439F4

	thumb_func_start sub_02043A30
sub_02043A30: ; 0x02043A30
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	str r0, [r4, #0x64]
	ldr r1, _02043A48 ; =sub_02043A4C
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_02043A48: .word sub_02043A4C
	thumb_func_end sub_02043A30

	thumb_func_start sub_02043A4C
sub_02043A4C: ; 0x02043A4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x7c]
	bl sub_0205B91C
	ldr r1, _02043A90 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #2
	tst r1, r2
	beq _02043A82
	add r5, #0x80
	ldr r0, [r5, #0]
	mov r1, #8
	ldr r0, [r0, #0x7c]
	bl sub_0205B9EC
_02043A82:
	cmp r0, #0
	beq _02043A8C
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02043A8C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02043A90: .word 0x021BF67C
	thumb_func_end sub_02043A4C

	thumb_func_start sub_02043A94
sub_02043A94: ; 0x02043A94
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl sub_02054708
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02043A94

	thumb_func_start sub_02043AA4
sub_02043AA4: ; 0x02043AA4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02025F20
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02025F30
	add r1, r0, #0
	ldr r2, [r4, #0]
	add r0, r6, #0
	bl sub_0205C980
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043AA4

	thumb_func_start sub_02043AE0
sub_02043AE0: ; 0x02043AE0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02025F20
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02025F30
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0205C9BC
	strh r0, [r4]
	add r0, r5, #0
	bl sub_02025F30
	ldrh r1, [r4]
	mov r2, #2
	bl sub_0205CA14
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02043AE0

	thumb_func_start sub_02043B48
sub_02043B48: ; 0x02043B48
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02025F20
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02025F30
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0205C9BC
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02043B48

	thumb_func_start sub_02043BA0
sub_02043BA0: ; 0x02043BA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02025F90
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02043BA0

	thumb_func_start sub_02043BD4
sub_02043BD4: ; 0x02043BD4
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl sub_02052C5C
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02043BD4

	thumb_func_start sub_02043BE0
sub_02043BE0: ; 0x02043BE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	add r1, r4, #0
	bl sub_0203A764
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02043BE0

	thumb_func_start sub_02043C0C
sub_02043C0C: ; 0x02043C0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02025F30
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02043C0C

	thumb_func_start sub_02043C3C
sub_02043C3C: ; 0x02043C3C
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl sub_02050A60
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_02097284
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043C3C

	thumb_func_start sub_02043C54
sub_02043C54: ; 0x02043C54
	mov r0, #0
	bx lr
	thumb_func_end sub_02043C54

	thumb_func_start sub_02043C58
sub_02043C58: ; 0x02043C58
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205987C
	ldr r1, _02043C6C ; =sub_02043C70
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02043C6C: .word sub_02043C70
	thumb_func_end sub_02043C58

	thumb_func_start sub_02043C70
sub_02043C70: ; 0x02043C70
	push {r3, lr}
	bl sub_02036780
	cmp r0, #1
	beq _02043C86
	bl sub_02033E1C
	cmp r0, #1
	beq _02043C86
	mov r0, #1
	pop {r3, pc}
_02043C86:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043C70

	thumb_func_start sub_02043C8C
sub_02043C8C: ; 0x02043C8C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020598A0
	ldr r1, _02043CA0 ; =sub_02043C70
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02043CA0: .word sub_02043C70
	thumb_func_end sub_02043C8C

	thumb_func_start sub_02043CA4
sub_02043CA4: ; 0x02043CA4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020597B4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043CA4

	thumb_func_start sub_02043CB4
sub_02043CB4: ; 0x02043CB4
	push {r3, lr}
	bl sub_0203E838
	bl sub_020593F4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043CB4

	thumb_func_start sub_02043CC4
sub_02043CC4: ; 0x02043CC4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	add r1, r6, #0
	bl sub_0207D69C
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02043CC4

	thumb_func_start sub_02043D04
sub_02043D04: ; 0x02043D04
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r3, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0203A4C4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043D04

	thumb_func_start sub_02043D54
sub_02043D54: ; 0x02043D54
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r5, r0, #0
	add r1, r7, #0
	str r4, [sp]
	bl sub_02063340
	add r0, r5, #0
	bl sub_020642F8
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02043D54

	thumb_func_start sub_02043DE4
sub_02043DE4: ; 0x02043DE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r2, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_0203A52C
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02043DE4

	thumb_func_start sub_02043E1C
sub_02043E1C: ; 0x02043E1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r2, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_0203A4FC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02043E1C

	thumb_func_start sub_02043E54
sub_02043E54: ; 0x02043E54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r3, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0203A55C
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043E54

	thumb_func_start sub_02043EA4
sub_02043EA4: ; 0x02043EA4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r3, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0203A594
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043EA4

	thumb_func_start sub_02043EF4
sub_02043EF4: ; 0x02043EF4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r5, r0, #0
	bne _02043F32
	bl GF_AssertFail
_02043F32:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ECDFC
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02043EF4

	thumb_func_start sub_02043F40
sub_02043F40: ; 0x02043F40
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xc
	bl sub_0203F098
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _02043F68
	strh r0, [r1]
_02043F68:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02043F40

	thumb_func_start sub_02043F6C
sub_02043F6C: ; 0x02043F6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	lsl r1, r4, #5
	ldr r3, [r5, #8]
	add r2, r0, #0
	add r0, r3, #1
	str r0, [r5, #8]
	add r5, #0x80
	lsl r4, r6, #5
	ldrb r3, [r3]
	ldr r0, [r5, #0]
	add r1, r7, r1
	add r2, r2, r4
	bl ov5_021D4BF4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02043F6C

	thumb_func_start sub_02043FC4
sub_02043FC4: ; 0x02043FC4
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl ov5_021D4D48
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043FC4

	thumb_func_start sub_02043FDC
sub_02043FDC: ; 0x02043FDC
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl ov5_021D4D68
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043FDC

	thumb_func_start sub_02043FF4
sub_02043FF4: ; 0x02043FF4
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl ov5_021D4C88
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02043FF4

	thumb_func_start sub_0204400C
sub_0204400C: ; 0x0204400C
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl ov5_021D4CEC
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204400C

	thumb_func_start sub_02044024
sub_02044024: ; 0x02044024
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071B10
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044024

	thumb_func_start sub_02044034
sub_02044034: ; 0x02044034
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov8_0224997C
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044034

	thumb_func_start sub_02044044
sub_02044044: ; 0x02044044
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071C18
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044044

	thumb_func_start sub_02044054
sub_02044054: ; 0x02044054
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov8_02249FB8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044054

	thumb_func_start sub_02044064
sub_02044064: ; 0x02044064
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071B30
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044064

	thumb_func_start sub_02044074
sub_02044074: ; 0x02044074
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071BF8
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044074

	thumb_func_start sub_02044084
sub_02044084: ; 0x02044084
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r2, [r0, #8]
	ldr r3, [r1, #0]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r1, [r2]
	add r0, r3, #0
	bl sub_02071B6C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044084

	thumb_func_start sub_020440A0
sub_020440A0: ; 0x020440A0
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r2, [r0, #8]
	ldr r3, [r1, #0]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r1, [r2]
	add r0, r3, #0
	bl ov8_0224AD34
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020440A0

	thumb_func_start sub_020440BC
sub_020440BC: ; 0x020440BC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071BD0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020440BC

	thumb_func_start sub_020440CC
sub_020440CC: ; 0x020440CC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071C34
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020440CC

	thumb_func_start sub_020440DC
sub_020440DC: ; 0x020440DC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071C5C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020440DC

	thumb_func_start sub_020440EC
sub_020440EC: ; 0x020440EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_02063020
	strh r0, [r6]
	add r0, r4, #0
	bl sub_02063030
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	strh r0, [r7]
	add r0, r4, #0
	bl sub_02063040
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020440EC

	thumb_func_start sub_02044158
sub_02044158: ; 0x02044158
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203E2FC
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044158

	thumb_func_start sub_02044168
sub_02044168: ; 0x02044168
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	str r0, [r5, #0x64]
	ldr r0, [r6, #0]
	bl sub_02062910
	add r1, r5, #0
	add r1, #0x80
	add r2, r0, #0
	ldr r1, [r1, #0]
	add r0, r7, #0
	bl ov23_02252C98
	str r0, [r4, #0]
	ldr r1, _020441C4 ; =sub_020441C8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020441C4: .word sub_020441C8
	thumb_func_end sub_02044168

	thumb_func_start sub_020441C8
sub_020441C8: ; 0x020441C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0]
	lsr r1, r1, #0x10
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov23_02252C70
	strh r0, [r5]
	ldrh r1, [r5]
	ldr r0, _02044204 ; =0x0000FFFE
	cmp r1, r0
	beq _020441FE
	mov r0, #1
	pop {r3, r4, r5, pc}
_020441FE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02044204: .word 0x0000FFFE
	thumb_func_end sub_020441C8

	thumb_func_start sub_02044208
sub_02044208: ; 0x02044208
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	bl ov23_02252C9C
	strb r0, [r4]
	ldr r1, _0204423C ; =sub_02044240
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0204423C: .word sub_02044240
	thumb_func_end sub_02044208

	thumb_func_start sub_02044240
sub_02044240: ; 0x02044240
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0203F098
	ldrb r0, [r0]
	bl sub_0205DA04
	pop {r3, pc}
	thumb_func_end sub_02044240

	thumb_func_start sub_02044254
sub_02044254: ; 0x02044254
	push {r3, lr}
	bl ov23_02252CD4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044254

	thumb_func_start sub_02044260
sub_02044260: ; 0x02044260
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r5, [r2]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_02252CE0
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044260

	thumb_func_start sub_02044288
sub_02044288: ; 0x02044288
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r5, [r2]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_02252CF4
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044288

	thumb_func_start sub_020442B0
sub_020442B0: ; 0x020442B0
	mov r0, #1
	bx lr
	thumb_func_end sub_020442B0

	thumb_func_start sub_020442B4
sub_020442B4: ; 0x020442B4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0206251C
	add r4, r0, #0
	bne _020442DC
	bl GF_AssertFail
_020442DC:
	add r0, r4, #0
	mov r1, #0
	bl sub_02062D64
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020442B4

	thumb_func_start sub_020442E8
sub_020442E8: ; 0x020442E8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0206251C
	add r4, r0, #0
	bne _02044310
	bl GF_AssertFail
_02044310:
	add r0, r4, #0
	mov r1, #1
	bl sub_02062D64
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020442E8

	thumb_func_start sub_0204431C
sub_0204431C: ; 0x0204431C
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl sub_020736D8
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0204431C

	thumb_func_start sub_02044328
sub_02044328: ; 0x02044328
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02028430
	mov r1, #0
	bl sub_02028494
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02044328

	thumb_func_start sub_02044354
sub_02044354: ; 0x02044354
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	bl sub_020703FC
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02044354

	thumb_func_start sub_02044374
sub_02044374: ; 0x02044374
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02055BA8
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02044374

	thumb_func_start sub_02044398
sub_02044398: ; 0x02044398
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	bl sub_0201D2E8
	add r1, r5, #0
	bl _s32_div_f
	strh r1, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02044398

	thumb_func_start sub_020443D0
sub_020443D0: ; 0x020443D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	bl sub_0201D2E8
	add r1, r5, #0
	bl _s32_div_f
	strh r1, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020443D0

	thumb_func_start sub_02044408
sub_02044408: ; 0x02044408
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021EE920
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02044408

	thumb_func_start sub_02044444
sub_02044444: ; 0x02044444
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021EE9BC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02044444

	thumb_func_start sub_02044468
sub_02044468: ; 0x02044468
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	add r3, r0, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov5_021EEA84
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02044468

	thumb_func_start sub_020444BC
sub_020444BC: ; 0x020444BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	add r3, r0, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov5_021EEA54
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020444BC

	thumb_func_start sub_02044510
sub_02044510: ; 0x02044510
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #0x82
	lsl r1, r1, #8
	bl sub_0206B0C4
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02044510

	thumb_func_start sub_02044528
sub_02044528: ; 0x02044528
	push {r4, lr}
	add r0, #0x80
	ldr r4, [r0, #0]
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	mov r1, #1
	bl sub_0206AF2C
	ldr r0, [r4, #0xc]
	bl sub_0202B628
	mov r1, #1
	bl sub_0202B634
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r4, #0
	bl sub_02053494
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02044528

	thumb_func_start sub_02044558
sub_02044558: ; 0x02044558
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r5, r0, #0
	add r0, r7, #0
	sub r0, #0x10
	cmp r0, #0x18
	bhi _02044654
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020445DA: ; jump table
	.short _0204460C - _020445DA - 2 ; case 0
	.short _02044618 - _020445DA - 2 ; case 1
	.short _02044624 - _020445DA - 2 ; case 2
	.short _02044632 - _020445DA - 2 ; case 3
	.short _02044654 - _020445DA - 2 ; case 4
	.short _02044632 - _020445DA - 2 ; case 5
	.short _02044632 - _020445DA - 2 ; case 6
	.short _02044632 - _020445DA - 2 ; case 7
	.short _02044632 - _020445DA - 2 ; case 8
	.short _02044632 - _020445DA - 2 ; case 9
	.short _02044632 - _020445DA - 2 ; case 10
	.short _02044654 - _020445DA - 2 ; case 11
	.short _02044654 - _020445DA - 2 ; case 12
	.short _02044654 - _020445DA - 2 ; case 13
	.short _02044654 - _020445DA - 2 ; case 14
	.short _02044654 - _020445DA - 2 ; case 15
	.short _02044654 - _020445DA - 2 ; case 16
	.short _02044654 - _020445DA - 2 ; case 17
	.short _02044654 - _020445DA - 2 ; case 18
	.short _02044654 - _020445DA - 2 ; case 19
	.short _02044646 - _020445DA - 2 ; case 20
	.short _02044646 - _020445DA - 2 ; case 21
	.short _02044646 - _020445DA - 2 ; case 22
	.short _02044646 - _020445DA - 2 ; case 23
	.short _02044646 - _020445DA - 2 ; case 24
_0204460C:
	mov r0, #4
	mov r6, #1
	bl sub_0202BDD4
	str r0, [r5, #0]
	b _02044658
_02044618:
	mov r0, #4
	mov r6, #1
	bl sub_0202BDE0
	str r0, [r5, #0]
	b _02044658
_02044624:
	ldr r0, [sp]
	mov r1, #4
	mov r6, #1
	bl sub_0202BDEC
	str r0, [r5, #0]
	b _02044658
_02044632:
	sub r7, #0x13
	lsl r0, r7, #0x18
	ldr r1, [sp]
	lsr r0, r0, #0x18
	mov r2, #4
	mov r6, #1
	bl sub_0202BE00
	str r0, [r5, #0]
	b _02044658
_02044646:
	mov r0, #4
	add r1, r7, #0
	mov r6, #1
	bl sub_0202BE2C
	str r0, [r5, #0]
	b _02044658
_02044654:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02044658:
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r1, [r5, #0]
	add r0, #0x9c
	ldr r0, [r0, #0]
	add r2, r6, #0
	bl sub_0202B758
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02044558

	thumb_func_start sub_0204466C
sub_0204466C: ; 0x0204466C
	mov r0, #0
	bx lr
	thumb_func_end sub_0204466C

	thumb_func_start sub_02044670
sub_02044670: ; 0x02044670
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02029E2C
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02044670

	thumb_func_start sub_020446B4
sub_020446B4: ; 0x020446B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02029D50
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020446B4

	thumb_func_start sub_02044710
sub_02044710: ; 0x02044710
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r7, #0
	bl sub_02029D94
	cmp r6, r0
	bhi _0204476A
	mov r0, #1
	b _0204476C
_0204476A:
	mov r0, #0
_0204476C:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02044710

	thumb_func_start sub_02044774
sub_02044774: ; 0x02044774
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r4, #0
	bl sub_02029EFC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044774

	thumb_func_start sub_020447A4
sub_020447A4: ; 0x020447A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r6, #0
	bl sub_02029D80
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020447A4

	thumb_func_start sub_020447E8
sub_020447E8: ; 0x020447E8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4]
	add r0, r5, #0
	bl sub_02026F0C
	cmp r0, #1
	bne _0204481C
	mov r0, #1
	strh r0, [r4]
_0204481C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020447E8

	thumb_func_start sub_02044820
sub_02044820: ; 0x02044820
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4]
	add r0, r5, #0
	bl sub_02026EF4
	cmp r0, #1
	bne _02044854
	mov r0, #1
	strh r0, [r4]
_02044854:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02044820

	thumb_func_start sub_02044858
sub_02044858: ; 0x02044858
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x20
	mov r2, #0
	bl sub_0203E53C
	str r0, [r4, #0]
	ldr r1, _02044884 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02044884: .word sub_02041CC8
	thumb_func_end sub_02044858

	thumb_func_start sub_02044888
sub_02044888: ; 0x02044888
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x20
	mov r2, #1
	bl sub_0203E53C
	str r0, [r4, #0]
	ldr r1, _020448B4 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020448B4: .word sub_02041CC8
	thumb_func_end sub_02044888

	thumb_func_start sub_020448B8
sub_020448B8: ; 0x020448B8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl ov6_022475B0
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020448B8

	thumb_func_start sub_020448C8
sub_020448C8: ; 0x020448C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl ov6_02247624
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020448C8

	thumb_func_start sub_020448F0
sub_020448F0: ; 0x020448F0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020448F0

	thumb_func_start sub_02044908
sub_02044908: ; 0x02044908
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r4, #0
	bl sub_0202CF28
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044908

	thumb_func_start sub_02044928
sub_02044928: ; 0x02044928
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r7, #0
	bl sub_0202CFB8
	ldr r1, _0204497C ; =0xFFFF0000
	and r1, r0
	lsr r1, r1, #0x10
	strh r1, [r4]
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204497C: .word 0xFFFF0000
	thumb_func_end sub_02044928

	thumb_func_start sub_02044980
sub_02044980: ; 0x02044980
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	ldr r1, [r5, #8]
	add r2, r1, #1
	str r2, [r5, #8]
	lsl r2, r4, #0x10
	add r4, r2, #0
	orr r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _020449B4
	cmp r0, #1
	beq _020449C8
	cmp r0, #2
	beq _020449DC
	b _020449EE
_020449B4:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0202CF70
	b _020449EE
_020449C8:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0202CE90
	b _020449EE
_020449DC:
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0202CED0
_020449EE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02044980

	thumb_func_start sub_020449F4
sub_020449F4: ; 0x020449F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202CF70
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020449F4

	thumb_func_start sub_02044A28
sub_02044A28: ; 0x02044A28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E850
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202CF70
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02044A28

	thumb_func_start sub_02044A50
sub_02044A50: ; 0x02044A50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	ldr r1, [r5, #8]
	str r0, [sp, #4]
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r4, [r1]
	add r0, r7, #0
	bl sub_0203A784
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0203A788
	add r7, r0, #0
	cmp r4, #0
	beq _02044AA0
	cmp r4, #1
	beq _02044AB6
	b _02044AE2
_02044AA0:
	ldr r0, [sp]
	bl sub_0206AE3C
	ldr r0, [sp, #4]
	bl sub_0206D000
	mov r0, #0x1e
	strh r0, [r6]
	mov r0, #0
	strh r0, [r7]
	b _02044AE2
_02044AB6:
	ldr r0, [sp]
	bl sub_0206AE4C
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0206D720
	mov r0, #4
	bl sub_0202BDE0
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	mov r2, #1
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_0202B758
	mov r0, #0
	strh r0, [r6]
	strh r0, [r7]
_02044AE2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02044A50

	thumb_func_start sub_02044AE8
sub_02044AE8: ; 0x02044AE8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0206C0E8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044AE8

	thumb_func_start sub_02044AF8
sub_02044AF8: ; 0x02044AF8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl ov6_02243004
	strh r0, [r6]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02044AF8

	thumb_func_start sub_02044B28
sub_02044B28: ; 0x02044B28
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02071CD0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044B28

	thumb_func_start sub_02044B38
sub_02044B38: ; 0x02044B38
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	mov r1, #0
	add r6, r0, #0
	mov r0, #0x41
	add r2, r1, #0
	bl sub_02004550
	add r5, #0x80
	ldrh r1, [r4]
	ldr r0, [r5, #0]
	add r2, r6, #0
	bl ov6_02242B58
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02044B38

	thumb_func_start sub_02044B70
sub_02044B70: ; 0x02044B70
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl ov6_02242C3C
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02044B70

	thumb_func_start sub_02044BA0
sub_02044BA0: ; 0x02044BA0
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	ldrb r1, [r2]
	ldr r0, [r0, #0x3c]
	bl sub_0205ED2C
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02044BA0

	thumb_func_start sub_02044BB8
sub_02044BB8: ; 0x02044BB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B354
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044BB8

	thumb_func_start sub_02044BE8
sub_02044BE8: ; 0x02044BE8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r7, #0
	bl sub_02026EAC
	add r4, r0, #0
	bl sub_0201D2E8
	add r1, r4, #0
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp]
	mov r1, #0x19
	strh r1, [r0]
	mov r4, #1
	mov r5, #0
_02044C2A:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02026FE8
	cmp r0, #1
	bne _02044C50
	add r0, r4, #0
	bl sub_020775A4
	cmp r0, #0
	beq _02044C50
	cmp r5, r6
	bne _02044C4A
	ldr r0, [sp]
	strh r4, [r0]
	b _02044C5C
_02044C4A:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_02044C50:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _02044C60 ; =0x000001ED
	cmp r4, r0
	bls _02044C2A
_02044C5C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02044C60: .word 0x000001ED
	thumb_func_end sub_02044BE8

	thumb_func_start sub_02044C64
sub_02044C64: ; 0x02044C64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r1, r4, #0
	bl sub_0206B270
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044C64

	thumb_func_start sub_02044C90
sub_02044C90: ; 0x02044C90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B260
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044C90

	thumb_func_start sub_02044CBC
sub_02044CBC: ; 0x02044CBC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202D884
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02044CBC

	thumb_func_start sub_02044CCC
sub_02044CCC: ; 0x02044CCC
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldr r0, [r0, #0]
	ldrb r1, [r2]
	ldr r0, [r0, #0xc]
	bl sub_0206C41C
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02044CCC

	thumb_func_start sub_02044CE4
sub_02044CE4: ; 0x02044CE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r4, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r1, [r1]
	mov r0, #0xb
	bl ov6_02246184
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02044CE4

	thumb_func_start sub_02044D08
sub_02044D08: ; 0x02044D08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov6_02246224
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044D08

	thumb_func_start sub_02044D38
sub_02044D38: ; 0x02044D38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov6_0224622C
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044D38

	thumb_func_start sub_02044D68
sub_02044D68: ; 0x02044D68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r5, #0x74]
	ldr r1, [r4, #0]
	mov r3, #0xb
	bl sub_0206C740
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044D68

	thumb_func_start sub_02044D9C
sub_02044D9C: ; 0x02044D9C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov6_02246204
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02044D9C

	thumb_func_start sub_02044DB4
sub_02044DB4: ; 0x02044DB4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027508
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02044DB4

	thumb_func_start sub_02044DC8
sub_02044DC8: ; 0x02044DC8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_020274B0
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02044DC8

	thumb_func_start sub_02044DDC
sub_02044DDC: ; 0x02044DDC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	mov r0, #0
	strh r0, [r6]
	cmp r4, #1
	bne _02044E22
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027454
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	bl sub_02025FF8
	b _02044E3C
_02044E22:
	cmp r4, #2
	bne _02044E38
	add r5, #0x80
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027474
	strh r0, [r6]
	b _02044E3C
_02044E38:
	bl GF_AssertFail
_02044E3C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02044DDC

	thumb_func_start sub_02044E40
sub_02044E40: ; 0x02044E40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_0207A0FC
	add r5, r0, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_02074470
	add r1, r4, r6
	add r2, r7, r1
	ldr r1, [sp, #4]
	add r2, r1, r2
	ldr r1, [sp, #8]
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, [sp]
	strh r1, [r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02044E40

	thumb_func_start sub_02044EDC
sub_02044EDC: ; 0x02044EDC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, sp, #0
	bl sub_020138A4
	ldr r0, [sp, #0xc]
	strh r0, [r4]
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02044EDC

	thumb_func_start sub_02044F04
sub_02044F04: ; 0x02044F04
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	bl ov7_0224BE7C
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02044F04

	thumb_func_start sub_02044F24
sub_02044F24: ; 0x02044F24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r7, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r5, #0
	bl ov5_021F0E90
	strh r0, [r4]
	add r0, r5, #0
	bl ov5_021F0E84
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02044F24

	thumb_func_start sub_02044FA4
sub_02044FA4: ; 0x02044FA4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r4, #0x80
	lsl r1, r1, #0x18
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	bl ov6_02246C24
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02044FA4

	thumb_func_start sub_02044FCC
sub_02044FCC: ; 0x02044FCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r2, r0, #0
	add r5, #0x80
	lsl r1, r4, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r5, #0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov6_02246F00
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02044FCC

	thumb_func_start sub_0204500C
sub_0204500C: ; 0x0204500C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #8]
	add r2, r1, #1
	str r2, [r5, #8]
	ldrb r7, [r1]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r6, [r2]
	bl sub_0203E838
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	str r4, [sp]
	add r5, #0x80
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r3, [sp, #8]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0206C784
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0204500C

	thumb_func_start sub_0204504C
sub_0204504C: ; 0x0204504C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r1, #0xc
	strh r1, [r0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204504C

	thumb_func_start sub_02045068
sub_02045068: ; 0x02045068
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	add r0, r6, #0
	bl sub_0203D174
	bl sub_02025E38
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_02024420
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r1, r7, #0
	bl ov6_022479D0
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _02045106
	cmp r5, #7
	ble _02045110
_02045106:
	mov r0, #0xff
	strh r0, [r4]
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02045110:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02079CFC
	cmp r0, #0
	beq _02045120
	mov r0, #0
	b _0204512A
_02045120:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02079CD8
	add r0, r5, #1
_0204512A:
	strh r0, [r4]
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02045068

	thumb_func_start sub_02045134
sub_02045134: ; 0x02045134
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020298A0
	bl sub_020295B8
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02045134

	thumb_func_start sub_02045160
sub_02045160: ; 0x02045160
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r2, [r0, #8]
	ldr r3, [r1, #0]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r1, [r2]
	add r0, r3, #0
	bl ov6_02247078
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02045160

	thumb_func_start sub_0204517C
sub_0204517C: ; 0x0204517C
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r2, [r0, #8]
	ldr r3, [r1, #0]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r1, [r2]
	add r0, r3, #0
	bl ov6_022470E8
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204517C

	thumb_func_start sub_02045198
sub_02045198: ; 0x02045198
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r2, [r0, #8]
	ldr r3, [r1, #0]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r1, [r2]
	add r0, r3, #0
	bl ov6_022470F4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02045198

	thumb_func_start sub_020451B4
sub_020451B4: ; 0x020451B4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027560
	add r6, r0, #0
	mov r0, #0x20
	bl sub_02073C74
	add r4, r0, #0
	bl sub_02073C2C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x32
	mov r3, #0x20
	bl sub_02073D80
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020272A4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020451B4

	thumb_func_start sub_020451F8
sub_020451F8: ; 0x020451F8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_020451B4
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020451F8

	thumb_func_start sub_0204521C
sub_0204521C: ; 0x0204521C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02024420
	bl sub_02079A50
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x87
	lsl r0, r0, #2
	sub r0, r0, r1
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204521C

	thumb_func_start sub_02045250
sub_02045250: ; 0x02045250
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x16
	bl sub_0203F098
	add r4, r0, #0
	mov r0, #0
	add r5, #0x80
	str r0, [r4, #0]
	ldr r0, [r5, #0]
	bl ov5_021E1000
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045250

	thumb_func_start sub_02045274
sub_02045274: ; 0x02045274
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x16
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl ov5_021E100C
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02045274

	thumb_func_start sub_0204528C
sub_0204528C: ; 0x0204528C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r4, #0x80
	lsl r1, r1, #0x18
	ldr r0, [r4, #0]
	lsr r1, r1, #0x18
	bl ov6_02247D30
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204528C

	thumb_func_start sub_020452B4
sub_020452B4: ; 0x020452B4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020716D4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020452B4

	thumb_func_start sub_020452C4
sub_020452C4: ; 0x020452C4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0207183C
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020452C4

	thumb_func_start sub_020452D4
sub_020452D4: ; 0x020452D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl sub_02071818
	cmp r0, #0
	beq _020452FA
	mov r0, #1
	b _020452FC
_020452FA:
	mov r0, #0
_020452FC:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020452D4

	thumb_func_start sub_02045304
sub_02045304: ; 0x02045304
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov6_02247F5C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02045304

	thumb_func_start sub_02045314
sub_02045314: ; 0x02045314
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov6_02247FBC
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02045314

	thumb_func_start sub_02045324
sub_02045324: ; 0x02045324
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r4, #0
	bl sub_0202CFEC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045324

	thumb_func_start sub_02045344
sub_02045344: ; 0x02045344
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r6, #0
	bl sub_0207A230
	strh r0, [r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02045344

	thumb_func_start sub_02045384
sub_02045384: ; 0x02045384
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, sp, #4
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	str r0, [sp]
	bl sub_0207A0F8
	add r4, #0x80
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r7, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _020453FA
_020453C4:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	ldr r1, _02045400 ; =0x00000182
	cmp r0, r1
	bne _020453F4
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #4
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202736C
_020453F4:
	add r5, r5, #1
	cmp r5, r6
	blt _020453C4
_020453FA:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02045400: .word 0x00000182
	thumb_func_end sub_02045384

	thumb_func_start sub_02045404
sub_02045404: ; 0x02045404
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	str r0, [sp, #8]
	bl sub_0207A0F8
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	add r4, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _02045488
_0204543C:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl sub_0207A0FC
	add r6, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	ldr r1, _020454BC ; =0x0000019F
	cmp r7, r1
	bne _02045480
	cmp r0, #0
	bne _02045480
	cmp r5, #0
	bne _02045478
	mov r0, #1
	str r0, [sp, #0x10]
_02045478:
	cmp r5, #1
	bne _02045480
	mov r0, #1
	str r0, [sp, #0xc]
_02045480:
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _0204543C
_02045488:
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _0204549C
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0204549C
	ldr r0, [sp]
	mov r1, #2
	strh r1, [r0]
	b _020454B6
_0204549C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _020454B0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _020454B0
	ldr r0, [sp]
	mov r1, #0
	strh r1, [r0]
	b _020454B6
_020454B0:
	ldr r0, [sp]
	mov r1, #1
	strh r1, [r0]
_020454B6:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020454BC: .word 0x0000019F
	thumb_func_end sub_02045404

	thumb_func_start sub_020454C0
sub_020454C0: ; 0x020454C0
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE0C
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020454C0

	thumb_func_start sub_020454D4
sub_020454D4: ; 0x020454D4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE1C
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020454D4

	thumb_func_start sub_020454E8
sub_020454E8: ; 0x020454E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x10]
	bl sub_0203E414
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020454E8

	thumb_func_start sub_0204550C
sub_0204550C: ; 0x0204550C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_02055BDC
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204550C

	thumb_func_start sub_02045530
sub_02045530: ; 0x02045530
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r7, #0
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r7, r0, #0
	bne _020455AE
	bl GF_AssertFail
_020455AE:
	str r6, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x74]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r1, r7, #0
	bl sub_0205E318
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02045530

	thumb_func_start sub_020455C4
sub_020455C4: ; 0x020455C4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r5, #0
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r5, r0, #0
	bne _02045618
	bl GF_AssertFail
_02045618:
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0205E3F4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020455C4

	thumb_func_start sub_02045628
sub_02045628: ; 0x02045628
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0205E1F8
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045628

	thumb_func_start sub_02045650
sub_02045650: ; 0x02045650
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	mov r6, #0
	add r7, r0, #0
	add r4, r6, #0
	add r5, sp, #4
_0204567E:
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x22
	mov r2, #1
	bl sub_02029D50
	cmp r0, #1
	bne _02045694
	mov r0, #1
	strh r0, [r5]
	add r6, r6, #1
_02045694:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #0x10
	blt _0204567E
	cmp r6, #0
	bne _020456AC
	ldr r0, [sp]
	ldr r1, _020456E4 ; =0x0000FFFF
	add sp, #0x24
	strh r1, [r0]
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_020456AC:
	bl sub_0201D2E8
	add r1, r6, #0
	bl _s32_div_f
	mov r4, #0
	add r2, sp, #4
_020456BA:
	ldrh r0, [r2]
	cmp r0, #1
	bne _020456C6
	cmp r1, #0
	beq _020456CE
	sub r1, r1, #1
_020456C6:
	add r4, r4, #1
	add r2, r2, #2
	cmp r4, #0x10
	blt _020456BA
_020456CE:
	cmp r4, #0x10
	blt _020456D6
	bl GF_AssertFail
_020456D6:
	ldr r0, [sp]
	add r4, #0x22
	strh r4, [r0]
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_020456E4: .word 0x0000FFFF
	thumb_func_end sub_02045650

	thumb_func_start sub_020456E8
sub_020456E8: ; 0x020456E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	ldr r1, _02045704 ; =0x021BF6DC
	ldrb r1, [r1, #6]
	strh r1, [r0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02045704: .word 0x021BF6DC
	thumb_func_end sub_020456E8

	thumb_func_start sub_02045708
sub_02045708: ; 0x02045708
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #0
	bl sub_0206B364
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02045708

	thumb_func_start sub_02045720
sub_02045720: ; 0x02045720
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r5, #0x80
	ldr r0, [r5, #0]
	ldrb r4, [r1]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	cmp r4, #0
	beq _02045754
	add r1, r6, #0
	bl sub_0206B1B0
	b _0204575A
_02045754:
	add r1, r6, #0
	bl sub_0206B1D8
_0204575A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02045720

	thumb_func_start sub_02045760
sub_02045760: ; 0x02045760
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200C01C
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02045760

	thumb_func_start sub_02045798
sub_02045798: ; 0x02045798
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0206B394
	cmp r0, #0xa
	blo _020457C8
	mov r0, #1
	b _020457CA
_020457C8:
	mov r0, #0
_020457CA:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02045798

	thumb_func_start sub_020457D0
sub_020457D0: ; 0x020457D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B314
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020457D0

	thumb_func_start sub_020457FC
sub_020457FC: ; 0x020457FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02029EA0
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020457FC

	thumb_func_start sub_02045840
sub_02045840: ; 0x02045840
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02050568
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02045840

	thumb_func_start sub_02045850
sub_02045850: ; 0x02045850
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0206B334
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02045850

	thumb_func_start sub_02045860
sub_02045860: ; 0x02045860
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02014EC4
	bl sub_02014EE4
	cmp r0, #0x20
	bne _020458B2
	ldr r0, _020458C8 ; =0x0000FFFF
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020458B2:
	strh r0, [r4]
	bl sub_02014F64
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl sub_0200BE48
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020458C8: .word 0x0000FFFF
	thumb_func_end sub_02045860

	thumb_func_start sub_020458CC
sub_020458CC: ; 0x020458CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02014EC4
	bl sub_02014F48
	cmp r0, #1
	bne _020458F8
	mov r0, #1
	b _020458FA
_020458F8:
	mov r0, #0
_020458FA:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020458CC

	thumb_func_start sub_02045900
sub_02045900: ; 0x02045900
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0206B3DC
	cmp r0, #5
	blo _02045930
	mov r0, #1
	b _02045932
_02045930:
	mov r0, #0
_02045932:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02045900

	thumb_func_start sub_02045938
sub_02045938: ; 0x02045938
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	ldr r6, [r4, #0]
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_02025CCC
	add r7, r0, #0
	bl sub_02025D5C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02055BB8
	cmp r4, r0
	bne _02045982
	add r0, r7, #0
	bl sub_02025D60
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02055BC4
	cmp r4, r0
	bne _02045982
	mov r0, #1
	strh r0, [r5]
	b _02045986
_02045982:
	mov r0, #0
	strh r0, [r5]
_02045986:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02045938

	thumb_func_start sub_0204598C
sub_0204598C: ; 0x0204598C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020270DC
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204598C

	thumb_func_start sub_020459BC
sub_020459BC: ; 0x020459BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r1, r6, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r2, [r1, #0x1c]
	ldr r1, [r2, #8]
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	ldr r1, [r2, #0xc]
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r7, #3
	blo _02045A00
	ldr r7, _02045A7C ; =0x0000010E
	b _02045A36
_02045A00:
	cmp r0, #0x1e
	blo _02045A0A
	mov r7, #0x43
	lsl r7, r7, #2
	b _02045A36
_02045A0A:
	bl sub_0201D2E8
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, #0x19
	bge _02045A1C
	ldr r7, _02045A80 ; =0x0000010D
	b _02045A36
_02045A1C:
	bl sub_0201D2E8
	mov r1, #6
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	mov r0, #6
	mul r0, r7
	add r0, r1, r0
	lsl r1, r0, #1
	ldr r0, _02045A84 ; =0x020EABFC
	ldrh r7, [r0, r1]
_02045A36:
	cmp r5, #0xb
	bne _02045A4E
	cmp r4, #1
	bne _02045A42
	mov r4, #0
	b _02045A58
_02045A42:
	cmp r4, #0x14
	bne _02045A4A
	mov r4, #2
	b _02045A58
_02045A4A:
	mov r4, #5
	b _02045A58
_02045A4E:
	cmp r5, #0x14
	bne _02045A56
	mov r4, #1
	b _02045A58
_02045A56:
	mov r4, #3
_02045A58:
	mov r5, #0
_02045A5A:
	cmp r5, r4
	beq _02045A6C
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0203A574
_02045A6C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _02045A5A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02045A7C: .word 0x0000010E
_02045A80: .word 0x0000010D
_02045A84: .word 0x020EABFC
	thumb_func_end sub_020459BC

	thumb_func_start sub_02045A88
sub_02045A88: ; 0x02045A88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B3EC
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045A88

	thumb_func_start sub_02045AB8
sub_02045AB8: ; 0x02045AB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B40C
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045AB8

	thumb_func_start sub_02045AE8
sub_02045AE8: ; 0x02045AE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B42C
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045AE8

	thumb_func_start sub_02045B18
sub_02045B18: ; 0x02045B18
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	mov r6, #0
	add r4, sp, #4
_02045B34:
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	strb r0, [r4]
	add r6, r6, #1
	add r4, r4, #1
	cmp r6, #5
	blt _02045B34
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	mov r0, #4
	bl sub_0202A93C
	lsl r2, r4, #0x18
	add r1, sp, #4
	lsr r2, r2, #0x18
	mov r3, #0
	str r0, [sp]
	bl sub_0202A9E4
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202AB28
	ldr r1, [sp]
	bl sub_0202AB74
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_020181C4
	ldr r0, _02045BA4 ; =0x0000FFFF
	cmp r4, r0
	bne _02045B9C
	strh r0, [r7]
	b _02045B9E
_02045B9C:
	strh r6, [r7]
_02045B9E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02045BA4: .word 0x0000FFFF
	thumb_func_end sub_02045B18

	thumb_func_start sub_02045BA8
sub_02045BA8: ; 0x02045BA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202AB28
	bl sub_0202AB54
	ldr r1, _02045BE0 ; =0x0000FFFF
	cmp r0, r1
	bne _02045BD6
	mov r0, #0
	b _02045BD8
_02045BD6:
	mov r0, #1
_02045BD8:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02045BE0: .word 0x0000FFFF
	thumb_func_end sub_02045BA8

	thumb_func_start sub_02045BE4
sub_02045BE4: ; 0x02045BE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202AB28
	bl sub_0202ACC0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045BE4

	thumb_func_start sub_02045C10
sub_02045C10: ; 0x02045C10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r5, r0, #0
	cmp r4, #4
	bls _02045C42
	bl GF_AssertFail
_02045C42:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206B16C
	strh r0, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02045C10

	thumb_func_start sub_02045C50
sub_02045C50: ; 0x02045C50
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	add r2, sp, #0
	bl sub_0202444C
	ldr r1, [sp]
	add r4, r0, #0
	cmp r1, #0
	bne _02045C88
	mov r1, #0
	strh r1, [r5]
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02045C88:
	cmp r1, #1
	bne _02045C9E
	mov r1, #0
	bl sub_0202E174
	strh r0, [r5]
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02045C9E:
	cmp r1, #2
	bne _02045CAE
	mov r1, #0
	strh r1, [r5]
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02045CAE:
	mov r0, #0
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045C50

	thumb_func_start sub_02045CB8
sub_02045CB8: ; 0x02045CB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r1, r5, #0
	add r1, #0x80
	add r4, r0, #0
	ldr r1, [r1, #0]
	mov r0, #0x20
	add r2, r6, #0
	bl sub_0203D410
	str r0, [r4, #0]
	ldr r1, _02045CF8 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02045CF8: .word sub_02041D60
	thumb_func_end sub_02045CB8

	thumb_func_start sub_02045CFC
sub_02045CFC: ; 0x02045CFC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02045D3C
	bl GF_AssertFail
_02045D3C:
	ldr r0, [r4, #0]
	bl sub_0203D408
	strh r0, [r6]
	ldrh r0, [r6]
	cmp r0, #7
	bne _02045D4E
	mov r0, #0xff
	strh r0, [r6]
_02045D4E:
	ldr r0, [r4, #0]
	bl sub_0203D438
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #1
	bne _02045D60
	mov r0, #1
	b _02045D62
_02045D60:
	mov r0, #0
_02045D62:
	strh r0, [r5]
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02045CFC

	thumb_func_start sub_02045D70
sub_02045D70: ; 0x02045D70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	cmp r4, #0x64
	bls _02045D92
	mov r4, #0x64
_02045D92:
	bl sub_0201D2E8
	mov r1, #0x65
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, r4
	bgt _02045DA8
	mov r0, #1
	b _02045DAA
_02045DA8:
	mov r0, #0
_02045DAA:
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02045D70

	thumb_func_start sub_02045DB0
sub_02045DB0: ; 0x02045DB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	cmp r4, #0
	beq _02045DEC
	cmp r4, #1
	beq _02045DF6
	cmp r4, #2
	beq _02045E00
	b _02045E0A
_02045DEC:
	mov r2, #0
	mov r3, #0x20
	bl ov6_0224899C
	b _02045E0E
_02045DF6:
	mov r2, #1
	mov r3, #0x20
	bl ov6_0224899C
	b _02045E0E
_02045E00:
	mov r2, #2
	mov r3, #0x20
	bl ov6_0224899C
	b _02045E0E
_02045E0A:
	bl GF_AssertFail
_02045E0E:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045DB0

	thumb_func_start sub_02045E14
sub_02045E14: ; 0x02045E14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B374
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045E14

	thumb_func_start sub_02045E44
sub_02045E44: ; 0x02045E44
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	cmp r0, #0
	bne _02045E68
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x10]
	bl ov6_0223E384
	b _02045E72
_02045E68:
	add r4, #0x80
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x10]
	bl ov6_0223E4EC
_02045E72:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02045E44

	thumb_func_start sub_02045E78
sub_02045E78: ; 0x02045E78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02039074
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045E78

	thumb_func_start sub_02045EA0
sub_02045EA0: ; 0x02045EA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202B370
	bl sub_0202AF94
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02045EA0

	thumb_func_start sub_02045ECC
sub_02045ECC: ; 0x02045ECC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	ldr r1, _02045F00 ; =0x0000FF79
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #1
	bhi _02045EFC
	bl sub_02028828
_02045EFC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02045F00: .word 0x0000FF79
	thumb_func_end sub_02045ECC

	thumb_func_start sub_02045F04
sub_02045F04: ; 0x02045F04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	mov r1, #0
	strh r1, [r0]
	ldr r1, _02045F44 ; =0x0000012A
	cmp r4, r1
	blo _02045F3E
	add r1, #0xf
	cmp r4, r1
	bhi _02045F3E
	mov r1, #1
	strh r1, [r0]
_02045F3E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02045F44: .word 0x0000012A
	thumb_func_end sub_02045F04

	thumb_func_start sub_02045F48
sub_02045F48: ; 0x02045F48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r7, r0, #0
	mov r0, #0x20
	bl sub_0200B358
	mov r2, #0x5d
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x20
	bl sub_0200B144
	add r5, r0, #0
	ldr r2, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200BE48
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	bl sub_0200BE48
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #2
	bl sub_0200BE48
	add r0, r4, #0
	mov r1, #3
	add r2, r7, #0
	bl sub_0200BE48
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_0200B29C
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0200B1EC
	str r0, [sp]
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02023BE0
	cmp r0, #0
	bne _02046016
	mov r0, #1
	b _02046018
_02046016:
	mov r0, #0
_02046018:
	strh r0, [r6]
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp]
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	bl sub_0200B3F0
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02045F48

	thumb_func_start sub_02046038
sub_02046038: ; 0x02046038
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025CCC
	mov r1, #1
	bl sub_02025D6C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02046038

	thumb_func_start sub_02046050
sub_02046050: ; 0x02046050
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0203F098
	ldr r0, [r0, #0]
	bl sub_0205BC50
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02046050

	thumb_func_start sub_02046080
sub_02046080: ; 0x02046080
	push {r3, lr}
	bl sub_02039734
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02046080

	thumb_func_start sub_0204608C
sub_0204608C: ; 0x0204608C
	push {r3, lr}
	bl sub_02039794
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204608C

	thumb_func_start sub_02046098
sub_02046098: ; 0x02046098
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203A7A8
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02046098

	thumb_func_start sub_020460A8
sub_020460A8: ; 0x020460A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, #0x80
	add r7, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A72C
	str r4, [r0, #0]
	str r6, [r0, #8]
	mov r1, #0
	str r7, [r0, #0xc]
	mvn r1, r1
	str r1, [r0, #4]
	mov r1, #1
	str r1, [r0, #0x10]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020460A8

	thumb_func_start sub_02046108
sub_02046108: ; 0x02046108
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	ldr r2, [r5, #8]
	add r1, r0, #0
	add r0, r2, #1
	str r0, [r5, #8]
	add r5, #0x80
	ldr r0, [r5, #0]
	ldrb r4, [r2]
	ldr r0, [r0, #0x38]
	bl sub_0206251C
	add r5, r0, #0
	bne _02046138
	bl GF_AssertFail
_02046138:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062D80
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02046108

	thumb_func_start sub_02046144
sub_02046144: ; 0x02046144
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02071F28
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02046144

	thumb_func_start sub_0204616C
sub_0204616C: ; 0x0204616C
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0x28
	add r0, r5, #0
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020247E0
	cmp r0, #0
	bne _02046196
	add r0, r5, #0
	mov r1, #4
	mov r2, #3
	bl ov5_021E1F98
	str r0, [r4, #0]
	bl ov5_021E1F04
_02046196:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204616C

	thumb_func_start sub_0204619C
sub_0204619C: ; 0x0204619C
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0x28
	add r0, r5, #0
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020247E0
	cmp r0, #0
	bne _020461C2
	ldr r0, [r4, #0]
	bl ov5_021E1F7C
	ldr r0, [r4, #0]
	bl ov5_021E1FF4
_020461C2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204619C

	thumb_func_start sub_020461C8
sub_020461C8: ; 0x020461C8
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	add r0, #0x80
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl sub_02070428
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020461C8

	thumb_func_start sub_020461E0
sub_020461E0: ; 0x020461E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r6, [r1]
	mov r0, #0xb
	mov r1, #0x2c
	bl sub_02018184
	mov r1, #0
	mov r2, #0x2c
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r6, #0
	add r0, #0xfb
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r4, [r7, #0]
	cmp r0, #1
	bhi _02046224
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0xac
	ldr r0, [r0, #0]
	b _02046226
_02046224:
	mov r0, #0
_02046226:
	str r0, [r4, #0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x24
	strb r6, [r0]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, _0204628C ; =0x020F8BE0
	ldr r0, [r0, #0xc]
	add r2, r4, #0
	str r0, [r4, #8]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r4, #0x1c]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0x9c
	ldr r0, [r0, #0]
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0x98
	ldr r0, [r0, #0]
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r0, #0xbc
	ldr r0, [r0, #0]
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x74]
	bl sub_02050A38
	ldr r1, _02046290 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0204628C: .word 0x020F8BE0
_02046290: .word sub_02041CC8
	thumb_func_end sub_020461E0

	thumb_func_start sub_02046294
sub_02046294: ; 0x02046294
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0x10
	add r0, r5, #0
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0203F098
	add r1, r0, #0
	ldr r2, [r6, #0x78]
	ldr r3, [r4, #0]
	add r0, r5, #0
	bl ov8_0224B67C
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02046294

	thumb_func_start sub_020462C0
sub_020462C0: ; 0x020462C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _020462D8
	mov r1, #0x1a
	bl ov5_021D5F24
	add r0, r4, #0
	bl sub_0200DA58
_020462D8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020462C0

	thumb_func_start sub_020462DC
sub_020462DC: ; 0x020462DC
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r0, _020462F0 ; =sub_020462C0
	ldr r1, [r1, #0]
	mov r2, #0x80
	bl sub_0200D9E8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_020462F0: .word sub_020462C0
	thumb_func_end sub_020462DC

	thumb_func_start sub_020462F4
sub_020462F4: ; 0x020462F4
	push {r4, lr}
	add r0, #0x80
	ldr r4, [r0, #0]
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A74C
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl ov5_021D5F24
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020462F4

	thumb_func_start sub_02046314
sub_02046314: ; 0x02046314
	push {r3, lr}
	add r1, r0, #0
	ldr r2, [r1, #8]
	add r0, r2, #1
	str r0, [r1, #8]
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r2]
	ldr r0, [r1, #0x74]
	add r1, #0x80
	lsl r3, r2, #2
	ldr r2, _0204633C ; =0x02100AF0
	ldr r1, [r1, #0]
	ldr r2, [r2, r3]
	mov r3, #3
	bl ov7_0224CDA4
	mov r0, #1
	pop {r3, pc}
	nop
_0204633C: .word 0x02100AF0
	thumb_func_end sub_02046314

	thumb_func_start sub_02046340
sub_02046340: ; 0x02046340
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	ldr r0, [r0, #0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_0203E564
	str r0, [r4, #0]
	ldr r1, _020463B0 ; =sub_02041CC8
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020463B0: .word sub_02041CC8
	thumb_func_end sub_02046340

	thumb_func_start sub_020463B4
sub_020463B4: ; 0x020463B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x20
	bl sub_0203E608
	str r0, [r4, #0]
	ldr r1, _020463E0 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_020463E0: .word sub_02041D60
	thumb_func_end sub_020463B4

	thumb_func_start sub_020463E4
sub_020463E4: ; 0x020463E4
	push {r4, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0203F098
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020463E4

	thumb_func_start sub_02046400
sub_02046400: ; 0x02046400
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r7, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x13
	bl sub_0203F098
	ldr r1, [r0, #0]
	lsl r0, r4, #1
	add r1, r1, r0
	ldrh r0, [r1, #8]
	strh r0, [r6]
	ldrh r0, [r1, #0xe]
	strh r0, [r7]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02046400

	thumb_func_start sub_0204645C
sub_0204645C: ; 0x0204645C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	ldr r1, _02046518 ; =0x00000FFF
	str r0, [sp]
	strh r1, [r6]
	strh r1, [r7]
	strh r1, [r4]
	strh r1, [r0]
	bl sub_0201D2E8
	mov r1, #7
	and r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, _0204651C ; =0x020EAB96
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	ldr r1, _02046518 ; =0x00000FFF
	strh r0, [r6]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02046524
	add r1, r0, #0
	cmp r1, #8
	beq _020464E4
	ldr r0, _0204651C ; =0x020EAB96
	lsl r2, r1, #1
	ldrh r0, [r0, r2]
	strh r0, [r7]
_020464E4:
	ldr r2, _02046518 ; =0x00000FFF
	add r0, r5, #0
	add r3, r2, #0
	bl sub_02046524
	cmp r0, #8
	beq _020464FA
	lsl r1, r0, #1
	ldr r0, _0204651C ; =0x020EAB96
	ldrh r0, [r0, r1]
	strh r0, [r4]
_020464FA:
	ldr r0, _02046518 ; =0x00000FFF
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_02046568
	cmp r0, #5
	beq _02046514
	lsl r1, r0, #1
	ldr r0, _02046520 ; =0x020EAB8C
	ldrh r1, [r0, r1]
	ldr r0, [sp]
	strh r1, [r0]
_02046514:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02046518: .word 0x00000FFF
_0204651C: .word 0x020EAB96
_02046520: .word 0x020EAB8C
	thumb_func_end sub_0204645C

	thumb_func_start sub_02046524
sub_02046524: ; 0x02046524
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	mov r4, #0
_02046530:
	bl sub_0201D2E8
	mov r1, #9
	bl _u32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, #8
	beq _02046562
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #8
	blo _02046550
	mov r0, #8
	b _02046562
_02046550:
	cmp r0, r5
	beq _02046530
	cmp r0, r6
	beq _02046530
	cmp r0, r7
	beq _02046530
	ldr r1, [sp]
	cmp r0, r1
	beq _02046530
_02046562:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02046524

	thumb_func_start sub_02046568
sub_02046568: ; 0x02046568
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	mov r4, #0
_02046574:
	bl sub_0201D2E8
	mov r1, #6
	bl _u32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, #5
	beq _020465A6
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #8
	blo _02046594
	mov r0, #5
	b _020465A6
_02046594:
	cmp r0, r5
	beq _02046574
	cmp r0, r6
	beq _02046574
	cmp r0, r7
	beq _02046574
	ldr r1, [sp]
	cmp r0, r1
	beq _02046574
_020465A6:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02046568

	thumb_func_start sub_020465AC
sub_020465AC: ; 0x020465AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02039074
	cmp r0, #0
	beq _02046616
	mov r0, #1
	strh r0, [r4]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0203E6C0
	ldr r1, _02046620 ; =sub_02041D60
	add r0, r5, #0
	bl sub_0203E764
	b _0204661A
_02046616:
	mov r0, #0
	strh r0, [r4]
_0204661A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02046620: .word sub_02041D60
	thumb_func_end sub_020465AC

	thumb_func_start sub_02046624
sub_02046624: ; 0x02046624
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02039074
	cmp r0, #0
	beq _02046652
	ldrh r1, [r4]
	ldr r0, [r5, #0x74]
	bl sub_0205749C
_02046652:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02046624

	thumb_func_start sub_02046658
sub_02046658: ; 0x02046658
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x74]
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	bl sub_020985E4
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02046658

	thumb_func_start sub_0204666C
sub_0204666C: ; 0x0204666C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r1, #0
	strh r1, [r0]
	ldr r1, _020466A0 ; =0x021BF67C
	ldr r2, [r1, #0x44]
	mov r1, #1
	tst r2, r1
	beq _0204668E
	strh r1, [r0]
_0204668E:
	ldr r1, _020466A0 ; =0x021BF67C
	ldr r2, [r1, #0x44]
	mov r1, #2
	tst r1, r2
	beq _0204669C
	mov r1, #1
	strh r1, [r0]
_0204669C:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_020466A0: .word 0x021BF67C
	thumb_func_end sub_0204666C

	thumb_func_start sub_020466A4
sub_020466A4: ; 0x020466A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	str r1, [sp]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	ldr r0, [sp, #4]
	mov r1, #0
	strh r1, [r0]
	strh r1, [r7]
	strh r1, [r6]
	strh r1, [r4]
	ldr r0, [sp]
	strh r1, [r5]
	ldr r0, [r0, #0xc]
	bl sub_0204676C
	lsr r1, r0, #1
	mov r2, #1
	and r1, r2
	cmp r1, #1
	bne _02046736
	ldr r1, [sp, #4]
	strh r2, [r1]
_02046736:
	lsr r2, r0, #2
	mov r1, #1
	and r2, r1
	cmp r2, #1
	bne _02046742
	strh r1, [r7]
_02046742:
	lsr r2, r0, #3
	mov r1, #1
	and r2, r1
	cmp r2, #1
	bne _0204674E
	strh r1, [r6]
_0204674E:
	lsr r2, r0, #4
	mov r1, #1
	and r2, r1
	cmp r2, #1
	bne _0204675A
	strh r1, [r4]
_0204675A:
	lsr r1, r0, #5
	mov r0, #1
	and r1, r0
	cmp r1, #1
	bne _02046766
	strh r0, [r5]
_02046766:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020466A4

	thumb_func_start sub_0204676C
sub_0204676C: ; 0x0204676C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r6, #0
	bl sub_0207A268
	str r0, [sp, #8]
	bl sub_0207A0F8
	add r7, r0, #0
	add r4, r6, #0
	cmp r7, #0
	ble _020467C2
_02046786:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	ldr r1, _02046864 ; =0x000001DF
	cmp r0, r1
	bne _020467BC
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _020467BC
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	mov r1, #1
	lsl r1, r0
	orr r6, r1
_020467BC:
	add r4, r4, #1
	cmp r4, r7
	blt _02046786
_020467C2:
	ldr r0, [sp]
	bl sub_02026310
	add r7, r0, #0
	mov r4, #0
_020467CC:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02026218
	bl sub_02026220
	mov r1, #5
	mov r2, #0
	add r5, r0, #0
	bl sub_02074570
	ldr r1, _02046864 ; =0x000001DF
	cmp r0, r1
	bne _02046806
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _02046806
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	mov r1, #1
	lsl r1, r0
	orr r6, r1
_02046806:
	add r4, r4, #1
	cmp r4, #2
	blt _020467CC
	ldr r0, [sp]
	bl sub_02024420
	str r0, [sp, #4]
	mov r7, #0
_02046816:
	mov r5, #0
_02046818:
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02079C9C
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074570
	ldr r1, _02046864 ; =0x000001DF
	cmp r0, r1
	bne _02046850
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _02046850
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	mov r1, #1
	lsl r1, r0
	orr r6, r1
_02046850:
	add r5, r5, #1
	cmp r5, #0x1e
	blt _02046818
	add r7, r7, #1
	cmp r7, #0x12
	blo _02046816
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02046864: .word 0x000001DF
	thumb_func_end sub_0204676C

	thumb_func_start sub_02046868
sub_02046868: ; 0x02046868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	add r1, r4, #0
	bl sub_0202CFEC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02046868

	thumb_func_start sub_02046888
sub_02046888: ; 0x02046888
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl ov9_0224F158
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02046888

	thumb_func_start sub_020468AC
sub_020468AC: ; 0x020468AC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl ov9_0224F16C
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020468AC

	thumb_func_start sub_020468D0
sub_020468D0: ; 0x020468D0
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov9_02249FD0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020468D0

	thumb_func_start sub_020468E0
sub_020468E0: ; 0x020468E0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r6, r0, #0
	mov r0, #0xb
	bl sub_020182A4
	add r4, r0, #0
	mov r0, #4
	bl sub_020182A4
	add r7, r0, #0
	mov r0, #0x20
	bl sub_020182A4
	add r5, r0, #0
	cmp r6, #0
	bne _0204691A
	ldr r0, _02046938 ; =0x021C07E0
	str r4, [r0, #8]
	str r7, [r0, #4]
	str r5, [r0, #0xc]
	b _02046932
_0204691A:
	ldr r0, _02046938 ; =0x021C07E0
	ldr r0, [r0, #8]
	cmp r4, r0
	beq _02046926
	bl GF_AssertFail
_02046926:
	ldr r0, _02046938 ; =0x021C07E0
	ldr r0, [r0, #0xc]
	cmp r5, r0
	beq _02046932
	bl GF_AssertFail
_02046932:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02046938: .word 0x021C07E0
	thumb_func_end sub_020468E0

	thumb_func_start sub_0204693C
sub_0204693C: ; 0x0204693C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203E714
	ldr r1, _02046954 ; =sub_02041D60
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02046954: .word sub_02041D60
	thumb_func_end sub_0204693C

	thumb_func_start sub_02046958
sub_02046958: ; 0x02046958
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl ov9_0224E884
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02046958

	thumb_func_start sub_0204697C
sub_0204697C: ; 0x0204697C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov9_0224E8A8
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204697C

	thumb_func_start sub_0204698C
sub_0204698C: ; 0x0204698C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r5, [r1, #0]
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	bl sub_020138EC
	add r2, r5, #0
	add r2, #0xc4
	add r5, #0xc8
	ldr r3, [r2, #0]
	ldr r2, [r5, #0]
	sub r3, r0, r3
	sbc r1, r2
	mov r2, #0
	mov r0, #0x78
	sub r0, r3, r0
	sbc r1, r2
	blt _020469C6
	mov r0, #1
	b _020469C8
_020469C6:
	mov r0, #0
_020469C8:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204698C

	thumb_func_start sub_020469D0
sub_020469D0: ; 0x020469D0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x80
	ldr r6, [r1, #0]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	str r0, [sp]
	add r1, r5, #0
	bl sub_02077A9C
	ldr r0, [sp]
	bl sub_0207A0F8
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _02046A44
_02046A0C:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02046A3E
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r1, _02046A48 ; =0x000001E7
	cmp r0, r1
	bne _02046A3E
	ldr r0, [r6, #0xc]
	bl sub_02027560
	add r1, r4, #0
	bl sub_0202736C
_02046A3E:
	add r5, r5, #1
	cmp r5, r7
	blt _02046A0C
_02046A44:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02046A48: .word 0x000001E7
	thumb_func_end sub_020469D0

	thumb_func_start sub_02046A4C
sub_02046A4C: ; 0x02046A4C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	mov r1, #0
	str r0, [sp]
	strh r1, [r0]
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_0207A0F8
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _02046ACC
_02046A7E:
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02046AC6
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r1, _02046AD0 ; =0x000001E6
	cmp r0, r1
	bne _02046AC6
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _02046AC6
	ldr r0, [sp]
	mov r1, #1
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02046AC6:
	add r5, r5, #1
	cmp r5, r7
	blt _02046A7E
_02046ACC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02046AD0: .word 0x000001E6
	thumb_func_end sub_02046A4C

	.rodata


	.global Unk_020EAB80
Unk_020EAB80: ; 0x020EAB80
	.incbin "incbin/arm9_rodata.bin", 0x5F40, 0x5F44 - 0x5F40

	.global Unk_020EAB84
Unk_020EAB84: ; 0x020EAB84
	.incbin "incbin/arm9_rodata.bin", 0x5F44, 0x5F4C - 0x5F44

	.global Unk_020EAB8C
Unk_020EAB8C: ; 0x020EAB8C
	.incbin "incbin/arm9_rodata.bin", 0x5F4C, 0x5F56 - 0x5F4C

	.global Unk_020EAB96
Unk_020EAB96: ; 0x020EAB96
	.incbin "incbin/arm9_rodata.bin", 0x5F56, 0x5F66 - 0x5F56

	.global Unk_020EABA6
Unk_020EABA6: ; 0x020EABA6
	.incbin "incbin/arm9_rodata.bin", 0x5F66, 0x5F78 - 0x5F66

	.global Unk_020EABB8
Unk_020EABB8: ; 0x020EABB8
	.incbin "incbin/arm9_rodata.bin", 0x5F78, 0x5F98 - 0x5F78

	.global Unk_020EABD8
Unk_020EABD8: ; 0x020EABD8
	.incbin "incbin/arm9_rodata.bin", 0x5F98, 0x5FBC - 0x5F98

	.global Unk_020EABFC
Unk_020EABFC: ; 0x020EABFC
	.incbin "incbin/arm9_rodata.bin", 0x5FBC, 0x5FE0 - 0x5FBC

	.global Unk_020EAC20
Unk_020EAC20: ; 0x020EAC20
	.incbin "incbin/arm9_rodata.bin", 0x5FE0, 0x6018 - 0x5FE0

	.global Unk_020EAC58
Unk_020EAC58: ; 0x020EAC58
	.incbin "incbin/arm9_rodata.bin", 0x6018, 0xD20



	.data


	.global Unk_02100AF0
Unk_02100AF0: ; 0x02100AF0
	.incbin "incbin/arm9_data.bin", 0x1E10, 0x8



	.bss


	.global Unk_021C07E0
Unk_021C07E0: ; 0x021C07E0
	.space 0x1

	.global Unk_021C07E4
Unk_021C07E4: ; 0x021C07E4
	.space 0x4

	.global Unk_021C07E8
Unk_021C07E8: ; 0x021C07E8
	.space 0x4

	.global Unk_021C07EC
Unk_021C07EC: ; 0x021C07EC
	.space 0x4

