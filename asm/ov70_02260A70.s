	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov70_02260A70
ov70_02260A70: ; 0x02260A70
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x14
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_02260A84:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02260A84
	add r0, r5, #0
	bl sub_020203AC
	str r0, [r4, #0]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r1, _02260AC8 ; =0x0029AEC1
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r2, _02260ACC ; =0x0226D904
	ldr r3, _02260AD0 ; =0x000005C1
	add r0, #8
	bl sub_020206D0
	ldr r0, [r4, #0]
	bl sub_020203D4
	mov r0, #0x96
	mov r1, #0xe1
	ldr r2, [r4, #0]
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02260AC8: .word 0x0029AEC1
_02260ACC: .word 0x0226D904
_02260AD0: .word 0x000005C1
	thumb_func_end ov70_02260A70

	thumb_func_start ov70_02260AD4
ov70_02260AD4: ; 0x02260AD4
	push {r4, lr}
	add r4, r0, #0
	bl sub_020203E0
	ldr r0, [r4, #0]
	bl sub_020203B8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02260AD4

	thumb_func_start ov70_02260AEC
ov70_02260AEC: ; 0x02260AEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02260B10
	add r1, r4, #0
	add r1, #8
	bl ov70_0225D054
	mov r0, #2
	ldr r1, [r4, #8]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [r4, #8]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	sub r0, r1, r0
	str r0, [r4, #0x10]
_02260B10:
	bl sub_020203EC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02260AEC

	thumb_func_start ov70_02260B18
ov70_02260B18: ; 0x02260B18
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	str r3, [r0, #0x10]
	bx lr
	thumb_func_end ov70_02260B18

	thumb_func_start ov70_02260B20
ov70_02260B20: ; 0x02260B20
	push {r3, r4}
	mov r4, #2
	lsl r4, r4, #0xe
	add r1, r1, r4
	str r1, [r0, #8]
	lsl r1, r4, #2
	str r2, [r0, #0xc]
	sub r1, r3, r1
	str r1, [r0, #0x10]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02260B20

	thumb_func_start ov70_02260B38
ov70_02260B38: ; 0x02260B38
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov70_02260B38

	thumb_func_start ov70_02260B3C
ov70_02260B3C: ; 0x02260B3C
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02260B3C

	.rodata


	.global Unk_ov70_0226D904
Unk_ov70_0226D904: ; 0x0226D904
	.incbin "incbin/overlay70_rodata.bin", 0x438, 0x8

