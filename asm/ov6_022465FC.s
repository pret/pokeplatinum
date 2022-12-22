	.include "macros/function.inc"
	.include "include/ov6_022465FC.inc"

	

	.text


	thumb_func_start ov6_022465FC
ov6_022465FC: ; 0x022465FC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	mov r1, #1
	bl sub_0202E374
	pop {r3, pc}
	thumb_func_end ov6_022465FC

	thumb_func_start ov6_0224660C
ov6_0224660C: ; 0x0224660C
	push {r4, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	add r4, r0, #0
	bl sub_0202E380
	cmp r0, #1
	bne _02246622
	mov r0, #0
	pop {r4, pc}
_02246622:
	add r0, r4, #0
	bl sub_0202E3DC
	cmp r0, #0
	bne _02246630
	mov r0, #2
	pop {r4, pc}
_02246630:
	cmp r0, #4
	bne _02246638
	mov r0, #1
	pop {r4, pc}
_02246638:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov6_0224660C

	thumb_func_start ov6_0224663C
ov6_0224663C: ; 0x0224663C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02055BD0
	add r0, r0, #6
	mov r1, #7
	bl _s32_div_f
	add r0, r4, #0
	add r5, r1, #0
	bl sub_02055BDC
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02055BE8
	mov r1, #0xf
	bl _s32_div_f
	add r6, #0x13
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x18
	bl _s32_div_f
	add r6, r1, #0
	lsl r6, r6, #2
	mov r3, #7
	add r4, r4, r6
	str r3, [sp]
	add r0, sp, #4
	mov r1, #0x7e
	mov r2, #0
	mul r3, r4
	bl sub_02006AFC
	add r0, sp, #4
	ldrb r4, [r0, r5]
	cmp r4, #0
	beq _02246692
	cmp r4, #0xa
	blo _02246696
_02246692:
	bl sub_02022974
_02246696:
	add r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov6_0224663C

	thumb_func_start ov6_0224669C
ov6_0224669C: ; 0x0224669C
	push {r4, lr}
	sub sp, #8
	add r3, r0, #0
	sub r4, r3, #1
	mov r3, #0xc
	mov r2, #1
	add r0, sp, #4
	mov r1, #0x7e
	mul r3, r4
	str r2, [sp]
	bl sub_02006AFC
	add r0, sp, #4
	ldrb r0, [r0]
	cmp r0, #6
	blo _022466C0
	bl sub_02022974
_022466C0:
	add r0, sp, #4
	ldrb r0, [r0]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov6_0224669C

	thumb_func_start ov6_022466C8
ov6_022466C8: ; 0x022466C8
	push {r3, r4, lr}
	sub sp, #4
	add r3, r0, #0
	sub r4, r3, #1
	mov r3, #0xc
	mov r0, #0xb
	mul r3, r4
	str r0, [sp]
	add r0, r1, #0
	mov r1, #0x7e
	mov r2, #1
	add r3, r3, #1
	bl sub_02006AFC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov6_022466C8

	thumb_func_start ov6_022466E8
ov6_022466E8: ; 0x022466E8
	mov r0, #1
	bx lr
	thumb_func_end ov6_022466E8

	thumb_func_start ov6_022466EC
ov6_022466EC: ; 0x022466EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	str r0, [sp]
	ldr r0, [r7, #0xc]
	str r2, [sp, #4]
	bl sub_0202440C
	ldr r0, [sp]
	add r1, sp, #8
	bl ov6_022466C8
	ldr r0, [sp, #4]
	mov r1, #0
	mov r2, #0xb
	bl MI_CpuFill8
	mov r6, #0
	add r4, r6, #0
	add r5, sp, #8
_02246714:
	ldrb r2, [r5]
	cmp r2, #0
	beq _02246736
	ldr r1, [sp]
	add r0, r7, #0
	bl ov6_022466E8
	cmp r0, #1
	bne _0224672E
	ldrb r1, [r5]
	ldr r0, [sp, #4]
	strb r1, [r0, r4]
	add r4, r4, #1
_0224672E:
	add r6, r6, #1
	add r5, r5, #1
	cmp r6, #0xb
	blt _02246714
_02246736:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022466EC

	thumb_func_start ov6_0224673C
ov6_0224673C: ; 0x0224673C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0xb
	bl MI_CpuFill8
	mov r1, #0
	add r4, r1, #0
	add r2, sp, #0
_02246752:
	ldrb r0, [r5, r1]
	cmp r0, #0
	beq _0224675E
	strb r0, [r2]
	add r2, r2, #1
	add r4, r4, #1
_0224675E:
	add r1, r1, #1
	cmp r1, #0xb
	blt _02246752
	cmp r4, #0
	bne _0224676E
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_0224676E:
	cmp r4, #1
	bne _0224677A
	add r0, sp, #0
	add sp, #0xc
	ldrb r0, [r0]
	pop {r4, r5, pc}
_0224677A:
	bl sub_0201D35C
	add r1, r4, #0
	bl _u32_div_f
	add r0, sp, #0
	ldrb r0, [r0, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov6_0224673C

	thumb_func_start ov6_0224678C
ov6_0224678C: ; 0x0224678C
	push {r4, lr}
	sub sp, #8
	add r4, r2, #0
	cmp r1, #4
	beq _022467AA
	cmp r1, #5
	beq _022467AA
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_0202E614
	add sp, #8
	pop {r4, pc}
_022467AA:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _022467B6
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_022467B6:
	cmp r3, #0
	bne _022467C0
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_022467C0:
	add r1, r4, #0
	bl sub_0202E3C4
	cmp r0, #0
	bne _022467D4
	ldr r0, [sp, #0x14]
	add sp, #8
	strb r4, [r0]
	mov r0, #1
	pop {r4, pc}
_022467D4:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_0224678C

	thumb_func_start ov6_022467DC
ov6_022467DC: ; 0x022467DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #8]
	ldr r6, [sp, #0x40]
	ldr r0, [r1, #0xc]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r5, [sp, #0x44]
	bl sub_0202440C
	str r0, [sp, #0x14]
	ldrb r0, [r6]
	mov r4, #0
	cmp r0, #0
	beq _0224683C
	add r7, sp, #0x18
_022467FC:
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	str r0, [sp]
	str r7, [sp, #4]
	ldrb r2, [r6]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0xc]
	bl ov6_0224678C
	cmp r0, #0
	beq _02246834
	mov r0, #0
	add r1, r7, #0
	b _0224682A
_02246822:
	strb r2, [r5, r4]
	add r4, r4, #1
	add r1, r1, #1
	add r0, r0, #1
_0224682A:
	ldrb r2, [r1]
	cmp r2, #0
	beq _02246834
	cmp r0, #0x10
	blt _02246822
_02246834:
	add r6, r6, #1
	ldrb r0, [r6]
	cmp r0, #0
	bne _022467FC
_0224683C:
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022467DC

	thumb_func_start ov6_02246844
ov6_02246844: ; 0x02246844
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	mov r4, #0
	b _02246876
_02246850:
	add r0, r6, #0
	add r1, r7, #0
	bl ov6_022465A0
	str r0, [sp]
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0206CD2C
	cmp r0, #0
	bne _0224686C
	mov r0, #0
	strb r0, [r5]
_0224686C:
	ldr r0, [sp]
	bl ov6_022465F4
	add r5, r5, #1
	add r4, r4, #1
_02246876:
	ldrb r2, [r5]
	cmp r2, #0
	beq _02246880
	cmp r4, #0x10
	blt _02246850
_02246880:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02246844

	thumb_func_start ov6_02246884
ov6_02246884: ; 0x02246884
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_0202440C
	ldrb r1, [r5]
	add r4, r0, #0
	cmp r1, #0
	beq _022468AC
	mov r6, #0
_02246898:
	add r0, r4, #0
	bl sub_0202E3C4
	cmp r0, #0
	beq _022468A4
	strb r6, [r5]
_022468A4:
	add r5, r5, #1
	ldrb r1, [r5]
	cmp r1, #0
	bne _02246898
_022468AC:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02246884

	thumb_func_start ov6_022468B0
ov6_022468B0: ; 0x022468B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl ov6_0224663C
	str r0, [sp, #8]
	bl ov6_0224669C
	add r4, r0, #0
	add r0, sp, #0x1c
	mov r1, #0
	mov r2, #0xb
	bl MI_CpuFill8
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	ldr r0, [sp, #8]
	add r1, r5, #0
	add r2, sp, #0x1c
	bl ov6_022466EC
	add r0, sp, #0x1c
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov6_022467DC
	cmp r0, #0
	bne _02246902
	add sp, #0x28
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02246902:
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0xc
	bl ov6_02246844
	add r0, r5, #0
	add r1, sp, #0xc
	bl ov6_02246884
	add r0, r5, #0
	add r1, sp, #0xc
	bl ov6_0224673C
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_022468B0

	thumb_func_start ov6_02246920
ov6_02246920: ; 0x02246920
	push {r4, lr}
	mov r1, #0
	add r2, r1, #0
	add r4, r0, #0
	bl ov6_022468B0
	cmp r0, #0
	bne _02246956
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov6_022468B0
	cmp r0, #0
	bne _02246956
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov6_022468B0
	cmp r0, #0
	bne _02246956
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov6_022468B0
_02246956:
	pop {r4, pc}
	thumb_func_end ov6_02246920

	thumb_func_start ov6_02246958
ov6_02246958: ; 0x02246958
	push {r4, lr}
	bl ov6_0224663C
	add r4, r0, #0
	cmp r4, #9
	bls _02246968
	bl sub_02022974
_02246968:
	ldr r2, _02246974 ; =0x02249470
	sub r1, r4, #1
	mov r0, #7
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
	; .align 2, 0
_02246974: .word 0x02249470
	thumb_func_end ov6_02246958

	thumb_func_start ov6_02246978
ov6_02246978: ; 0x02246978
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl sub_0202440C
	add r6, r0, #0
	add r0, r4, #0
	bl ov6_02246958
	add r4, r0, #0
	cmp r5, #3
	bhi _022469A6
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224699E: ; jump table
	.short _022469AA - _0224699E - 2 ; case 0
	.short _022469C4 - _0224699E - 2 ; case 1
	.short _022469D6 - _0224699E - 2 ; case 2
	.short _022469DA - _0224699E - 2 ; case 3
_022469A6:
	bl sub_02022974
_022469AA:
	bl sub_02013960
	cmp r0, #0
	beq _022469B8
	cmp r0, #1
	beq _022469BC
	b _022469C0
_022469B8:
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_022469BC:
	ldrb r0, [r4, #1]
	pop {r4, r5, r6, pc}
_022469C0:
	ldrb r0, [r4, #2]
	pop {r4, r5, r6, pc}
_022469C4:
	add r0, r6, #0
	bl sub_0202E3DC
	cmp r0, #0
	bne _022469D2
	ldrb r0, [r4, #3]
	pop {r4, r5, r6, pc}
_022469D2:
	ldrb r0, [r4, #4]
	pop {r4, r5, r6, pc}
_022469D6:
	ldrb r0, [r4, #5]
	pop {r4, r5, r6, pc}
_022469DA:
	ldrb r0, [r4, #6]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02246978

	thumb_func_start ov6_022469E0
ov6_022469E0: ; 0x022469E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	str r1, [sp, #4]
	add r5, r2, #0
	add r6, r3, #0
	bl ov6_0224663C
	bl ov6_0224669C
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202440C
	add r1, r5, #0
	bl sub_0202E384
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov6_022465A0
	add r5, r0, #0
	bl ov6_0224647C
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	add r3, r5, #0
	str r6, [sp]
	bl sub_0206CD00
	ldr r1, [sp, #0x20]
	strh r0, [r1]
	add r0, r5, #0
	bl ov6_022465F4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_022469E0

	.rodata


	.global Unk_ov6_02249470
Unk_ov6_02249470: ; 0x02249470
	.incbin "incbin/overlay6_rodata.bin", 0x65C, 0x3F

