	.include "macros/function.inc"
	.include "include/unk_020D3F7C.inc"

	

	.text


	arm_func_start __flush_line_buffered_output_files
__flush_line_buffered_output_files: ; 0x020D3F7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r0, _020D4004 ; =0x02101490
	mov r4, #0
	mov r5, #1
	mov r8, r0
	mvn sb, #0
	mov r7, r4
	mov r6, #0x4c
_020D3F9C:
	ldr r1, [r0, #4]
	mov r2, r1, lsl #0x16
	movs r2, r2, lsr #0x1d
	beq _020D3FDC
	mov r1, r1, lsl #0x19
	mov r1, r1, lsr #0x1e
	tst r1, #1
	beq _020D3FDC
	ldr r1, [r0, #8]
	mov r1, r1, lsl #0x1d
	mov r1, r1, lsr #0x1d
	cmp r1, #1
	bne _020D3FDC
	bl fflush
	cmp r0, #0
	movne r4, sb
_020D3FDC:
	cmp r5, #3
	movge r0, r7
	bge _020D3FF4
	mul r0, r5, r6
	add r5, r5, #1
	add r0, r8, r0
_020D3FF4:
	cmp r0, #0
	bne _020D3F9C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020D4004: .word 0x02101490
	arm_func_end __flush_line_buffered_output_files

	arm_func_start __flush_all
__flush_all: ; 0x020D4008
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r0, _020D406C ; =0x02101490
	mov r4, #0
	mov r5, #1
	mov r8, r0
	mvn sb, #0
	mov r7, r4
	mov r6, #0x4c
_020D4028:
	ldr r1, [r0, #4]
	mov r1, r1, lsl #0x16
	movs r1, r1, lsr #0x1d
	beq _020D4044
	bl fflush
	cmp r0, #0
	movne r4, sb
_020D4044:
	cmp r5, #3
	movge r0, r7
	bge _020D405C
	mul r0, r5, r6
	add r5, r5, #1
	add r0, r8, r0
_020D405C:
	cmp r0, #0
	bne _020D4028
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020D406C: .word 0x02101490
	arm_func_end __flush_all

	.data


	.global Unk_02101490
Unk_02101490: ; 0x02101490
	.incbin "incbin/arm9_data.bin", 0x27B0, 0xE4



	.bss


	.global Unk_021D0A40
Unk_021D0A40: ; 0x021D0A40
	.space 0x100

	.global Unk_021D0B40
Unk_021D0B40: ; 0x021D0B40
	.space 0x100

	.global Unk_021D0C40
Unk_021D0C40: ; 0x021D0C40
	.space 0x100

