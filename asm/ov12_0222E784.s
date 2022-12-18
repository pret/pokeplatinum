	.include "macros/function.inc"
	.include "include/ov12_0222E784.inc"

	

	.text


	thumb_func_start ov12_0222E784
ov12_0222E784: ; 0x0222E784
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0222E80A
	add r0, r4, #0
	add r0, #0x60
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222E7C8
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl ov12_02235E80
	add sp, #0xc
	pop {r4, r5, pc}
_0222E7C8:
	add r0, r4, #0
	add r0, #0x60
	add r1, sp, #8
	add r2, sp, #4
	bl ov12_02225FA4
	ldr r0, [r4, #0x28]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_0200D6E8
	mov r0, #0
	str r0, [sp]
	mov r1, #0x58
	mov r2, #0x5a
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x28]
	ldr r3, [r4, #0x74]
	bl ov12_0222605C
	ldr r0, [r4, #0x28]
	bl sub_0200D330
	ldr r0, [r4, #0x3c]
	bl sub_0200D330
	ldr r0, [r4, #0x50]
	bl sub_0200D330
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
_0222E80A:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222E784

	thumb_func_start ov12_0222E810
ov12_0222E810: ; 0x0222E810
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x84
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	mov r1, #1
	str r0, [r4, #0x24]
	bl sub_020080C0
	add r1, r4, #0
	add r1, #0x58
	strh r0, [r1]
	mov r0, #0x58
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x5c
	strh r1, [r0]
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02223354
	add r1, r4, #0
	add r1, #0x5a
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x28]
	add r0, r5, #0
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0x3c]
	add r0, r5, #0
	mov r1, #2
	bl ov12_022202C0
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_0200D6A4
	add r0, r5, #0
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0200D460
	add r0, r5, #0
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0200D460
	add r0, r5, #0
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x50]
	bl sub_0200D460
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232B8
	sub r0, r0, #3
	cmp r0, #1
	ldr r0, [r4, #0x28]
	bhi _0222E8DE
	mov r1, #0x1e
	bl sub_0200D474
	ldr r0, [r4, #0x3c]
	mov r1, #0x32
	bl sub_0200D474
	ldr r0, [r4, #0x50]
	mov r1, #0x46
	bl sub_0200D474
	b _0222E8F4
_0222E8DE:
	mov r1, #0x3c
	bl sub_0200D474
	ldr r0, [r4, #0x3c]
	mov r1, #0x46
	bl sub_0200D474
	ldr r0, [r4, #0x50]
	mov r1, #0x32
	bl sub_0200D474
_0222E8F4:
	mov r2, #0x14
	mov r1, #0x64
	str r2, [sp]
	str r1, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x60
	add r3, r1, #0
	bl ov12_02225EF0
	ldr r0, [r4, #4]
	ldr r1, _0222E918 ; =ov12_0222E784
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0222E918: .word ov12_0222E784
	thumb_func_end ov12_0222E810