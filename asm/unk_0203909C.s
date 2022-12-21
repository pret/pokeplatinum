	.include "macros/function.inc"
	.include "include/unk_0203909C.inc"

	

	.text


	thumb_func_start sub_0203909C
sub_0203909C: ; 0x0203909C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	str r2, [sp]
	bl sub_0202B370
	bl sub_0202AD28
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0202B370
	mov r1, #0
	bl sub_0202AED8
	add r4, r0, #0
	mov r1, #0
	ldr r0, [sp]
	mvn r1, r1
	str r1, [r0, #0]
	add r0, r5, #0
	bl sub_020A4498
	cmp r0, #0
	bne _020390D6
	add sp, #8
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_020390D6:
	mov r7, #0
_020390D8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020A4828
	cmp r0, #0
	beq _020390EE
	ldr r0, [sp]
	add sp, #8
	str r7, [r0, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020390EE:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020A4698
	cmp r0, #0
	ble _0203911C
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020A4698
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020A4698
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _0203911C
	ldr r0, [sp]
	add sp, #8
	str r7, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203911C:
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	bge _02039132
	add r0, r4, #0
	bl sub_020A4498
	cmp r0, #0
	bne _02039132
	ldr r0, [sp]
	str r7, [r0, #0]
_02039132:
	add r7, r7, #1
	add r4, #0xc
	cmp r7, #0x20
	blt _020390D8
	mov r0, #2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203909C

	thumb_func_start sub_02039140
sub_02039140: ; 0x02039140
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r6, r3, #0
	bl sub_0202B370
	bl sub_0202AD28
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0202B370
	mov r1, #0
	bl sub_0202AED8
	add r5, r0, #0
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r7, #0
	bl sub_020A4118
	cmp r0, #0
	bne _02039178
	add sp, #0x18
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_02039178:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, sp, #0xc
	bl sub_020A474C
	add r0, r7, #0
	add r1, sp, #0xc
	bl sub_020A4698
	cmp r0, #0
	bgt _02039194
	add sp, #0x18
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_02039194:
	mov r0, #0
	mvn r0, r0
	str r0, [r6, #0]
	mov r4, #0
_0203919C:
	add r0, r7, #0
	add r1, sp, #0xc
	bl sub_020A4698
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_020A4698
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _020391BC
	add sp, #0x18
	str r4, [r6, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020391BC:
	ldr r0, [r6, #0]
	cmp r0, #0
	bge _020391CE
	add r0, r5, #0
	bl sub_020A4498
	cmp r0, #0
	bne _020391CE
	str r4, [r6, #0]
_020391CE:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #0x20
	blt _0203919C
	mov r0, #2
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02039140

	thumb_func_start sub_020391DC
sub_020391DC: ; 0x020391DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	mov r1, #0
	add r5, r0, #0
	str r2, [sp, #4]
	str r1, [sp, #0xc]
	bl sub_0202B370
	mov r1, #0
	bl sub_0202AED8
	str r0, [sp, #8]
	mov r4, #0
	bl sub_02035E18
	cmp r0, #0
	ble _02039290
_02039200:
	bl sub_0203608C
	cmp r4, r0
	beq _02039284
	add r0, r4, #0
	bl sub_02032F1C
	add r7, r0, #0
	beq _02039284
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0x10
	bl sub_0203909C
	str r0, [r6, #0]
	cmp r0, #3
	bne _02039226
	bl sub_02022974
_02039226:
	ldr r0, [r6, #0]
	cmp r0, #0
	bne _02039244
	mov r0, #2
	str r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02039298
	add r0, r5, #0
	bl sub_02033114
	b _02039284
_02039244:
	cmp r0, #1
	bne _0203927C
	bl sub_020389B8
	cmp r0, #0
	bne _02039284
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02039298
	ldr r2, [sp, #0x10]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r1, r1, r3
	mov r2, #0xc
	bl sub_020C4DB0
	add r0, r5, #0
	bl sub_02033114
	b _02039284
_0203927C:
	cmp r0, #2
	bne _02039284
	mov r0, #1
	str r0, [sp, #0xc]
_02039284:
	add r6, r6, #4
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _02039200
_02039290:
	ldr r0, [sp, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020391DC

	thumb_func_start sub_02039298
sub_02039298: ; 0x02039298
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	str r0, [sp]
	add r7, r1, #0
	str r3, [sp, #4]
	bl sub_0202B370
	add r1, r5, #0
	add r4, r0, #0
	bl sub_0202AED8
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_02032EE8
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	cmp r0, #2
	beq _020392CE
	add r0, r7, #0
	bl sub_02032F1C
	ldr r1, [sp, #8]
	mov r2, #0xc
	bl sub_020C4DB0
_020392CE:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _02039314
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl sub_02025F04
	str r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0202AF0C
	ldr r0, [sp, #0xc]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_02025F30
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_0202AE2C
	add r0, r6, #0
	bl sub_02025F20
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_0202AE2C
	b _0203934A
_02039314:
	cmp r0, #1
	bne _0203934A
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_0202AD2C
	cmp r0, #2
	bne _0203934A
	add r0, r6, #0
	bl sub_02025F30
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_0202AE2C
	add r0, r6, #0
	bl sub_02025F20
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_0202AE2C
_0203934A:
	ldr r1, [sp, #4]
	mov r0, #0x78
	bl sub_02023790
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl sub_02032F54
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_02023D28
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0202AF50
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_02025F8C
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #7
	bl sub_0202AE2C
	ldr r0, [sp]
	bl sub_02033114
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02039298

	thumb_func_start sub_02039390
sub_02039390: ; 0x02039390
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02032F1C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0202B370
	add r5, r0, #0
	mov r4, #0
_020393A6:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202AED8
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020A4828
	cmp r0, #0
	beq _020393BE
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_020393BE:
	add r4, r4, #1
	cmp r4, #0x20
	blt _020393A6
	mov r0, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02039390