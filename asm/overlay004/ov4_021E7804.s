	.include "macros/function.inc"
	.include "overlay004/ov4_021E7804.inc"

	

	.text


	arm_func_start ov4_021E7804
ov4_021E7804: ; 0x021E7804
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0x10
	bl ov4_021E62EC
	mov r4, r0
	mov r5, #9
	bl ov4_02213898
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _021E78D8
_021E7828: ; jump table
	b _021E78D8 ; case 0
	b _021E78D8 ; case 1
	b _021E78D8 ; case 2
	b _021E785C ; case 3
	b _021E78D8 ; case 4
	b _021E78D8 ; case 5
	b _021E78A8 ; case 6
	b _021E78D8 ; case 7
	b _021E78D8 ; case 8
	b _021E78B0 ; case 9
	b _021E78D8 ; case 10
	b _021E78CC ; case 11
	b _021E78B8 ; case 12
_021E785C:
	ldrb r0, [r4, #0xd0c]
	ldrb r5, [r4, #0xd0e]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	bne _021E788C
	ldrb r0, [r4, #0xd13]
	mov r1, #0
	mov r5, #7
	add r0, r4, r0, lsl #2
	strb r1, [r0, #0x444]
	b _021E78D8
_021E788C:
	cmp r5, #3
	blo _021E78D8
	cmp r5, #5
	bhi _021E78D8
	mov r0, r5
	bl ov4_021E7A40
	b _021E78D8
_021E78A8:
	bl ov4_022132C4
	b _021E78D8
_021E78B0:
	bl ov4_0221356C
	b _021E78D8
_021E78B8:
	bl ov4_02213688
	mov r0, #4
	bl ov4_021E63C0
	mov r5, #0x11
	b _021E78D8
_021E78CC:
	mov r0, #0
	bl ov4_021E63C0
	mov r5, #0x11
_021E78D8:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E7804