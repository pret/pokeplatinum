	.include "macros/function.inc"
	.include "overlay018/ov18_0223BBAC.inc"

	

	.text


	arm_func_start ov18_0223BBAC
ov18_0223BBAC: ; 0x0223BBAC
	stmfd sp!, {r3, lr}
	ldr r0, _0223BC30 ; =0x0225335C
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223BC38
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	bne _0223BBE8
	mov r0, #0x31
	sub r1, r0, #0x32
	mov r2, #0
	bl ov18_0222B594
_0223BBE8:
	mov r0, #2
	bl ov18_0222B740
	ldr r0, [sp]
	cmp r0, #0
	bne _0223BC00
	bl ov18_0222BC1C
_0223BC00:
	mov r0, #0x2c
	bl ov18_0222B7C8
	mov r0, #0
	bl ov18_0222AD34
	bl ov18_0223BCE0
	mov r0, #0
	bl ov18_0222BC8C
	mov r0, #0xc
	bl ov18_0223E994
	ldr r0, _0223BC34 ; =ov18_0223BD78
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223BC30: .word Unk_ov18_0225335C
_0223BC34: .word ov18_0223BD78
	arm_func_end ov18_0223BBAC

	arm_func_start ov18_0223BC38
ov18_0223BC38: ; 0x0223BC38
	stmfd sp!, {r3, lr}
	ldr r0, _0223BCC0 ; =0x0224A4A0
	ldr r1, _0223BCC4 ; =0x020C07EC
	bl ov18_0222B700
	ldr r0, _0223BCC8 ; =0x0224A4B8
	ldr r1, _0223BCCC ; =GX_LoadBGPltt
	bl ov18_0222B700
	ldr r0, _0223BCD0 ; =0x0224A4D0
	ldr r1, _0223BCD4 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _0223BCD8 ; =0x04001008
	ldr r1, _0223BCDC ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223BCC0: .word Unk_ov18_0224A4A0
_0223BCC4: .word 0x020C07EC
_0223BCC8: .word Unk_ov18_0224A4B8
_0223BCCC: .word GX_LoadBGPltt
_0223BCD0: .word Unk_ov18_0224A4D0
_0223BCD4: .word GX_LoadBG2Scr
_0223BCD8: .word 0x04001008
_0223BCDC: .word 0x0400000A
	arm_func_end ov18_0223BC38

	arm_func_start ov18_0223BCE0
ov18_0223BCE0: ; 0x0223BCE0
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	bl ov18_0223DDCC
	mov r4, r0
	ldr r0, _0223BD70 ; =0x02249554
	add r1, sp, #4
	mov r2, #0xc
	bl MIi_CpuCopy32
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #2
	moveq r0, #4
	streqb r0, [sp, #0xe]
	ldrneb r0, [r4, #0xf4]
	addne r0, r0, #1
	strneb r0, [sp, #0xe]
	add r0, sp, #4
	bl DWC_AC_Create
	cmp r0, #0
	bne _0223BD3C
	bl OS_Terminate
_0223BD3C:
	ldr r0, [sp]
	cmp r0, #0
	bne _0223BD54
	ldrb r0, [r4, #0xf4]
	mov r1, r4
	bl ov4_021E60F8
_0223BD54:
	mov r0, #0
	ldr r1, _0223BD74 ; =ov18_0223BF18
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223BD70: .word Unk_ov18_02249554
_0223BD74: .word ov18_0223BF18
	arm_func_end ov18_0223BCE0

	arm_func_start ov18_0223BD78
ov18_0223BD78: ; 0x0223BD78
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	bne _0223BDD4
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
_0223BDD4:
	ldr r0, _0223BDE0 ; =ov18_0223BDE4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223BDE0: .word ov18_0223BDE4
	arm_func_end ov18_0223BD78

	arm_func_start ov18_0223BDE4
ov18_0223BDE4: ; 0x0223BDE4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223BE14 ; =ov18_0223BE18
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223BE14: .word ov18_0223BE18
	arm_func_end ov18_0223BDE4

	arm_func_start ov18_0223BE18
ov18_0223BE18: ; 0x0223BE18
	stmfd sp!, {r3, lr}
	bl ov18_0223BE2C
	bl ov18_0223BE30
	bl ov18_0223BE34
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0223BE18

	arm_func_start ov18_0223BE2C
ov18_0223BE2C: ; 0x0223BE2C
	bx lr
	arm_func_end ov18_0223BE2C

	arm_func_start ov18_0223BE30
ov18_0223BE30: ; 0x0223BE30
	bx lr
	arm_func_end ov18_0223BE30

	arm_func_start ov18_0223BE34
ov18_0223BE34: ; 0x0223BE34
	bx lr
	arm_func_end ov18_0223BE34

	arm_func_start ov18_0223BE38
ov18_0223BE38: ; 0x0223BE38
	stmfd sp!, {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223BE5C ; =ov18_0223BE60
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223BE5C: .word ov18_0223BE60
	arm_func_end ov18_0223BE38

	arm_func_start ov18_0223BE60
ov18_0223BE60: ; 0x0223BE60
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223BE80 ; =ov18_0223BE84
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223BE80: .word ov18_0223BE84
	arm_func_end ov18_0223BE60

	arm_func_start ov18_0223BE84
ov18_0223BE84: ; 0x0223BE84
	stmfd sp!, {r4, lr}
	bl ov18_0223E5D0
	mov r4, r0
	bl DWC_AC_Destroy
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_020A33F8
	add r1, r4, #0xf0
	mov r2, #0xe
	bl MI_CpuCopy8
	bl sub_020A33F8
	add r1, r4, #0x1f0
	mov r2, #0xe
	bl MI_CpuCopy8
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _0223BF0C ; =0x0225335C
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, #0
	bne _0223BEFC
	bl ov18_0222F6D4
	ldr r0, _0223BF10 ; =ov18_022365BC
	bl ov18_0222F6C4
	ldmia sp!, {r4, pc}
_0223BEFC:
	bl ov18_0222F6D4
	ldr r0, _0223BF14 ; =ov18_0223BFA8
	bl ov18_0222F6C4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223BF0C: .word Unk_ov18_0225335C
_0223BF10: .word ov18_022365BC
_0223BF14: .word ov18_0223BFA8
	arm_func_end ov18_0223BE84

	arm_func_start ov18_0223BF18
ov18_0223BF18: ; 0x0223BF18
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl DWC_AC_Process
	movs r4, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl ov18_0222BD44
	bl ov18_0223E9FC
	cmp r4, #0
	ble _0223BF54
	ldr r1, _0223BF7C ; =0x0225335C
	mov r2, #1
	mov r0, #0x11
	strb r2, [r1]
	bl ov18_0223E994
	b _0223BF64
_0223BF54:
	bl DWC_AC_GetStatus
	bl ov18_02236BD0
	mov r0, #0x12
	bl ov18_0223E994
_0223BF64:
	ldr r0, _0223BF80 ; =ov18_0223BE38
	bl ov18_0222F6C4
	mov r1, r5
	mov r0, #0
	bl ov18_022463AC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0223BF7C: .word Unk_ov18_0225335C
_0223BF80: .word ov18_0223BE38
	arm_func_end ov18_0223BF18

	arm_func_start ov18_0223BF84
ov18_0223BF84: ; 0x0223BF84
	ldr ip, _0223BF94 ; =ov18_02245068
	mov r0, r1
	mov r1, #0x20
	bx ip
	; .align 2, 0
_0223BF94: .word ov18_02245068
	arm_func_end ov18_0223BF84

	arm_func_start ov18_0223BF98
ov18_0223BF98: ; 0x0223BF98
	ldr ip, _0223BFA4 ; =ov18_022450D0
	mov r0, r1
	bx ip
	; .align 2, 0
_0223BFA4: .word ov18_022450D0
	arm_func_end ov18_0223BF98

	.rodata


	.global Unk_ov18_02249554
Unk_ov18_02249554: ; 0x02249554
	.incbin "incbin/overlay18_rodata.bin", 0x3120, 0xC



	.data


	.global Unk_ov18_0224A4A0
Unk_ov18_0224A4A0: ; 0x0224A4A0
	.incbin "incbin/overlay18_data.bin", 0xD40, 0xD58 - 0xD40

	.global Unk_ov18_0224A4B8
Unk_ov18_0224A4B8: ; 0x0224A4B8
	.incbin "incbin/overlay18_data.bin", 0xD58, 0xD70 - 0xD58

	.global Unk_ov18_0224A4D0
Unk_ov18_0224A4D0: ; 0x0224A4D0
	.incbin "incbin/overlay18_data.bin", 0xD70, 0x14



	.bss


	.global Unk_ov18_0225335C
Unk_ov18_0225335C: ; 0x0225335C
	.space 0x4

