	.include "macros/function.inc"
	.include "include/unk_020CC16C.inc"

	

	.text


	arm_func_start RTC_ConvertDateToDay
RTC_ConvertDateToDay: ; 0x020CC16C
	ldr r3, [r0, #0]
	cmp r3, #0x64
	bhs _020CC1BC
	ldr r2, [r0, #4]
	cmp r2, #1
	blo _020CC1BC
	cmp r2, #0xc
	bhi _020CC1BC
	ldr r1, [r0, #8]
	cmp r1, #1
	blo _020CC1BC
	cmp r1, #0x1f
	bhi _020CC1BC
	ldr r0, [r0, #0xc]
	cmp r0, #7
	bge _020CC1BC
	cmp r2, #1
	blo _020CC1BC
	cmp r2, #0xc
	bls _020CC1C4
_020CC1BC:
	mvn r0, #0
	bx lr
_020CC1C4:
	ldr r0, _020CC1F8 ; =0x0210144C
	sub r1, r1, #1
	ldr r0, [r0, r2, lsl #2]
	cmp r2, #3
	add r2, r1, r0
	blo _020CC1E4
	tst r3, #3
	addeq r2, r2, #1
_020CC1E4:
	ldr r0, _020CC1FC ; =0x0000016D
	add r1, r3, #3
	mla r0, r3, r0, r2
	add r0, r0, r1, lsr #2
	bx lr
	; .align 2, 0
_020CC1F8: .word 0x0210144C
_020CC1FC: .word 0x0000016D
	arm_func_end RTC_ConvertDateToDay

	arm_func_start RTCi_ConvertTimeToSecond
RTCi_ConvertTimeToSecond: ; 0x020CC200
	mov r1, #0x3c
	ldmia r0, {r2, r3}
	mla r3, r2, r1, r3
	ldr r0, [r0, #8]
	mla r0, r3, r1, r0
	bx lr
	arm_func_end RTCi_ConvertTimeToSecond

	arm_func_start RTC_ConvertDateTimeToSecond
RTC_ConvertDateTimeToSecond: ; 0x020CC218
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl RTC_ConvertDateToDay
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	moveq r1, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl RTCi_ConvertTimeToSecond
	mvn r2, #0
	cmp r0, r2
	moveq r1, r2
	beq _020CC270
	ldr r1, _020CC278 ; =0x00015180
	mov r2, #0
	umull ip, r3, r4, r1
	mla r3, r4, r2, r3
	mov r2, r4, asr #0x1f
	mla r3, r2, r1, r3
	adds r2, r0, ip
	adc r1, r3, r0, asr #31
_020CC270:
	mov r0, r2
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CC278: .word 0x00015180
	arm_func_end RTC_ConvertDateTimeToSecond

	arm_func_start RTC_ConvertDayToDate
RTC_ConvertDayToDate: ; 0x020CC27C
	stmfd sp!, {r4, lr}
	ldr r2, _020CC36C ; =0x00008EAC
	cmp r1, #0
	movlt r1, #0
	cmp r1, r2
	movgt r1, r2
	ldr r3, _020CC370 ; =0x92492493
	add lr, r1, #6
	smull r2, r4, r3, lr
	add r4, lr, r4
	mov r2, lr, lsr #0x1f
	add r4, r2, r4, asr #2
	mov ip, #7
	smull r2, r3, ip, r4
	sub r4, lr, r2
	ldr r2, _020CC374 ; =0x0000016D
	str r4, [r0, #0xc]
	mov r3, #0
_020CC2C4:
	tst r3, #3
	addeq ip, r2, #1
	movne ip, r2
	mov r4, r1
	subs r1, r1, ip
	movmi r1, r4
	bmi _020CC2EC
	add r3, r3, #1
	cmp r3, #0x63
	blo _020CC2C4
_020CC2EC:
	ldr r2, _020CC374 ; =0x0000016D
	str r3, [r0, #0]
	cmp r1, r2
	movgt r1, r2
	tst r3, #3
	bne _020CC330
	cmp r1, #0x3c
	bge _020CC32C
	cmp r1, #0x1f
	movlt r2, #1
	subge r1, r1, #0x1f
	movge r2, #2
	str r2, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #8]
	ldmia sp!, {r4, pc}
_020CC32C:
	sub r1, r1, #1
_020CC330:
	ldr r3, _020CC378 ; =0x02101450
	mov r4, #0xb
_020CC338:
	ldr r2, [r3, r4, lsl #2]
	cmp r1, r2
	blt _020CC360
	add r2, r4, #1
	str r2, [r0, #4]
	ldr r2, [r3, r4, lsl #2]
	sub r1, r1, r2
	add r1, r1, #1
	str r1, [r0, #8]
	ldmia sp!, {r4, pc}
_020CC360:
	subs r4, r4, #1
	bpl _020CC338
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CC36C: .word 0x00008EAC
_020CC370: .word 0x92492493
_020CC374: .word 0x0000016D
_020CC378: .word Unk_02101450
	arm_func_end RTC_ConvertDayToDate

	arm_func_start RTCi_ConvertSecondToTime
RTCi_ConvertSecondToTime: ; 0x020CC37C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020CC3F4 ; =0x0001517F
	cmp r1, #0
	movlt r1, #0
	cmp r1, r2
	movgt r1, r2
	ldr lr, _020CC3F8 ; =0x88888889
	mov ip, r1, lsr #0x1f
	smull r3, r2, lr, r1
	smull r3, r6, lr, r1
	add r2, r1, r2
	add r2, ip, r2, asr #5
	smull r3, r5, lr, r2
	smull r3, r4, lr, r2
	add r6, r1, r6
	add r6, ip, r6, asr #5
	mov lr, #0x3c
	smull r3, ip, lr, r6
	sub r6, r1, r3
	add r5, r2, r5
	mov ip, r2, lsr #0x1f
	add r5, ip, r5, asr #5
	smull r1, r3, lr, r5
	add r4, r2, r4
	str r6, [r0, #8]
	sub r5, r2, r1
	str r5, [r0, #4]
	add r4, ip, r4, asr #5
	str r4, [r0, #0]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CC3F4: .word 0x0001517F
_020CC3F8: .word 0x88888889
	arm_func_end RTCi_ConvertSecondToTime

	arm_func_start RTC_ConvertSecondToDateTime
RTC_ConvertSecondToDateTime: ; 0x020CC3FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r4, r3
	subs r2, r5, #0
	sbcs r2, r4, #0
	mov r2, #0
	mov r7, r0
	mov r6, r1
	movlt r5, r2
	movlt r4, r2
	blt _020CC43C
	ldr r1, _020CC480 ; =0xBC19137F
	subs r0, r1, r5
	sbcs r0, r2, r4
	movlt r5, r1
	movlt r4, r2
_020CC43C:
	ldr r2, _020CC484 ; =0x00015180
	mov r0, r5
	mov r1, r4
	mov r3, #0
	bl _ll_mod
	mov r1, r0
	mov r0, r6
	bl RTCi_ConvertSecondToTime
	ldr r2, _020CC484 ; =0x00015180
	mov r0, r5
	mov r1, r4
	mov r3, #0
	bl _ll_sdiv
	mov r1, r0
	mov r0, r7
	bl RTC_ConvertDayToDate
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CC480: .word 0xBC19137F
_020CC484: .word 0x00015180
	arm_func_end RTC_ConvertSecondToDateTime

	arm_func_start RTC_GetDayOfWeek
RTC_GetDayOfWeek: ; 0x020CC488
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r0, #4]
	ldr r2, [r0, #0]
	sub r1, r1, #2
	cmp r1, #1
	add ip, r2, #0x7d0
	sublt ip, ip, #1
	ldr r6, _020CC538 ; =0x51EB851F
	ldr lr, [r0, #8]
	smull r3, r2, r6, ip
	smull r4, r3, r6, ip
	mov r5, ip, lsr #0x1f
	add r3, r5, r3, asr #5
	add r2, r5, r2, asr #5
	mov r5, #0x64
	smull r2, r4, r5, r2
	sub r2, ip, r2
	addlt r1, r1, #0xc
	mov r0, #0x1a
	mul r0, r1, r0
	sub r1, r0, #2
	ldr r0, _020CC53C ; =0x66666667
	mov r5, r1, lsr #0x1f
	smull r1, ip, r0, r1
	add ip, r5, ip, asr #2
	mov r4, r2, asr #1
	add r0, lr, ip
	add r1, r2, r4, lsr #30
	add r2, r2, r0
	mov r6, r3, asr #1
	add r0, r3, r6, lsr #30
	add r1, r2, r1, asr #2
	add r1, r1, r0, asr #2
	add r0, r3, r3, lsl #2
	add r4, r1, r0
	ldr r3, _020CC540 ; =0x92492493
	mov r1, r4, lsr #0x1f
	smull r2, r0, r3, r4
	add r0, r4, r0
	add r0, r1, r0, asr #2
	mov r2, #7
	smull r0, r1, r2, r0
	sub r0, r4, r0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CC538: .word 0x51EB851F
_020CC53C: .word 0x66666667
_020CC540: .word 0x92492493
	arm_func_end RTC_GetDayOfWeek

	.data


	.global Unk_02101450
Unk_02101450: ; 0x02101450
	.incbin "incbin/arm9_data.bin", 0x2770, 0x30

