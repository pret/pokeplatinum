	.include "macros/function.inc"
	.include "include/ov18_0222FF98.inc"

	

	.text


	arm_func_start ov18_0222FF98
ov18_0222FF98: ; 0x0222FF98
	stmfd sp!, {r3, lr}
	bl ov18_0223DD74
	bl ov18_0222F7E4
	bl ov18_0222B910
	bl ov18_0222BB34
	bl ov18_0222B580
	bl ov18_0222F74C
	cmp r0, #1
	bne _0222FFE0
	mov r0, #2
	bl ov18_0222F774
	cmp r0, #0
	beq _0222FFE0
	ldr r0, _02230110 ; =0x02249E14
	bl ov18_0222F834
	ldr r1, _02230114 ; =0x022532D8
	str r0, [r1, #0]
	b _0222FFF8
_0222FFE0:
	bl ov18_0222F74C
	ldr r1, _02230118 ; =0x02249DF8
	ldr r0, [r1, r0, lsl #2]
	bl ov18_0222F834
	ldr r1, _02230114 ; =0x022532D8
	str r0, [r1, #0]
_0222FFF8:
	ldr r0, _0223011C ; =0x02249E24
	bl ov18_0222B6A0
	mov r1, r0
	mov r0, #1
	bl ov18_02243E74
	ldr r0, _02230120 ; =0x02249E38
	bl ov18_0222B6A0
	mov r1, r0
	mov r0, #0
	bl ov18_02243E74
	ldr r0, _02230124 ; =0x02249E4C
	ldr r1, _02230128 ; =0x020C078C
	bl ov18_0222B700
	ldr r0, _0223012C ; =0x02249E60
	ldr r1, _02230130 ; =0x020C0108
	bl ov18_0222B700
	ldr r0, _02230134 ; =0x02249E74
	ldr r1, _02230138 ; =0x020C0314
	bl ov18_0222B700
	ldr r0, _0223013C ; =0x02249E8C
	ldr r1, _02230140 ; =0x020C01B8
	bl ov18_0222B700
	ldr r0, _02230144 ; =0x02249EA4
	ldr r1, _02230148 ; =0x020C07EC
	bl ov18_0222B700
	ldr r0, _0223014C ; =0x02249EBC
	ldr r1, _02230150 ; =GX_LoadBGPltt
	bl ov18_0222B700
	ldr r0, _02230154 ; =0x02249ED4
	ldr r1, _02230158 ; =0x020C02BC
	bl ov18_0222B700
	ldr r0, _0223015C ; =0x02249EEC
	ldr r1, _02230160 ; =0x020C0160
	bl ov18_0222B700
	bl ov18_0222F75C
	cmp r0, #0
	beq _02230098
	cmp r0, #1
	beq _022300A8
	b _022300B4
_02230098:
	ldr r0, _02230164 ; =0x02249F04
	ldr r1, _02230168 ; =GXS_LoadBG1Scr
	bl ov18_0222B700
	b _022300B4
_022300A8:
	ldr r0, _0223016C ; =0x02249F18
	ldr r1, _02230168 ; =GXS_LoadBG1Scr
	bl ov18_0222B700
_022300B4:
	ldr ip, _02230170 ; =0x0400100A
	mov r0, #1
	ldrh r2, [ip]
	sub r3, ip, #0x1000
	mov r1, #2
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [ip]
	ldrh r2, [r3]
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r3]
	ldrh r2, [r3]
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r3]
	bl ov18_02244C84
	mov r0, #0
	mov r1, #2
	bl ov18_02244C84
	ldr r0, _02230174 ; =ov18_02230178
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230110: .word 0x02249E14
_02230114: .word 0x022532D8
_02230118: .word 0x02249DF8
_0223011C: .word 0x02249E24
_02230120: .word 0x02249E38
_02230124: .word 0x02249E4C
_02230128: .word 0x020C078C
_0223012C: .word 0x02249E60
_02230130: .word 0x020C0108
_02230134: .word 0x02249E74
_02230138: .word 0x020C0314
_0223013C: .word 0x02249E8C
_02230140: .word 0x020C01B8
_02230144: .word 0x02249EA4
_02230148: .word 0x020C07EC
_0223014C: .word 0x02249EBC
_02230150: .word GX_LoadBGPltt
_02230154: .word 0x02249ED4
_02230158: .word 0x020C02BC
_0223015C: .word 0x02249EEC
_02230160: .word 0x020C0160
_02230164: .word 0x02249F04
_02230168: .word GXS_LoadBG1Scr
_0223016C: .word 0x02249F18
_02230170: .word 0x0400100A
_02230174: .word ov18_02230178
	arm_func_end ov18_0222FF98

	arm_func_start ov18_02230178
ov18_02230178: ; 0x02230178
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r2, r0
	mov r1, #1
	mov r3, #0x14
	bl ov18_02244194
	mov r0, #2
	mov r2, r0
	mov r1, #0
	mov r3, #0x14
	bl ov18_02244194
	ldr r0, _022301B0 ; =ov18_022301B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022301B0: .word ov18_022301B4
	arm_func_end ov18_02230178

	arm_func_start ov18_022301B4
ov18_022301B4: ; 0x022301B4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222F75C
	cmp r0, #0
	beq _022301F0
	cmp r0, #1
	beq _02230208
	ldmia sp!, {r3, pc}
_022301F0:
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02230220 ; =ov18_02230228
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02230208:
	mov r0, #1
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _02230224 ; =ov18_0223A6B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230220: .word ov18_02230228
_02230224: .word ov18_0223A6B4
	arm_func_end ov18_022301B4

	.data


	.global Unk_ov18_02249D88
Unk_ov18_02249D88: ; 0x02249D88
	.incbin "incbin/overlay18_data.bin", 0x628, 0x638 - 0x628

	.global Unk_ov18_02249D98
Unk_ov18_02249D98: ; 0x02249D98
	.incbin "incbin/overlay18_data.bin", 0x638, 0x648 - 0x638

	.global Unk_ov18_02249DA8
Unk_ov18_02249DA8: ; 0x02249DA8
	.incbin "incbin/overlay18_data.bin", 0x648, 0x658 - 0x648

	.global Unk_ov18_02249DB8
Unk_ov18_02249DB8: ; 0x02249DB8
	.incbin "incbin/overlay18_data.bin", 0x658, 0x668 - 0x658

	.global Unk_ov18_02249DC8
Unk_ov18_02249DC8: ; 0x02249DC8
	.incbin "incbin/overlay18_data.bin", 0x668, 0x678 - 0x668

	.global Unk_ov18_02249DD8
Unk_ov18_02249DD8: ; 0x02249DD8
	.incbin "incbin/overlay18_data.bin", 0x678, 0x688 - 0x678

	.global Unk_ov18_02249DE8
Unk_ov18_02249DE8: ; 0x02249DE8
	.incbin "incbin/overlay18_data.bin", 0x688, 0x698 - 0x688

	.global Unk_ov18_02249DF8
Unk_ov18_02249DF8: ; 0x02249DF8
	.incbin "incbin/overlay18_data.bin", 0x698, 0x6B4 - 0x698

	.global Unk_ov18_02249E14
Unk_ov18_02249E14: ; 0x02249E14
	.incbin "incbin/overlay18_data.bin", 0x6B4, 0x6C4 - 0x6B4

	.global Unk_ov18_02249E24
Unk_ov18_02249E24: ; 0x02249E24
	.incbin "incbin/overlay18_data.bin", 0x6C4, 0x6D8 - 0x6C4

	.global Unk_ov18_02249E38
Unk_ov18_02249E38: ; 0x02249E38
	.incbin "incbin/overlay18_data.bin", 0x6D8, 0x6EC - 0x6D8

	.global Unk_ov18_02249E4C
Unk_ov18_02249E4C: ; 0x02249E4C
	.incbin "incbin/overlay18_data.bin", 0x6EC, 0x700 - 0x6EC

	.global Unk_ov18_02249E60
Unk_ov18_02249E60: ; 0x02249E60
	.incbin "incbin/overlay18_data.bin", 0x700, 0x714 - 0x700

	.global Unk_ov18_02249E74
Unk_ov18_02249E74: ; 0x02249E74
	.incbin "incbin/overlay18_data.bin", 0x714, 0x72C - 0x714

	.global Unk_ov18_02249E8C
Unk_ov18_02249E8C: ; 0x02249E8C
	.incbin "incbin/overlay18_data.bin", 0x72C, 0x744 - 0x72C

	.global Unk_ov18_02249EA4
Unk_ov18_02249EA4: ; 0x02249EA4
	.incbin "incbin/overlay18_data.bin", 0x744, 0x75C - 0x744

	.global Unk_ov18_02249EBC
Unk_ov18_02249EBC: ; 0x02249EBC
	.incbin "incbin/overlay18_data.bin", 0x75C, 0x774 - 0x75C

	.global Unk_ov18_02249ED4
Unk_ov18_02249ED4: ; 0x02249ED4
	.incbin "incbin/overlay18_data.bin", 0x774, 0x78C - 0x774

	.global Unk_ov18_02249EEC
Unk_ov18_02249EEC: ; 0x02249EEC
	.incbin "incbin/overlay18_data.bin", 0x78C, 0x7A4 - 0x78C

	.global Unk_ov18_02249F04
Unk_ov18_02249F04: ; 0x02249F04
	.incbin "incbin/overlay18_data.bin", 0x7A4, 0x7B8 - 0x7A4

	.global Unk_ov18_02249F18
Unk_ov18_02249F18: ; 0x02249F18
	.incbin "incbin/overlay18_data.bin", 0x7B8, 0x13



	.bss


	.global Unk_ov18_022532D8
Unk_ov18_022532D8: ; 0x022532D8
	.space 0x4

