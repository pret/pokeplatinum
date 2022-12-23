	.include "macros/function.inc"
	.include "overlay116/ov116_02266FEC.inc"

	

	.text


	thumb_func_start ov116_02266FEC
ov116_02266FEC: ; 0x02266FEC
	mov r1, #0xfe
	lsl r1, r1, #0x16
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov116_02266FEC

	thumb_func_start ov116_02266FFC
ov116_02266FFC: ; 0x02266FFC
	add r3, r0, #0
	add r2, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	bx lr
	; .align 2, 0
	thumb_func_end ov116_02266FFC

	thumb_func_start ov116_0226700C
ov116_0226700C: ; 0x0226700C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl _f_mul
	add r7, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	bl _f_mul
	add r1, r0, #0
	add r0, r7, #0
	bl _f_sub
	add r7, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r4, #8]
	bl _f_mul
	add r1, r0, #0
	add r0, r7, #0
	bl _f_sub
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0xc]
	bl _f_mul
	add r1, r0, #0
	add r0, r7, #0
	bl _f_sub
	str r0, [r6, #0]
	ldr r0, [r5, #8]
	ldr r1, [r4, #0xc]
	bl _f_mul
	add r7, r0, #0
	ldr r0, [r5, #0]
	ldr r1, [r4, #4]
	bl _f_mul
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0]
	bl _f_mul
	add r1, r0, #0
	ldr r0, [sp]
	bl _f_add
	add r1, r0, #0
	add r0, r7, #0
	bl _f_add
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #8]
	bl _f_mul
	add r1, r0, #0
	add r0, r7, #0
	bl _f_sub
	str r0, [r6, #4]
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #4]
	bl _f_mul
	add r7, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r4, #0]
	bl _f_mul
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [r4, #8]
	bl _f_mul
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0xc]
	bl _f_mul
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl _f_sub
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl _f_add
	add r1, r0, #0
	add r0, r7, #0
	bl _f_add
	str r0, [r6, #8]
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0]
	bl _f_mul
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [r4, #0xc]
	bl _f_mul
	add r7, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	bl _f_mul
	add r1, r0, #0
	add r0, r7, #0
	bl _f_add
	add r7, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r4, #4]
	bl _f_mul
	add r1, r0, #0
	add r0, r7, #0
	bl _f_sub
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl _f_add
	str r0, [r6, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov116_0226700C

	thumb_func_start ov116_0226711C
ov116_0226711C: ; 0x0226711C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r1, r0, #0
	bl _f_add
	add r4, r0, #0
	ldr r0, [r5, #8]
	add r1, r0, #0
	bl _f_add
	add r6, r0, #0
	ldr r0, [r5, #0]
	add r1, r0, #0
	bl _f_mul
	add r7, r0, #0
	ldr r0, [r5, #4]
	add r1, r0, #0
	bl _f_add
	add r1, r0, #0
	add r0, r7, #0
	bl _f_add
	add r1, r0, #0
	add r0, r6, #0
	bl _f_add
	add r1, r0, #0
	add r0, r4, #0
	bl _f_add
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov116_0226711C

	thumb_func_start ov116_02267160
ov116_02267160: ; 0x02267160
	push {r4, lr}
	add r4, r0, #0
	bl ov116_0226711C
	mov r1, #0
	bl _f_fgt
	bls _0226718A
	add r0, r4, #0
	bl ov116_0226711C
	add r1, r0, #0
	ldr r0, _022671B4 ; =0x45800000
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _022671A0
_0226718A:
	add r0, r4, #0
	bl ov116_0226711C
	add r1, r0, #0
	ldr r0, _022671B4 ; =0x45800000
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_022671A0:
	bl _f_ftoi
	bl FX_Sqrt
	bl _f_itof
	ldr r1, _022671B4 ; =0x45800000
	bl _fdiv
	pop {r4, pc}
	; .align 2, 0
_022671B4: .word 0x45800000
	thumb_func_end ov116_02267160

	thumb_func_start ov116_022671B8
ov116_022671B8: ; 0x022671B8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl _fdiv
	str r0, [r5, #0]
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl _fdiv
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl _fdiv
	str r0, [r5, #8]
	ldr r0, [r4, #0xc]
	add r1, r6, #0
	bl _fdiv
	str r0, [r5, #0xc]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_022671B8

	thumb_func_start ov116_022671EC
ov116_022671EC: ; 0x022671EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #4]
	add r1, r0, #0
	bl _f_mul
	bl _f_ftod
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl _d_mul
	bl _d_dtof
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	add r1, r0, #0
	bl _f_mul
	bl _f_ftod
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl _d_mul
	bl _d_dtof
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	add r1, r0, #0
	bl _f_mul
	bl _f_ftod
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl _d_mul
	bl _d_dtof
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	bl _f_mul
	bl _f_ftod
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl _d_mul
	bl _d_dtof
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl _f_mul
	bl _f_ftod
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl _d_mul
	bl _d_dtof
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #4]
	bl _f_mul
	bl _f_ftod
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl _d_mul
	bl _d_dtof
	str r0, [sp, #0x18]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0]
	bl _f_mul
	bl _f_ftod
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl _d_mul
	bl _d_dtof
	str r0, [sp, #0x1c]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0]
	bl _f_mul
	bl _f_ftod
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl _d_mul
	bl _d_dtof
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0]
	bl _f_mul
	bl _f_ftod
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl _d_mul
	bl _d_dtof
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	bl _f_ftod
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _022673F8 ; =0x3FF00000
	mov r0, #0
	bl _dsub
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	add r0, r6, #0
	bl _f_ftod
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #4]
	bl _dsub
	bl _d_dtof
	str r0, [r4, #0]
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl _f_add
	str r0, [r4, #4]
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	bl _f_sub
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl _f_sub
	str r0, [r4, #0x10]
	add r0, r6, #0
	bl _f_ftod
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _022673F8 ; =0x3FF00000
	mov r0, #0
	bl _dsub
	add r6, r0, #0
	ldr r0, [sp, #8]
	add r5, r1, #0
	bl _f_ftod
	add r2, r0, #0
	add r3, r1, #0
	add r0, r6, #0
	add r1, r5, #0
	bl _dsub
	bl _d_dtof
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	bl _f_add
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	bl _f_add
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	bl _f_sub
	str r0, [r4, #0x24]
	ldr r0, [sp, #8]
	bl _f_ftod
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _022673F8 ; =0x3FF00000
	mov r0, #0
	bl _dsub
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	add r5, r1, #0
	bl _f_ftod
	add r2, r0, #0
	add r3, r1, #0
	add r0, r6, #0
	add r1, r5, #0
	bl _dsub
	bl _d_dtof
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
	mov r0, #0xfe
	lsl r0, r0, #0x16
	str r0, [r4, #0x3c]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022673F8: .word 0x3FF00000
	thumb_func_end ov116_022671EC

	thumb_func_start ov116_022673FC
ov116_022673FC: ; 0x022673FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _02267420
	ldr r1, [r5, #0]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226742E
_02267420:
	ldr r1, [r5, #0]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226742E:
	bl _f_ftoi
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _02267452
	ldr r1, [r5, #4]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02267460
_02267452:
	ldr r1, [r5, #4]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02267460:
	bl _f_ftoi
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _02267484
	ldr r1, [r5, #8]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02267492
_02267484:
	ldr r1, [r5, #8]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02267492:
	bl _f_ftoi
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _022674B6
	ldr r1, [r5, #0xc]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _022674C4
_022674B6:
	ldr r1, [r5, #0xc]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_022674C4:
	bl _f_ftoi
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _022674E8
	ldr r1, [r5, #0x10]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _022674F6
_022674E8:
	ldr r1, [r5, #0x10]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_022674F6:
	bl _f_ftoi
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _0226751A
	ldr r1, [r5, #0x14]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02267528
_0226751A:
	ldr r1, [r5, #0x14]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02267528:
	bl _f_ftoi
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x18]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _0226754C
	ldr r1, [r5, #0x18]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226755A
_0226754C:
	ldr r1, [r5, #0x18]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226755A:
	bl _f_ftoi
	str r0, [r4, #0x18]
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _0226757E
	ldr r1, [r5, #0x1c]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226758C
_0226757E:
	ldr r1, [r5, #0x1c]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226758C:
	bl _f_ftoi
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x20]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _022675B0
	ldr r1, [r5, #0x20]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _022675BE
_022675B0:
	ldr r1, [r5, #0x20]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_022675BE:
	bl _f_ftoi
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _022675E2
	ldr r1, [r5, #0x24]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _022675F0
_022675E2:
	ldr r1, [r5, #0x24]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_022675F0:
	bl _f_ftoi
	str r0, [r4, #0x24]
	ldr r0, [r5, #0x28]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _02267614
	ldr r1, [r5, #0x28]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02267622
_02267614:
	ldr r1, [r5, #0x28]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02267622:
	bl _f_ftoi
	str r0, [r4, #0x28]
	ldr r0, [r5, #0x2c]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _02267646
	ldr r1, [r5, #0x2c]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02267654
_02267646:
	ldr r1, [r5, #0x2c]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02267654:
	bl _f_ftoi
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _02267678
	ldr r1, [r5, #0x30]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02267686
_02267678:
	ldr r1, [r5, #0x30]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02267686:
	bl _f_ftoi
	str r0, [r4, #0x30]
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _022676AA
	ldr r1, [r5, #0x34]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _022676B8
_022676AA:
	ldr r1, [r5, #0x34]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_022676B8:
	bl _f_ftoi
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _022676DC
	ldr r1, [r5, #0x38]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _022676EA
_022676DC:
	ldr r1, [r5, #0x38]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_022676EA:
	bl _f_ftoi
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl _f_fgt
	ldr r0, _02267724 ; =0x45800000
	bls _0226770E
	ldr r1, [r5, #0x3c]
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226771C
_0226770E:
	ldr r1, [r5, #0x3c]
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226771C:
	bl _f_ftoi
	str r0, [r4, #0x3c]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02267724: .word 0x45800000
	thumb_func_end ov116_022673FC

	thumb_func_start ov116_02267728
ov116_02267728: ; 0x02267728
	push {r4, lr}
	sub sp, #0x40
	add r4, r1, #0
	add r1, sp, #0
	bl ov116_022673FC
	add r0, sp, #0
	add r1, r4, #0
	bl MTX_Copy44To43_
	add sp, #0x40
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov116_02267728