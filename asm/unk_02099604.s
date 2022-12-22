	.include "macros/function.inc"
	.include "include/unk_02099604.inc"

	

	.text


	thumb_func_start sub_02099604
sub_02099604: ; 0x02099604
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	mov r1, #0x28
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x28
	bl MI_CpuFill8
	str r5, [r4, #0xc]
	add r0, r5, #0
	bl sub_0202AB28
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_02025E38
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_0207D990
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_02025E44
	str r0, [r4, #0x18]
	str r7, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x20]
	str r6, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02099604

	thumb_func_start sub_0209964C
sub_0209964C: ; 0x0209964C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _02099670 ; =0x020F6E00
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02099670: .word 0x020F6E00
	thumb_func_end sub_0209964C

	thumb_func_start sub_02099674
sub_02099674: ; 0x02099674
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203D174
	add r3, r5, #0
	add r3, #0x9c
	add r1, r0, #0
	ldr r3, [r3, #0]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_02099604
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0209964C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02099674

	thumb_func_start sub_020996A0
sub_020996A0: ; 0x020996A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203D174
	add r3, r5, #0
	add r3, #0x9c
	add r1, r0, #0
	ldr r3, [r3, #0]
	mov r0, #1
	add r2, r4, #0
	bl sub_02099604
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	str r6, [r4, #0x24]
	bl sub_0209964C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020996A0

	.rodata


	.global Unk_020F6E00
Unk_020F6E00: ; 0x020F6E00
	.incbin "incbin/arm9_rodata.bin", 0x121C0, 0x10

