	.include "macros/function.inc"
	.include "include/gx_load2d.inc"

	.extern Unk_021CCBBC
	.extern Unk_02101148

	.text


	arm_func_start GX_LoadBGPltt
GX_LoadBGPltt: ; 0x020C00B4
	stmfd sp!, {r4, lr}
	ldr r3, _020C0104 ; =0x02101148
	mov r4, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov lr, r1
	mov r3, r2
	cmp r0, ip
	beq _020C00F0
	cmp r3, #0x1c
	bls _020C00F0
	mov r1, r4
	add r2, lr, #0x5000000
	bl MI_DmaCopy16
	ldmia sp!, {r4, pc}
_020C00F0:
	mov r0, r4
	mov r2, r3
	add r1, lr, #0x5000000
	bl MIi_CpuCopy16
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0104: .word Unk_02101148
	arm_func_end GX_LoadBGPltt

	arm_func_start GXS_LoadBGPltt
GXS_LoadBGPltt: ; 0x020C0108
	stmfd sp!, {r3, lr}
	ldr r3, _020C015C ; =0x02101148
	mov lr, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov r3, r2
	cmp r0, ip
	beq _020C0144
	cmp r3, #0x1c
	bls _020C0144
	add r2, r1, #0x400
	mov r1, lr
	add r2, r2, #0x5000000
	bl MI_DmaCopy16
	ldmia sp!, {r3, pc}
_020C0144:
	add r1, r1, #0x400
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x5000000
	bl MIi_CpuCopy16
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C015C: .word Unk_02101148
	arm_func_end GXS_LoadBGPltt

	arm_func_start GX_LoadOBJPltt
GX_LoadOBJPltt: ; 0x020C0160
	stmfd sp!, {r3, lr}
	ldr r3, _020C01B4 ; =0x02101148
	mov lr, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov r3, r2
	cmp r0, ip
	beq _020C019C
	cmp r3, #0x1c
	bls _020C019C
	add r2, r1, #0x200
	mov r1, lr
	add r2, r2, #0x5000000
	bl MI_DmaCopy16
	ldmia sp!, {r3, pc}
_020C019C:
	add r1, r1, #0x200
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x5000000
	bl MIi_CpuCopy16
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C01B4: .word Unk_02101148
	arm_func_end GX_LoadOBJPltt

	arm_func_start GXS_LoadOBJPltt
GXS_LoadOBJPltt: ; 0x020C01B8
	stmfd sp!, {r3, lr}
	ldr r3, _020C020C ; =0x02101148
	mov lr, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov r3, r2
	cmp r0, ip
	beq _020C01F4
	cmp r3, #0x1c
	bls _020C01F4
	add r2, r1, #0x600
	mov r1, lr
	add r2, r2, #0x5000000
	bl MI_DmaCopy16
	ldmia sp!, {r3, pc}
_020C01F4:
	add r1, r1, #0x600
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x5000000
	bl MIi_CpuCopy16
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C020C: .word Unk_02101148
	arm_func_end GXS_LoadOBJPltt

	arm_func_start GX_LoadOAM
GX_LoadOAM: ; 0x020C0210
	stmfd sp!, {r4, lr}
	ldr r3, _020C0260 ; =0x02101148
	mov r4, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov lr, r1
	mov r3, r2
	cmp r0, ip
	beq _020C024C
	cmp r3, #0x30
	bls _020C024C
	mov r1, r4
	add r2, lr, #0x7000000
	bl MI_DmaCopy32
	ldmia sp!, {r4, pc}
_020C024C:
	mov r0, r4
	mov r2, r3
	add r1, lr, #0x7000000
	bl MIi_CpuCopy32
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0260: .word Unk_02101148
	arm_func_end GX_LoadOAM

	arm_func_start GXS_LoadOAM
GXS_LoadOAM: ; 0x020C0264
	stmfd sp!, {r3, lr}
	ldr r3, _020C02B8 ; =0x02101148
	mov lr, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov r3, r2
	cmp r0, ip
	beq _020C02A0
	cmp r3, #0x30
	bls _020C02A0
	add r2, r1, #0x400
	mov r1, lr
	add r2, r2, #0x7000000
	bl MI_DmaCopy32
	ldmia sp!, {r3, pc}
_020C02A0:
	add r1, r1, #0x400
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x7000000
	bl MIi_CpuCopy32
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C02B8: .word Unk_02101148
	arm_func_end GXS_LoadOAM

	arm_func_start GX_LoadOBJ
GX_LoadOBJ: ; 0x020C02BC
	stmfd sp!, {r4, lr}
	ldr r3, _020C0310 ; =0x02101148
	mov r4, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov lr, r1
	mov r3, r2
	cmp r0, ip
	mov ip, #0x6400000
	beq _020C02FC
	cmp r3, #0x30
	bls _020C02FC
	mov r1, r4
	add r2, ip, lr
	bl MI_DmaCopy32
	ldmia sp!, {r4, pc}
_020C02FC:
	mov r0, r4
	mov r2, r3
	add r1, ip, lr
	bl MIi_CpuCopy32
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0310: .word Unk_02101148
	arm_func_end GX_LoadOBJ

	arm_func_start GXS_LoadOBJ
GXS_LoadOBJ: ; 0x020C0314
	stmfd sp!, {r4, lr}
	ldr r3, _020C0368 ; =0x02101148
	mov r4, r0
	ldr r0, [r3, #0]
	mvn ip, #0
	mov lr, r1
	mov r3, r2
	cmp r0, ip
	mov ip, #0x6600000
	beq _020C0354
	cmp r3, #0x30
	bls _020C0354
	mov r1, r4
	add r2, ip, lr
	bl MI_DmaCopy32
	ldmia sp!, {r4, pc}
_020C0354:
	mov r0, r4
	mov r2, r3
	add r1, ip, lr
	bl MIi_CpuCopy32
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0368: .word Unk_02101148
	arm_func_end GXS_LoadOBJ

	arm_func_start GX_LoadBG0Scr
GX_LoadBG0Scr: ; 0x020C036C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG0ScrPtr
	ldr r1, _020C03C8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C03B4
	cmp r4, #0x1c
	bls _020C03B4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy16
	ldmia sp!, {r4, r5, r6, pc}
_020C03B4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy16
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C03C8: .word Unk_02101148
	arm_func_end GX_LoadBG0Scr

	arm_func_start GXS_LoadBG0Scr
GXS_LoadBG0Scr: ; 0x020C03CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG0ScrPtr
	ldr r1, _020C0428 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0414
	cmp r4, #0x1c
	bls _020C0414
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy16
	ldmia sp!, {r4, r5, r6, pc}
_020C0414:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy16
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0428: .word Unk_02101148
	arm_func_end GXS_LoadBG0Scr

	arm_func_start GX_LoadBG1Scr
GX_LoadBG1Scr: ; 0x020C042C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG1ScrPtr
	ldr r1, _020C0488 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0474
	cmp r4, #0x1c
	bls _020C0474
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy16
	ldmia sp!, {r4, r5, r6, pc}
_020C0474:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy16
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0488: .word Unk_02101148
	arm_func_end GX_LoadBG1Scr

	arm_func_start GXS_LoadBG1Scr
GXS_LoadBG1Scr: ; 0x020C048C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG1ScrPtr
	ldr r1, _020C04E8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C04D4
	cmp r4, #0x1c
	bls _020C04D4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy16
	ldmia sp!, {r4, r5, r6, pc}
_020C04D4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy16
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C04E8: .word Unk_02101148
	arm_func_end GXS_LoadBG1Scr

	arm_func_start GX_LoadBG2Scr
GX_LoadBG2Scr: ; 0x020C04EC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG2ScrPtr
	ldr r1, _020C0548 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0534
	cmp r4, #0x1c
	bls _020C0534
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy16
	ldmia sp!, {r4, r5, r6, pc}
_020C0534:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy16
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0548: .word Unk_02101148
	arm_func_end GX_LoadBG2Scr

	arm_func_start GXS_LoadBG2Scr
GXS_LoadBG2Scr: ; 0x020C054C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG2ScrPtr
	ldr r1, _020C05A8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0594
	cmp r4, #0x1c
	bls _020C0594
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy16
	ldmia sp!, {r4, r5, r6, pc}
_020C0594:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy16
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C05A8: .word Unk_02101148
	arm_func_end GXS_LoadBG2Scr

	arm_func_start GX_LoadBG3Scr
GX_LoadBG3Scr: ; 0x020C05AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG3ScrPtr
	ldr r1, _020C0608 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C05F4
	cmp r4, #0x1c
	bls _020C05F4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy16
	ldmia sp!, {r4, r5, r6, pc}
_020C05F4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy16
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0608: .word Unk_02101148
	arm_func_end GX_LoadBG3Scr

	arm_func_start GXS_LoadBG3Scr
GXS_LoadBG3Scr: ; 0x020C060C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG3ScrPtr
	ldr r1, _020C0668 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0654
	cmp r4, #0x1c
	bls _020C0654
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy16
	ldmia sp!, {r4, r5, r6, pc}
_020C0654:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy16
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0668: .word Unk_02101148
	arm_func_end GXS_LoadBG3Scr

	arm_func_start GX_LoadBG0Char
GX_LoadBG0Char: ; 0x020C066C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG0CharPtr
	ldr r1, _020C06C8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C06B4
	cmp r4, #0x30
	bls _020C06B4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy32
	ldmia sp!, {r4, r5, r6, pc}
_020C06B4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy32
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C06C8: .word Unk_02101148
	arm_func_end GX_LoadBG0Char

	arm_func_start GXS_LoadBG0Char
GXS_LoadBG0Char: ; 0x020C06CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG0CharPtr
	ldr r1, _020C0728 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0714
	cmp r4, #0x30
	bls _020C0714
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy32
	ldmia sp!, {r4, r5, r6, pc}
_020C0714:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy32
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0728: .word Unk_02101148
	arm_func_end GXS_LoadBG0Char

	arm_func_start GX_LoadBG1Char
GX_LoadBG1Char: ; 0x020C072C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG1CharPtr
	ldr r1, _020C0788 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0774
	cmp r4, #0x30
	bls _020C0774
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy32
	ldmia sp!, {r4, r5, r6, pc}
_020C0774:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy32
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0788: .word Unk_02101148
	arm_func_end GX_LoadBG1Char

	arm_func_start GXS_LoadBG1Char
GXS_LoadBG1Char: ; 0x020C078C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG1CharPtr
	ldr r1, _020C07E8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C07D4
	cmp r4, #0x30
	bls _020C07D4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy32
	ldmia sp!, {r4, r5, r6, pc}
_020C07D4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy32
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C07E8: .word Unk_02101148
	arm_func_end GXS_LoadBG1Char

	arm_func_start GX_LoadBG2Char
GX_LoadBG2Char: ; 0x020C07EC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG2CharPtr
	ldr r1, _020C0848 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0834
	cmp r4, #0x30
	bls _020C0834
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy32
	ldmia sp!, {r4, r5, r6, pc}
_020C0834:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy32
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0848: .word Unk_02101148
	arm_func_end GX_LoadBG2Char

	arm_func_start GXS_LoadBG2Char
GXS_LoadBG2Char: ; 0x020C084C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG2CharPtr
	ldr r1, _020C08A8 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0894
	cmp r4, #0x30
	bls _020C0894
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy32
	ldmia sp!, {r4, r5, r6, pc}
_020C0894:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy32
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C08A8: .word Unk_02101148
	arm_func_end GXS_LoadBG2Char

	arm_func_start GX_LoadBG3Char
GX_LoadBG3Char: ; 0x020C08AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG3CharPtr
	ldr r1, _020C0908 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C08F4
	cmp r4, #0x30
	bls _020C08F4
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy32
	ldmia sp!, {r4, r5, r6, pc}
_020C08F4:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy32
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0908: .word Unk_02101148
	arm_func_end GX_LoadBG3Char

	arm_func_start GXS_LoadBG3Char
GXS_LoadBG3Char: ; 0x020C090C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG3CharPtr
	ldr r1, _020C0968 ; =0x02101148
	mov ip, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	cmp r0, r1
	beq _020C0954
	cmp r4, #0x30
	bls _020C0954
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl MI_DmaCopy32
	ldmia sp!, {r4, r5, r6, pc}
_020C0954:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl MIi_CpuCopy32
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0968: .word Unk_02101148
	arm_func_end GXS_LoadBG3Char

	arm_func_start GX_BeginLoadBGExtPltt
GX_BeginLoadBGExtPltt: ; 0x020C096C
	stmfd sp!, {r3, lr}
	bl GX_ResetBankForBGExtPltt
	ldr r1, _020C09FC ; =0x021CCBBC
	cmp r0, #0x20
	str r0, [r1, #0x14]
	bgt _020C09A0
	cmp r0, #0x20
	bge _020C09E4
	cmp r0, #0
	ldmleia sp!, {r3, pc}
	cmp r0, #0x10
	beq _020C09BC
	ldmia sp!, {r3, pc}
_020C09A0:
	cmp r0, #0x40
	bgt _020C09B0
	beq _020C09D0
	ldmia sp!, {r3, pc}
_020C09B0:
	cmp r0, #0x60
	beq _020C09E4
	ldmia sp!, {r3, pc}
_020C09BC:
	ldr r2, _020C0A00 ; =0x06880000
	mov r0, #0
	str r2, [r1, #0x10]
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
_020C09D0:
	ldr r2, _020C0A04 ; =0x06894000
	mov r0, #0x4000
	str r2, [r1, #0x10]
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
_020C09E4:
	ldr r2, _020C0A08 ; =0x06890000
	ldr r0, _020C09FC ; =0x021CCBBC
	mov r1, #0
	str r2, [r0, #0x10]
	str r1, [r0, #0xc]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C09FC: .word Unk_021CCBBC
_020C0A00: .word 0x06880000
_020C0A04: .word 0x06894000
_020C0A08: .word 0x06890000
	arm_func_end GX_BeginLoadBGExtPltt

	arm_func_start GX_LoadBGExtPltt
GX_LoadBGExtPltt: ; 0x020C0A0C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr ip, _020C0A74 ; =0x021CCBBC
	ldr r3, _020C0A78 ; =0x02101148
	ldr lr, [ip, #0x10]
	ldr r4, [ip, #0xc]
	add r5, lr, r1
	ldr lr, [r3]
	mvn ip, #0
	mov r1, r0
	mov r3, r2
	cmp lr, ip
	sub r4, r5, r4
	beq _020C0A64
	mov ip, #0
	str ip, [sp]
	mov r0, lr
	mov r2, r4
	str ip, [sp, #4]
	bl MI_DmaCopy32Async
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
_020C0A64:
	mov r1, r4
	bl MIi_CpuCopy32
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C0A74: .word Unk_021CCBBC
_020C0A78: .word Unk_02101148
	arm_func_end GX_LoadBGExtPltt

	arm_func_start GX_EndLoadBGExtPltt
GX_EndLoadBGExtPltt: ; 0x020C0A7C
	stmfd sp!, {r3, lr}
	ldr r0, _020C0ABC ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0A98
	bl MI_WaitDma
_020C0A98:
	ldr r0, _020C0AC0 ; =0x021CCBBC
	ldr r0, [r0, #0x14]
	bl GX_SetBankForBGExtPltt
	ldr r0, _020C0AC0 ; =0x021CCBBC
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	str r1, [r0, #0xc]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0ABC: .word Unk_02101148
_020C0AC0: .word Unk_021CCBBC
	arm_func_end GX_EndLoadBGExtPltt

	arm_func_start GX_BeginLoadOBJExtPltt
GX_BeginLoadOBJExtPltt: ; 0x020C0AC4
	stmfd sp!, {r3, lr}
	bl GX_ResetBankForOBJExtPltt
	ldr r1, _020C0B00 ; =0x021CCBBC
	cmp r0, #0
	str r0, [r1, #8]
	ldmeqia sp!, {r3, pc}
	cmp r0, #0x20
	beq _020C0AF4
	cmp r0, #0x40
	ldreq r0, _020C0B04 ; =0x06894000
	streq r0, [r1, #4]
	ldmia sp!, {r3, pc}
_020C0AF4:
	ldr r0, _020C0B08 ; =0x06890000
	str r0, [r1, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0B00: .word Unk_021CCBBC
_020C0B04: .word 0x06894000
_020C0B08: .word 0x06890000
	arm_func_end GX_BeginLoadOBJExtPltt

	arm_func_start GX_LoadOBJExtPltt
GX_LoadOBJExtPltt: ; 0x020C0B0C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r3, _020C0B70 ; =0x02101148
	ldr lr, _020C0B74 ; =0x021CCBBC
	ldr r4, [r3, #0]
	mvn ip, #0
	mov r6, r0
	mov r5, r1
	mov r3, r2
	cmp r4, ip
	ldr lr, [lr, #4]
	beq _020C0B60
	mov ip, #0
	str ip, [sp]
	mov r0, r4
	mov r1, r6
	add r2, lr, r5
	str ip, [sp, #4]
	bl MI_DmaCopy32Async
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_020C0B60:
	add r1, lr, r5
	bl MIi_CpuCopy32
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C0B70: .word Unk_02101148
_020C0B74: .word Unk_021CCBBC
	arm_func_end GX_LoadOBJExtPltt

	arm_func_start GX_EndLoadOBJExtPltt
GX_EndLoadOBJExtPltt: ; 0x020C0B78
	stmfd sp!, {r3, lr}
	ldr r0, _020C0BB4 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0B94
	bl MI_WaitDma
_020C0B94:
	ldr r0, _020C0BB8 ; =0x021CCBBC
	ldr r0, [r0, #8]
	bl GX_SetBankForOBJExtPltt
	ldr r0, _020C0BB8 ; =0x021CCBBC
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0BB4: .word Unk_02101148
_020C0BB8: .word Unk_021CCBBC
	arm_func_end GX_EndLoadOBJExtPltt

	arm_func_start GXS_BeginLoadBGExtPltt
GXS_BeginLoadBGExtPltt: ; 0x020C0BBC
	stmfd sp!, {r3, lr}
	bl GX_ResetBankForSubBGExtPltt
	ldr r1, _020C0BD0 ; =0x021CCBBC
	str r0, [r1, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0BD0: .word Unk_021CCBBC
	arm_func_end GXS_BeginLoadBGExtPltt

	arm_func_start GXS_LoadBGExtPltt
GXS_LoadBGExtPltt: ; 0x020C0BD4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _020C0C34 ; =0x02101148
	mvn ip, #0
	ldr lr, [r3]
	mov r4, r0
	mov r3, r2
	cmp lr, ip
	beq _020C0C20
	add r2, r1, #0x98000
	mov ip, #0
	str ip, [sp]
	mov r0, lr
	mov r1, r4
	add r2, r2, #0x6800000
	str ip, [sp, #4]
	bl MI_DmaCopy32Async
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_020C0C20:
	add r1, r1, #0x98000
	add r1, r1, #0x6800000
	bl MIi_CpuCopy32
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0C34: .word Unk_02101148
	arm_func_end GXS_LoadBGExtPltt

	arm_func_start GXS_EndLoadBGExtPltt
GXS_EndLoadBGExtPltt: ; 0x020C0C38
	stmfd sp!, {r3, lr}
	ldr r0, _020C0C70 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0C54
	bl MI_WaitDma
_020C0C54:
	ldr r0, _020C0C74 ; =0x021CCBBC
	ldr r0, [r0, #0]
	bl GX_SetBankForSubBGExtPltt
	ldr r0, _020C0C74 ; =0x021CCBBC
	mov r1, #0
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0C70: .word Unk_02101148
_020C0C74: .word Unk_021CCBBC
	arm_func_end GXS_EndLoadBGExtPltt

	arm_func_start GXS_BeginLoadOBJExtPltt
GXS_BeginLoadOBJExtPltt: ; 0x020C0C78
	stmfd sp!, {r3, lr}
	bl GX_ResetBankForSubOBJExtPltt
	ldr r1, _020C0C8C ; =0x021CCBBC
	str r0, [r1, #0x18]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0C8C: .word Unk_021CCBBC
	arm_func_end GXS_BeginLoadOBJExtPltt

	arm_func_start GXS_LoadOBJExtPltt
GXS_LoadOBJExtPltt: ; 0x020C0C90
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _020C0CF0 ; =0x02101148
	mvn ip, #0
	ldr lr, [r3]
	mov r4, r0
	mov r3, r2
	cmp lr, ip
	beq _020C0CDC
	add r2, r1, #0x8a0000
	mov ip, #0
	str ip, [sp]
	mov r0, lr
	mov r1, r4
	add r2, r2, #0x6000000
	str ip, [sp, #4]
	bl MI_DmaCopy32Async
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_020C0CDC:
	add r1, r1, #0x8a0000
	add r1, r1, #0x6000000
	bl MIi_CpuCopy32
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C0CF0: .word Unk_02101148
	arm_func_end GXS_LoadOBJExtPltt

	arm_func_start GXS_EndLoadOBJExtPltt
GXS_EndLoadOBJExtPltt: ; 0x020C0CF4
	stmfd sp!, {r3, lr}
	ldr r0, _020C0D2C ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _020C0D10
	bl MI_WaitDma
_020C0D10:
	ldr r0, _020C0D30 ; =0x021CCBBC
	ldr r0, [r0, #0x18]
	bl GX_SetBankForSubOBJExtPltt
	ldr r0, _020C0D30 ; =0x021CCBBC
	mov r1, #0
	str r1, [r0, #0x18]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C0D2C: .word Unk_02101148
_020C0D30: .word Unk_021CCBBC
	arm_func_end GXS_EndLoadOBJExtPltt

	.bss


	.global Unk_021CCBBC
Unk_021CCBBC: ; 0x021CCBBC
	.space 0x4

	.global Unk_021CCBC0
Unk_021CCBC0: ; 0x021CCBC0
	.space 0x4

	.global Unk_021CCBC4
Unk_021CCBC4: ; 0x021CCBC4
	.space 0x4

	.global Unk_021CCBC8
Unk_021CCBC8: ; 0x021CCBC8
	.space 0x4

	.global Unk_021CCBCC
Unk_021CCBCC: ; 0x021CCBCC
	.space 0x4

	.global Unk_021CCBD0
Unk_021CCBD0: ; 0x021CCBD0
	.space 0x4

	.global Unk_021CCBD4
Unk_021CCBD4: ; 0x021CCBD4
	.space 0x4

