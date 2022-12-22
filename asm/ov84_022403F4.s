	.include "macros/function.inc"
	.include "include/ov84_022403F4.inc"

	

	.text


	thumb_func_start ov84_022403F4
ov84_022403F4: ; 0x022403F4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x20
	mov r1, #6
	bl sub_0201DBEC
	add r0, r4, #0
	bl ov84_02240424
	add r0, r4, #0
	bl ov84_022404C0
	add r0, r4, #0
	bl ov84_02240950
	pop {r4, pc}
	thumb_func_end ov84_022403F4

	thumb_func_start ov84_02240424
ov84_02240424: ; 0x02240424
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	ldr r3, _022404B4 ; =0x02241178
	add r2, sp, #0x34
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #6
	bl sub_0200C6E4
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	bl sub_0200C704
	add r1, r4, #0
	add r1, #0xdc
	add r2, sp, #0x14
	ldr r5, _022404B8 ; =0x02241190
	str r0, [r1, #0]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _022404BC ; =0x02241164
	stmia r2!, {r0, r1}
	add r5, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r3, #0
	str r0, [r5, #0]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r3, #0x20
	bl sub_0200C73C
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0xc
	bl sub_0200C7C0
	add r0, r4, #0
	add r0, #0xd8
	add r4, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	add r2, sp, #0x34
	bl sub_0200CB30
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	nop
_022404B4: .word 0x02241178
_022404B8: .word 0x02241190
_022404BC: .word 0x02241164
	thumb_func_end ov84_02240424

	thumb_func_start ov84_022404C0
ov84_022404C0: ; 0x022404C0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02240844 ; =0x00000425
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _022404D4
	mov r3, #2
	mov r4, #3
	b _022404D8
_022404D4:
	mov r3, #6
	mov r4, #7
_022404D8:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02240848 ; =0x0000C0F9
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0224084C ; =0x0000C0FA
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x19
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02240850 ; =0x0000C0FB
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x1c
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02240854 ; =0x0000C0FC
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x1f
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02240858 ; =0x0000C0FD
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0xa
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0224085C ; =0x0000C0FE
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x24
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #8
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x3e
	mov r3, #4
	bl sub_0200CBDC
	mov r0, #0
	mov r1, #1
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02240860 ; =0x0000C0FF
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x10
	bl sub_0200CBDC
	ldr r0, _02240864 ; =0x0000C101
	add r1, r5, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #1
	mov r3, #0
	bl sub_0207C948
	ldr r0, _02240868 ; =0x0000C102
	add r1, r5, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #1
	mov r3, #0
	bl sub_0207CAC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02240848 ; =0x0000C0F9
	add r1, r5, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	add r3, r4, #0
	bl sub_0200CD0C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _0224084C ; =0x0000C0FA
	add r1, r5, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x14
	bl sub_0200CD0C
	mov r0, #0
	mov r1, #2
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02240854 ; =0x0000C0FC
	add r1, r5, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x10
	bl sub_0200CC9C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _02240858 ; =0x0000C0FD
	add r1, r5, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x3e
	mov r3, #0xa
	bl sub_0200CC9C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r3, _0224085C ; =0x0000C0FE
	mov r2, #1
	bl sub_0207C97C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _02240850 ; =0x0000C0FB
	add r1, r5, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x25
	bl sub_0200CD0C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240848 ; =0x0000C0F9
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #1
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224084C ; =0x0000C0FA
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x18
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240850 ; =0x0000C0FB
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x1b
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240854 ; =0x0000C0FC
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x1e
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240858 ; =0x0000C0FD
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #9
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224085C ; =0x0000C0FE
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x23
	bl sub_0200CE24
	bl sub_0207CF40
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240860 ; =0x0000C0FF
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x10
	bl sub_0200CE0C
	mov r0, #0
	str r0, [sp]
	mov r0, #0xc1
	lsl r0, r0, #8
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x3e
	mov r3, #5
	bl sub_0200CE0C
	mov r3, #0
	add r1, r5, #0
	add r2, r5, #0
	ldr r0, _02240848 ; =0x0000C0F9
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224084C ; =0x0000C0FA
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x17
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240850 ; =0x0000C0FB
	b _0224086C
	; .align 2, 0
_02240844: .word 0x00000425
_02240848: .word 0x0000C0F9
_0224084C: .word 0x0000C0FA
_02240850: .word 0x0000C0FB
_02240854: .word 0x0000C0FC
_02240858: .word 0x0000C0FD
_0224085C: .word 0x0000C0FE
_02240860: .word 0x0000C0FF
_02240864: .word 0x0000C101
_02240868: .word 0x0000C102
_0224086C:
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x1a
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224093C ; =0x0000C0FC
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x1d
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240940 ; =0x0000C0FD
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #8
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240944 ; =0x0000C0FE
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	add r2, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	mov r3, #0x22
	bl sub_0200CE54
	bl sub_0207CF44
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240948 ; =0x0000C0FF
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x10
	bl sub_0200CE3C
	mov r0, #0
	str r0, [sp]
	mov r0, #0xc1
	lsl r0, r0, #8
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x3e
	mov r3, #6
	bl sub_0200CE3C
	add r0, r5, #0
	add r0, #0xd8
	add r5, #0xdc
	ldr r2, _0224094C ; =0x0000C101
	ldr r0, [r0, #0]
	ldr r1, [r5, #0]
	add r3, r2, #0
	bl sub_0207C9EC
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0224093C: .word 0x0000C0FC
_02240940: .word 0x0000C0FD
_02240944: .word 0x0000C0FE
_02240948: .word 0x0000C0FF
_0224094C: .word 0x0000C101
	thumb_func_end ov84_022404C0

	thumb_func_start ov84_02240950
ov84_02240950: ; 0x02240950
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r4, _02240A7C ; =0x022411B0
	mov r7, #0
	add r6, r5, #0
_0224095C:
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r4, #0
	bl sub_0200CE6C
	add r1, r6, #0
	add r1, #0xe0
	add r7, r7, #1
	str r0, [r1, #0]
	add r4, #0x34
	add r6, r6, #4
	cmp r7, #0xc
	blo _0224095C
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r0, #0x65
	ldrb r0, [r0]
	add r0, #0xfc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _022409CE
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
_022409CE:
	ldr r0, _02240A80 ; =0x00000424
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _022409EE
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
_022409EE:
	add r0, r5, #0
	mov r1, #0
	bl ov84_02240D3C
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r2, r1, #0
	add r2, #0x64
	ldrb r3, [r2]
	mov r2, #0xc
	add r0, #0xe0
	mul r2, r3
	add r1, r1, r2
	ldrb r1, [r1, #0xc]
	ldr r0, [r0, #0]
	bl sub_0200D364
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r1, #0x64
	ldrb r1, [r1]
	bl ov84_02240C30
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r2, #0x61
	bl sub_0200D4C4
	add r0, r5, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r5, #0
	add r3, r2, #0
	add r3, #0x64
	ldrb r4, [r3]
	mov r3, #0xc
	add r0, #0xf0
	mul r3, r4
	add r2, r2, r3
	ldrh r2, [r2, #8]
	ldr r0, [r0, #0]
	mov r1, #0xb1
	sub r2, r2, #1
	lsl r2, r2, #4
	add r2, #0x18
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r4, _02240A84 ; =0x02241158
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r2, #0
	add r5, #0xe0
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	mov r2, #2
	ldr r0, [r0, #0]
	bl sub_02021C80
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02240A7C: .word 0x022411B0
_02240A80: .word 0x00000424
_02240A84: .word 0x02241158
	thumb_func_end ov84_02240950

	thumb_func_start ov84_02240A88
ov84_02240A88: ; 0x02240A88
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02240A90:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc
	blo _02240A90
	add r0, r6, #0
	add r1, r6, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0200D0B0
	add r6, #0xd8
	ldr r0, [r6, #0]
	bl sub_0200C8D4
	pop {r4, r5, r6, pc}
	thumb_func_end ov84_02240A88

	thumb_func_start ov84_02240ABC
ov84_02240ABC: ; 0x02240ABC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02240AC2:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	bl sub_0200D330
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc
	blo _02240AC2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov84_02240ABC

	thumb_func_start ov84_02240AD8
ov84_02240AD8: ; 0x02240AD8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240B2C ; =0x0000C0FF
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x10
	bl sub_0200D948
	add r0, r4, #0
	mov r1, #2
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02240B30 ; =0x0000C0FC
	mov r2, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xd8
	add r5, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r5, #0]
	bl sub_0200D97C
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02240B2C: .word 0x0000C0FF
_02240B30: .word 0x0000C0FC
	thumb_func_end ov84_02240AD8

	thumb_func_start ov84_02240B34
ov84_02240B34: ; 0x02240B34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r4, r1, #0
	bl sub_0200D41C
	add r5, #0xe4
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_0200D41C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov84_02240B34

	thumb_func_start ov84_02240B50
ov84_02240B50: ; 0x02240B50
	ldr r1, _02240B64 ; =0x00000454
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _02240B5C
	mov r0, #1
	b _02240B5E
_02240B5C:
	mov r0, #0
_02240B5E:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
_02240B64: .word 0x00000454
	thumb_func_end ov84_02240B50

	thumb_func_start ov84_02240B68
ov84_02240B68: ; 0x02240B68
	ldr r1, _02240B78 ; =0x00000457
	mov r2, #0
	strb r2, [r0, r1]
	ldr r3, _02240B7C ; =ov84_02240C48
	mov r2, #1
	sub r1, r1, #3
	strb r2, [r0, r1]
	bx r3
	; .align 2, 0
_02240B78: .word 0x00000457
_02240B7C: .word ov84_02240C48
	thumb_func_end ov84_02240B68

	thumb_func_start ov84_02240B80
ov84_02240B80: ; 0x02240B80
	push {r3, lr}
	ldr r1, _02240B94 ; =0x00000454
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02240B92
	cmp r1, #1
	bne _02240B92
	bl ov84_02240B98
_02240B92:
	pop {r3, pc}
	; .align 2, 0
_02240B94: .word 0x00000454
	thumb_func_end ov84_02240B80

	thumb_func_start ov84_02240B98
ov84_02240B98: ; 0x02240B98
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r2, _02240C24 ; =0x00000455
	ldrb r0, [r4, r2]
	cmp r0, #0
	bne _02240BD0
	add r1, r2, #2
	ldrb r1, [r4, r1]
	ldr r0, [sp]
	lsl r1, r1, #2
	add r3, r4, r1
	add r1, r2, #3
	ldr r1, [r3, r1]
	sub r0, r0, r1
	str r0, [sp]
	b _02240BE2
_02240BD0:
	add r1, r2, #2
	ldrb r1, [r4, r1]
	ldr r0, [sp]
	lsl r1, r1, #2
	add r3, r4, r1
	add r1, r2, #3
	ldr r1, [r3, r1]
	add r0, r0, r1
	str r0, [sp]
_02240BE2:
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	add r1, sp, #0
	ldr r0, [r0, #0]
	bl sub_02021C50
	ldr r1, _02240C28 ; =0x00000457
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	ldrb r0, [r4, r1]
	cmp r0, #8
	bne _02240C20
	add r1, #0x21
	ldrb r1, [r4, r1]
	add r0, r4, #0
	bl ov84_02240C30
	lsl r0, r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	add r1, sp, #0
	ldr r0, [r0, #0]
	bl sub_02021C50
	ldr r0, _02240C2C ; =0x00000454
	mov r1, #0
	strb r1, [r4, r0]
_02240C20:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_02240C24: .word 0x00000455
_02240C28: .word 0x00000457
_02240C2C: .word 0x00000454
	thumb_func_end ov84_02240B98

	thumb_func_start ov84_02240C30
ov84_02240C30: ; 0x02240C30
	ldr r2, _02240C44 ; =0x00000427
	ldrb r3, [r0, r2]
	add r2, r2, #1
	ldrb r0, [r0, r2]
	mul r1, r0
	add r0, r3, r1
	add r0, r0, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
_02240C44: .word 0x00000427
	thumb_func_end ov84_02240C30

	thumb_func_start ov84_02240C48
ov84_02240C48: ; 0x02240C48
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r1, _02240CE4 ; =0x00000478
	str r0, [r2, #0]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	bl ov84_02240C30
	lsl r1, r0, #0xc
	ldr r0, [sp]
	cmp r1, r0
	bge _02240C82
	sub r0, r0, r1
	mov r1, #0x64
	bl _s32_div_f
	mov r2, #0
	b _02240C8C
_02240C82:
	sub r0, r1, r0
	mov r1, #0x64
	bl _s32_div_f
	mov r2, #1
_02240C8C:
	ldr r1, _02240CE8 ; =0x00000455
	mov r3, #0x28
	strb r2, [r4, r1]
	add r5, r0, #0
	ldr r1, _02240CEC ; =0x00000458
	mov r2, #0
	mul r5, r3
	str r2, [r4, r1]
	add r3, r1, #4
	str r5, [r4, r3]
	mov r3, #0x19
	add r5, r0, #0
	mul r5, r3
	add r3, r1, #0
	add r3, #8
	str r5, [r4, r3]
	mov r3, #0xf
	add r5, r0, #0
	mul r5, r3
	add r3, r1, #0
	add r3, #0xc
	str r5, [r4, r3]
	mov r3, #0xa
	add r5, r0, #0
	mul r5, r3
	add r3, r1, #0
	add r3, #0x10
	str r5, [r4, r3]
	mov r3, #7
	add r5, r0, #0
	mul r5, r3
	add r3, r1, #0
	add r3, #0x14
	str r5, [r4, r3]
	lsl r3, r0, #1
	add r3, r0, r3
	add r0, r1, #0
	add r0, #0x18
	str r3, [r4, r0]
	add r1, #0x1c
	str r2, [r4, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02240CE4: .word 0x00000478
_02240CE8: .word 0x00000455
_02240CEC: .word 0x00000458
	thumb_func_end ov84_02240C48

	thumb_func_start ov84_02240CF0
ov84_02240CF0: ; 0x02240CF0
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	bne _02240D16
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0xdc
	mov r2, #0x9c
	bl sub_0200D4C4
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xdc
	mov r2, #0xb4
	bl sub_0200D4C4
	b _02240D32
_02240D16:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0xa2
	mov r2, #0x6c
	bl sub_0200D4C4
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa2
	mov r2, #0x84
	bl sub_0200D4C4
_02240D32:
	add r0, r4, #0
	mov r1, #1
	bl ov84_02240D3C
	pop {r4, pc}
	thumb_func_end ov84_02240CF0

	thumb_func_start ov84_02240D3C
ov84_02240D3C: ; 0x02240D3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_0200D3F4
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200D3F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov84_02240D3C

	thumb_func_start ov84_02240D5C
ov84_02240D5C: ; 0x02240D5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x42
	lsl r0, r0, #2
	add r4, r2, #0
	add r6, r1, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200D3F4
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200D3F4
	cmp r4, #0
	beq _02240E18
	add r0, r6, #0
	bl sub_0207D268
	mov r1, #3
	add r4, r0, #0
	bl sub_020790C4
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #0
	mov r1, #1
	bl sub_020790C4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	bl sub_0207C944
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0207C908
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, _02240E1C ; =0x0000C101
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r7, #0
	bl sub_0200D948
	add r0, r6, #0
	bl sub_0207C92C
	add r1, r0, #0
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #6
	bl sub_0200D41C
	bl sub_0207CAC0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0207CA90
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, _02240E20 ; =0x0000C102
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r6, #0
	bl sub_0200D948
	add r0, r4, #0
	bl sub_0207CAA8
	add r1, r0, #0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #6
	bl sub_0200D41C
_02240E18:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02240E1C: .word 0x0000C101
_02240E20: .word 0x0000C102
	thumb_func_end ov84_02240D5C

	thumb_func_start ov84_02240E24
ov84_02240E24: ; 0x02240E24
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xf8
	add r4, r1, #0
	ldr r0, [r0, #0]
	mov r1, #1
	add r6, r2, #0
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200D4C4
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3CC
	add r5, #0xf8
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_0200D364
	pop {r4, r5, r6, pc}
	thumb_func_end ov84_02240E24

	thumb_func_start ov84_02240E5C
ov84_02240E5C: ; 0x02240E5C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_0200D408
	cmp r0, #1
	bne _02240E92
	add r0, r4, #0
	add r0, #0xf8
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	bl sub_0200D34C
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_0200D3E0
	cmp r0, #2
	bne _02240E92
	add r4, #0xf8
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200D3F4
_02240E92:
	pop {r4, pc}
	thumb_func_end ov84_02240E5C

	.rodata


	.global Unk_ov84_02241158
Unk_ov84_02241158: ; 0x02241158
	.incbin "incbin/overlay84_rodata.bin", 0x2C4, 0x2D0 - 0x2C4

	.global Unk_ov84_02241164
Unk_ov84_02241164: ; 0x02241164
	.incbin "incbin/overlay84_rodata.bin", 0x2D0, 0x2E4 - 0x2D0

	.global Unk_ov84_02241178
Unk_ov84_02241178: ; 0x02241178
	.incbin "incbin/overlay84_rodata.bin", 0x2E4, 0x2FC - 0x2E4

	.global Unk_ov84_02241190
Unk_ov84_02241190: ; 0x02241190
	.incbin "incbin/overlay84_rodata.bin", 0x2FC, 0x31C - 0x2FC

	.global Unk_ov84_022411B0
Unk_ov84_022411B0: ; 0x022411B0
	.incbin "incbin/overlay84_rodata.bin", 0x31C, 0x270

