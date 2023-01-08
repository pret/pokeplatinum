	.include "macros/function.inc"
	.include "include/gfd_linkedlisttexvramman.inc"

	.extern NNS_GfdDefaultFuncAllocTexVram
	.extern NNS_GfdDefaultFuncFreeTexVram

	.text


	arm_func_start NNS_GfdGetLnkTexVramManagerWorkSize
NNS_GfdGetLnkTexVramManagerWorkSize: ; 0x020A6824
	mov r0, r0, lsl #4
	bx lr
	arm_func_end NNS_GfdGetLnkTexVramManagerWorkSize

	arm_func_start NNS_GfdInitLnkTexVramManager
NNS_GfdInitLnkTexVramManager: ; 0x020A682C
	stmfd sp!, {r3, lr}
	ldr ip, _020A6870 ; =0x021C3AD4
	str r0, [ip, #0xc]
	str r1, [ip, #0x10]
	str r2, [ip, #0x14]
	str r3, [ip, #0x18]
	bl NNS_GfdResetLnkTexVramState
	ldr r0, [sp, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r3, _020A6874 ; =NNS_GfdAllocLnkTexVram
	ldr r1, _020A6878 ; =0x02100DEC
	ldr r2, _020A687C ; =NNS_GfdFreeLnkTexVram
	ldr r0, _020A6880 ; =0x02100DF0
	str r3, [r1, #0]
	str r2, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A6870: .word Unk_021C3AD4
_020A6874: .word NNS_GfdAllocLnkTexVram
_020A6878: .word NNS_GfdDefaultFuncAllocTexVram
_020A687C: .word NNS_GfdFreeLnkTexVram
_020A6880: .word NNS_GfdDefaultFuncFreeTexVram
	arm_func_end NNS_GfdInitLnkTexVramManager

	arm_func_start NNS_GfdAllocLnkTexVram
NNS_GfdAllocLnkTexVram: ; 0x020A6884
	stmfd sp!, {r3, r4, r5, lr}
	cmp r0, #0
	moveq r5, #0x10
	addne r0, r0, #0xf
	bicne r5, r0, #0xf
	ldr r0, _020A6904 ; =0x0007FFF0
	mov r4, r1
	cmp r5, r0
	movhs r0, #0
	ldmhsia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	add r2, sp, #0
	beq _020A68CC
	ldr r0, _020A6908 ; =0x021C3AD8
	ldr r1, _020A690C ; =0x021C3ADC
	mov r3, r5
	bl NNSi_GfdAllocLnkVram
	b _020A68DC
_020A68CC:
	ldr r0, _020A6910 ; =0x021C3AD4
	ldr r1, _020A690C ; =0x021C3ADC
	mov r3, r5
	bl NNSi_GfdAllocLnkVram
_020A68DC:
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [sp]
	mov r1, r5, lsr #4
	mov r0, r0, lsl #0xd
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	orr r0, r0, r4, lsl #31
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A6904: .word 0x0007FFF0
_020A6908: .word 0x021C3AD8
_020A690C: .word 0x021C3ADC
_020A6910: .word Unk_021C3AD4
	arm_func_end NNS_GfdAllocLnkTexVram

	arm_func_start NNS_GfdFreeLnkTexVram
NNS_GfdFreeLnkTexVram: ; 0x020A6914
	stmfd sp!, {r3, lr}
	ldr r1, _020A6978 ; =0x7FFF0000
	mov r2, r0, lsl #0x10
	and r1, r0, r1
	mov r1, r1, lsr #0x10
	and r0, r0, #0x80000000
	mov r2, r2, lsr #0xd
	movs r3, r1, lsl #4
	mov r0, r0, lsr #0x1f
	beq _020A6970
	cmp r0, #0
	beq _020A6954
	ldr r0, _020A697C ; =0x021C3AD8
	ldr r1, _020A6980 ; =0x021C3ADC
	bl NNSi_GfdFreeLnkVram
	b _020A6960
_020A6954:
	ldr r0, _020A6984 ; =0x021C3AD4
	ldr r1, _020A6980 ; =0x021C3ADC
	bl NNSi_GfdFreeLnkVram
_020A6960:
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	ldmia sp!, {r3, pc}
_020A6970:
	mov r0, #2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A6978: .word 0x7FFF0000
_020A697C: .word 0x021C3AD8
_020A6980: .word 0x021C3ADC
_020A6984: .word Unk_021C3AD4
	arm_func_end NNS_GfdFreeLnkTexVram

	arm_func_start NNS_GfdResetLnkTexVramState
NNS_GfdResetLnkTexVramState: ; 0x020A6988
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x30
	ldr lr, _020A6B70 ; =0x020F9600
	add r4, sp, #0
	ldmia lr!, {r0, r1, r2, r3}
	mov ip, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, _020A6B74 ; =0x021C3AD4
	mov r3, #0
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #0xc]
	add r0, r2, r2, lsr #1
	mov r4, r2, lsr #1
	sub r1, r1, r0
_020A69D0:
	cmp r3, #0
	cmpne r3, #2
	bne _020A6A10
	ldr lr, [ip]
	cmp lr, #0
	cmpne r2, #0
	beq _020A6A10
	ldr r0, [ip, #8]
	cmp lr, r2
	movhi lr, r2
	add r0, r0, lr
	str r0, [ip, #8]
	ldr r0, [ip]
	sub r2, r2, lr
	sub r0, r0, lr
	str r0, [ip]
_020A6A10:
	add r3, r3, #1
	cmp r3, #4
	add ip, ip, #0xc
	blo _020A69D0
	ldr r0, [sp, #0xc]
	add r2, sp, #0
	sub r0, r0, r4
	str r0, [sp, #0xc]
	mov r3, #0
_020A6A34:
	ldr ip, [r2]
	cmp ip, #0
	cmpne r1, #0
	beq _020A6A68
	ldr r0, [r2, #4]
	cmp ip, r1
	movhi ip, r1
	add r0, r0, ip
	str r0, [r2, #4]
	ldr r0, [r2, #0]
	sub r1, r1, ip
	sub r0, r0, ip
	str r0, [r2, #0]
_020A6A68:
	add r3, r3, #1
	cmp r3, #4
	add r2, r2, #0xc
	blo _020A6A34
	ldr r0, _020A6B78 ; =0x021C3AD4
	bl NNSi_GfdInitLnkVramMan
	ldr r0, _020A6B7C ; =0x021C3AD8
	bl NNSi_GfdInitLnkVramMan
	ldr r0, _020A6B74 ; =0x021C3AD4
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x14]
	mov r1, r1, lsr #4
	bl NNSi_GfdInitLnkVramBlockPool
	ldr r3, [sp, #8]
	ldr r1, _020A6B74 ; =0x021C3AD4
	cmp r3, #0
	str r0, [r1, #8]
	beq _020A6AC0
	ldr r0, _020A6B7C ; =0x021C3AD8
	ldr r1, _020A6B80 ; =0x021C3ADC
	mov r2, #0
	bl NNSi_GfdAddNewFreeBlock
_020A6AC0:
	ldr r3, [sp, #4]
	ldr r2, [sp, #8]
	cmp r3, #0
	beq _020A6ADC
	ldr r0, _020A6B78 ; =0x021C3AD4
	ldr r1, _020A6B80 ; =0x021C3ADC
	bl NNSi_GfdAddNewFreeBlock
_020A6ADC:
	ldr r3, [sp, #0x20]
	cmp r3, #0
	beq _020A6AF8
	ldr r0, _020A6B7C ; =0x021C3AD8
	ldr r1, _020A6B80 ; =0x021C3ADC
	mov r2, #0x40000
	bl NNSi_GfdAddNewFreeBlock
_020A6AF8:
	ldr r3, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	cmp r3, #0
	beq _020A6B18
	ldr r0, _020A6B78 ; =0x021C3AD4
	ldr r1, _020A6B80 ; =0x021C3ADC
	add r2, r2, #0x40000
	bl NNSi_GfdAddNewFreeBlock
_020A6B18:
	ldr r3, [sp, #0x28]
	cmp r3, #0
	beq _020A6B34
	ldr r0, _020A6B78 ; =0x021C3AD4
	ldr r1, _020A6B80 ; =0x021C3ADC
	mov r2, #0x60000
	bl NNSi_GfdAddNewFreeBlock
_020A6B34:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _020A6B50
	ldr r0, _020A6B78 ; =0x021C3AD4
	ldr r1, _020A6B80 ; =0x021C3ADC
	add r2, r4, #0x20000
	bl NNSi_GfdAddNewFreeBlock
_020A6B50:
	ldr r0, _020A6B78 ; =0x021C3AD4
	ldr r1, _020A6B80 ; =0x021C3ADC
	bl NNSi_GfdMergeAllFreeBlocks
	ldr r0, _020A6B7C ; =0x021C3AD8
	ldr r1, _020A6B80 ; =0x021C3ADC
	bl NNSi_GfdMergeAllFreeBlocks
	add sp, sp, #0x30
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A6B70: .word Unk_020F9600
_020A6B74: .word Unk_021C3AD4
_020A6B78: .word Unk_021C3AD4
_020A6B7C: .word 0x021C3AD8
_020A6B80: .word 0x021C3ADC
	arm_func_end NNS_GfdResetLnkTexVramState

	.rodata


	.global Unk_020F9600
Unk_020F9600: ; 0x020F9600
	.incbin "incbin/arm9_rodata.bin", 0x149C0, 0x30



	.bss


	.global Unk_021C3AD4
Unk_021C3AD4: ; 0x021C3AD4
	.space 0x1C

