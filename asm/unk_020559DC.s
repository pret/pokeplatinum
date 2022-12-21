	.include "macros/function.inc"
	.include "include/unk_020559DC.inc"

	

	.text


	thumb_func_start sub_020559DC
sub_020559DC: ; 0x020559DC
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025CD8
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02055A0E
	add r0, sp, #0xc
	add r1, sp, #0
	bl sub_0201384C
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0xc
	bl sub_02055A14
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0xc
	add r3, sp, #0
	bl sub_02055A3C
_02055A0E:
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020559DC

	thumb_func_start sub_02055A14
sub_02055A14: ; 0x02055A14
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	bl sub_020CC16C
	ldr r1, [r5, #0x20]
	add r4, r0, #0
	cmp r4, r1
	bhs _02055A2C
	str r4, [r5, #0x20]
	pop {r4, r5, r6, pc}
_02055A2C:
	cmp r4, r1
	bls _02055A3A
	add r0, r6, #0
	sub r1, r4, r1
	bl sub_02055AC0
	str r4, [r5, #0x20]
_02055A3A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02055A14

	thumb_func_start sub_02055A3C
sub_02055A3C: ; 0x02055A3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	str r0, [sp]
	add r6, r3, #0
	add r5, r1, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020CC218
	str r1, [sp, #8]
	add r1, r5, #0
	add r7, r0, #0
	add r0, r5, #4
	add r1, #0x14
	bl sub_020CC218
	add r2, r1, #0
	sub r1, r7, r0
	ldr r1, [sp, #8]
	sbc r1, r2
	bge _02055A80
	add r2, r5, #4
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	add r5, #0x14
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add sp, #0xc
	str r0, [r5, #0]
	pop {r4, r5, r6, r7, pc}
_02055A80:
	ldr r1, [sp, #8]
	sub r0, r7, r0
	sbc r1, r2
	mov r2, #0x3c
	mov r3, #0
	str r1, [sp, #8]
	bl sub_020E1D24
	add r7, r0, #0
	cmp r7, #0
	ble _02055ABC
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02025DC8
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02055B64
	add r2, r5, #4
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	add r5, #0x14
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r5, #0]
_02055ABC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02055A3C

	thumb_func_start sub_02055AC0
sub_02055AC0: ; 0x02055AC0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_0203D174
	add r1, r4, #0
	bl sub_02028658
	add r0, r5, #0
	bl sub_0203F1FC
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_0206C2D0
	ldr r0, [r5, #0xc]
	bl sub_0202B4A0
	add r1, r4, #0
	bl sub_0202B3D8
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202B4A0
	bl sub_0202B428
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0202D80C
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	bl sub_020777B4
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	add r6, r0, #0
	bl sub_0206B260
	cmp r0, r4
	ble _02055B28
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	b _02055B2A
_02055B28:
	mov r1, #0
_02055B2A:
	add r0, r6, #0
	bl sub_0206B270
	lsl r1, r4, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	bl sub_0206B2E4
	ldr r0, [r5, #0xc]
	bl sub_0206B334
	ldr r0, [r5, #0xc]
	bl sub_0206B514
	add r0, r5, #0
	bl sub_0203F310
	ldr r0, [r5, #0xc]
	bl sub_0206C008
	ldr r0, [r5, #0xc]
	bl sub_0202C878
	bl sub_0202C9A0
	ldr r0, [r5, #0xc]
	bl sub_0206F2F0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02055AC0

	thumb_func_start sub_02055B64
sub_02055B64: ; 0x02055B64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02055CD4
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_0202D854
	add r0, r5, #0
	bl sub_02055C40
	add r2, r0, #0
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_02028758
	ldr r0, [r5, #0xc]
	bl sub_0202440C
	ldr r2, [r6, #4]
	add r1, r4, #0
	bl sub_0202E324
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02077BD8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02055B64

	thumb_func_start sub_02055BA8
sub_02055BA8: ; 0x02055BA8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	ldr r0, [r0, #0x14]
	bl sub_02013974
	pop {r3, pc}
	thumb_func_end sub_02055BA8

	thumb_func_start sub_02055BB8
sub_02055BB8: ; 0x02055BB8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	ldr r0, [r0, #8]
	pop {r3, pc}
	thumb_func_end sub_02055BB8

	thumb_func_start sub_02055BC4
sub_02055BC4: ; 0x02055BC4
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	ldr r0, [r0, #0xc]
	pop {r3, pc}
	thumb_func_end sub_02055BC4

	thumb_func_start sub_02055BD0
sub_02055BD0: ; 0x02055BD0
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	ldr r0, [r0, #0x10]
	pop {r3, pc}
	thumb_func_end sub_02055BD0

	thumb_func_start sub_02055BDC
sub_02055BDC: ; 0x02055BDC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	thumb_func_end sub_02055BDC

	thumb_func_start sub_02055BE8
sub_02055BE8: ; 0x02055BE8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	ldr r0, [r0, #0x18]
	pop {r3, pc}
	thumb_func_end sub_02055BE8

	thumb_func_start sub_02055BF4
sub_02055BF4: ; 0x02055BF4
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02025CD8
	add r3, r0, #0
	ldr r2, [r3, #0x24]
	ldr r3, [r3, #0x28]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020CC3FC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02055BF4

	thumb_func_start sub_02055C10
sub_02055C10: ; 0x02055C10
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02025CD8
	add r3, r0, #0
	ldr r2, [r3, #0x2c]
	ldr r3, [r3, #0x30]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020CC3FC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02055C10

	thumb_func_start sub_02055C2C
sub_02055C2C: ; 0x02055C2C
	push {r4, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	add r4, r0, #0
	bl sub_020138EC
	str r0, [r4, #0x2c]
	str r1, [r4, #0x30]
	pop {r4, pc}
	thumb_func_end sub_02055C2C

	thumb_func_start sub_02055C40
sub_02055C40: ; 0x02055C40
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025CD8
	bl sub_02025DB8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02055C40