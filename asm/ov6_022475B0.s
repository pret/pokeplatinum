	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov6_022475B0
ov6_022475B0: ; 0x022475B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0x6a
	mov r1, #8
	mov r2, #4
	bl sub_02006ADC
	add r4, r0, #0
	add r1, sp, #4
	ldr r0, [sp]
	add r1, #2
	add r2, sp, #4
	bl sub_0202DA10
	add r0, sp, #4
	ldrh r1, [r0, #2]
	ldr r0, _02247620 ; =0x0000FFFF
	cmp r1, r0
	beq _022475DE
	lsl r0, r1, #2
	ldr r6, [r4, r0]
	b _022475E0
_022475DE:
	mov r6, #0
_022475E0:
	add r0, sp, #4
	ldrh r1, [r0]
	ldr r0, _02247620 ; =0x0000FFFF
	cmp r1, r0
	beq _022475F0
	lsl r0, r1, #2
	ldr r7, [r4, r0]
	b _022475F2
_022475F0:
	mov r7, #0
_022475F2:
	bl sub_0201D2E8
	lsl r0, r0, #4
	lsr r5, r0, #0x10
	cmp r5, #0x10
	blo _02247602
	bl sub_02022974
_02247602:
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	cmp r6, r0
	beq _022475F2
	cmp r7, r0
	beq _022475F2
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0202DA24
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02247620: .word 0x0000FFFF
	thumb_func_end ov6_022475B0

	thumb_func_start ov6_02247624
ov6_02247624: ; 0x02247624
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0202DA10
	add r0, sp, #0
	ldrh r1, [r0, #2]
	ldr r0, _0224765C ; =0x0000FFFF
	cmp r1, r0
	bne _02247640
	bl sub_02022974
_02247640:
	mov r0, #0x6a
	mov r1, #8
	mov r2, #4
	bl sub_02006ADC
	add r1, sp, #0
	ldrh r1, [r1, #2]
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	bl sub_020181C4
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0224765C: .word 0x0000FFFF
	thumb_func_end ov6_02247624