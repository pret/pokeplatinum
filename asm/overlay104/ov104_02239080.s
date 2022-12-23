	.include "macros/function.inc"
	.include "overlay104/ov104_02239080.inc"

	

	.text


	thumb_func_start ov104_02239080
ov104_02239080: ; 0x02239080
	push {r3, lr}
	bl ov104_0222FC00
	bl sub_02005748
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02239080

	thumb_func_start ov104_02239090
ov104_02239090: ; 0x02239090
	push {r3, lr}
	bl ov104_0222FC00
	mov r1, #0
	bl sub_020057A4
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov104_02239090

	thumb_func_start ov104_022390A0
ov104_022390A0: ; 0x022390A0
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222FC00
	add r1, r4, #0
	add r1, #0x78
	strh r0, [r1]
	ldr r1, _022390BC ; =ov104_022390C0
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, pc}
	nop
_022390BC: .word ov104_022390C0
	thumb_func_end ov104_022390A0

	thumb_func_start ov104_022390C0
ov104_022390C0: ; 0x022390C0
	push {r3, lr}
	add r0, #0x78
	ldrh r0, [r0]
	bl sub_020057D4
	cmp r0, #0
	bne _022390D2
	mov r0, #1
	pop {r3, pc}
_022390D2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_022390C0

	thumb_func_start ov104_022390D8
ov104_022390D8: ; 0x022390D8
	push {r3, lr}
	bl ov104_0222EA48
	bl sub_02006150
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_022390D8

	thumb_func_start ov104_022390E8
ov104_022390E8: ; 0x022390E8
	push {r3, lr}
	ldr r1, _022390F4 ; =ov104_022390F8
	bl ov104_0222E974
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_022390F4: .word ov104_022390F8
	thumb_func_end ov104_022390E8

	thumb_func_start ov104_022390F8
ov104_022390F8: ; 0x022390F8
	push {r3, lr}
	bl sub_020061E4
	cmp r0, #0
	bne _02239106
	mov r0, #1
	pop {r3, pc}
_02239106:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_022390F8

	thumb_func_start ov104_0223910C
ov104_0223910C: ; 0x0223910C
	push {r3, lr}
	bl ov104_0222EA48
	bl sub_0200549C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0223910C

	thumb_func_start ov104_0223911C
ov104_0223911C: ; 0x0223911C
	push {r3, lr}
	bl ov104_0222EA48
	bl sub_020041FC
	mov r1, #0
	bl sub_020055D0
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov104_0223911C