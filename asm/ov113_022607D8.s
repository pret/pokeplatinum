	.include "macros/function.inc"
	.include "include/ov113_022607D8.inc"

	

	.text


	thumb_func_start ov113_022607D8
ov113_022607D8: ; 0x022607D8
	ldr r3, _022607E4 ; =ov66_02232D60
	add r2, r0, #0
	ldr r0, _022607E8 ; =0x02261548
	mov r1, #3
	bx r3
	nop
_022607E4: .word ov66_02232D60
_022607E8: .word 0x02261548
	thumb_func_end ov113_022607D8

	thumb_func_start ov113_022607EC
ov113_022607EC: ; 0x022607EC
	push {r3, lr}
	ldr r2, [r1, #4]
	cmp r2, r0
	bne _022607F8
	mov r0, #0
	pop {r3, pc}
_022607F8:
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _02260802
	mov r0, #0
	pop {r3, pc}
_02260802:
	bl ov66_02232B8C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02260812
	mov r0, #1
	pop {r3, pc}
_02260812:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov113_022607EC

	thumb_func_start ov113_02260818
ov113_02260818: ; 0x02260818
	push {r4, lr}
	add r4, r0, #0
	bl ov66_02231760
	cmp r0, #1
	bne _02260828
	mov r0, #0
	pop {r4, pc}
_02260828:
	mov r0, #2
	add r1, r4, #0
	mov r2, #0xc
	bl ov66_02232EBC
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov113_02260818

	thumb_func_start ov113_02260838
ov113_02260838: ; 0x02260838
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov113_0225DD44
	add r1, r0, #0
	add r0, r5, #0
	bl ov113_022607EC
	cmp r0, #0
	beq _02260858
	add r0, r4, #0
	add r1, r5, #0
	bl ov113_0225E044
_02260858:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov113_02260838

	thumb_func_start ov113_0226085C
ov113_0226085C: ; 0x0226085C
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov113_0225DD44
	add r1, r0, #0
	add r0, r5, #0
	bl ov113_022607EC
	cmp r0, #0
	beq _02260882
	add r0, r5, #0
	bl ov66_02232B8C
	add r1, r0, #0
	add r0, r4, #0
	bl ov113_0225E05C
_02260882:
	pop {r3, r4, r5, pc}
	thumb_func_end ov113_0226085C

	thumb_func_start ov113_02260884
ov113_02260884: ; 0x02260884
	push {r4, r5, r6, lr}
	add r6, r3, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl ov113_0225DD44
	add r1, r0, #0
	add r0, r5, #0
	bl ov113_022607EC
	cmp r0, #0
	beq _022608A8
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov113_0225DDC0
_022608A8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov113_02260884

	.rodata


	.global Unk_ov113_02261548
Unk_ov113_02261548: ; 0x02261548
	.incbin "incbin/overlay113_rodata.bin", 0xC9C, 0x18

