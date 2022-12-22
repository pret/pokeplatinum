	.include "macros/function.inc"
	.include "include/unk_0209BA18.inc"

	

	.text


	thumb_func_start sub_0209BA18
sub_0209BA18: ; 0x0209BA18
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x2c
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x2c
	bl MI_CpuFill8
	str r6, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	mov r1, #0xe
	str r0, [r4, #8]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	add r2, r4, #0
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	ldr r1, _0209BA7C ; =0x020F8BE0
	add r0, r5, #0
	str r5, [r4, #0x28]
	bl sub_0203CD84
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0209BA7C: .word 0x020F8BE0
	thumb_func_end sub_0209BA18