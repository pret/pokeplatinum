	.include "macros/function.inc"
	.include "include/unk_02098218.inc"

	

	.text


	thumb_func_start sub_02098218
sub_02098218: ; 0x02098218
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	mov r2, #1
	mov r0, #3
	mov r1, #0x47
	lsl r2, r2, #0x12
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0x88
	mov r2, #0x47
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x88
	add r4, r0, #0
	bl memset
	add r0, r5, #0
	bl sub_02006840
	str r0, [r4, #0]
	ldr r0, [r0, #0x10]
	bl sub_02027AC0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x10]
	bl sub_02027B50
	str r0, [r4, #0x14]
	bl ov119_021D0DD4
	str r0, [r4, #0x38]
	mov r0, #0x47
	bl sub_0200762C
	str r0, [r4, #0x3c]
	mov r0, #0x93
	mov r1, #0x47
	bl sub_02006C24
	str r0, [r4, #0x40]
	mov r0, #0x47
	bl sub_02018340
	str r0, [r4, #4]
	mov r0, #0x40
	mov r1, #0x47
	bl sub_0201DBEC
	mov r0, #0x47
	mov r1, #1
	mov r2, #0
	bl sub_02015F84
	str r0, [r4, #0x58]
	mov r0, #0x47
	bl sub_02002F38
	mov r1, #1
	str r0, [r4, #8]
	bl sub_02003858
	mov r2, #2
	ldr r0, [r4, #8]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x47
	bl sub_02002F70
	mov r1, #2
	ldr r0, [r4, #8]
	lsl r2, r1, #8
	mov r3, #0x47
	bl sub_02002F70
	mov r1, #1
	ldr r0, [r4, #8]
	lsl r2, r1, #9
	mov r3, #0x47
	bl sub_02002F70
	mov r2, #2
	ldr r0, [r4, #8]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x47
	bl sub_02002F70
	bl ov119_021D0D80
	bl ov119_021D0DA8
	bl ov119_021D0E78
	ldr r0, [r4, #4]
	bl ov119_021D0EB8
	add r0, r4, #4
	bl ov119_021D17B8
	bl sub_0200569C
	ldr r0, _02098300 ; =0x021D0FD1
	add r1, r4, #0
	bl sub_02017798
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02098300: .word 0x021D0FD1
	thumb_func_end sub_02098218

	thumb_func_start sub_02098304
sub_02098304: ; 0x02098304
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0
	beq _0209831A
	cmp r1, #1
	beq _02098358
	b _02098374
_0209831A:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02098328
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02098328:
	ldr r0, [r5, #0]
	mov r1, #5
	ldr r0, [r0, #0xc]
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r1, r5, #0
	lsl r2, r4, #0x10
	ldr r0, [r5, #0x40]
	add r1, #0x6c
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_02078A4C
	ldr r0, _02098384 ; =0x000001EA
	cmp r4, r0
	bne _02098352
	mov r0, #1
	str r0, [r5, #0x5c]
	b _02098380
_02098352:
	mov r0, #0
	str r0, [r5, #0x5c]
	b _02098380
_02098358:
	bl ov119_021D191C
	cmp r0, #0
	bne _02098368
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02098380
_02098368:
	ldr r0, [r5, #0x3c]
	bl sub_02007768
	bl ov119_021D1004
	b _02098380
_02098374:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02098380
	mov r0, #1
	pop {r3, r4, r5, pc}
_02098380:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02098384: .word 0x000001EA
	thumb_func_end sub_02098304

	thumb_func_start sub_02098388
sub_02098388: ; 0x02098388
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_020242C4
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #3
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r4, #8]
	mov r1, #2
	bl sub_02002FA0
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02002FA0
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_02002FA0
	ldr r0, [r4, #8]
	bl sub_02002F54
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #4]
	bl sub_020181C4
	bl sub_0201DC3C
	ldr r0, [r4, #0x3c]
	bl sub_02007B6C
	ldr r0, [r4, #0x58]
	bl sub_02015FB8
	ldr r0, [r4, #0x40]
	bl sub_02006CA8
	add r0, r4, #4
	bl ov119_021D1844
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x47
	bl sub_0201807C
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02098388

	thumb_func_start sub_0209843C
sub_0209843C: ; 0x0209843C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #6
	bls _02098450
	b _0209859E
_02098450:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0209845C: ; jump table
	.short _0209846A - _0209845C - 2 ; case 0
	.short _02098480 - _0209845C - 2 ; case 1
	.short _02098492 - _0209845C - 2 ; case 2
	.short _020984F6 - _0209845C - 2 ; case 3
	.short _02098552 - _0209845C - 2 ; case 4
	.short _02098586 - _0209845C - 2 ; case 5
	.short _02098594 - _0209845C - 2 ; case 6
_0209846A:
	ldr r0, [r4, #0xc]
	mov r1, #0xb
	bl ov5_021E771C
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0209859E
_02098480:
	ldr r1, _020985A4 ; =0x020F67FC
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050A38
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0209859E
_02098492:
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r5, [r4, #0xc]
	bl sub_0203D174
	bl sub_02025E38
	add r7, r0, #0
	ldr r0, [r6, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x4c
	add r2, sp, #8
	bl sub_02074B30
	mov r0, #0xb
	str r0, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #6
	bl sub_0209304C
	add r0, r5, #0
	mov r1, #0xb3
	mov r2, #0
	bl sub_02074B30
	add r0, r6, #0
	bl sub_0203D174
	ldr r1, [r4, #0xc]
	bl sub_0202F180
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _020984F0
	mov r0, #3
	str r0, [r4, #0]
	b _0209859E
_020984F0:
	mov r0, #5
	str r0, [r4, #0]
	b _0209859E
_020984F6:
	add r0, r5, #0
	bl sub_02050A60
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0203D174
	bl sub_02025E44
	str r0, [sp]
	mov r0, #0xb
	mov r1, #1
	add r2, r7, #0
	mov r3, #0xa
	bl sub_0208712C
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	ldr r1, [r4, #8]
	mov r2, #0
	str r0, [r1, #0x10]
	ldr r0, [r4, #0xc]
	mov r1, #0x70
	bl sub_02074470
	ldr r1, [r4, #8]
	str r0, [r1, #8]
	ldr r1, _020985A8 ; =0x020F2DAC
	ldr r2, [r4, #8]
	add r0, r5, #0
	bl sub_02050A38
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0209859E
_02098552:
	ldr r2, [r4, #8]
	ldr r0, [r2, #0x14]
	cmp r0, #0
	bne _02098578
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #0x18]
	mov r1, #0x78
	bl sub_02074B30
	add r0, r5, #0
	bl sub_02050A60
	bl sub_0203D174
	bl sub_0202CD88
	mov r1, #0x31
	bl sub_0202CF28
_02098578:
	ldr r0, [r4, #8]
	bl sub_0208716C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0209859E
_02098586:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0209859E
_02098594:
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0209859E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020985A4: .word 0x020F67FC
_020985A8: .word 0x020F2DAC
	thumb_func_end sub_0209843C

	thumb_func_start sub_020985AC
sub_020985AC: ; 0x020985AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xb
	mov r1, #0x1c
	bl sub_02018184
	add r2, r0, #0
	add r3, r2, #0
	mov r1, #0x1c
	mov r0, #0
_020985C2:
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _020985C2
	add r3, r2, #0
	add r3, #0xc
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, _020985E0 ; =sub_0209843C
	add r0, r5, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020985E0: .word sub_0209843C
	thumb_func_end sub_020985AC

	.rodata


	.global Unk_020F67FC
Unk_020F67FC: ; 0x020F67FC
	.incbin "incbin/arm9_rodata.bin", 0x11BBC, 0x10

