	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov115_02265A24
ov115_02265A24: ; 0x02265A24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov115_02265A18
	add r4, r0, #0
	bl ov115_02265A20
	add r1, r0, #0
	add r0, r4, #0
	add r2, r5, #0
	bl sub_02032798
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov115_02265A24

	thumb_func_start ov115_02265A40
ov115_02265A40: ; 0x02265A40
	mov r0, #0
	bx lr
	thumb_func_end ov115_02265A40

	thumb_func_start ov115_02265A44
ov115_02265A44: ; 0x02265A44
	add r0, r3, #0
	ldr r3, _02265A4C ; =ov115_0226095C
	bx r3
	nop
_02265A4C: .word ov115_0226095C
	thumb_func_end ov115_02265A44

	thumb_func_start ov115_02265A50
ov115_02265A50: ; 0x02265A50
	add r0, r3, #0
	ldr r3, _02265A58 ; =ov115_02260964
	bx r3
	nop
_02265A58: .word ov115_02260964
	thumb_func_end ov115_02265A50

	thumb_func_start ov115_02265A5C
ov115_02265A5C: ; 0x02265A5C
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r3, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov115_02260988
	bl sub_0203608C
	cmp r0, #0
	bne _02265A80
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov115_0226096C
_02265A80:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov115_02265A5C

	thumb_func_start ov115_02265A84
ov115_02265A84: ; 0x02265A84
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r2, #0]
	add r0, r3, #0
	add r2, r4, #0
	bl ov115_02260994
	pop {r4, pc}
	thumb_func_end ov115_02265A84

	thumb_func_start ov115_02265A94
ov115_02265A94: ; 0x02265A94
	push {r4, lr}
	add r4, r0, #0
	add r1, r2, #0
	add r0, r3, #0
	add r2, r4, #0
	bl ov115_022609B4
	pop {r4, pc}
	thumb_func_end ov115_02265A94

	thumb_func_start ov115_02265AA4
ov115_02265AA4: ; 0x02265AA4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r2, #0]
	add r0, r3, #0
	add r2, r4, #0
	bl ov115_022609E4
	pop {r4, pc}
	thumb_func_end ov115_02265AA4

	thumb_func_start ov115_02265AB4
ov115_02265AB4: ; 0x02265AB4
	add r0, r3, #0
	ldr r3, _02265ABC ; =ov115_02260A48
	bx r3
	nop
_02265ABC: .word ov115_02260A48
	thumb_func_end ov115_02265AB4

	thumb_func_start ov115_02265AC0
ov115_02265AC0: ; 0x02265AC0
	push {r3, lr}
	ldr r1, [r2, #0]
	cmp r0, #0
	bne _02265ACE
	add r0, r3, #0
	bl ov115_022609D8
_02265ACE:
	pop {r3, pc}
	thumb_func_end ov115_02265AC0

	thumb_func_start ov115_02265AD0
ov115_02265AD0: ; 0x02265AD0
	mov r0, #0x14
	bx lr
	thumb_func_end ov115_02265AD0

	thumb_func_start ov115_02265AD4
ov115_02265AD4: ; 0x02265AD4
	mov r0, #0x10
	bx lr
	thumb_func_end ov115_02265AD4

	thumb_func_start ov115_02265AD8
ov115_02265AD8: ; 0x02265AD8
	mov r0, #4
	bx lr
	thumb_func_end ov115_02265AD8

	thumb_func_start ov115_02265ADC
ov115_02265ADC: ; 0x02265ADC
	mov r0, #4
	bx lr
	thumb_func_end ov115_02265ADC