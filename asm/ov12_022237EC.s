	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov12_022237EC
ov12_022237EC: ; 0x022237EC
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022237EC

	thumb_func_start ov12_022237F0
ov12_022237F0: ; 0x022237F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl ov11_0221F840
	add r4, r0, #0
	mov r0, #0x1d
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020144C4
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0xa
	add r3, r7, #0
	bl sub_020144CC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022237F0

	thumb_func_start ov12_02223818
ov12_02223818: ; 0x02223818
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl ov11_0221F840
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_020144C4
	add r1, r0, #0
	ldr r3, [sp]
	add r0, r4, #0
	mov r2, #0xa
	bl sub_020144CC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02223818

	thumb_func_start ov12_02223844
ov12_02223844: ; 0x02223844
	ldr r3, _02223848 ; =sub_02006CB8
	bx r3
	; .align 2, 0
_02223848: .word sub_02006CB8
	thumb_func_end ov12_02223844

	thumb_func_start ov12_0222384C
ov12_0222384C: ; 0x0222384C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r7, r2, #0
	str r3, [sp]
	bl ov11_0221F888
	add r4, r0, #0
	bne _02223864
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02223864:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov12_02223844
	add r1, r0, #0
	ldr r3, [sp]
	add r0, r4, #0
	mov r2, #0xa
	bl sub_020144CC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_0222384C

	thumb_func_start ov12_02223880
ov12_02223880: ; 0x02223880
	push {r4, lr}
	lsl r4, r2, #2
	ldr r2, _02223890 ; =0x02238DB0
	ldr r2, [r2, r4]
	bl sub_020146F4
	pop {r4, pc}
	nop
_02223890: .word 0x02238DB0
	thumb_func_end ov12_02223880

	thumb_func_start ov12_02223894
ov12_02223894: ; 0x02223894
	ldr r3, _02223898 ; =ov11_0221F8D8
	bx r3
	; .align 2, 0
_02223898: .word ov11_0221F8D8
	thumb_func_end ov12_02223894

	.rodata


	.global Unk_ov12_02238DB0
Unk_ov12_02238DB0: ; 0x02238DB0
	.incbin "incbin/overlay12_rodata.bin", 0x81C, 0x5C

