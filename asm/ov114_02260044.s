	.include "macros/function.inc"
	.include "include/ov114_02260044.inc"

	

	.text


	thumb_func_start ov114_02260044
ov114_02260044: ; 0x02260044
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov114_02260038
	add r4, r0, #0
	bl ov114_02260040
	add r1, r0, #0
	add r0, r4, #0
	add r2, r5, #0
	bl sub_02032798
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov114_02260044

	thumb_func_start ov114_02260060
ov114_02260060: ; 0x02260060
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov114_02260038
	add r4, r0, #0
	bl ov114_02260040
	add r1, r0, #0
	add r0, r4, #0
	add r2, r5, #0
	bl sub_02032798
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov114_02260060

	thumb_func_start ov114_0226007C
ov114_0226007C: ; 0x0226007C
	mov r0, #0
	bx lr
	thumb_func_end ov114_0226007C

	thumb_func_start ov114_02260080
ov114_02260080: ; 0x02260080
	mov r0, #4
	bx lr
	thumb_func_end ov114_02260080

	thumb_func_start ov114_02260084
ov114_02260084: ; 0x02260084
	add r0, r3, #0
	ldr r3, _0226008C ; =ov114_0225CA24
	ldr r1, [r2, #0]
	bx r3
	; .align 2, 0
_0226008C: .word ov114_0225CA24
	thumb_func_end ov114_02260084

	thumb_func_start ov114_02260090
ov114_02260090: ; 0x02260090
	add r1, r0, #0
	add r0, r3, #0
	ldr r3, _0226009C ; =ov114_0225CA2C
	mov r2, #1
	bx r3
	nop
_0226009C: .word ov114_0225CA2C
	thumb_func_end ov114_02260090

	thumb_func_start ov114_022600A0
ov114_022600A0: ; 0x022600A0
	add r1, r0, #0
	add r0, r3, #0
	ldr r3, _022600AC ; =ov114_0225CA2C
	mov r2, #0
	bx r3
	nop
_022600AC: .word ov114_0225CA2C
	thumb_func_end ov114_022600A0

	thumb_func_start ov114_022600B0
ov114_022600B0: ; 0x022600B0
	add r0, r3, #0
	ldr r3, _022600B8 ; =ov114_0225CA44
	mov r1, #1
	bx r3
	; .align 2, 0
_022600B8: .word ov114_0225CA44
	thumb_func_end ov114_022600B0

	thumb_func_start ov114_022600BC
ov114_022600BC: ; 0x022600BC
	add r0, r3, #0
	ldr r3, _022600C4 ; =ov114_0225CA44
	mov r1, #0
	bx r3
	; .align 2, 0
_022600C4: .word ov114_0225CA44
	thumb_func_end ov114_022600BC