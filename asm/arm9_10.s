
	.include "macros/function.inc"
	.include "include/arm9_10.inc"

	.text

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

	thumb_func_start sub_020985E4
sub_020985E4: ; 0x020985E4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018144
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02025E44
	str r0, [r4, #4]
	add r0, r6, #0
	bl sub_02025E38
	str r0, [r4, #8]
	bl sub_02025F30
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #0]
	ldr r1, _02098628 ; =sub_0209862C
	add r0, r7, #0
	add r2, r5, #0
	str r4, [r5, #4]
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02098628: .word sub_0209862C
	thumb_func_end sub_020985E4

	thumb_func_start sub_0209862C
sub_0209862C: ; 0x0209862C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #5
	bhi _020986C2
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02098650: ; jump table
	.short _0209865C - _02098650 - 2 ; case 0
	.short _02098668 - _02098650 - 2 ; case 1
	.short _02098682 - _02098650 - 2 ; case 2
	.short _0209869A - _02098650 - 2 ; case 3
	.short _020986AC - _02098650 - 2 ; case 4
	.short _020986B2 - _02098650 - 2 ; case 5
_0209865C:
	mov r0, #0
	bl ov5_021D1744
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02098668:
	bl sub_0200F2AC
	cmp r0, #0
	beq _020986C2
	ldr r1, _020986C8 ; =0x020F680C
	ldr r2, [r4, #4]
	add r0, r5, #0
	bl sub_0203CD84
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020986C2
_02098682:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _020986C2
	add r0, r5, #0
	bl sub_020509D4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020986C2
_0209869A:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	bne _020986C2
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _020986C2
_020986AC:
	add r0, r0, #1
	str r0, [r4, #0]
	b _020986C2
_020986B2:
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020986C2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_020986C8: .word 0x020F680C
	thumb_func_end sub_0209862C

	thumb_func_start sub_020986CC
sub_020986CC: ; 0x020986CC
	ldr r3, _020986E4 ; =0x020F681C
	mov r2, #0
_020986D0:
	ldrb r1, [r3]
	cmp r0, r1
	beq _020986DE
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #6
	blt _020986D0
_020986DE:
	add r0, r2, #0
	bx lr
	nop
_020986E4: .word 0x020F681C
	thumb_func_end sub_020986CC

	thumb_func_start sub_020986E8
sub_020986E8: ; 0x020986E8
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #6
	blt _020986F4
	bl sub_02022974
_020986F4:
	ldr r0, _020986FC ; =0x020F681C
	ldrb r0, [r0, r4]
	pop {r4, pc}
	nop
_020986FC: .word 0x020F681C
	thumb_func_end sub_020986E8

	thumb_func_start sub_02098700
sub_02098700: ; 0x02098700
	push {r3, lr}
	mov r1, #0x18
	bl sub_02018144
	add r3, r0, #0
	mov r2, #0x18
	mov r1, #0
_0209870E:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _0209870E
	pop {r3, pc}
	thumb_func_end sub_02098700

	thumb_func_start sub_02098718
sub_02098718: ; 0x02098718
	push {r4, lr}
	add r4, r0, #0
	bne _02098722
	bl sub_02022974
_02098722:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02098718

	thumb_func_start sub_0209872C
sub_0209872C: ; 0x0209872C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0209873C
	bl sub_02022974
_0209873C:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02098746
	bl sub_02022974
_02098746:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02098750
	bl sub_02022974
_02098750:
	bl sub_020989B8
	add r1, r4, #0
	bl sub_02006C24
	add r6, r0, #0
	add r1, r4, #0
	bl sub_020988C8
	str r0, [r5, #0]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020988D8
	str r0, [r5, #4]
	cmp r7, #0
	bne _02098794
	add r1, r5, #0
	add r2, r5, #0
	add r0, r6, #0
	add r1, #8
	add r2, #0xc
	add r3, r4, #0
	bl sub_020988E8
	add r1, r5, #0
	add r5, #0x14
	add r0, r6, #0
	add r1, #0x10
	add r2, r5, #0
	add r3, r4, #0
	bl sub_02098938
	b _020987B4
_02098794:
	add r1, r5, #0
	add r2, r5, #0
	add r0, r6, #0
	add r1, #8
	add r2, #0xc
	add r3, r4, #0
	bl sub_02098910
	add r1, r5, #0
	add r5, #0x14
	add r0, r6, #0
	add r1, #0x10
	add r2, r5, #0
	add r3, r4, #0
	bl sub_02098960
_020987B4:
	add r0, r6, #0
	bl sub_02006CA8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0209872C

	thumb_func_start sub_020987BC
sub_020987BC: ; 0x020987BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _020987CA
	bl sub_02022974
_020987CA:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _020987D4
	bl sub_02022974
_020987D4:
	ldr r0, [r4, #0]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	ldr r0, [r4, #0x14]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end sub_020987BC

	thumb_func_start sub_02098808
sub_02098808: ; 0x02098808
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02098816
	bl sub_02022974
_02098816:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _02098820
	bl sub_02022974
_02098820:
	ldr r1, [r5, #0]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02098808

	thumb_func_start sub_02098828
sub_02098828: ; 0x02098828
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02098836
	bl sub_02022974
_02098836:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02098840
	bl sub_02022974
_02098840:
	ldr r1, [r5, #4]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02098828

	thumb_func_start sub_02098848
sub_02098848: ; 0x02098848
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02098856
	bl sub_02022974
_02098856:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _02098860
	bl sub_02022974
_02098860:
	ldr r1, [r5, #8]
	lsl r0, r4, #1
	ldrsh r0, [r1, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02098848

	thumb_func_start sub_02098868
sub_02098868: ; 0x02098868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02098876
	bl sub_02022974
_02098876:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _02098880
	bl sub_02022974
_02098880:
	ldr r1, [r5, #0xc]
	lsl r0, r4, #1
	ldrsh r0, [r1, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02098868

	thumb_func_start sub_02098888
sub_02098888: ; 0x02098888
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02098896
	bl sub_02022974
_02098896:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _020988A0
	bl sub_02022974
_020988A0:
	ldr r1, [r5, #0x10]
	lsl r0, r4, #1
	ldrsh r0, [r1, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02098888

	thumb_func_start sub_020988A8
sub_020988A8: ; 0x020988A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _020988B6
	bl sub_02022974
_020988B6:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _020988C0
	bl sub_02022974
_020988C0:
	ldr r1, [r5, #0x14]
	lsl r0, r4, #1
	ldrsh r0, [r1, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020988A8

	thumb_func_start sub_020988C8
sub_020988C8: ; 0x020988C8
	push {r3, lr}
	add r3, r1, #0
	mov r1, #0
	add r2, r1, #0
	str r1, [sp]
	bl sub_0200723C
	pop {r3, pc}
	thumb_func_end sub_020988C8

	thumb_func_start sub_020988D8
sub_020988D8: ; 0x020988D8
	push {r3, lr}
	add r3, r1, #0
	mov r2, #0
	mov r1, #1
	str r2, [sp]
	bl sub_0200723C
	pop {r3, pc}
	thumb_func_end sub_020988D8

	thumb_func_start sub_020988E8
sub_020988E8: ; 0x020988E8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	mov r2, #0
	add r5, r1, #0
	add r6, r0, #0
	add r7, r3, #0
	str r2, [sp]
	mov r1, #9
	bl sub_0200723C
	str r0, [r5, #0]
	mov r2, #0
	add r0, r6, #0
	mov r1, #0xa
	add r3, r7, #0
	str r2, [sp]
	bl sub_0200723C
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020988E8

	thumb_func_start sub_02098910
sub_02098910: ; 0x02098910
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	mov r2, #0
	add r5, r1, #0
	add r6, r0, #0
	add r7, r3, #0
	str r2, [sp]
	mov r1, #7
	bl sub_0200723C
	str r0, [r5, #0]
	mov r2, #0
	add r0, r6, #0
	mov r1, #8
	add r3, r7, #0
	str r2, [sp]
	bl sub_0200723C
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02098910

	thumb_func_start sub_02098938
sub_02098938: ; 0x02098938
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	mov r2, #0
	add r5, r1, #0
	add r6, r0, #0
	add r7, r3, #0
	str r2, [sp]
	mov r1, #5
	bl sub_0200723C
	str r0, [r5, #0]
	mov r2, #0
	add r0, r6, #0
	mov r1, #6
	add r3, r7, #0
	str r2, [sp]
	bl sub_0200723C
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02098938

	thumb_func_start sub_02098960
sub_02098960: ; 0x02098960
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	mov r2, #0
	add r5, r1, #0
	add r6, r0, #0
	add r7, r3, #0
	str r2, [sp]
	mov r1, #3
	bl sub_0200723C
	str r0, [r5, #0]
	mov r2, #0
	add r0, r6, #0
	mov r1, #4
	add r3, r7, #0
	str r2, [sp]
	bl sub_0200723C
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02098960

	thumb_func_start sub_02098988
sub_02098988: ; 0x02098988
	cmp r0, #0
	bne _0209899E
	ldr r0, _020989B0 ; =0x02100D90
	mov r1, #0xc2
	str r1, [r0, #4]
	mov r1, #0xb1
	lsl r1, r1, #2
	str r1, [r0, #0]
	add r1, r1, #2
	str r1, [r0, #8]
	bx lr
_0209899E:
	ldr r0, _020989B0 ; =0x02100D90
	mov r1, #0x4b
	str r1, [r0, #4]
	ldr r1, _020989B4 ; =0x000002C3
	str r1, [r0, #0]
	add r1, r1, #2
	str r1, [r0, #8]
	bx lr
	nop
_020989B0: .word 0x02100D90
_020989B4: .word 0x000002C3
	thumb_func_end sub_02098988

	thumb_func_start sub_020989B8
sub_020989B8: ; 0x020989B8
	ldr r0, _020989C0 ; =0x02100D90
	ldr r0, [r0, #4]
	bx lr
	nop
_020989C0: .word 0x02100D90
	thumb_func_end sub_020989B8

	thumb_func_start sub_020989C4
sub_020989C4: ; 0x020989C4
	ldr r0, _020989CC ; =0x02100D90
	ldr r0, [r0, #0]
	bx lr
	nop
_020989CC: .word 0x02100D90
	thumb_func_end sub_020989C4

	thumb_func_start sub_020989D0
sub_020989D0: ; 0x020989D0
	ldr r0, _020989D8 ; =0x02100D90
	ldr r0, [r0, #8]
	bx lr
	nop
_020989D8: .word 0x02100D90
	thumb_func_end sub_020989D0

	thumb_func_start sub_020989DC
sub_020989DC: ; 0x020989DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #0
	mov r1, #0xcf
	str r0, [sp]
	add r0, r5, #0
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0xcf
	mov r1, #0
	lsl r2, r2, #2
	add r7, r0, #0
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_0202AB28
	str r0, [r7, #8]
	add r0, r4, #0
	bl sub_02025E38
	str r0, [r7, #0xc]
	add r0, r4, #0
	bl sub_0207A268
	str r0, [r7, #0x10]
	add r0, r4, #0
	bl sub_0207D990
	str r0, [r7, #0x14]
	add r0, r4, #0
	bl sub_02025E44
	str r0, [r7, #0x18]
	add r0, r5, #0
	bl sub_0202A93C
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x20
	add r2, r5, #0
	bl sub_0200B368
	str r0, [sp, #4]
	mov r6, #0
_02098A3C:
	ldr r0, [r7, #8]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0202AC54
	add r0, r4, #0
	bl sub_0202A914
	cmp r0, #0
	beq _02098ACA
	add r0, r4, #0
	add r1, sp, #8
	bl sub_0202AA9C
	ldr r0, [sp]
	add r1, r7, #0
	add r1, #0x1c
	lsl r0, r0, #3
	add r5, r1, r0
	strb r6, [r1, r0]
	add r0, r4, #0
	bl sub_0202AABC
	strb r0, [r5, #1]
	add r0, sp, #8
	ldrb r1, [r0]
	mov r2, #1
	strb r1, [r5, #2]
	ldrb r0, [r0, #6]
	mov r1, #0
	strb r0, [r5, #3]
	add r0, sp, #8
_02098A7C:
	add r3, r0, r1
	ldrb r3, [r3, #1]
	cmp r3, #0
	beq _02098A8A
	ldrb r3, [r5, #4]
	orr r3, r2
	strb r3, [r5, #4]
_02098A8A:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsl r2, r2, #0x19
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	cmp r1, #5
	blo _02098A7C
	ldrb r1, [r5, #4]
	mov r0, #0x20
	orr r0, r1
	strb r0, [r5, #4]
	ldrb r2, [r5, #4]
	mov r1, #0x80
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1a
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r5, #4]
	ldr r0, [sp]
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	strb r0, [r5, #5]
	mov r0, #0xff
	strb r0, [r5, #6]
	ldrb r0, [r5, #6]
	strb r0, [r5, #7]
_02098ACA:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0x64
	blo _02098A3C
	ldr r0, [sp, #4]
	bl sub_0200B3F0
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp]
	strb r0, [r7]
	mov r0, #5
	strb r0, [r7, #3]
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020989DC

	thumb_func_start sub_02098AF0
sub_02098AF0: ; 0x02098AF0
	ldr r3, _02098AF4 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02098AF4: .word sub_020181C4
	thumb_func_end sub_02098AF0

	thumb_func_start sub_02098AF8
sub_02098AF8: ; 0x02098AF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02098B18
	bl sub_02006844
	cmp r0, #0
	beq _02098B18
	ldr r0, [r4, #0]
	bl sub_02006814
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_02098B18:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02098AF8

	thumb_func_start sub_02098B1C
sub_02098B1C: ; 0x02098B1C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02006840
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x2c
	lsl r2, r2, #0xc
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0x2c
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0x2c
	str r0, [r4, #0]
	str r5, [r4, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02098B1C

	thumb_func_start sub_02098B50
sub_02098B50: ; 0x02098B50
	push {r4, lr}
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	cmp r1, #8
	bhi _02098BC0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02098B6A: ; jump table
	.short _02098B7C - _02098B6A - 2 ; case 0
	.short _02098B84 - _02098B6A - 2 ; case 1
	.short _02098B8C - _02098B6A - 2 ; case 2
	.short _02098B94 - _02098B6A - 2 ; case 3
	.short _02098B9C - _02098B6A - 2 ; case 4
	.short _02098BA4 - _02098B6A - 2 ; case 5
	.short _02098BAC - _02098B6A - 2 ; case 6
	.short _02098BB4 - _02098B6A - 2 ; case 7
	.short _02098BBC - _02098B6A - 2 ; case 8
_02098B7C:
	bl sub_02098C2C
	str r0, [r4, #0]
	b _02098BC0
_02098B84:
	bl sub_02098C44
	str r0, [r4, #0]
	b _02098BC0
_02098B8C:
	bl sub_02098CB0
	str r0, [r4, #0]
	b _02098BC0
_02098B94:
	bl sub_02098D38
	str r0, [r4, #0]
	b _02098BC0
_02098B9C:
	bl sub_02098D7C
	str r0, [r4, #0]
	b _02098BC0
_02098BA4:
	bl sub_02098DE8
	str r0, [r4, #0]
	b _02098BC0
_02098BAC:
	bl sub_02098E0C
	str r0, [r4, #0]
	b _02098BC0
_02098BB4:
	bl sub_02098E88
	str r0, [r4, #0]
	b _02098BC0
_02098BBC:
	mov r0, #1
	pop {r4, pc}
_02098BC0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02098B50

	thumb_func_start sub_02098BC4
sub_02098BC4: ; 0x02098BC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_02098BE4
	add r0, r5, #0
	bl sub_02006830
	ldr r0, [r4, #0]
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02098BC4

	thumb_func_start sub_02098BE4
sub_02098BE4: ; 0x02098BE4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5, #0xc]
	mov r0, #0
	ldrb r1, [r2]
	add r4, r0, #0
	cmp r1, #0
	bls _02098C1E
	mov r6, #1
_02098BF6:
	add r3, r2, #0
	add r3, #0x1c
	lsl r1, r4, #3
	add r1, r3, r1
	ldrb r3, [r1, #4]
	lsl r3, r3, #0x19
	lsr r3, r3, #0x1f
	beq _02098C10
	ldrb r1, [r1]
	ldr r0, [r2, #8]
	bl sub_0202AB98
	add r0, r6, #0
_02098C10:
	add r1, r4, #1
	lsl r1, r1, #0x18
	ldr r2, [r5, #0xc]
	lsr r4, r1, #0x18
	ldrb r1, [r2]
	cmp r4, r1
	blo _02098BF6
_02098C1E:
	cmp r0, #0
	beq _02098C28
	ldr r0, [r2, #8]
	bl sub_0202ABD4
_02098C28:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02098BE4

	thumb_func_start sub_02098C2C
sub_02098C2C: ; 0x02098C2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02098C40 ; =0x020F683C
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0]
	bl sub_020067E8
	str r0, [r4, #0x14]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02098C40: .word 0x020F683C
	thumb_func_end sub_02098C2C

	thumb_func_start sub_02098C44
sub_02098C44: ; 0x02098C44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x14
	bl sub_02098AF8
	cmp r0, #0
	bne _02098C56
	mov r0, #1
	pop {r3, r4, r5, pc}
_02098C56:
	ldr r1, [r5, #0xc]
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _02098C62
	mov r0, #8
	pop {r3, r4, r5, pc}
_02098C62:
	mov r0, #0
	strb r0, [r1, #2]
	ldr r0, [r5, #0]
	mov r1, #0x40
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [r5, #0xc]
	mov r1, #0
	ldr r0, [r0, #0x10]
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x14]
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0x20
	strb r1, [r0]
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #0x18]
	str r0, [r4, #0xc]
	ldr r0, _02098CAC ; =0x020F1E88
	ldr r2, [r5, #0]
	bl sub_020067E8
	str r0, [r5, #0x14]
	str r4, [r5, #0x10]
	mov r0, #2
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02098CAC: .word 0x020F1E88
	thumb_func_end sub_02098C44

	thumb_func_start sub_02098CB0
sub_02098CB0: ; 0x02098CB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x14
	bl sub_02098AF8
	cmp r0, #0
	bne _02098CC2
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_02098CC2:
	ldr r7, [r5, #0x10]
	add r0, r7, #0
	add r0, #0x22
	ldrb r6, [r0]
	strb r6, [r5, #8]
	ldr r0, [r5, #0x10]
	bl sub_020181C4
	cmp r6, #7
	bne _02098CDA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02098CDA:
	ldr r0, [r5, #0]
	mov r1, #0x30
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x10]
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x18]
	str r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #0x11]
	strb r6, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r1, #0
	strh r1, [r4, #0x18]
	mov r0, #3
	strb r0, [r4, #0x12]
	mov r0, #1
	str r0, [r4, #0x2c]
	str r1, [r4, #0x28]
	ldr r1, _02098D30 ; =0x020F6838
	add r0, r4, #0
	bl sub_0208D720
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	ldr r1, [r1, #0xc]
	bl sub_0208E9C0
	ldr r0, _02098D34 ; =0x020F410C
	ldr r2, [r5, #0]
	add r1, r7, #0
	bl sub_020067E8
	str r0, [r5, #0x14]
	str r4, [r5, #0x10]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02098D30: .word 0x020F6838
_02098D34: .word 0x020F410C
	thumb_func_end sub_02098CB0

	thumb_func_start sub_02098D38
sub_02098D38: ; 0x02098D38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x14
	bl sub_02098AF8
	cmp r0, #0
	bne _02098D4A
	mov r0, #3
	pop {r3, r4, r5, pc}
_02098D4A:
	ldr r0, [r5, #0x10]
	ldrb r4, [r0, #0x17]
	ldrb r0, [r0, #0x14]
	strb r0, [r5, #8]
	ldr r0, [r5, #0x10]
	bl sub_020181C4
	cmp r4, #1
	bne _02098D60
	mov r0, #0
	pop {r3, r4, r5, pc}
_02098D60:
	ldr r0, [r5, #0xc]
	add r3, r0, #0
	ldrb r0, [r0, #1]
	add r3, #0x20
	lsl r2, r0, #3
	ldrb r1, [r3, r2]
	mov r0, #0x40
	orr r0, r1
	strb r0, [r3, r2]
	ldr r0, [r5, #0xc]
	mov r1, #1
	strb r1, [r0, #2]
	mov r0, #4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02098D38

	thumb_func_start sub_02098D7C
sub_02098D7C: ; 0x02098D7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0xc
	bl sub_02018144
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r1, [r5, #0xc]
	ldrb r0, [r1, #1]
	lsl r0, r0, #3
	add r0, r1, r0
	ldrb r0, [r0, #0x1e]
	strh r0, [r4, #8]
	ldr r2, [r5, #0xc]
	ldrb r1, [r2, #1]
	ldr r0, [r2, #8]
	lsl r1, r1, #3
	add r1, r2, r1
	ldrb r1, [r1, #0x1c]
	ldr r2, [r5, #0]
	bl sub_0202AC70
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	ldrb r1, [r5, #8]
	ldr r0, [r0, #0x10]
	bl sub_0207A0FC
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x18]
	bl sub_02027AC0
	strb r0, [r4, #0xa]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x18]
	bl sub_02027B50
	strb r0, [r4, #0xb]
	ldr r0, _02098DE4 ; =0x020F684C
	ldr r2, [r5, #0]
	add r1, r4, #0
	bl sub_020067E8
	str r0, [r5, #0x14]
	str r4, [r5, #0x10]
	mov r0, #5
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02098DE4: .word 0x020F684C
	thumb_func_end sub_02098D7C

	thumb_func_start sub_02098DE8
sub_02098DE8: ; 0x02098DE8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x14
	bl sub_02098AF8
	cmp r0, #0
	bne _02098DFA
	mov r0, #5
	pop {r4, pc}
_02098DFA:
	ldr r4, [r4, #0x10]
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #6
	pop {r4, pc}
	thumb_func_end sub_02098DE8

	thumb_func_start sub_02098E0C
sub_02098E0C: ; 0x02098E0C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x30
	bl sub_02018144
	ldr r2, [r5, #0xc]
	add r4, r0, #0
	ldrb r1, [r2, #1]
	ldr r0, [r2, #8]
	lsl r1, r1, #3
	add r1, r2, r1
	ldrb r1, [r1, #0x1c]
	ldr r2, [r5, #0]
	bl sub_0202AC70
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x10]
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x18]
	str r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r5, #8]
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0207A0F8
	strb r0, [r4, #0x13]
	mov r1, #0
	strh r1, [r4, #0x18]
	mov r0, #4
	strb r0, [r4, #0x12]
	str r6, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0x2c]
	str r1, [r4, #0x28]
	ldr r1, _02098E80 ; =0x020F6834
	add r0, r4, #0
	bl sub_0208D720
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	ldr r1, [r1, #0xc]
	bl sub_0208E9C0
	ldr r0, _02098E84 ; =0x020F410C
	ldr r2, [r5, #0]
	add r1, r4, #0
	bl sub_020067E8
	str r0, [r5, #0x14]
	str r4, [r5, #0x10]
	mov r0, #7
	pop {r4, r5, r6, pc}
	nop
_02098E80: .word 0x020F6834
_02098E84: .word 0x020F410C
	thumb_func_end sub_02098E0C

	thumb_func_start sub_02098E88
sub_02098E88: ; 0x02098E88
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x14
	bl sub_02098AF8
	cmp r0, #0
	bne _02098E9A
	mov r0, #7
	pop {r4, pc}
_02098E9A:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x24]
	bl sub_020181C4
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02098E88

	thumb_func_start sub_02098EAC
sub_02098EAC: ; 0x02098EAC
	push {r3, r4, r5, lr}
	sub sp, #8
	lsl r2, r1, #1
	ldr r1, _02098EF0 ; =0x020F685C
	ldrb r4, [r1, r2]
	ldr r1, _02098EF4 ; =0x020F685D
	ldrb r5, [r1, r2]
	cmp r4, #5
	bne _02098EC4
	add sp, #8
	mov r0, #2
	pop {r3, r4, r5, pc}
_02098EC4:
	add r1, sp, #0
	bl sub_0202AA9C
	add r0, r4, #1
	add r2, sp, #0
	ldrb r1, [r2, r0]
	add r0, r5, #1
	ldrb r0, [r2, r0]
	cmp r1, r0
	bne _02098EDE
	add sp, #8
	mov r0, #2
	pop {r3, r4, r5, pc}
_02098EDE:
	cmp r1, r0
	bls _02098EE8
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02098EE8:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02098EF0: .word 0x020F685C
_02098EF4: .word 0x020F685D
	thumb_func_end sub_02098EAC

	thumb_func_start sub_02098EF8
sub_02098EF8: ; 0x02098EF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02075BCC
	lsl r1, r0, #1
	ldr r0, _02098FEC ; =0x020F685C
	ldrb r0, [r0, r1]
	str r0, [sp, #4]
	ldr r0, _02098FF0 ; =0x020F685D
	ldrb r0, [r0, r1]
	add r1, sp, #0x10
	str r0, [sp]
	add r0, r4, #0
	bl sub_0202AA9C
	mov r4, #0
	add r7, r4, #0
	add r5, sp, #0x18
_02098F22:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x13
	add r2, r7, #0
	bl sub_02074470
	lsl r1, r4, #2
	str r0, [r5, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _02098F22
	add r4, sp, #8
	mov r1, #0
	mov r3, #1
	add r0, sp, #0x10
	add r4, #1
_02098F46:
	ldrb r5, [r0, r3]
	add r2, r1, #0
	add r1, r1, #1
	strb r5, [r4, r2]
	add r2, r3, #1
	lsl r2, r2, #0x18
	lsl r1, r1, #0x18
	lsr r3, r2, #0x18
	lsr r1, r1, #0x18
	cmp r3, #6
	bls _02098F46
	ldr r0, [sp, #4]
	cmp r0, #5
	beq _02098F94
	ldrb r0, [r4, r0]
	bl sub_020E17FC
	add r1, r0, #0
	ldr r0, _02098FF4 ; =0x3F8CCCCD
	bl sub_020E18B0
	bl sub_020E1774
	ldr r1, [sp, #4]
	strb r0, [r4, r1]
	add r4, sp, #8
	ldr r0, [sp]
	add r4, #1
	ldrb r0, [r4, r0]
	bl sub_020E17FC
	add r1, r0, #0
	ldr r0, _02098FF8 ; =0x3F666666
	bl sub_020E18B0
	bl sub_020E1774
	ldr r1, [sp]
	strb r0, [r4, r1]
_02098F94:
	add r7, sp, #8
	mov r5, #0
	add r4, sp, #0x18
	add r7, #1
_02098F9C:
	lsl r2, r5, #2
	ldrb r0, [r7, r5]
	ldr r1, [r4, r2]
	add r0, r1, r0
	str r0, [r4, r2]
	ldr r0, [r4, r2]
	cmp r0, #0xff
	ble _02098FB0
	mov r0, #0xff
	str r0, [r4, r2]
_02098FB0:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x13
	add r2, r4, r2
	bl sub_02074B30
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _02098F9C
	add r0, r6, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	add r1, sp, #8
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0xff
	bhs _02098FE8
	add r0, r0, #1
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #9
	add r2, sp, #8
	bl sub_02074B30
_02098FE8:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02098FEC: .word 0x020F685C
_02098FF0: .word 0x020F685D
_02098FF4: .word 0x3F8CCCCD
_02098FF8: .word 0x3F666666
	thumb_func_end sub_02098EF8

	thumb_func_start sub_02098FFC
sub_02098FFC: ; 0x02098FFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x59
	lsl r1, r1, #2
	add r6, r0, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	mov r2, #0x59
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020C4CF4
	str r6, [r4, #0]
	cmp r5, #0x10
	bls _02099026
	mov r0, #0x10
	strh r0, [r4, #0xa]
	b _02099028
_02099026:
	strh r7, [r4, #0xa]
_02099028:
	strh r5, [r4, #0xc]
	ldr r0, [sp]
	strh r0, [r4, #0xe]
	ldr r0, [sp, #0x18]
	str r0, [r4, #4]
	add r0, r4, #0
	bl sub_02099058
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02098FFC

	thumb_func_start sub_0209903C
sub_0209903C: ; 0x0209903C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02099118
	mov r2, #0x59
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0209903C

	thumb_func_start sub_02099058
sub_02099058: ; 0x02099058
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _02099114 ; =0x020F68A0
	str r0, [sp]
	ldrb r2, [r1]
	add r0, sp, #8
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldr r0, [sp]
	ldr r2, [sp]
	ldr r1, [sp]
	ldrh r0, [r0, #0xc]
	ldr r2, [r2, #0]
	add r1, #0x14
	bl sub_020095C4
	ldr r1, [sp]
	mov r6, #0x15
	str r0, [r1, #0x10]
	add r0, r1, #0
	ldrh r1, [r0, #0xa]
	add r0, sp, #8
	ldr r5, [sp]
	strb r1, [r0, #1]
	mov r0, #0
	str r0, [sp, #4]
	add r7, sp, #8
	add r4, r0, #0
	lsl r6, r6, #4
_0209909C:
	ldr r2, [sp]
	ldrb r0, [r7]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0]
	bl sub_02009714
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r1, [sp]
	ldrb r0, [r7]
	ldr r1, [r1, #0]
	bl sub_02009CFC
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r3, [r5, r0]
	mov r1, #0
	ldr r0, [r3, #4]
	cmp r0, #0
	bls _020990DE
	add r2, r1, #0
_020990CE:
	ldr r0, [r3, #0]
	add r1, r1, #1
	str r4, [r0, r2]
	ldr r3, [r5, r6]
	add r2, r2, #4
	ldr r0, [r3, #4]
	cmp r1, r0
	blo _020990CE
_020990DE:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r0, #4
	blo _0209909C
	ldr r0, [sp]
	bl sub_020993A8
	ldr r0, [sp]
	mov r1, #4
	ldr r0, [r0, #0]
	bl sub_02018144
	mov r2, #0x16
	ldr r1, [sp]
	lsl r2, r2, #4
	str r0, [r1, r2]
	add r0, r1, #0
	ldr r0, [r0, r2]
	mov r1, #0
	mov r2, #4
	bl sub_020C4CF4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02099114: .word 0x020F68A0
	thumb_func_end sub_02099058

	thumb_func_start sub_02099118
sub_02099118: ; 0x02099118
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020181C4
	ldr r0, [r5, #0x10]
	bl sub_02021964
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200A508
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A700
	mov r7, #0x15
	lsl r7, r7, #4
	add r6, r7, #0
	mov r4, #0
	sub r6, #0x10
_0209914A:
	ldr r0, [r5, r7]
	bl sub_02009D20
	ldr r0, [r5, r6]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blo _0209914A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02099118

	thumb_func_start sub_02099160
sub_02099160: ; 0x02099160
	ldr r3, _02099168 ; =sub_020219F8
	ldr r0, [r0, #0x10]
	bx r3
	nop
_02099168: .word sub_020219F8
	thumb_func_end sub_02099160

	thumb_func_start sub_0209916C
sub_0209916C: ; 0x0209916C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	str r1, [sp, #0x2c]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp, #0x30]
	bl sub_020994B8
	str r0, [sp, #0x3c]
	cmp r0, #0
	bge _02099190
	bl sub_02022974
	add sp, #0x70
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02099190:
	ldr r0, [r5, #0]
	mov r1, #8
	bl sub_02018144
	str r0, [sp, #0x38]
	mov r1, #0
	mov r2, #8
	bl sub_020C4CF4
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	strh r1, [r0]
	ldr r0, [sp, #0x94]
	cmp r0, #0
	bne _020991B2
	mov r6, #1
	b _020991B4
_020991B2:
	mov r6, #2
_020991B4:
	ldr r0, [sp, #0x3c]
	mov r1, #0x55
	lsl r1, r1, #2
	lsl r4, r0, #2
	ldr r0, [r5, r1]
	ldr r3, [sp, #0x2c]
	ldr r0, [r0, #0]
	sub r1, #0x10
	ldr r0, [r0, r4]
	mov r2, #0x58
	str r0, [sp, #0x34]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	add r3, r3, #3
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x34]
	bl sub_020099D4
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	ldr r0, [r0, r4]
	bl sub_0200A6B8
	ldr r0, [r5, #0]
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #8
	bl sub_02018144
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	mov r1, #0x24
	bl sub_02018144
	ldr r1, [r4, #8]
	mov r3, #0xe
	str r0, [r1, #0]
	ldr r0, [r4, #8]
	lsl r3, r3, #0xc
	ldr r0, [r0, #0]
	mov r1, #0
	str r0, [r4, #4]
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, sp, #0x78
	ldrb r0, [r0, #0x14]
	str r0, [sp, #0x10]
	mov r0, #5
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r5, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r5, r0]
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	ldr r2, [sp, #0x3c]
	ldr r0, [r4, #4]
	add r1, r3, #0
	add r2, r2, r3
	bl sub_020093B4
	ldr r0, [r5, #0x10]
	cmp r7, #0
	str r0, [sp, #0x40]
	ldr r0, [r4, #4]
	str r0, [sp, #0x44]
	beq _02099272
	lsl r0, r7, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _02099280
_02099272:
	lsl r0, r7, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_02099280:
	bl sub_020E1740
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0209929E
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _020992AC
_0209929E:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_020992AC:
	bl sub_020E1740
	str r0, [sp, #0x4c]
	add r0, sp, #0x78
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _020992CC
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _020992DA
_020992CC:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_020992DA:
	bl sub_020E1740
	str r0, [sp, #0x50]
	cmp r6, #2
	bne _020992EE
	mov r0, #3
	ldr r1, [sp, #0x4c]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x4c]
_020992EE:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x54]
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	mov r1, #0
	add r0, sp, #0x40
	strh r1, [r0, #0x20]
	add r0, sp, #0x78
	ldrb r0, [r0, #0x18]
	str r6, [sp, #0x68]
	str r0, [sp, #0x64]
	ldr r0, [r5, #0]
	str r0, [sp, #0x6c]
	add r0, sp, #0x40
	bl sub_02021AA0
	str r0, [r4, #0]
	cmp r0, #0
	beq _0209932E
	mov r1, #0
	bl sub_02021D6C
	ldr r0, [sp, #0x34]
	add r1, r6, #0
	bl sub_0200A760
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_02021E90
	b _02099332
_0209932E:
	bl sub_02022974
_02099332:
	ldr r0, [sp, #0x38]
	str r4, [r0, #4]
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0209916C

	thumb_func_start sub_0209933C
sub_0209933C: ; 0x0209933C
	push {r4, lr}
	sub sp, #8
	add r3, r2, #0
	mov r2, #0x55
	lsl r2, r2, #2
	ldr r4, [r0, r2]
	ldrh r1, [r1]
	ldr r4, [r4, #0]
	sub r2, #0x10
	lsl r1, r1, #2
	ldr r4, [r4, r1]
	mov r1, #0
	str r1, [sp]
	ldr r1, [r0, #0]
	add r3, r3, #3
	str r1, [sp, #4]
	ldr r0, [r0, r2]
	add r1, r4, #0
	mov r2, #0x58
	bl sub_020099D4
	add r0, r4, #0
	bl sub_0200A6B8
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_0209933C

	thumb_func_start sub_02099370
sub_02099370: ; 0x02099370
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_0200D0F4
	mov r1, #0x16
	ldrh r2, [r4]
	lsl r1, r1, #4
	ldr r3, [r5, r1]
	mov r0, #0
	lsl r2, r2, #2
	strb r0, [r3, r2]
	ldrh r2, [r4]
	ldr r3, [r5, r1]
	lsl r2, r2, #2
	add r2, r3, r2
	strh r0, [r2, #2]
	ldr r2, [r5, r1]
	ldrh r1, [r4]
	lsl r1, r1, #2
	add r1, r2, r1
	strb r0, [r1, #1]
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02099370

	thumb_func_start sub_020993A8
sub_020993A8: ; 0x020993A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x58
	bl sub_02006C24
	str r0, [sp, #0x10]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r1, #0xe
	lsl r1, r1, #0xc
	str r1, [sp]
	ldrh r1, [r5, #0xe]
	mov r2, #0
	sub r0, #0x10
	str r1, [sp, #4]
	ldr r1, [r5, #0]
	add r3, r2, #0
	str r1, [sp, #8]
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x10]
	bl sub_02009A4C
	ldr r1, [r4, #0]
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020993EA
	bl sub_02022974
_020993EA:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0209940E
	cmp r0, #1
	beq _020993FA
	cmp r0, #2
	beq _02099404
	b _0209940E
_020993FA:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200A3DC
	b _02099416
_02099404:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200A450
	b _02099416
_0209940E:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200A328
_02099416:
	mov r4, #0
	add r6, r5, #0
_0209941A:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r7, [r6, r0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	str r0, [sp]
	add r0, r4, #2
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r2, r4, #1
	mov r3, #0
	bl sub_02009BC4
	ldr r1, [r7, #0]
	str r0, [r1, #0]
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0209944E
	bl sub_02022974
_0209944E:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #2
	blt _0209941A
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	ldrh r0, [r5, #0xa]
	mov r7, #0
	cmp r0, #0
	ble _020994AC
	add r4, r7, #0
_02099466:
	mov r0, #0xe
	lsl r0, r0, #0xc
	add r0, r7, r0
	str r0, [sp]
	ldrh r0, [r5, #0xe]
	ldr r1, [sp, #0x10]
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	mov r3, #0
	str r0, [sp, #0xc]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009B04
	ldr r1, [r6, #0]
	str r0, [r1, r4]
	ldr r0, [r6, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	bne _0209949A
	bl sub_02022974
_0209949A:
	ldr r0, [r6, #0]
	ldr r0, [r0, r4]
	bl sub_0200A5C8
	ldrh r0, [r5, #0xa]
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, r0
	blt _02099466
_020994AC:
	ldr r0, [sp, #0x10]
	bl sub_02006CA8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020993A8

	thumb_func_start sub_020994B8
sub_020994B8: ; 0x020994B8
	push {r3, r4, r5, r6}
	ldrh r5, [r0, #0xa]
	mov r3, #0
	cmp r5, #0
	bls _020994F6
	mov r2, #0x16
	lsl r2, r2, #4
	ldr r4, [r0, r2]
_020994C8:
	lsl r2, r3, #2
	ldrb r6, [r4, r2]
	cmp r6, #0
	bne _020994EC
	add r4, r4, r2
	strh r3, [r4, #2]
	mov r4, #0x16
	lsl r4, r4, #4
	ldr r5, [r0, r4]
	add r5, r5, r2
	strb r1, [r5, #1]
	ldr r0, [r0, r4]
	mov r1, #1
	strb r1, [r0, r2]
	lsl r0, r3, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, r6}
	bx lr
_020994EC:
	add r2, r3, #1
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	cmp r3, r5
	blo _020994C8
_020994F6:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020994B8

	thumb_func_start sub_02099500
sub_02099500: ; 0x02099500
	mov r0, #3
	bx lr
	thumb_func_end sub_02099500

	thumb_func_start sub_02099504
sub_02099504: ; 0x02099504
	mov r0, #0x18
	bx lr
	thumb_func_end sub_02099504

	thumb_func_start sub_02099508
sub_02099508: ; 0x02099508
	mov r0, #0x59
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02099508

	thumb_func_start sub_02099510
sub_02099510: ; 0x02099510
	bx lr
	; .align 2, 0
	thumb_func_end sub_02099510

	thumb_func_start sub_02099514
sub_02099514: ; 0x02099514
	ldr r3, _02099520 ; =sub_02032798
	add r2, r0, #0
	ldr r0, _02099524 ; =0x020F68A4
	mov r1, #0x71
	bx r3
	nop
_02099520: .word sub_02032798
_02099524: .word 0x020F68A4
	thumb_func_end sub_02099514

	thumb_func_start sub_02099528
sub_02099528: ; 0x02099528
	ldr r0, _0209952C ; =0x0000066C
	bx lr
	; .align 2, 0
_0209952C: .word 0x0000066C
	thumb_func_end sub_02099528

	thumb_func_start sub_02099530
sub_02099530: ; 0x02099530
	mov r0, #0x2f
	lsl r0, r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end sub_02099530

	thumb_func_start sub_02099538
sub_02099538: ; 0x02099538
	mov r0, #0x3f
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02099538

	thumb_func_start sub_02099540
sub_02099540: ; 0x02099540
	mov r0, #0xa
	bx lr
	thumb_func_end sub_02099540

	thumb_func_start sub_02099544
sub_02099544: ; 0x02099544
	mov r0, #0x32
	bx lr
	thumb_func_end sub_02099544

	thumb_func_start sub_02099548
sub_02099548: ; 0x02099548
	mov r0, #4
	bx lr
	thumb_func_end sub_02099548

	thumb_func_start sub_0209954C
sub_0209954C: ; 0x0209954C
	mov r0, #4
	bx lr
	thumb_func_end sub_0209954C

	thumb_func_start sub_02099550
sub_02099550: ; 0x02099550
	ldr r3, _02099558 ; =sub_02006590
	ldr r0, _0209955C ; =0x00000004
	mov r1, #2
	bx r3
	; .align 2, 0
_02099558: .word sub_02006590
_0209955C: .word 0x00000004
	thumb_func_end sub_02099550

	thumb_func_start sub_02099560
sub_02099560: ; 0x02099560
	ldr r3, _02099568 ; =sub_02006514
	ldr r0, _0209956C ; =0x00000004
	bx r3
	nop
_02099568: .word sub_02006514
_0209956C: .word 0x00000004
	thumb_func_end sub_02099560

	thumb_func_start sub_02099570
sub_02099570: ; 0x02099570
	ldr r3, _02099578 ; =sub_02006590
	ldr r0, _0209957C ; =0x00000012
	mov r1, #2
	bx r3
	; .align 2, 0
_02099578: .word sub_02006590
_0209957C: .word 0x00000012
	thumb_func_end sub_02099570

	thumb_func_start sub_02099580
sub_02099580: ; 0x02099580
	ldr r3, _02099588 ; =sub_02006514
	ldr r0, _0209958C ; =0x00000012
	bx r3
	nop
_02099588: .word sub_02006514
_0209958C: .word 0x00000012
	thumb_func_end sub_02099580

	thumb_func_start sub_02099590
sub_02099590: ; 0x02099590
	push {r4, lr}
	add r4, r1, #0
	bl sub_02099550
	bl sub_02099570
	add r0, r4, #0
	bl ov18_0221F800
	bl sub_02099580
	bl sub_02099560
	mov r0, #0
	bl sub_020C3EE4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02099590

	thumb_func_start sub_020995B4
sub_020995B4: ; 0x020995B4
	ldr r3, _020995BC ; =sub_02006590
	ldr r0, _020995C0 ; =0x0000003C
	mov r1, #2
	bx r3
	; .align 2, 0
_020995BC: .word sub_02006590
_020995C0: .word 0x0000003C
	thumb_func_end sub_020995B4

	thumb_func_start sub_020995C4
sub_020995C4: ; 0x020995C4
	ldr r3, _020995CC ; =sub_02006514
	ldr r0, _020995D0 ; =0x0000003C
	bx r3
	nop
_020995CC: .word sub_02006514
_020995D0: .word 0x0000003C
	thumb_func_end sub_020995C4

	thumb_func_start sub_020995D4
sub_020995D4: ; 0x020995D4
	push {r4, lr}
	mov r2, #0x41
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x31
	lsl r2, r2, #0xc
	bl sub_02017FC8
	add r0, r4, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	mov r1, #0x31
	bl sub_02099590
	mov r0, #0x31
	bl sub_0201807C
	mov r0, #0
	bl sub_020C3EE4
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020995D4

	thumb_func_start sub_02099604
sub_02099604: ; 0x02099604
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	mov r1, #0x28
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x28
	bl sub_020C4CF4
	str r5, [r4, #0xc]
	add r0, r5, #0
	bl sub_0202AB28
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_02025E38
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_0207D990
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_02025E44
	str r0, [r4, #0x18]
	str r7, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x20]
	str r6, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02099604

	thumb_func_start sub_0209964C
sub_0209964C: ; 0x0209964C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _02099670 ; =0x020F6E00
	add r4, sp, #0
	add r6, r0, #0
	add r2, r1, #0
	add r3, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0203CD84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02099670: .word 0x020F6E00
	thumb_func_end sub_0209964C

	thumb_func_start sub_02099674
sub_02099674: ; 0x02099674
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203D174
	add r3, r5, #0
	add r3, #0x9c
	add r1, r0, #0
	ldr r3, [r3, #0]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_02099604
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0209964C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02099674

	thumb_func_start sub_020996A0
sub_020996A0: ; 0x020996A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203D174
	add r3, r5, #0
	add r3, #0x9c
	add r1, r0, #0
	ldr r3, [r3, #0]
	mov r0, #1
	add r2, r4, #0
	bl sub_02099604
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	str r6, [r4, #0x24]
	bl sub_0209964C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020996A0

	thumb_func_start sub_020996D0
sub_020996D0: ; 0x020996D0
	mov r0, #0x13
	bx lr
	thumb_func_end sub_020996D0

	thumb_func_start sub_020996D4
sub_020996D4: ; 0x020996D4
	ldr r3, _020996F0 ; =0x020F6FB0
	mov r2, #0
_020996D8:
	ldrb r1, [r3]
	cmp r0, r1
	bne _020996E2
	add r0, r2, #0
	bx lr
_020996E2:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #0x13
	blo _020996D8
	mov r0, #0
	bx lr
	nop
_020996F0: .word 0x020F6FB0
	thumb_func_end sub_020996D4

	thumb_func_start sub_020996F4
sub_020996F4: ; 0x020996F4
	ldr r3, _02099718 ; =0x020F6FB0
	mov r2, #0
_020996F8:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0209970C
	mov r0, #0xc
	add r1, r2, #0
	mul r1, r0
	ldr r0, _0209971C ; =0x020F6FB8
	ldr r0, [r0, r1]
	add r0, r0, #1
	bx lr
_0209970C:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #0x13
	blo _020996F8
	mov r0, #0
	bx lr
	; .align 2, 0
_02099718: .word 0x020F6FB0
_0209971C: .word 0x020F6FB8
	thumb_func_end sub_020996F4

	thumb_func_start sub_02099720
sub_02099720: ; 0x02099720
	push {r3, lr}
	bl sub_020996D4
	bl sub_0209972C
	pop {r3, pc}
	thumb_func_end sub_02099720

	thumb_func_start sub_0209972C
sub_0209972C: ; 0x0209972C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _02099738
	bl sub_02022974
_02099738:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02099744 ; =0x020F6FB2
	ldrh r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_02099744: .word 0x020F6FB2
	thumb_func_end sub_0209972C

	thumb_func_start sub_02099748
sub_02099748: ; 0x02099748
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _02099754
	bl sub_02022974
_02099754:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02099760 ; =0x020F6FB0
	ldrb r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_02099760: .word 0x020F6FB0
	thumb_func_end sub_02099748

	thumb_func_start sub_02099764
sub_02099764: ; 0x02099764
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _02099770
	bl sub_02022974
_02099770:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _0209977C ; =0x020F6FB1
	ldrb r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_0209977C: .word 0x020F6FB1
	thumb_func_end sub_02099764

	thumb_func_start sub_02099780
sub_02099780: ; 0x02099780
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _0209978C
	bl sub_02022974
_0209978C:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02099798 ; =0x020F6FB4
	ldr r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_02099798: .word 0x020F6FB4
	thumb_func_end sub_02099780

	thumb_func_start sub_0209979C
sub_0209979C: ; 0x0209979C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _020997A8
	bl sub_02022974
_020997A8:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020997B4 ; =0x020F6FB8
	ldr r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_020997B4: .word 0x020F6FB8
	thumb_func_end sub_0209979C

	thumb_func_start sub_020997B8
sub_020997B8: ; 0x020997B8
	push {r3, lr}
	mov r1, #0x18
	bl sub_02018144
	add r3, r0, #0
	mov r2, #0x18
	mov r1, #0
_020997C6:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _020997C6
	pop {r3, pc}
	thumb_func_end sub_020997B8

	thumb_func_start sub_020997D0
sub_020997D0: ; 0x020997D0
	ldr r3, _020997D4 ; =sub_020181C4
	bx r3
	; .align 2, 0
_020997D4: .word sub_020181C4
	thumb_func_end sub_020997D0

	thumb_func_start sub_020997D8
sub_020997D8: ; 0x020997D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp]
	mov r1, #5
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r4, #0
	str r0, [sp, #4]
	add r7, r4, #0
	add r6, sp, #0x10
_02099814:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	add r2, r7, #0
	bl sub_02074470
	lsl r1, r4, #1
	strh r0, [r6, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _02099814
	ldr r0, [sp]
	mov r1, #0x2c
	bl sub_02018144
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #0x2c
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, r7, #0
	bl sub_02077D28
	mov r2, #0
	mov ip, r2
_02099850:
	mov r0, ip
	lsl r0, r0, #1
	ldrh r5, [r7, r0]
	ldr r6, _020998D4 ; =0x0000FFFF
	cmp r5, r6
	bne _02099862
	lsl r0, r2, #1
	strh r6, [r4, r0]
	b _020998C8
_02099862:
	mov r1, #0xfe
	lsl r1, r1, #8
	and r1, r5
	asr r3, r1, #9
	ldr r1, [sp, #4]
	cmp r3, r1
	bgt _020998BA
	lsr r1, r6, #7
	and r1, r5
	strh r1, [r7, r0]
	ldrh r3, [r7, r0]
	mov r1, #0
	add r6, sp, #0x10
_0209987C:
	lsl r5, r1, #1
	ldrh r5, [r6, r5]
	cmp r3, r5
	beq _0209988E
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #4
	blo _0209987C
_0209988E:
	cmp r1, #4
	bne _020998BA
	mov r1, #0
	cmp r2, #0
	bls _020998AA
_02099898:
	lsl r5, r1, #1
	ldrh r5, [r4, r5]
	cmp r5, r3
	beq _020998AA
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r2
	blo _02099898
_020998AA:
	cmp r1, r2
	bne _020998BA
	ldrh r1, [r7, r0]
	lsl r0, r2, #1
	strh r1, [r4, r0]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
_020998BA:
	mov r0, ip
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov ip, r0
	cmp r0, #0x16
	blo _02099850
_020998C8:
	add r0, r7, #0
	bl sub_020181C4
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020998D4: .word 0x0000FFFF
	thumb_func_end sub_020997D8

	thumb_func_start sub_020998D8
sub_020998D8: ; 0x020998D8
	ldrh r1, [r0]
	ldr r0, _020998E8 ; =0x0000FFFF
	cmp r1, r0
	beq _020998E4
	mov r0, #1
	bx lr
_020998E4:
	mov r0, #0
	bx lr
	; .align 2, 0
_020998E8: .word 0x0000FFFF
	thumb_func_end sub_020998D8

	thumb_func_start sub_020998EC
sub_020998EC: ; 0x020998EC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _02099924 ; =0x0000195C
	add r6, r0, #0
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	str r5, [r4, #0]
	bl sub_02014D38
	str r0, [r4, #4]
	mov r3, #0
	ldr r0, _02099928 ; =0x0000189E
	add r2, r3, #0
_0209990A:
	add r1, r4, r3
	add r3, r3, #1
	strb r2, [r1, r0]
	cmp r3, #0xbb
	blt _0209990A
	add r0, r4, #0
	bl sub_02099940
	add r0, r4, #0
	bl sub_02099BAC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02099924: .word 0x0000195C
_02099928: .word 0x0000189E
	thumb_func_end sub_020998EC

	thumb_func_start sub_0209992C
sub_0209992C: ; 0x0209992C
	push {r4, lr}
	add r4, r0, #0
	beq _0209993E
	ldr r0, [r4, #4]
	bl sub_02014D70
	add r0, r4, #0
	bl sub_020181C4
_0209993E:
	pop {r4, pc}
	thumb_func_end sub_0209992C

	thumb_func_start sub_02099940
sub_02099940: ; 0x02099940
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0
	str r0, [sp]
	add r7, r0, #0
	str r0, [sp, #8]
	add r0, #0x68
	ldr r5, _0209997C ; =0x020F7864
	str r4, [sp, #4]
	str r0, [sp, #8]
_02099954:
	ldr r3, [sp, #8]
	str r4, [r7, #0x38]
	lsl r6, r4, #1
	add r3, r3, r6
	ldr r0, [sp]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r6, [r5, #0]
	blx r6
	str r0, [r7, #8]
	add r4, r4, r0
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #1
	add r5, #0xc
	str r0, [sp, #4]
	cmp r0, #0xc
	blt _02099954
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0209997C: .word 0x020F7864
	thumb_func_end sub_02099940

	thumb_func_start sub_02099980
sub_02099980: ; 0x02099980
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0, #0]
	str r2, [sp, #4]
	add r5, r1, #0
	add r4, r3, #0
	mov r6, #0
	bl sub_0209755C
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r7, r6, #0
	cmp r0, #0
	bls _020999D6
_0209999E:
	ldrh r1, [r5]
	ldr r0, [sp, #8]
	bl sub_02026FE8
	cmp r0, #0
	beq _020999CC
	ldrh r3, [r5]
	ldr r0, [sp]
	mov r2, #7
	lsr r1, r3, #3
	add r1, r0, r1
	ldr r0, _020999DC ; =0x0000189E
	and r3, r2
	mov r2, #1
	ldrb r0, [r1, r0]
	lsl r2, r3
	orr r2, r0
	ldr r0, _020999DC ; =0x0000189E
	add r6, r6, #1
	strb r2, [r1, r0]
	ldrh r0, [r5]
	strh r0, [r4]
	add r4, r4, #2
_020999CC:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r5, r5, #2
	cmp r7, r0
	blo _0209999E
_020999D6:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020999DC: .word 0x0000189E
	thumb_func_end sub_02099980

	thumb_func_start sub_020999E0
sub_020999E0: ; 0x020999E0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [r0, #0]
	add r5, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02097564
	cmp r0, #0
	beq _02099A26
	mov r2, #0
	cmp r7, #0
	bls _02099A22
_020999FA:
	ldrh r6, [r5]
	ldr r0, [sp]
	mov r3, #7
	lsr r1, r6, #3
	add r1, r0, r1
	ldr r0, _02099A2C ; =0x0000189E
	and r6, r3
	mov r3, #1
	ldrb r0, [r1, r0]
	lsl r3, r6
	orr r3, r0
	ldr r0, _02099A2C ; =0x0000189E
	add r2, r2, #1
	strb r3, [r1, r0]
	ldrh r0, [r5]
	add r5, r5, #2
	strh r0, [r4]
	add r4, r4, #2
	cmp r2, r7
	blo _020999FA
_02099A22:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02099A26:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02099A2C: .word 0x0000189E
	thumb_func_end sub_020999E0

	thumb_func_start sub_02099A30
sub_02099A30: ; 0x02099A30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0, #0]
	add r5, r1, #0
	str r2, [sp, #4]
	add r4, r3, #0
	bl sub_02097560
	str r0, [sp, #0xc]
	mov r0, #0x6f
	lsl r0, r0, #2
	mov r1, #0
	bl sub_02014DFC
	str r0, [sp, #8]
	mov r7, #0
	ldr r0, [sp, #4]
	add r6, r7, #0
	cmp r0, #0
	bls _02099A96
_02099A5A:
	ldrh r2, [r5]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	sub r1, r2, r1
	bl sub_02014ED8
	cmp r0, #0
	beq _02099A8C
	ldrh r3, [r5]
	ldr r0, [sp]
	mov r2, #7
	lsr r1, r3, #3
	add r1, r0, r1
	ldr r0, _02099A9C ; =0x0000189E
	and r3, r2
	mov r2, #1
	ldrb r0, [r1, r0]
	lsl r2, r3
	orr r2, r0
	ldr r0, _02099A9C ; =0x0000189E
	add r6, r6, #1
	strb r2, [r1, r0]
	ldrh r0, [r5]
	strh r0, [r4]
	add r4, r4, #2
_02099A8C:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r5, r5, #2
	cmp r7, r0
	blo _02099A5A
_02099A96:
	add r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02099A9C: .word 0x0000189E
	thumb_func_end sub_02099A30

	thumb_func_start sub_02099AA0
sub_02099AA0: ; 0x02099AA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r0, [r0, #0]
	add r5, r1, #0
	str r2, [sp, #4]
	add r4, r3, #0
	bl sub_02097560
	str r0, [sp, #0x10]
	ldr r0, _02099B20 ; =0x000001B9
	mov r1, #0
	bl sub_02014DFC
	add r6, r0, #0
	add r0, r6, #5
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r7, #0
	ldr r0, [sp, #4]
	str r7, [sp, #8]
	cmp r0, #0
	bls _02099B18
_02099AD0:
	ldrh r1, [r5]
	cmp r1, r6
	blo _02099AE8
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bhi _02099AE8
	ldr r0, [sp, #0x10]
	sub r1, r1, r6
	bl sub_02014F8C
	cmp r0, #0
	beq _02099B0A
_02099AE8:
	ldrh r3, [r5]
	ldr r0, [sp]
	mov r2, #7
	lsr r1, r3, #3
	add r1, r0, r1
	ldr r0, _02099B24 ; =0x0000189E
	and r3, r2
	mov r2, #1
	ldrb r0, [r1, r0]
	lsl r2, r3
	orr r2, r0
	ldr r0, _02099B24 ; =0x0000189E
	add r7, r7, #1
	strb r2, [r1, r0]
	ldrh r0, [r5]
	strh r0, [r4]
	add r4, r4, #2
_02099B0A:
	ldr r0, [sp, #8]
	add r5, r5, #2
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blo _02099AD0
_02099B18:
	add r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02099B20: .word 0x000001B9
_02099B24: .word 0x0000189E
	thumb_func_end sub_02099AA0

	thumb_func_start sub_02099B28
sub_02099B28: ; 0x02099B28
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	mov lr, r2
	mov ip, r0
	mov r0, lr
	add r4, r1, #0
	add r7, r3, #0
	cmp r0, #0
	bls _02099B9E
_02099B3C:
	ldrh r2, [r4]
	ldr r0, _02099BA4 ; =0x0000FFFE
	cmp r2, r0
	bne _02099B72
	add r0, r4, #2
	add r4, r4, #4
	ldrh r2, [r0]
	ldrh r0, [r4]
	cmp r2, #0
	strh r0, [r7]
	beq _02099B92
_02099B52:
	ldrh r5, [r4]
	mov r3, #7
	add r4, r4, #2
	lsr r0, r5, #3
	add r1, r6, r0
	ldr r0, _02099BA8 ; =0x0000189E
	and r5, r3
	mov r3, #1
	ldrb r0, [r1, r0]
	lsl r3, r5
	orr r3, r0
	ldr r0, _02099BA8 ; =0x0000189E
	sub r2, r2, #1
	strb r3, [r1, r0]
	bne _02099B52
	b _02099B92
_02099B72:
	lsr r0, r2, #3
	ldr r1, _02099BA8 ; =0x0000189E
	add r0, r6, r0
	ldrb r3, [r0, r1]
	mov r1, #7
	mov r5, #1
	and r1, r2
	add r2, r5, #0
	lsl r2, r1
	ldr r1, _02099BA8 ; =0x0000189E
	orr r2, r3
	strb r2, [r0, r1]
	ldrh r0, [r4]
	add r4, r4, #2
	strh r0, [r7]
	add r7, r7, #2
_02099B92:
	mov r0, ip
	add r1, r0, #1
	mov r0, lr
	mov ip, r1
	cmp r1, r0
	blo _02099B3C
_02099B9E:
	mov r0, lr
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02099BA4: .word 0x0000FFFE
_02099BA8: .word 0x0000189E
	thumb_func_end sub_02099B28

	thumb_func_start sub_02099BAC
sub_02099BAC: ; 0x02099BAC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
	ldr r6, _02099BE8 ; =0x020F74D8
	str r4, [sp]
	add r5, r7, #0
_02099BB8:
	ldr r0, _02099BEC ; =0x00000C84
	mov r2, #0xcf
	str r4, [r5, r0]
	lsl r2, r2, #4
	ldr r1, [r6, #0]
	add r0, r7, #0
	add r2, r7, r2
	add r3, r4, #0
	bl sub_02099BF4
	ldr r1, _02099BF0 ; =0x00000C18
	add r6, r6, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	add r5, r5, #4
	add r4, r4, r0
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0x1b
	blo _02099BB8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02099BE8: .word 0x020F74D8
_02099BEC: .word 0x00000C84
_02099BF0: .word 0x00000C18
	thumb_func_end sub_02099BAC

	thumb_func_start sub_02099BF4
sub_02099BF4: ; 0x02099BF4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	str r2, [sp]
	mov r0, #0
	mov ip, r0
	ldrh r2, [r7]
	ldr r0, _02099C94 ; =0x0000FFFF
	mov lr, r3
	cmp r2, r0
	beq _02099C90
_02099C0A:
	ldr r0, _02099C98 ; =0x0000FFFE
	cmp r2, r0
	bne _02099C5C
	add r0, r7, #2
	ldrh r5, [r0]
	add r7, r7, #4
	mov r3, #0
	cmp r5, #0
	bls _02099C56
	add r4, r7, #0
_02099C1E:
	ldrh r2, [r4]
	mov r0, #7
	mov r1, #1
	and r0, r2
	lsl r1, r0
	lsr r0, r2, #3
	add r2, r6, r0
	ldr r0, _02099C9C ; =0x0000189E
	ldrb r0, [r2, r0]
	tst r0, r1
	beq _02099C4E
	lsl r0, r3, #1
	ldrh r1, [r7, r0]
	mov r0, lr
	lsl r2, r0, #1
	mov r0, lr
	add r0, r0, #1
	mov lr, r0
	ldr r0, [sp]
	strh r1, [r0, r2]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	b _02099C56
_02099C4E:
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, r5
	blo _02099C1E
_02099C56:
	lsl r0, r5, #1
	add r7, r7, r0
	b _02099C88
_02099C5C:
	mov r1, #1
	mov r0, #7
	and r0, r2
	add r3, r1, #0
	lsl r3, r0
	lsr r0, r2, #3
	add r1, r6, r0
	ldr r0, _02099C9C ; =0x0000189E
	ldrb r0, [r1, r0]
	tst r0, r3
	beq _02099C86
	mov r1, lr
	add r1, r1, #1
	mov r0, lr
	mov lr, r1
	ldr r1, [sp]
	lsl r0, r0, #1
	strh r2, [r1, r0]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
_02099C86:
	add r7, r7, #2
_02099C88:
	ldrh r2, [r7]
	ldr r0, _02099C94 ; =0x0000FFFF
	cmp r2, r0
	bne _02099C0A
_02099C90:
	mov r0, ip
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02099C94: .word 0x0000FFFF
_02099C98: .word 0x0000FFFE
_02099C9C: .word 0x0000189E
	thumb_func_end sub_02099BF4

	thumb_func_start sub_02099CA0
sub_02099CA0: ; 0x02099CA0
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02099CA0

	thumb_func_start sub_02099CA8
sub_02099CA8: ; 0x02099CA8
	push {r4, lr}
	add r4, r0, #0
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #0x38]
	ldr r0, [r4, #4]
	add r1, r1, r2
	lsl r1, r1, #1
	add r1, r4, r1
	add r1, #0x68
	ldrh r1, [r1]
	add r2, r3, #0
	bl sub_02014D90
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02099CA8

	thumb_func_start sub_02099CC8
sub_02099CC8: ; 0x02099CC8
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r1, [r1, #0x38]
	add r1, r1, r2
	lsl r1, r1, #1
	add r0, r0, r1
	add r0, #0x68
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02099CC8

	thumb_func_start sub_02099CDC
sub_02099CDC: ; 0x02099CDC
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _02099CE8 ; =0x00000C18
	ldr r0, [r1, r0]
	bx lr
	nop
_02099CE8: .word 0x00000C18
	thumb_func_end sub_02099CDC

	thumb_func_start sub_02099CEC
sub_02099CEC: ; 0x02099CEC
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	lsl r3, r1, #2
	add r6, r5, r3
	ldr r3, _02099D10 ; =0x00000C18
	ldr r3, [r6, r3]
	cmp r3, #0
	beq _02099D0C
	bl sub_02099D14
	add r1, r0, #0
	ldr r0, [r5, #4]
	add r2, r4, #0
	bl sub_02014D90
_02099D0C:
	pop {r4, r5, r6, pc}
	nop
_02099D10: .word 0x00000C18
	thumb_func_end sub_02099CEC

	thumb_func_start sub_02099D14
sub_02099D14: ; 0x02099D14
	push {r3, r4}
	lsl r1, r1, #2
	ldr r3, _02099D3C ; =0x00000C18
	add r4, r0, r1
	ldr r1, [r4, r3]
	cmp r1, #0
	beq _02099D36
	add r1, r3, #0
	add r1, #0x6c
	ldr r1, [r4, r1]
	add r3, #0xd8
	add r1, r2, r1
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, r3]
	pop {r3, r4}
	bx lr
_02099D36:
	ldr r0, _02099D40 ; =0x0000FFFF
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02099D3C: .word 0x00000C18
_02099D40: .word 0x0000FFFF
	thumb_func_end sub_02099D14

	thumb_func_start sub_02099D44
sub_02099D44: ; 0x02099D44
	mov r1, #0
	ldr r0, _02099D50 ; =0x02100D9C
	mvn r1, r1
	str r1, [r0, #0]
	bx lr
	nop
_02099D50: .word 0x02100D9C
	thumb_func_end sub_02099D44

	thumb_func_start sub_02099D54
sub_02099D54: ; 0x02099D54
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	lsl r0, r0, #0xc
	cmp r2, r0
	bhs _02099D6E
	add r0, r1, #0
	ldr r1, _02099D74 ; =0x021C0A34
	bl sub_020C4B68
	ldr r0, _02099D78 ; =0x02100D9C
	str r4, [r0, #0]
	pop {r4, pc}
_02099D6E:
	bl sub_02022974
	pop {r4, pc}
	; .align 2, 0
_02099D74: .word 0x021C0A34
_02099D78: .word 0x02100D9C
	thumb_func_end sub_02099D54

	thumb_func_start sub_02099D7C
sub_02099D7C: ; 0x02099D7C
	push {r3, lr}
	mov r3, #3
	lsl r3, r3, #0xc
	cmp r2, r3
	bhs _02099D98
	ldr r3, _02099DA0 ; =0x02100D9C
	ldr r3, [r3, #0]
	cmp r0, r3
	bne _02099D9C
	ldr r0, _02099DA4 ; =0x021C0A34
	bl sub_020C4B68
	mov r0, #1
	pop {r3, pc}
_02099D98:
	bl sub_02022974
_02099D9C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02099DA0: .word 0x02100D9C
_02099DA4: .word 0x021C0A34
	thumb_func_end sub_02099D7C

	thumb_func_start sub_02099DA8
sub_02099DA8: ; 0x02099DA8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	lsl r0, r0, #0xc
	cmp r2, r0
	bhs _02099DC2
	add r0, r1, #0
	ldr r1, _02099DC8 ; =0x021C0A34
	bl sub_020C4C14
	ldr r0, _02099DCC ; =0x02100D9C
	str r4, [r0, #0]
	pop {r4, pc}
_02099DC2:
	bl sub_02022974
	pop {r4, pc}
	; .align 2, 0
_02099DC8: .word 0x021C0A34
_02099DCC: .word 0x02100D9C
	thumb_func_end sub_02099DA8

	thumb_func_start sub_02099DD0
sub_02099DD0: ; 0x02099DD0
	push {r3, lr}
	mov r3, #3
	lsl r3, r3, #0xc
	cmp r2, r3
	bhs _02099DEC
	ldr r3, _02099DF4 ; =0x02100D9C
	ldr r3, [r3, #0]
	cmp r0, r3
	bne _02099DF0
	ldr r0, _02099DF8 ; =0x021C0A34
	bl sub_020C4C14
	mov r0, #1
	pop {r3, pc}
_02099DEC:
	bl sub_02022974
_02099DF0:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02099DF4: .word 0x02100D9C
_02099DF8: .word 0x021C0A34
	thumb_func_end sub_02099DD0

	thumb_func_start sub_02099DFC
sub_02099DFC: ; 0x02099DFC
	push {r3, r4, r5, lr}
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x58
	lsl r2, r2, #0x10
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0x38
	mov r2, #0x58
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x38
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x58
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #0x30]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02099DFC

	thumb_func_start sub_02099E38
sub_02099E38: ; 0x02099E38
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	mov r6, #0
	cmp r1, #3
	bhi _02099F3E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02099E58: ; jump table
	.short _02099E60 - _02099E58 - 2 ; case 0
	.short _02099EEC - _02099E58 - 2 ; case 1
	.short _02099EFA - _02099E58 - 2 ; case 2
	.short _02099F20 - _02099E58 - 2 ; case 3
_02099E60:
	ldr r0, _02099F44 ; =0x00000495
	add r1, r6, #0
	bl sub_020055D0
	add r0, r6, #0
	bl sub_020053CC
	add r0, r6, #0
	bl sub_02004234
	add r0, r6, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	add r1, r6, #0
	bl sub_0200F344
	add r0, r6, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r6, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02099F48 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02099F4C ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	add r0, r4, #0
	bl sub_02099F80
	add r0, r4, #0
	bl sub_0209A098
	ldr r0, _02099F50 ; =sub_02099F74
	add r1, r4, #0
	bl sub_02017798
	bl sub_0201FFD0
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	str r0, [r5, #0]
	b _02099F3E
_02099EEC:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02099F3E
	mov r0, #2
	str r0, [r5, #0]
	b _02099F3E
_02099EFA:
	bl sub_0209A0F4
	cmp r0, #1
	bne _02099F3E
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #3
	str r0, [r5, #0]
	b _02099F3E
_02099F20:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02099F3E
	add r0, r4, #0
	bl sub_0209A0E0
	add r0, r4, #0
	bl sub_0209A044
	add r0, r6, #0
	add r1, r0, #0
	bl sub_02017798
	mov r6, #1
_02099F3E:
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02099F44: .word 0x00000495
_02099F48: .word 0xFFFFE0FF
_02099F4C: .word 0x04001000
_02099F50: .word sub_02099F74
	thumb_func_end sub_02099E38

	thumb_func_start sub_02099F54
sub_02099F54: ; 0x02099F54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	ldr r4, [r0, #0]
	add r0, r5, #0
	bl sub_02006830
	add r0, r4, #0
	bl sub_0201807C
	mov r0, #0
	bl sub_020C3EE4
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02099F54

	thumb_func_start sub_02099F74
sub_02099F74: ; 0x02099F74
	ldr r3, _02099F7C ; =sub_0201C2B8
	ldr r0, [r0, #0x14]
	bx r3
	nop
_02099F7C: .word sub_0201C2B8
	thumb_func_end sub_02099F74

	thumb_func_start sub_02099F80
sub_02099F80: ; 0x02099F80
	push {r4, r5, lr}
	sub sp, #0x5c
	ldr r5, _0209A02C ; =0x020F8A20
	add r4, r0, #0
	add r3, sp, #0x34
	mov r2, #5
_02099F8C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02099F8C
	add r0, sp, #0x34
	bl sub_0201FE94
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0x24
	ldr r5, _0209A030 ; =0x020F89F4
	str r0, [r4, #0x14]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0209A034 ; =0x020F8A04
	add r3, sp, #8
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x14]
	add r3, r1, #0
	bl sub_020183C4
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	ldr r2, _0209A038 ; =0x000001E2
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	mov r3, #2
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	ldr r2, _0209A03C ; =0x000001D9
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	mov r3, #3
	bl sub_0200DAA4
	ldr r2, [r4, #0]
	mov r0, #0
	mov r1, #0x20
	bl sub_02002E7C
	mov r0, #0
	ldr r3, [r4, #0]
	mov r1, #0x20
	add r2, r0, #0
	bl sub_02019690
	ldr r1, _0209A040 ; =0x00006C21
	mov r0, #0
	bl sub_0201975C
	ldr r1, _0209A040 ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	add sp, #0x5c
	pop {r4, r5, pc}
	; .align 2, 0
_0209A02C: .word 0x020F8A20
_0209A030: .word 0x020F89F4
_0209A034: .word 0x020F8A04
_0209A038: .word 0x000001E2
_0209A03C: .word 0x000001D9
_0209A040: .word 0x00006C21
	thumb_func_end sub_02099F80

	thumb_func_start sub_0209A044
sub_0209A044: ; 0x0209A044
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	mov r0, #6
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r4, #0x14]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0209A044

	thumb_func_start sub_0209A098
sub_0209A098: ; 0x0209A098
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r3, [r4, #0]
	mov r0, #1
	mov r1, #0x1a
	mov r2, #4
	bl sub_0200B144
	str r0, [r4, #0x18]
	bl sub_0201D710
	mov r0, #0
	str r0, [r4, #8]
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	ldr r2, _0209A0DC ; =0x020F89E4
	add r1, #0x1c
	bl sub_0201A8D4
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	mov r2, #0
	add r4, #0x1c
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	add sp, #8
	pop {r4, pc}
	nop
_0209A0DC: .word 0x020F89E4
	thumb_func_end sub_0209A098

	thumb_func_start sub_0209A0E0
sub_0209A0E0: ; 0x0209A0E0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x1c
	bl sub_0201A8FC
	ldr r0, [r4, #0x18]
	bl sub_0200B190
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209A0E0

	thumb_func_start sub_0209A0F4
sub_0209A0F4: ; 0x0209A0F4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r5, #0
	cmp r1, #6
	bhi _0209A1EC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0209A10E: ; jump table
	.short _0209A11C - _0209A10E - 2 ; case 0
	.short _0209A146 - _0209A10E - 2 ; case 1
	.short _0209A166 - _0209A10E - 2 ; case 2
	.short _0209A190 - _0209A10E - 2 ; case 3
	.short _0209A1B0 - _0209A10E - 2 ; case 4
	.short _0209A1D0 - _0209A10E - 2 ; case 5
	.short _0209A1E2 - _0209A10E - 2 ; case 6
_0209A11C:
	add r1, r5, #0
	mov r2, #1
	mov r3, #4
	bl sub_0209A200
	cmp r0, #1
	bne _0209A1EC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, _0209A1F4 ; =0x020F89EC
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	ldr r2, _0209A1F8 ; =0x000001D9
	mov r3, #3
	bl sub_02002054
	str r0, [r4, #0x2c]
	mov r0, #1
	str r0, [r4, #4]
	b _0209A1EC
_0209A146:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0]
	bl sub_02002114
	cmp r0, #0
	beq _0209A15A
	sub r1, r5, #2
	cmp r0, r1
	beq _0209A160
	b _0209A1EC
_0209A15A:
	mov r0, #2
	str r0, [r4, #4]
	b _0209A1EC
_0209A160:
	mov r0, #6
	str r0, [r4, #4]
	b _0209A1EC
_0209A166:
	mov r1, #1
	add r2, r1, #0
	mov r3, #4
	bl sub_0209A200
	cmp r0, #1
	bne _0209A1EC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, _0209A1F4 ; =0x020F89EC
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	ldr r2, _0209A1F8 ; =0x000001D9
	mov r3, #3
	bl sub_02002054
	str r0, [r4, #0x2c]
	mov r0, #3
	str r0, [r4, #4]
	b _0209A1EC
_0209A190:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0]
	bl sub_02002114
	cmp r0, #0
	beq _0209A1A4
	sub r1, r5, #2
	cmp r0, r1
	beq _0209A1AA
	b _0209A1EC
_0209A1A4:
	mov r0, #4
	str r0, [r4, #4]
	b _0209A1EC
_0209A1AA:
	mov r0, #6
	str r0, [r4, #4]
	b _0209A1EC
_0209A1B0:
	mov r1, #2
	mov r2, #1
	add r3, r5, #0
	bl sub_0209A200
	cmp r0, #1
	bne _0209A1EC
	add r0, r4, #0
	ldr r1, _0209A1FC ; =0x000001E2
	add r0, #0x1c
	bl sub_0200E7FC
	str r0, [r4, #0x34]
	mov r0, #5
	str r0, [r4, #4]
	b _0209A1EC
_0209A1D0:
	ldr r0, [r4, #0x30]
	bl sub_020245E8
	ldr r0, [r4, #0x34]
	bl sub_0200EBA0
	mov r0, #6
	str r0, [r4, #4]
	b _0209A1EC
_0209A1E2:
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl sub_02019EBC
	mov r5, #1
_0209A1EC:
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0209A1F4: .word 0x020F89EC
_0209A1F8: .word 0x000001D9
_0209A1FC: .word 0x000001E2
	thumb_func_end sub_0209A0F4

	thumb_func_start sub_0209A200
sub_0209A200: ; 0x0209A200
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r7, r1, #0
	add r4, r3, #0
	mov r6, #0
	cmp r0, #0
	beq _0209A21C
	cmp r0, #1
	beq _0209A284
	cmp r0, #2
	beq _0209A2A0
	b _0209A2B4
_0209A21C:
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x1c
	mov r1, #0xf
	add r2, r6, #0
	add r3, r6, #0
	bl sub_0201AE78
	add r0, r5, #0
	ldr r2, _0209A2BC ; =0x000001E2
	add r0, #0x1c
	add r1, r6, #0
	mov r3, #2
	bl sub_0200E060
	mov r0, #1
	ldr r1, [r5, #0]
	lsl r0, r0, #0xa
	bl sub_02023790
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #0x10]
	add r1, r7, #0
	bl sub_0200B1B8
	add r3, r6, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x10]
	add r0, #0x1c
	mov r1, #1
	bl sub_0201D738
	str r0, [r5, #0xc]
	cmp r4, #0
	bne _0209A27C
	ldr r0, [r5, #0x10]
	bl sub_020237BC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0209A27C:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0209A2B4
_0209A284:
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0209A2B4
	ldr r0, [r5, #0x10]
	bl sub_020237BC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0209A2B4
_0209A2A0:
	cmp r2, #0
	bne _0209A2AE
	ldr r0, _0209A2C0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0209A2B4
_0209A2AE:
	mov r0, #0
	str r0, [r5, #8]
	mov r6, #1
_0209A2B4:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0209A2BC: .word 0x000001E2
_0209A2C0: .word 0x021BF67C
	thumb_func_end sub_0209A200

	thumb_func_start sub_0209A2C4
sub_0209A2C4: ; 0x0209A2C4
	push {r3, r4, r5, lr}
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x58
	lsl r2, r2, #0x10
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0x40
	mov r2, #0x58
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x58
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #0x34]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0209A2C4

	thumb_func_start sub_0209A300
sub_0209A300: ; 0x0209A300
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r6, r0, #0
	mov r4, #0
	cmp r1, #0
	beq _0209A31C
	cmp r1, #1
	beq _0209A376
	cmp r1, #2
	beq _0209A384
	b _0209A398
_0209A31C:
	add r0, r4, #0
	add r1, r4, #0
	bl sub_0200F344
	mov r0, #1
	add r1, r4, #0
	bl sub_0200F344
	add r0, r4, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r4, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0209A39C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0209A3A0 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	add r0, r6, #0
	bl sub_0209A3D0
	add r0, r6, #0
	bl sub_0209A4E4
	bl sub_0201FFD0
	mov r0, #1
	str r0, [r5, #0]
	b _0209A398
_0209A376:
	bl sub_0209A544
	cmp r0, #1
	bne _0209A398
	mov r0, #2
	str r0, [r5, #0]
	b _0209A398
_0209A384:
	bl sub_0209A530
	add r0, r6, #0
	bl sub_0209A490
	add r0, r4, #0
	add r1, r0, #0
	bl sub_02017798
	mov r4, #1
_0209A398:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0209A39C: .word 0xFFFFE0FF
_0209A3A0: .word 0x04001000
	thumb_func_end sub_0209A300

	thumb_func_start sub_0209A3A4
sub_0209A3A4: ; 0x0209A3A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	ldr r4, [r0, #0]
	add r0, r5, #0
	bl sub_02006830
	add r0, r4, #0
	bl sub_0201807C
	ldr r0, _0209A3C8 ; =0x00000061
	ldr r1, _0209A3CC ; =0x0223D674
	bl sub_02000EC4
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0209A3C8: .word 0x00000061
_0209A3CC: .word 0x0223D674
	thumb_func_end sub_0209A3A4

	thumb_func_start sub_0209A3D0
sub_0209A3D0: ; 0x0209A3D0
	push {r4, r5, lr}
	sub sp, #0x5c
	ldr r5, _0209A47C ; =0x020F8A8C
	add r4, r0, #0
	add r3, sp, #0x34
	mov r2, #5
_0209A3DC:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0209A3DC
	add r0, sp, #0x34
	bl sub_0201FE94
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0x24
	ldr r5, _0209A480 ; =0x020F8A60
	str r0, [r4, #0x18]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0209A484 ; =0x020F8A70
	add r3, sp, #8
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x18]
	add r3, r1, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	ldr r2, _0209A488 ; =0x000001E2
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	mov r3, #2
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	ldr r2, _0209A48C ; =0x000001D9
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	mov r3, #3
	bl sub_0200DAA4
	ldr r2, [r4, #0]
	mov r0, #0
	mov r1, #0x20
	bl sub_02002E7C
	mov r0, #0
	ldr r3, [r4, #0]
	mov r1, #0x20
	add r2, r0, #0
	bl sub_02019690
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	add sp, #0x5c
	pop {r4, r5, pc}
	; .align 2, 0
_0209A47C: .word 0x020F8A8C
_0209A480: .word 0x020F8A60
_0209A484: .word 0x020F8A70
_0209A488: .word 0x000001E2
_0209A48C: .word 0x000001D9
	thumb_func_end sub_0209A3D0

	thumb_func_start sub_0209A490
sub_0209A490: ; 0x0209A490
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	mov r0, #6
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r4, #0x18]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0209A490

	thumb_func_start sub_0209A4E4
sub_0209A4E4: ; 0x0209A4E4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r2, _0209A528 ; =0x00000196
	ldr r3, [r4, #0]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	str r0, [r4, #0x1c]
	bl sub_0201D710
	mov r0, #0
	str r0, [r4, #0xc]
	add r1, r4, #0
	ldr r0, [r4, #0x18]
	ldr r2, _0209A52C ; =0x020F8A58
	add r1, #0x20
	bl sub_0201A8D4
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	mov r2, #0
	add r4, #0x20
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	add sp, #8
	pop {r4, pc}
	nop
_0209A528: .word 0x00000196
_0209A52C: .word 0x020F8A58
	thumb_func_end sub_0209A4E4

	thumb_func_start sub_0209A530
sub_0209A530: ; 0x0209A530
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x20
	bl sub_0201A8FC
	ldr r0, [r4, #0x1c]
	bl sub_0200B190
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209A530

	thumb_func_start sub_0209A544
sub_0209A544: ; 0x0209A544
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r5, #0
	cmp r1, #6
	bls _0209A554
	b _0209A67E
_0209A554:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0209A560: ; jump table
	.short _0209A56E - _0209A560 - 2 ; case 0
	.short _0209A586 - _0209A560 - 2 ; case 1
	.short _0209A5F8 - _0209A560 - 2 ; case 2
	.short _0209A624 - _0209A560 - 2 ; case 3
	.short _0209A632 - _0209A560 - 2 ; case 4
	.short _0209A65E - _0209A560 - 2 ; case 5
	.short _0209A67C - _0209A560 - 2 ; case 6
_0209A56E:
	ldr r0, [r4, #0x34]
	bl sub_020247BC
	str r0, [r4, #0x3c]
	cmp r0, #0
	bne _0209A580
	mov r0, #6
	str r0, [r4, #4]
	b _0209A67E
_0209A580:
	mov r0, #1
	str r0, [r4, #4]
	b _0209A67E
_0209A586:
	mov r1, #2
	str r1, [r4, #4]
	ldr r0, [r4, #0x3c]
	add r2, r0, #0
	tst r2, r1
	beq _0209A59E
	mov r1, #3
	bic r0, r1
	str r0, [r4, #0x3c]
	mov r0, #1
	str r0, [r4, #8]
	b _0209A67E
_0209A59E:
	mov r2, #1
	add r3, r0, #0
	tst r3, r2
	beq _0209A5AE
	eor r0, r2
	str r0, [r4, #0x3c]
	str r5, [r4, #8]
	b _0209A67E
_0209A5AE:
	mov r2, #8
	tst r2, r0
	beq _0209A5C0
	mov r1, #0xc
	bic r0, r1
	str r0, [r4, #0x3c]
	mov r0, #5
	str r0, [r4, #8]
	b _0209A67E
_0209A5C0:
	mov r2, #4
	add r3, r0, #0
	tst r3, r2
	beq _0209A5D0
	eor r0, r2
	str r0, [r4, #0x3c]
	str r2, [r4, #8]
	b _0209A67E
_0209A5D0:
	mov r2, #0x20
	tst r2, r0
	beq _0209A5E2
	mov r1, #0x30
	bic r0, r1
	str r0, [r4, #0x3c]
	mov r0, #3
	str r0, [r4, #8]
	b _0209A67E
_0209A5E2:
	mov r2, #0x10
	add r3, r0, #0
	tst r3, r2
	beq _0209A5F2
	eor r0, r2
	str r0, [r4, #0x3c]
	str r1, [r4, #8]
	b _0209A67E
_0209A5F2:
	mov r0, #6
	str r0, [r4, #4]
	b _0209A67E
_0209A5F8:
	ldr r1, _0209A684 ; =0x00006C21
	add r0, r5, #0
	bl sub_0201975C
	ldr r1, _0209A684 ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #3
	str r0, [r4, #4]
	b _0209A67E
_0209A624:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0209A67E
	mov r0, #4
	str r0, [r4, #4]
	b _0209A67E
_0209A632:
	ldr r1, [r4, #8]
	add r2, r5, #0
	mov r3, #4
	bl sub_0209A688
	cmp r0, #1
	bne _0209A67E
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #5
	str r0, [r4, #4]
	b _0209A67E
_0209A65E:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0209A67E
	add r0, r5, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	add r1, r5, #0
	bl sub_0201975C
	mov r0, #1
	str r0, [r4, #4]
	b _0209A67E
_0209A67C:
	mov r5, #1
_0209A67E:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0209A684: .word 0x00006C21
	thumb_func_end sub_0209A544

	thumb_func_start sub_0209A688
sub_0209A688: ; 0x0209A688
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	add r4, r3, #0
	mov r6, #0
	cmp r0, #0
	beq _0209A6A4
	cmp r0, #1
	beq _0209A70C
	cmp r0, #2
	beq _0209A728
	b _0209A73C
_0209A6A4:
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0xf
	add r2, r6, #0
	add r3, r6, #0
	bl sub_0201AE78
	add r0, r5, #0
	ldr r2, _0209A744 ; =0x000001E2
	add r0, #0x20
	add r1, r6, #0
	mov r3, #2
	bl sub_0200E060
	mov r0, #1
	ldr r1, [r5, #0]
	lsl r0, r0, #0xa
	bl sub_02023790
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x14]
	add r1, r7, #0
	bl sub_0200B1B8
	add r3, r6, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x14]
	add r0, #0x20
	mov r1, #1
	bl sub_0201D738
	str r0, [r5, #0x10]
	cmp r4, #0
	bne _0209A704
	ldr r0, [r5, #0x14]
	bl sub_020237BC
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
_0209A704:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _0209A73C
_0209A70C:
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0209A73C
	ldr r0, [r5, #0x14]
	bl sub_020237BC
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _0209A73C
_0209A728:
	cmp r2, #0
	bne _0209A736
	ldr r0, _0209A748 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0209A73C
_0209A736:
	mov r0, #0
	str r0, [r5, #0xc]
	mov r6, #1
_0209A73C:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0209A744: .word 0x000001E2
_0209A748: .word 0x021BF67C
	thumb_func_end sub_0209A688

	thumb_func_start sub_0209A74C
sub_0209A74C: ; 0x0209A74C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0209A8B0 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0209A8B4 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, _0209A8B8 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r3, _0209A8BC ; =0x04000050
	mov r0, #0
	strh r0, [r3]
	ldr r2, _0209A8C0 ; =0x04001050
	sub r3, #0x50
	strh r0, [r2]
	ldr r1, [r3, #0]
	ldr r0, _0209A8C4 ; =0xFFFF1FFF
	sub r2, #0x50
	and r1, r0
	str r1, [r3, #0]
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, _0209A8C8 ; =0x020F8AF8
	bl sub_0201FE94
	add r0, r4, #0
	bl sub_02018340
	add r5, r0, #0
	ldr r0, _0209A8CC ; =0x020F8ACC
	bl sub_02018368
	mov r1, #0
	ldr r2, _0209A8D0 ; =0x020F8ADC
	add r0, r5, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r2, _0209A8D4 ; =0x000001F7
	add r0, r5, #0
	mov r3, #2
	str r4, [sp, #4]
	bl sub_0200DAA4
	mov r0, #0
	mov r1, #0x20
	add r2, r4, #0
	bl sub_02002E7C
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r1, _0209A8D8 ; =0x00006C21
	mov r0, #0
	bl sub_0201975C
	ldr r1, _0209A8D8 ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	mov r0, #1
	mov r1, #0x1a
	mov r2, #5
	add r3, r4, #0
	bl sub_0200B144
	add r6, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	add r1, r4, #0
	bl sub_02023790
	add r4, r0, #0
	bl sub_0201D710
	ldr r2, _0209A8DC ; =0x020F8AC4
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_0201A8D4
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0x90
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0xc
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	ldr r2, _0209A8D4 ; =0x000001F7
	add r0, sp, #0xc
	mov r1, #0
	mov r3, #2
	bl sub_0200DC48
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, sp, #0xc
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	bl sub_0201FFD0
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	mov r0, #0
	mov r1, #0x3f
	mov r2, #3
	bl sub_0200AB4C
	mov r4, #1
_0209A8A0:
	bl sub_0200106C
	add r0, r4, #0
	add r1, r4, #0
	bl sub_020C12B4
	b _0209A8A0
	nop
_0209A8B0: .word 0xFFFFE0FF
_0209A8B4: .word 0x04001000
_0209A8B8: .word 0x021BF6DC
_0209A8BC: .word 0x04000050
_0209A8C0: .word 0x04001050
_0209A8C4: .word 0xFFFF1FFF
_0209A8C8: .word 0x020F8AF8
_0209A8CC: .word 0x020F8ACC
_0209A8D0: .word 0x020F8ADC
_0209A8D4: .word 0x000001F7
_0209A8D8: .word 0x00006C21
_0209A8DC: .word 0x020F8AC4
	thumb_func_end sub_0209A74C

	thumb_func_start sub_0209A8E0
sub_0209A8E0: ; 0x0209A8E0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0209AA44 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0209AA48 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, _0209AA4C ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r3, _0209AA50 ; =0x04000050
	mov r0, #0
	strh r0, [r3]
	ldr r2, _0209AA54 ; =0x04001050
	sub r3, #0x50
	strh r0, [r2]
	ldr r1, [r3, #0]
	ldr r0, _0209AA58 ; =0xFFFF1FFF
	sub r2, #0x50
	and r1, r0
	str r1, [r3, #0]
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, _0209AA5C ; =0x020F8AF8
	bl sub_0201FE94
	add r0, r4, #0
	bl sub_02018340
	add r5, r0, #0
	ldr r0, _0209AA60 ; =0x020F8ACC
	bl sub_02018368
	mov r1, #0
	ldr r2, _0209AA64 ; =0x020F8ADC
	add r0, r5, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r2, _0209AA68 ; =0x000001F7
	add r0, r5, #0
	mov r3, #2
	str r4, [sp, #4]
	bl sub_0200DAA4
	mov r0, #0
	mov r1, #0x20
	add r2, r4, #0
	bl sub_02002E7C
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r1, _0209AA6C ; =0x00006C21
	mov r0, #0
	bl sub_0201975C
	ldr r1, _0209AA6C ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	mov r0, #1
	mov r1, #0x1a
	mov r2, #5
	add r3, r4, #0
	bl sub_0200B144
	add r6, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	add r1, r4, #0
	bl sub_02023790
	add r4, r0, #0
	bl sub_0201D710
	ldr r2, _0209AA70 ; =0x020F8AC4
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_0201A8D4
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0x90
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0xc
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	ldr r2, _0209AA68 ; =0x000001F7
	add r0, sp, #0xc
	mov r1, #0
	mov r3, #2
	bl sub_0200DC48
	add r0, r6, #0
	mov r1, #1
	add r2, r4, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, sp, #0xc
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	bl sub_0201FFD0
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	mov r0, #0
	mov r1, #0x3f
	mov r2, #3
	bl sub_0200AB4C
	mov r4, #1
_0209AA34:
	bl sub_0200106C
	add r0, r4, #0
	add r1, r4, #0
	bl sub_020C12B4
	b _0209AA34
	nop
_0209AA44: .word 0xFFFFE0FF
_0209AA48: .word 0x04001000
_0209AA4C: .word 0x021BF6DC
_0209AA50: .word 0x04000050
_0209AA54: .word 0x04001050
_0209AA58: .word 0xFFFF1FFF
_0209AA5C: .word 0x020F8AF8
_0209AA60: .word 0x020F8ACC
_0209AA64: .word 0x020F8ADC
_0209AA68: .word 0x000001F7
_0209AA6C: .word 0x00006C21
_0209AA70: .word 0x020F8AC4
	thumb_func_end sub_0209A8E0

	thumb_func_start sub_0209AA74
sub_0209AA74: ; 0x0209AA74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	cmp r1, #0
	bne _0209AA82
	mov r6, #1
	b _0209AA84
_0209AA82:
	mov r6, #0
_0209AA84:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	bl sub_0201777C
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0209ABE4 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0209ABE8 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, _0209ABEC ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r3, _0209ABF0 ; =0x04000050
	mov r1, #0
	strh r1, [r3]
	ldr r0, _0209ABF4 ; =0x04001050
	sub r3, #0x50
	strh r1, [r0]
	ldr r2, [r3, #0]
	ldr r1, _0209ABF8 ; =0xFFFF1FFF
	sub r0, #0x50
	and r2, r1
	str r2, [r3, #0]
	ldr r2, [r0, #0]
	and r1, r2
	str r1, [r0, #0]
	ldr r0, _0209ABFC ; =0x020F8B54
	bl sub_0201FE94
	add r0, r4, #0
	bl sub_02018340
	add r5, r0, #0
	ldr r0, _0209AC00 ; =0x020F8B28
	bl sub_02018368
	mov r1, #0
	ldr r2, _0209AC04 ; =0x020F8B38
	add r0, r5, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r2, _0209AC08 ; =0x000001F7
	add r0, r5, #0
	mov r3, #2
	str r4, [sp, #4]
	bl sub_0200DAA4
	mov r0, #0
	mov r1, #0x20
	add r2, r4, #0
	bl sub_02002E7C
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r1, _0209AC0C ; =0x00006C21
	mov r0, #0
	bl sub_0201975C
	ldr r1, _0209AC0C ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	mov r0, #1
	mov r1, #0x1a
	mov r2, #6
	add r3, r4, #0
	bl sub_0200B144
	add r7, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	add r1, r4, #0
	bl sub_02023790
	add r4, r0, #0
	bl sub_0201D710
	ldr r2, _0209AC10 ; =0x020F8B20
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_0201A8D4
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0x90
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0xc
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	ldr r2, _0209AC08 ; =0x000001F7
	add r0, sp, #0xc
	mov r1, #0
	mov r3, #2
	bl sub_0200DC48
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, sp, #0xc
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	bl sub_0201FFD0
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	mov r0, #0
	mov r1, #0x3f
	mov r2, #3
	bl sub_0200AB4C
	mov r4, #1
_0209ABD6:
	bl sub_0200106C
	add r0, r4, #0
	add r1, r4, #0
	bl sub_020C12B4
	b _0209ABD6
	; .align 2, 0
_0209ABE4: .word 0xFFFFE0FF
_0209ABE8: .word 0x04001000
_0209ABEC: .word 0x021BF6DC
_0209ABF0: .word 0x04000050
_0209ABF4: .word 0x04001050
_0209ABF8: .word 0xFFFF1FFF
_0209ABFC: .word 0x020F8B54
_0209AC00: .word 0x020F8B28
_0209AC04: .word 0x020F8B38
_0209AC08: .word 0x000001F7
_0209AC0C: .word 0x00006C21
_0209AC10: .word 0x020F8B20
	thumb_func_end sub_0209AA74

	thumb_func_start sub_0209AC14
sub_0209AC14: ; 0x0209AC14
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, _0209AC4C ; =0x00000233
	ldrb r0, [r4, r0]
	cmp r0, #0x10
	beq _0209AC34
	cmp r0, #0x11
	beq _0209AC42
	b _0209AC48
_0209AC34:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0209AC50
	ldr r1, _0209AC4C ; =0x00000233
	strb r0, [r4, r1]
	b _0209AC48
_0209AC42:
	add r0, r5, #0
	bl sub_0209AC80
_0209AC48:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0209AC4C: .word 0x00000233
	thumb_func_end sub_0209AC14

	thumb_func_start sub_0209AC50
sub_0209AC50: ; 0x0209AC50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020509B4
	cmp r0, #0
	beq _0209AC62
	mov r0, #0x10
	pop {r3, r4, r5, pc}
_0209AC62:
	ldr r0, [r4, #4]
	bl sub_0207CBAC
	mov r1, #0x91
	lsl r1, r1, #2
	strb r0, [r4, r1]
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020509D4
	mov r0, #0x11
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0209AC50

	thumb_func_start sub_0209AC80
sub_0209AC80: ; 0x0209AC80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020509DC
	cmp r0, #0
	beq _0209ACB2
	mov r0, #1
	bl ov5_021D1744
	ldr r1, _0209ACB4 ; =0x0224CEAD
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050924
	ldr r0, _0209ACB8 ; =0x00000233
	mov r1, #0x12
	strb r1, [r4, r0]
_0209ACB2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0209ACB4: .word 0x0224CEAD
_0209ACB8: .word 0x00000233
	thumb_func_end sub_0209AC80

	thumb_func_start sub_0209ACBC
sub_0209ACBC: ; 0x0209ACBC
	push {r3, lr}
	mov r1, #8
	bl sub_02018144
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	mov r1, #2
	str r1, [r0, #4]
	pop {r3, pc}
	thumb_func_end sub_0209ACBC

	thumb_func_start sub_0209ACDC
sub_0209ACDC: ; 0x0209ACDC
	ldr r3, _0209ACE0 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0209ACE0: .word sub_020181C4
	thumb_func_end sub_0209ACDC

	thumb_func_start sub_0209ACE4
sub_0209ACE4: ; 0x0209ACE4
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0209ACE4

	thumb_func_start sub_0209ACE8
sub_0209ACE8: ; 0x0209ACE8
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_0209ACE8

	thumb_func_start sub_0209ACEC
sub_0209ACEC: ; 0x0209ACEC
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0209ACEC

	thumb_func_start sub_0209ACF0
sub_0209ACF0: ; 0x0209ACF0
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0209ACF0

	thumb_func_start sub_0209ACF4
sub_0209ACF4: ; 0x0209ACF4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	mov r0, #0x20
	mov r1, #0x6c
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0x19
	str r5, [r4, #0]
	lsl r0, r0, #4
	mov r1, #0x20
	bl sub_02023790
	str r0, [r4, #4]
	mov r0, #0x19
	lsl r0, r0, #4
	mov r1, #0x20
	bl sub_02023790
	str r0, [r4, #8]
	mov r0, #0x20
	bl sub_0200B358
	mov r2, #0x69
	str r0, [r4, #0xc]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x20
	bl sub_0200B144
	str r0, [r4, #0x10]
	mov r0, #0x20
	bl sub_020149F0
	str r0, [r4, #0x14]
	ldr r2, [r4, #0]
	mov r0, #2
	ldr r2, [r2, #0xc]
	mov r1, #0
	mov r3, #0x20
	bl sub_0209747C
	str r0, [r4, #0x50]
	bl sub_02097520
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A7A0
	add r0, r4, #0
	add r0, #0x28
	bl sub_0201A7A0
	add r0, r4, #0
	add r0, #0x38
	bl sub_0201A7A0
	mov r0, #0
	str r0, [r4, #0x54]
	ldr r1, _0209AD80 ; =sub_0209AE14
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_0209AD80: .word sub_0209AE14
	thumb_func_end sub_0209ACF4

	thumb_func_start sub_0209AD84
sub_0209AD84: ; 0x0209AD84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	bl sub_020974EC
	ldr r0, [r4, #0x14]
	bl sub_02014A20
	ldr r0, [r4, #4]
	bl sub_020237BC
	ldr r0, [r4, #8]
	bl sub_020237BC
	ldr r0, [r4, #0xc]
	bl sub_0200B3F0
	ldr r0, [r4, #0x10]
	bl sub_0200B190
	add r0, r4, #0
	bl sub_0209ADBC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209AD84

	thumb_func_start sub_0209ADBC
sub_0209ADBC: ; 0x0209ADBC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x18
	bl sub_0201A7CC
	cmp r0, #0
	beq _0209ADDA
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A7A0
_0209ADDA:
	add r0, r4, #0
	add r0, #0x28
	bl sub_0201A7CC
	cmp r0, #0
	beq _0209ADF6
	add r0, r4, #0
	add r0, #0x28
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x28
	bl sub_0201A7A0
_0209ADF6:
	add r0, r4, #0
	add r0, #0x38
	bl sub_0201A7CC
	cmp r0, #0
	beq _0209AE12
	add r0, r4, #0
	add r0, #0x38
	bl sub_0201A8FC
	add r4, #0x38
	add r0, r4, #0
	bl sub_0201A7A0
_0209AE12:
	pop {r4, pc}
	thumb_func_end sub_0209ADBC

	thumb_func_start sub_0209AE14
sub_0209AE14: ; 0x0209AE14
	push {r3, r4, r5, lr}
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0x54]
	cmp r1, #0xd
	bhi _0209AE60
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0209AE2E: ; jump table
	.short _0209AE4A - _0209AE2E - 2 ; case 0
	.short _0209AE58 - _0209AE2E - 2 ; case 1
	.short _0209AE6E - _0209AE2E - 2 ; case 2
	.short _0209AF0C - _0209AE2E - 2 ; case 3
	.short _0209AF1C - _0209AE2E - 2 ; case 4
	.short _0209AF30 - _0209AE2E - 2 ; case 5
	.short _0209AF5C - _0209AE2E - 2 ; case 6
	.short _0209AF74 - _0209AE2E - 2 ; case 7
	.short _0209AF8A - _0209AE2E - 2 ; case 8
	.short _0209AFCA - _0209AE2E - 2 ; case 9
	.short _0209AFDE - _0209AE2E - 2 ; case 10
	.short _0209B044 - _0209AE2E - 2 ; case 11
	.short _0209B052 - _0209AE2E - 2 ; case 12
	.short _0209B070 - _0209AE2E - 2 ; case 13
_0209AE4A:
	mov r1, #0
	add r2, r1, #0
	bl sub_0209B084
	mov r0, #1
	str r0, [r4, #0x54]
	b _0209B078
_0209AE58:
	bl sub_0209B100
	cmp r0, #0
	bne _0209AE62
_0209AE60:
	b _0209B078
_0209AE62:
	add r0, r4, #0
	bl sub_0209B12C
	mov r0, #2
	str r0, [r4, #0x54]
	b _0209B078
_0209AE6E:
	bl sub_0209B288
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #0x64]
	cmp r0, r1
	beq _0209AF66
	add r0, r4, #0
	bl sub_0209B1CC
	ldr r0, [r4, #0x64]
	cmp r0, #4
	bhi _0209AF66
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0209AE94: ; jump table
	.short _0209AE9E - _0209AE94 - 2 ; case 0
	.short _0209AEB8 - _0209AE94 - 2 ; case 1
	.short _0209AED2 - _0209AE94 - 2 ; case 2
	.short _0209AEEC - _0209AE94 - 2 ; case 3
	.short _0209AF06 - _0209AE94 - 2 ; case 4
_0209AE9E:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl sub_0202D498
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x48
	bl sub_02014CC0
	mov r0, #3
	str r0, [r4, #0x54]
	b _0209B078
_0209AEB8:
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0xc]
	bl sub_0202D498
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x48
	bl sub_02014CC0
	mov r0, #3
	str r0, [r4, #0x54]
	b _0209B078
_0209AED2:
	ldr r0, [r4, #0]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_0202D498
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x48
	bl sub_02014CC0
	mov r0, #3
	str r0, [r4, #0x54]
	b _0209B078
_0209AEEC:
	ldr r0, [r4, #0]
	mov r1, #3
	ldr r0, [r0, #0xc]
	bl sub_0202D498
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x48
	bl sub_02014CC0
	mov r0, #3
	str r0, [r4, #0x54]
	b _0209B078
_0209AF06:
	mov r0, #0xb
	str r0, [r4, #0x54]
	b _0209B078
_0209AF0C:
	ldr r1, [r4, #0x64]
	mov r2, #0
	add r1, r1, #1
	bl sub_0209B084
	mov r0, #4
	str r0, [r4, #0x54]
	b _0209B078
_0209AF1C:
	bl sub_0209B100
	cmp r0, #0
	beq _0209AF66
	mov r0, #0
	bl ov5_021D1744
	mov r0, #5
	str r0, [r4, #0x54]
	b _0209B078
_0209AF30:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0209AF66
	add r1, r4, #0
	ldr r0, [r4, #0x50]
	add r1, #0x48
	bl sub_02097500
	ldr r0, [r4, #0x50]
	bl sub_02097514
	add r0, r4, #0
	bl sub_0209ADBC
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x50]
	bl sub_0203D874
	mov r0, #6
	str r0, [r4, #0x54]
	b _0209B078
_0209AF5C:
	ldr r0, [r4, #0]
	bl sub_020509B4
	cmp r0, #0
	beq _0209AF68
_0209AF66:
	b _0209B078
_0209AF68:
	ldr r0, [r4, #0]
	bl sub_020509D4
	mov r0, #7
	str r0, [r4, #0x54]
	b _0209B078
_0209AF74:
	ldr r0, [r4, #0]
	bl sub_020509DC
	cmp r0, #0
	beq _0209B078
	mov r0, #1
	bl ov5_021D1744
	mov r0, #8
	str r0, [r4, #0x54]
	b _0209B078
_0209AF8A:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0209B078
	ldr r0, [r4, #0x50]
	bl sub_02097528
	cmp r0, #0
	beq _0209AFA2
	mov r0, #0xb
	str r0, [r4, #0x54]
	b _0209B078
_0209AFA2:
	add r1, r4, #0
	ldr r0, [r4, #0x50]
	add r1, #0x48
	bl sub_02097540
	ldr r0, [r4, #0]
	add r2, r4, #0
	ldr r0, [r0, #0xc]
	ldr r1, [r4, #0x64]
	add r2, #0x48
	bl sub_0202D478
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_0209B084
	mov r0, #9
	str r0, [r4, #0x54]
	b _0209B078
_0209AFCA:
	bl sub_0209B100
	cmp r0, #0
	beq _0209B078
	add r0, r4, #0
	bl sub_0209B1D8
	mov r0, #0xa
	str r0, [r4, #0x54]
	b _0209B078
_0209AFDE:
	bl sub_0209B288
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #0x64]
	cmp r0, r1
	beq _0209B078
	cmp r0, #0
	beq _0209AFF4
	cmp r0, #1
	b _0209B006
_0209AFF4:
	add r0, r4, #0
	bl sub_0209B27C
	add r0, r4, #0
	bl sub_0209B12C
	mov r0, #2
	str r0, [r4, #0x54]
	b _0209B078
_0209B006:
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl sub_02014C78
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0209B27C
	ldr r0, _0209B07C ; =0x0000FFFF
	cmp r5, r0
	beq _0209B034
	ldr r0, [r4, #0xc]
	mov r1, #0
	add r2, r5, #0
	bl sub_0200BE48
	add r0, r4, #0
	mov r1, #8
	mov r2, #1
	bl sub_0209B084
	b _0209B03E
_0209B034:
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_0209B084
_0209B03E:
	mov r0, #0xc
	str r0, [r4, #0x54]
	b _0209B078
_0209B044:
	mov r1, #5
	mov r2, #0
	bl sub_0209B084
	mov r0, #0xc
	str r0, [r4, #0x54]
	b _0209B078
_0209B052:
	bl sub_0209B100
	cmp r0, #0
	beq _0209B078
	ldr r0, _0209B080 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xf3
	tst r0, r1
	beq _0209B078
	add r0, r4, #0
	bl sub_0209B110
	mov r0, #0xd
	str r0, [r4, #0x54]
	b _0209B078
_0209B070:
	bl sub_0209AD84
	mov r0, #1
	pop {r3, r4, r5, pc}
_0209B078:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0209B07C: .word 0x0000FFFF
_0209B080: .word 0x021BF67C
	thumb_func_end sub_0209AE14

	thumb_func_start sub_0209B084
sub_0209B084: ; 0x0209B084
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x18
	cmp r2, #0
	ldr r0, [r5, #0x10]
	beq _0209B0A4
	ldr r2, [r5, #4]
	bl sub_0200B1B8
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #8]
	ldr r2, [r5, #4]
	bl sub_0200C388
	b _0209B0AA
_0209B0A4:
	ldr r2, [r5, #8]
	bl sub_0200B1B8
_0209B0AA:
	add r0, r4, #0
	bl sub_0201A7CC
	cmp r0, #0
	bne _0209B0D2
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205D944
	b _0209B0E4
_0209B0D2:
	add r0, r4, #0
	bl sub_0205D988
	ldr r2, _0209B0FC ; =0x000003E2
	add r0, r4, #0
	mov r1, #0
	mov r3, #0xa
	bl sub_0200E060
_0209B0E4:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	ldr r1, [r5, #8]
	add r0, r4, #0
	mov r3, #1
	bl sub_0205D994
	str r0, [r5, #0x58]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0209B0FC: .word 0x000003E2
	thumb_func_end sub_0209B084

	thumb_func_start sub_0209B100
sub_0209B100: ; 0x0209B100
	ldr r0, [r0, #0x58]
	ldr r3, _0209B10C ; =sub_0205DA04
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx r3
	nop
_0209B10C: .word sub_0205DA04
	thumb_func_end sub_0209B100

	thumb_func_start sub_0209B110
sub_0209B110: ; 0x0209B110
	push {r4, lr}
	add r4, r0, #0
	add r4, #0x18
	add r0, r4, #0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0209B128
	add r0, r4, #0
	mov r1, #0
	bl sub_0200E084
_0209B128:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209B110

	thumb_func_start sub_0209B12C
sub_0209B12C: ; 0x0209B12C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r5, #0
	add r7, #0x28
	add r0, r7, #0
	bl sub_0201A7CC
	cmp r0, #0
	bne _0209B1B4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #3
	ldr r0, [r0, #8]
	mov r2, #0x9b
	mov r3, #0xb
	bl sub_0200DAA4
	mov r3, #1
	str r3, [sp]
	mov r1, #0xd
	str r1, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0201A7E8
	add r0, r7, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r6, #0
	add r4, r6, #0
_0209B17E:
	add r1, r6, #0
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #8]
	add r1, #9
	bl sub_0200B1B8
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r5, #8]
	add r0, r7, #0
	mov r1, #0
	mov r3, #0xc
	bl sub_0201D738
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #5
	blt _0209B17E
	mov r2, #0
	ldr r0, [r5, #0x14]
	add r1, r7, #0
	add r3, r2, #0
	bl sub_02014A58
_0209B1B4:
	str r7, [r5, #0x68]
	mov r1, #0
	str r1, [r5, #0x5c]
	mov r0, #5
	str r0, [r5, #0x60]
	add r0, r7, #0
	mov r2, #0x9b
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0209B12C

	thumb_func_start sub_0209B1CC
sub_0209B1CC: ; 0x0209B1CC
	ldr r3, _0209B1D4 ; =sub_0200DC9C
	add r0, #0x28
	mov r1, #1
	bx r3
	; .align 2, 0
_0209B1D4: .word sub_0200DC9C
	thumb_func_end sub_0209B1CC

	thumb_func_start sub_0209B1D8
sub_0209B1D8: ; 0x0209B1D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r5, #0
	add r7, #0x38
	add r0, r7, #0
	bl sub_0201A7CC
	cmp r0, #0
	bne _0209B264
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #3
	ldr r0, [r0, #8]
	mov r2, #0x9b
	mov r3, #0xb
	bl sub_0200DAA4
	mov r1, #0xd
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x83
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, #8]
	mov r2, #3
	mov r3, #0x19
	bl sub_0201A7E8
	add r0, r7, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r6, #0
	add r4, r6, #0
_0209B22E:
	add r1, r6, #0
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #8]
	add r1, #0xe
	bl sub_0200B1B8
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r5, #8]
	add r0, r7, #0
	mov r1, #0
	mov r3, #0xc
	bl sub_0201D738
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #2
	blt _0209B22E
	mov r2, #0
	ldr r0, [r5, #0x14]
	add r1, r7, #0
	add r3, r2, #0
	bl sub_02014A58
_0209B264:
	str r7, [r5, #0x68]
	mov r1, #0
	str r1, [r5, #0x5c]
	mov r0, #2
	str r0, [r5, #0x60]
	add r0, r7, #0
	mov r2, #0x9b
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0209B1D8

	thumb_func_start sub_0209B27C
sub_0209B27C: ; 0x0209B27C
	ldr r3, _0209B284 ; =sub_0200DC9C
	add r0, #0x38
	mov r1, #1
	bx r3
	; .align 2, 0
_0209B284: .word sub_0200DC9C
	thumb_func_end sub_0209B27C

	thumb_func_start sub_0209B288
sub_0209B288: ; 0x0209B288
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0209B33C ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0209B2B2
	ldr r0, [r4, #0x5c]
	sub r0, r0, #1
	str r0, [r4, #0x5c]
	bpl _0209B300
	ldr r0, [r4, #0x60]
	cmp r0, #2
	ble _0209B2AC
	sub r0, r0, #1
	str r0, [r4, #0x5c]
	b _0209B300
_0209B2AC:
	mov r0, #0
	str r0, [r4, #0x5c]
	b _0209B300
_0209B2B2:
	mov r1, #0x80
	tst r1, r0
	beq _0209B2D4
	ldr r0, [r4, #0x5c]
	add r1, r0, #1
	str r1, [r4, #0x5c]
	ldr r0, [r4, #0x60]
	cmp r1, r0
	blt _0209B300
	cmp r0, #2
	ble _0209B2CE
	mov r0, #0
	str r0, [r4, #0x5c]
	b _0209B300
_0209B2CE:
	sub r0, r0, #1
	str r0, [r4, #0x5c]
	b _0209B300
_0209B2D4:
	mov r1, #1
	tst r1, r0
	beq _0209B2E6
	ldr r0, _0209B340 ; =0x000005DC
	bl sub_02005748
	add sp, #8
	ldr r0, [r4, #0x5c]
	pop {r4, pc}
_0209B2E6:
	mov r1, #2
	tst r0, r1
	beq _0209B2FA
	ldr r0, _0209B340 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0x60]
	add sp, #8
	sub r0, r0, #1
	pop {r4, pc}
_0209B2FA:
	add sp, #8
	sub r0, r1, #3
	pop {r4, pc}
_0209B300:
	ldr r0, [r4, #0x68]
	mov r1, #0xc
	str r1, [sp]
	ldrb r1, [r0, #8]
	mov r2, #0
	add r3, r2, #0
	lsl r1, r1, #0x13
	lsr r1, r1, #0x10
	str r1, [sp, #4]
	mov r1, #0xf
	bl sub_0201AE78
	ldr r3, [r4, #0x5c]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x68]
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02014A58
	ldr r0, [r4, #0x68]
	bl sub_0201ACCC
	ldr r0, _0209B340 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r4, pc}
	nop
_0209B33C: .word 0x021BF67C
_0209B340: .word 0x000005DC
	thumb_func_end sub_0209B288

	thumb_func_start sub_0209B344
sub_0209B344: ; 0x0209B344
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	bl sub_02050A60
	add r5, r0, #0
	mov r0, #0x20
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	mov r0, #0x20
	bl sub_0200B358
	str r0, [r4, #4]
	ldr r2, [r4, #0]
	mov r0, #2
	ldr r2, [r2, #0xc]
	mov r1, #0
	mov r3, #0x20
	bl sub_0209747C
	str r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_0202783C
	str r0, [r4, #0x14]
	add r0, r4, #0
	str r6, [r4, #0x20]
	add r0, #8
	mov r1, #4
	bl sub_02014A9C
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #8
	bl sub_02027938
	ldr r0, [r4, #0x10]
	bl sub_02097520
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r1, _0209B3A8 ; =sub_0209B3C4
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0209B3A8: .word sub_0209B3C4
	thumb_func_end sub_0209B344

	thumb_func_start sub_0209B3AC
sub_0209B3AC: ; 0x0209B3AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020974EC
	ldr r0, [r4, #4]
	bl sub_0200B3F0
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0209B3AC

	thumb_func_start sub_0209B3C4
sub_0209B3C4: ; 0x0209B3C4
	push {r4, lr}
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	cmp r1, #4
	bhi _0209B478
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0209B3DE: ; jump table
	.short _0209B3E8 - _0209B3DE - 2 ; case 0
	.short _0209B406 - _0209B3DE - 2 ; case 1
	.short _0209B41C - _0209B3DE - 2 ; case 2
	.short _0209B432 - _0209B3DE - 2 ; case 3
	.short _0209B470 - _0209B3DE - 2 ; case 4
_0209B3E8:
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #8
	bl sub_02097500
	ldr r0, [r4, #0x10]
	bl sub_02097514
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	bl sub_0203D874
	mov r0, #1
	str r0, [r4, #0x18]
	b _0209B478
_0209B406:
	ldr r0, [r4, #0]
	bl sub_020509B4
	cmp r0, #0
	bne _0209B478
	ldr r0, [r4, #0]
	bl sub_020509D4
	mov r0, #2
	str r0, [r4, #0x18]
	b _0209B478
_0209B41C:
	ldr r0, [r4, #0]
	bl sub_020509DC
	cmp r0, #0
	beq _0209B478
	mov r0, #1
	bl ov5_021D1744
	mov r0, #3
	str r0, [r4, #0x18]
	b _0209B478
_0209B432:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0209B478
	ldr r0, [r4, #0x10]
	bl sub_02097528
	cmp r0, #0
	beq _0209B450
	ldr r0, [r4, #0x20]
	mov r1, #0
	strh r1, [r0]
	mov r0, #4
	str r0, [r4, #0x18]
	b _0209B478
_0209B450:
	ldr r0, [r4, #0x20]
	mov r1, #1
	strh r1, [r0]
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #8
	bl sub_02097540
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #8
	bl sub_02027958
	mov r0, #4
	str r0, [r4, #0x18]
	b _0209B478
_0209B470:
	bl sub_0209B3AC
	mov r0, #1
	pop {r4, pc}
_0209B478:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0209B3C4

	thumb_func_start sub_0209B47C
sub_0209B47C: ; 0x0209B47C
	ldr r3, _0209B490 ; =0x027E0000
	ldr r1, _0209B494 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	ldr r3, _0209B498 ; =sub_020C458C
	mov r0, #3
	bx r3
	nop
_0209B490: .word 0x027E0000
_0209B494: .word 0x00003FF8
_0209B498: .word sub_020C458C
	thumb_func_end sub_0209B47C

	thumb_func_start sub_0209B49C
sub_0209B49C: ; 0x0209B49C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r0, _0209B6AC ; =0x021C3A34
	ldr r1, [r0, #0]
	cmp r1, #1
	bne _0209B4AA
	b _0209B6A8
_0209B4AA:
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	bl sub_020C2EAC
	add r1, r0, #0
	mov r0, #0
	bl sub_020C3038
	mov r0, #0
	bl sub_020C2F90
	add r1, r0, #0
	mov r0, #0
	bl sub_020C304C
	mov r1, #1
	ldr r0, _0209B6B0 ; =0x020F8B84
	add r2, r1, #0
	mov r3, #0
	bl sub_02017E74
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #1
	bl sub_020C164C
	ldr r1, _0209B6B4 ; =sub_0209B47C
	mov r0, #1
	bl sub_020C144C
	mov r0, #1
	bl sub_020C161C
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0209B6B8 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0209B6BC ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, _0209B6C0 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r3, _0209B6C4 ; =0x04000050
	mov r0, #0
	strh r0, [r3]
	ldr r2, _0209B6C8 ; =0x04001050
	sub r3, #0x50
	strh r0, [r2]
	ldr r1, [r3, #0]
	ldr r0, _0209B6CC ; =0xFFFF1FFF
	sub r2, #0x50
	and r1, r0
	str r1, [r3, #0]
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, _0209B6D0 ; =0x020F8BB8
	bl sub_0201FE94
	mov r0, #0
	bl sub_02018340
	str r0, [sp, #0x10]
	ldr r0, _0209B6D4 ; =0x020F8B8C
	bl sub_02018368
	mov r1, #0
	ldr r0, [sp, #0x10]
	ldr r2, _0209B6D8 ; =0x020F8B9C
	add r3, r1, #0
	bl sub_020183C4
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, _0209B6DC ; =0x000001F7
	mov r3, #2
	str r1, [sp, #4]
	bl sub_0200DAA4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	bl sub_02002E7C
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	add r3, r0, #0
	bl sub_02019690
	ldr r1, _0209B6E0 ; =0x00006C21
	mov r0, #0
	bl sub_0201975C
	ldr r1, _0209B6E0 ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xd6
	mov r3, #0
	bl sub_0200B144
	str r0, [sp, #0xc]
	mov r0, #6
	lsl r0, r0, #6
	mov r1, #0
	bl sub_02023790
	add r4, r0, #0
	bl sub_0201D710
	ldr r0, [sp, #0x10]
	ldr r2, _0209B6E4 ; =0x020F8B7C
	add r1, sp, #0x14
	bl sub_0201A8D4
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0x90
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x14
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	ldr r2, _0209B6DC ; =0x000001F7
	add r0, sp, #0x14
	mov r1, #0
	mov r3, #2
	bl sub_0200DC48
	ldr r0, [sp, #0xc]
	mov r1, #3
	add r2, r4, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, sp, #0x14
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	bl sub_0201FFD0
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	mov r0, #0
	mov r1, #0x3f
	mov r2, #3
	bl sub_0200AB4C
	bl sub_02037DB0
	mov r4, #1
_0209B63C:
	bl sub_0200106C
	bl sub_020349EC
	bl sub_02038AB8
	cmp r0, #0
	bne _0209B656
	add r0, r4, #0
	add r1, r4, #0
	bl sub_020C12B4
	b _0209B63C
_0209B656:
	ldr r5, _0209B6E8 ; =0x04000130
	ldr r4, _0209B6EC ; =0x027FFFA8
	ldr r7, _0209B6F0 ; =0x00002FFF
	mov r6, #1
_0209B65E:
	bl sub_0200106C
	ldrh r1, [r5]
	ldrh r0, [r4]
	orr r1, r0
	ldr r0, _0209B6F0 ; =0x00002FFF
	eor r0, r1
	and r0, r7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	tst r0, r6
	bne _0209B680
	mov r0, #1
	add r1, r0, #0
	bl sub_020C12B4
	b _0209B65E
_0209B680:
	ldr r1, _0209B6F4 ; =0x00007FFF
	mov r0, #0
	bl sub_0200F344
	ldr r1, _0209B6F4 ; =0x00007FFF
	mov r0, #1
	bl sub_0200F344
	add r0, sp, #0x14
	bl sub_0201A8FC
	ldr r0, [sp, #0xc]
	bl sub_0200B190
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	mov r0, #0
	bl sub_020C3EE4
_0209B6A8:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0209B6AC: .word 0x021C3A34
_0209B6B0: .word 0x020F8B84
_0209B6B4: .word sub_0209B47C
_0209B6B8: .word 0xFFFFE0FF
_0209B6BC: .word 0x04001000
_0209B6C0: .word 0x021BF6DC
_0209B6C4: .word 0x04000050
_0209B6C8: .word 0x04001050
_0209B6CC: .word 0xFFFF1FFF
_0209B6D0: .word 0x020F8BB8
_0209B6D4: .word 0x020F8B8C
_0209B6D8: .word 0x020F8B9C
_0209B6DC: .word 0x000001F7
_0209B6E0: .word 0x00006C21
_0209B6E4: .word 0x020F8B7C
_0209B6E8: .word 0x04000130
_0209B6EC: .word 0x027FFFA8
_0209B6F0: .word 0x00002FFF
_0209B6F4: .word 0x00007FFF
	thumb_func_end sub_0209B49C

	thumb_func_start sub_0209B6F8
sub_0209B6F8: ; 0x0209B6F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0209B924
	ldr r1, _0209B758 ; =0x00000A54
	add r0, r5, #0
	mov r2, #0xb
	bl sub_0200681C
	ldr r2, _0209B758 ; =0x00000A54
	add r4, r0, #0
	mov r1, #0
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_0209B8E8
	add r0, r4, #0
	bl sub_0209B9EC
	add r0, r5, #0
	bl sub_02006840
	str r0, [r4, #0]
	cmp r0, #0
	bne _0209B730
	bl sub_02022974
_0209B730:
	ldr r2, [r4, #0]
	add r0, r4, #0
	add r2, #0x24
	ldrb r2, [r2]
	mov r1, #0xb
	bl ov104_0222E63C
	str r0, [r4, #0x14]
	ldr r1, [r4, #0]
	mov r2, #0
	add r1, #0x24
	ldrb r1, [r1]
	bl ov104_0222E748
	add r0, r4, #0
	bl sub_0209B8C8
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0209B758: .word 0x00000A54
	thumb_func_end sub_0209B6F8

	thumb_func_start sub_0209B75C
sub_0209B75C: ; 0x0209B75C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #6
	bls _0209B76E
	b _0209B898
_0209B76E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0209B77A: ; jump table
	.short _0209B788 - _0209B77A - 2 ; case 0
	.short _0209B78E - _0209B77A - 2 ; case 1
	.short _0209B7D0 - _0209B77A - 2 ; case 2
	.short _0209B7D4 - _0209B77A - 2 ; case 3
	.short _0209B7EA - _0209B77A - 2 ; case 4
	.short _0209B832 - _0209B77A - 2 ; case 5
	.short _0209B842 - _0209B77A - 2 ; case 6
_0209B788:
	mov r0, #1
	str r0, [r5, #0]
	b _0209B898
_0209B78E:
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #1
	bne _0209B79C
	mov r0, #2
	str r0, [r5, #0]
	b _0209B898
_0209B79C:
	ldrb r0, [r4, #0x1d]
	cmp r0, #0
	beq _0209B898
	ldrb r0, [r4, #0x1e]
	cmp r0, #1
	bne _0209B7AE
	mov r0, #5
	str r0, [r5, #0]
	b _0209B898
_0209B7AE:
	ldr r0, [r4, #0x14]
	bl ov104_0222E6A8
	cmp r0, #1
	bne _0209B7C4
	ldr r0, _0209B89C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r1, r0
	beq _0209B7C4
	str r0, [r5, #0]
_0209B7C4:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0209B898
	mov r0, #3
	str r0, [r5, #0]
	b _0209B898
_0209B7D0:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0209B7D4:
	ldr r0, [r4, #0x18]
	bl ov104_0223C634
	add r0, r4, #0
	bl sub_0209B8D8
	bl sub_0209B94C
	mov r0, #4
	str r0, [r5, #0]
	b _0209B898
_0209B7EA:
	ldr r0, [r4, #4]
	bl sub_02006844
	cmp r0, #1
	bne _0209B898
	ldr r0, [r4, #4]
	bl sub_02006814
	bl sub_0209B924
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0209B808
	ldr r0, [r4, #8]
	blx r1
_0209B808:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0209B818
	ldrb r1, [r4, #0x10]
	cmp r1, #1
	bne _0209B818
	bl sub_020181C4
_0209B818:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r4, #0
	bl sub_0209B8C8
	ldr r0, [r4, #0x18]
	bl ov104_0223C688
	mov r0, #1
	str r0, [r5, #0]
	b _0209B898
_0209B832:
	bl sub_0209B8D8
	add r0, r4, #0
	bl sub_0209B8E8
	mov r0, #6
	str r0, [r5, #0]
	b _0209B898
_0209B842:
	bl sub_0209B8C8
	ldrh r1, [r4, #0x20]
	ldr r0, _0209B8A0 ; =0x0000FFFF
	cmp r1, r0
	ldr r0, [r4, #0x14]
	bne _0209B85E
	ldr r1, [r4, #0]
	mov r2, #0xb
	add r1, #0x24
	ldrb r1, [r1]
	bl ov104_0222E86C
	b _0209B890
_0209B85E:
	mov r1, #0xb
	bl ov104_0222E8C8
	add r6, r0, #0
	ldr r0, [r4, #0x14]
	bl ov104_0222E710
	ldr r2, [r4, #0]
	add r0, r4, #0
	add r2, #0x24
	ldrb r2, [r2]
	mov r1, #0xb
	bl ov104_0222E63C
	str r0, [r4, #0x14]
	ldr r1, [r4, #0]
	ldrh r2, [r4, #0x20]
	add r1, #0x24
	ldrb r1, [r1]
	bl ov104_0222E748
	ldr r0, [r4, #0x14]
	add r1, r6, #0
	bl ov104_0222E8E8
_0209B890:
	mov r0, #0
	strb r0, [r4, #0x1e]
	mov r0, #1
	str r0, [r5, #0]
_0209B898:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0209B89C: .word 0x021BF67C
_0209B8A0: .word 0x0000FFFF
	thumb_func_end sub_0209B75C

	thumb_func_start sub_0209B8A4
sub_0209B8A4: ; 0x0209B8A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl ov104_0222E710
	add r0, r4, #0
	bl sub_0209B8D8
	add r0, r5, #0
	bl sub_02006830
	bl sub_0209B94C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0209B8A4

	thumb_func_start sub_0209B8C8
sub_0209B8C8: ; 0x0209B8C8
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0223C2D4
	str r0, [r4, #0x18]
	mov r0, #1
	strb r0, [r4, #0x1d]
	pop {r4, pc}
	thumb_func_end sub_0209B8C8

	thumb_func_start sub_0209B8D8
sub_0209B8D8: ; 0x0209B8D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ov104_0223C4CC
	mov r0, #0
	strb r0, [r4, #0x1d]
	pop {r4, pc}
	thumb_func_end sub_0209B8D8

	thumb_func_start sub_0209B8E8
sub_0209B8E8: ; 0x0209B8E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0209B920 ; =0x0000FFFF
	mov r1, #0
	add r2, r4, #0
_0209B8F2:
	add r1, r1, #1
	strh r0, [r2, #0x24]
	add r2, r2, #4
	cmp r1, #0x18
	blt _0209B8F2
	add r0, r4, #0
	mov r2, #0x1e
	add r0, #0x84
	mov r1, #0
	lsl r2, r2, #6
	bl sub_020C4CF4
	ldr r1, _0209B920 ; =0x0000FFFF
	mov r2, #0
_0209B90E:
	add r0, r4, #0
	add r0, #0x90
	add r2, r2, #1
	add r4, #0x3c
	strh r1, [r0]
	cmp r2, #0x20
	blt _0209B90E
	pop {r4, pc}
	nop
_0209B920: .word 0x0000FFFF
	thumb_func_end sub_0209B8E8

	thumb_func_start sub_0209B924
sub_0209B924: ; 0x0209B924
	push {r3, lr}
	ldr r0, _0209B940 ; =0x00000068
	mov r1, #2
	bl sub_02006590
	ldr r0, _0209B944 ; =0x00000069
	mov r1, #2
	bl sub_02006590
	ldr r0, _0209B948 ; =0x0000003F
	mov r1, #2
	bl sub_02006590
	pop {r3, pc}
	; .align 2, 0
_0209B940: .word 0x00000068
_0209B944: .word 0x00000069
_0209B948: .word 0x0000003F
	thumb_func_end sub_0209B924

	thumb_func_start sub_0209B94C
sub_0209B94C: ; 0x0209B94C
	push {r3, lr}
	ldr r0, _0209B964 ; =0x00000068
	bl sub_02006514
	ldr r0, _0209B968 ; =0x00000069
	bl sub_02006514
	ldr r0, _0209B96C ; =0x0000003F
	bl sub_02006514
	pop {r3, pc}
	nop
_0209B964: .word 0x00000068
_0209B968: .word 0x00000069
_0209B96C: .word 0x0000003F
	thumb_func_end sub_0209B94C

	thumb_func_start sub_0209B970
sub_0209B970: ; 0x0209B970
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0209B970

	thumb_func_start sub_0209B974
sub_0209B974: ; 0x0209B974
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_0209B974

	thumb_func_start sub_0209B978
sub_0209B978: ; 0x0209B978
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209B978

	thumb_func_start sub_0209B980
sub_0209B980: ; 0x0209B980
	ldr r0, [r0, #0]
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209B980

	thumb_func_start sub_0209B988
sub_0209B988: ; 0x0209B988
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _0209B99C
	bl sub_02022974
_0209B99C:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0xb
	bl sub_020067E8
	str r0, [r5, #4]
	str r4, [r5, #8]
	ldr r0, [sp, #0x18]
	strb r6, [r5, #0x10]
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0209B988

	thumb_func_start sub_0209B9B4
sub_0209B9B4: ; 0x0209B9B4
	mov r1, #1
	add r0, #0x22
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0209B9B4

	thumb_func_start sub_0209B9BC
sub_0209B9BC: ; 0x0209B9BC
	ldr r3, [r0, #0]
	add r3, #0x24
	strb r1, [r3]
	mov r1, #1
	strb r1, [r0, #0x1e]
	strh r2, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209B9BC

	thumb_func_start sub_0209B9CC
sub_0209B9CC: ; 0x0209B9CC
	add r0, #0x24
	bx lr
	thumb_func_end sub_0209B9CC

	thumb_func_start sub_0209B9D0
sub_0209B9D0: ; 0x0209B9D0
	add r0, #0x84
	bx lr
	thumb_func_end sub_0209B9D0

	thumb_func_start sub_0209B9D4
sub_0209B9D4: ; 0x0209B9D4
	mov r2, #0x3c
	add r0, #0x84
	mul r2, r1
	add r0, r0, r2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209B9D4

	thumb_func_start sub_0209B9E0
sub_0209B9E0: ; 0x0209B9E0
	ldr r1, _0209B9E8 ; =0x00000A04
	add r0, r0, r1
	bx lr
	nop
_0209B9E8: .word 0x00000A04
	thumb_func_end sub_0209B9E0

	thumb_func_start sub_0209B9EC
sub_0209B9EC: ; 0x0209B9EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0209BA10 ; =0x00000A04
	mov r1, #0
	add r0, r4, r0
	mov r2, #8
	bl sub_020C4CF4
	ldr r1, _0209BA14 ; =0x0000FFFF
	ldr r0, _0209BA10 ; =0x00000A04
	mov r2, #0
_0209BA02:
	add r2, r2, #1
	strh r1, [r4, r0]
	add r4, r4, #2
	cmp r2, #8
	blt _0209BA02
	pop {r4, pc}
	nop
_0209BA10: .word 0x00000A04
_0209BA14: .word 0x0000FFFF
	thumb_func_end sub_0209B9EC

	thumb_func_start sub_0209BA18
sub_0209BA18: ; 0x0209BA18
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #0x2c
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x2c
	bl sub_020C4CF4
	str r6, [r4, #0]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	mov r1, #0xe
	str r0, [r4, #8]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	add r2, r4, #0
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	ldr r1, _0209BA7C ; =0x020F8BE0
	add r0, r5, #0
	str r5, [r4, #0x28]
	bl sub_0203CD84
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0209BA7C: .word 0x020F8BE0
	thumb_func_end sub_0209BA18

	thumb_func_start sub_0209BA80
sub_0209BA80: ; 0x0209BA80
	ldr r3, _0209BA8C ; =sub_02032798
	add r2, r0, #0
	ldr r0, _0209BA90 ; =0x020F8BF0
	mov r1, #0x34
	bx r3
	nop
_0209BA8C: .word sub_02032798
_0209BA90: .word 0x020F8BF0
	thumb_func_end sub_0209BA80

	thumb_func_start sub_0209BA94
sub_0209BA94: ; 0x0209BA94
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0209BB00 ; =0x000008D4
	add r5, r3, #0
	ldrb r1, [r5, r0]
	add r6, r2, #0
	mov r4, #0
	add r1, r1, #1
	strb r1, [r5, r0]
	bl sub_0203608C
	cmp r7, r0
	beq _0209BAFE
	ldrh r0, [r6]
	mov r1, #0xe0
	strb r0, [r5, #0x12]
	ldrh r0, [r6, #2]
	strh r0, [r5, #0x16]
	ldrh r0, [r6, #4]
	strh r0, [r5, #0x18]
	ldrh r0, [r6, #6]
	strh r0, [r5, #0x14]
	ldrb r0, [r5, #0x10]
	bic r0, r1
	ldrb r1, [r5, #0x12]
	add r1, r1, #5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r5, #0x10]
	ldrh r2, [r5, #0x16]
	ldrh r1, [r5, #0x2e]
	cmp r1, r2
	beq _0209BAE2
	ldrh r0, [r5, #0x18]
	cmp r1, r0
	bne _0209BAE8
_0209BAE2:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0209BAE8:
	ldrh r1, [r5, #0x30]
	cmp r1, r2
	beq _0209BAF4
	ldrh r0, [r5, #0x18]
	cmp r1, r0
	bne _0209BAFA
_0209BAF4:
	add r0, r4, #2
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0209BAFA:
	ldr r0, _0209BB04 ; =0x000008D8
	strh r4, [r5, r0]
_0209BAFE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0209BB00: .word 0x000008D4
_0209BB04: .word 0x000008D8
	thumb_func_end sub_0209BA94

	thumb_func_start sub_0209BB08
sub_0209BB08: ; 0x0209BB08
	push {r4, lr}
	ldr r1, _0209BB30 ; =0x0000083E
	add r4, r0, #0
	add r1, r4, r1
	add r0, #0x3e
	mov r2, #0x1c
	bl sub_020C4DB0
	ldr r1, _0209BB30 ; =0x0000083E
	mov r0, #0x3f
	add r1, r4, r1
	mov r2, #0x1c
	bl sub_020359DC
	cmp r0, #1
	bne _0209BB2C
	mov r0, #1
	pop {r4, pc}
_0209BB2C:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0209BB30: .word 0x0000083E
	thumb_func_end sub_0209BB08

	thumb_func_start sub_0209BB34
sub_0209BB34: ; 0x0209BB34
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0209BB64 ; =0x000008D4
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r6, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0209BB60
	bl sub_0203608C
	cmp r0, #0
	beq _0209BB60
	add r4, #0x3e
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x1c
	bl sub_020C4DB0
_0209BB60:
	pop {r4, r5, r6, pc}
	nop
_0209BB64: .word 0x000008D4
	thumb_func_end sub_0209BB34

	thumb_func_start sub_0209BB68
sub_0209BB68: ; 0x0209BB68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0209BBA0 ; =0x000008D8
	add r4, r3, #0
	mov r1, #0
	strh r1, [r4, r0]
	sub r1, r0, #4
	ldrb r1, [r4, r1]
	sub r0, r0, #4
	add r6, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0209BB9C
	ldrb r0, [r4, #0x10]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _0209BB96
	ldrh r0, [r6]
	cmp r0, #0
	beq _0209BB9C
_0209BB96:
	ldr r0, _0209BBA0 ; =0x000008D8
	mov r1, #1
	strh r1, [r4, r0]
_0209BB9C:
	pop {r4, r5, r6, pc}
	nop
_0209BBA0: .word 0x000008D8
	thumb_func_end sub_0209BB68

	thumb_func_start sub_0209BBA4
sub_0209BBA4: ; 0x0209BBA4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xa0
	ldrb r0, [r0]
	strh r0, [r5, #8]
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	bl ov104_0223C264
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203068C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02030698
	strh r0, [r5, #0xa]
	add r5, #8
	mov r0, #0x39
	add r1, r5, #0
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0209BBE8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0209BBE8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0209BBA4

	thumb_func_start sub_0209BBEC
sub_0209BBEC: ; 0x0209BBEC
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x6f
	ldrb r0, [r0]
	add r5, r2, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x6f
	strb r1, [r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0209BC18
	ldrh r1, [r5]
	add r0, r4, #0
	add r0, #0x6e
	strb r1, [r0]
	ldrh r0, [r5, #2]
	add r4, #0x72
	strh r0, [r4]
_0209BC18:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0209BBEC

	thumb_func_start sub_0209BC1C
sub_0209BC1C: ; 0x0209BC1C
	push {r3, lr}
	add r2, r0, #0
	strh r1, [r2, #8]
	add r2, #8
	add r1, r2, #0
	mov r0, #0x3a
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0209BC36
	mov r0, #1
	pop {r3, pc}
_0209BC36:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0209BC1C

	thumb_func_start sub_0209BC3C
sub_0209BC3C: ; 0x0209BC3C
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x6f
	ldrb r0, [r0]
	add r6, r2, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x6f
	strb r1, [r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0209BC60
	ldrh r0, [r6]
	add r4, #0x59
	strb r0, [r4]
_0209BC60:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0209BC3C

	thumb_func_start sub_0209BC64
sub_0209BC64: ; 0x0209BC64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0207A268
	add r1, r5, #0
	add r1, #0x6a
	strb r4, [r1]
	add r1, r5, #0
	add r1, #0x6b
	add r7, r0, #0
	strb r6, [r1]
	cmp r4, #0xff
	bne _0209BCA0
	add r0, r5, #0
	mov r1, #0
	add r0, #0x76
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x7e
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x78
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x80
	strh r1, [r0]
	b _0209BCEE
_0209BCA0:
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x76
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x7e
	strh r0, [r1]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x78
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x80
	strh r0, [r1]
_0209BCEE:
	add r0, r5, #0
	add r0, #0x76
	ldrh r0, [r0]
	mov r2, #0x28
	strh r0, [r5, #8]
	add r0, r5, #0
	add r0, #0x7e
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	add r0, r5, #0
	add r0, #0x78
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	add r0, r5, #0
	add r0, #0x80
	ldrh r0, [r0]
	strh r0, [r5, #0xe]
	add r5, #8
	mov r0, #0x3b
	add r1, r5, #0
	bl sub_020359DC
	cmp r0, #1
	bne _0209BD22
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209BD22:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0209BC64

	thumb_func_start sub_0209BD28
sub_0209BD28: ; 0x0209BD28
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x6f
	ldrb r0, [r0]
	add r5, r2, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x6f
	strb r1, [r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0209BD64
	ldrh r1, [r5]
	add r0, r4, #0
	add r0, #0x86
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #2]
	add r0, #0x8e
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #4]
	add r0, #0x88
	add r4, #0x90
	strh r1, [r0]
	ldrh r0, [r5, #6]
	strh r0, [r4]
_0209BD64:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0209BD28

	thumb_func_start sub_0209BD68
sub_0209BD68: ; 0x0209BD68
	push {r3, lr}
	add r2, r0, #0
	strh r1, [r2, #8]
	add r2, #8
	add r1, r2, #0
	mov r0, #0x3c
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0209BD82
	mov r0, #1
	pop {r3, pc}
_0209BD82:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0209BD68

	thumb_func_start sub_0209BD88
sub_0209BD88: ; 0x0209BD88
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x6f
	ldrb r0, [r0]
	add r6, r2, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x6f
	strb r1, [r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0209BDAC
	ldrh r0, [r6]
	add r4, #0x74
	strh r0, [r4]
_0209BDAC:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0209BD88

	thumb_func_start sub_0209BDB0
sub_0209BDB0: ; 0x0209BDB0
	push {r3, lr}
	add r2, r0, #0
	strh r1, [r2, #8]
	add r2, #8
	add r1, r2, #0
	mov r0, #0x3d
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _0209BDCA
	mov r0, #1
	pop {r3, pc}
_0209BDCA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0209BDB0

	thumb_func_start sub_0209BDD0
sub_0209BDD0: ; 0x0209BDD0
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x6f
	ldrb r0, [r0]
	add r6, r2, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x6f
	strb r1, [r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0209BDF4
	ldrh r0, [r6]
	add r4, #0x71
	strb r0, [r4]
_0209BDF4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0209BDD0

	thumb_func_start sub_0209BDF8
sub_0209BDF8: ; 0x0209BDF8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x58
	bl sub_02018144
	add r4, r0, #0
	bne _0209BE0E
	bl sub_02022974
_0209BE0E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x58
	bl sub_020D5124
	ldr r1, _0209BE34 ; =0x00001BD0
	add r0, r6, #0
	str r5, [r4, #0]
	bl sub_02018144
	str r0, [r4, #0x4c]
	ldr r1, _0209BE34 ; =0x00001BD0
	add r0, r6, #0
	bl sub_02018144
	str r0, [r4, #0x50]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0209BE34: .word 0x00001BD0
	thumb_func_end sub_0209BDF8

	thumb_func_start sub_0209BE38
sub_0209BE38: ; 0x0209BE38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl sub_020181C4
	ldr r0, [r4, #0x50]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0209BE38

	thumb_func_start sub_0209BE50
sub_0209BE50: ; 0x0209BE50
	ldr r3, _0209BE5C ; =sub_02032798
	add r2, r0, #0
	ldr r0, _0209BE60 ; =0x020F8EA8
	mov r1, #0x87
	bx r3
	nop
_0209BE5C: .word sub_02032798
_0209BE60: .word 0x020F8EA8
	thumb_func_end sub_0209BE50

	thumb_func_start sub_0209BE64
sub_0209BE64: ; 0x0209BE64
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	bl sub_02037B58
	bl sub_02036AC4
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_0205C2C8
	mov r0, #0
	bl sub_0205BEA8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209BE64

	thumb_func_start sub_0209BE84
sub_0209BE84: ; 0x0209BE84
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r6, r3, #0
	str r2, [sp]
	cmp r5, #0x12
	blo _0209BE96
	bl sub_02022974
_0209BE96:
	add r0, r6, #4
	cmp r0, #0x18
	bls _0209BEA0
	bl sub_02022974
_0209BEA0:
	add r4, r7, #4
	ldr r1, [sp]
	add r0, r4, #4
	add r2, r6, #0
	str r5, [r7, #4]
	bl sub_020D50B8
	mov r0, #0x82
	add r1, r4, #0
	mov r2, #0x18
	bl sub_020359DC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0209BE84

	thumb_func_start sub_0209BEBC
sub_0209BEBC: ; 0x0209BEBC
	push {r4, lr}
	ldr r4, [r0, #0x1c]
	cmp r4, #1
	bne _0209BEC8
	mov r0, #0
	pop {r4, pc}
_0209BEC8:
	bl sub_0209BE84
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209BEBC

	thumb_func_start sub_0209BED0
sub_0209BED0: ; 0x0209BED0
	push {r3, r4, r5, lr}
	ldr r4, [r2, #0]
	cmp r4, #0x12
	blo _0209BEDE
	bl sub_02022974
	pop {r3, r4, r5, pc}
_0209BEDE:
	lsl r5, r4, #2
	ldr r4, _0209BEEC ; =0x020F8E60
	add r2, r2, #4
	ldr r4, [r4, r5]
	blx r4
	pop {r3, r4, r5, pc}
	nop
_0209BEEC: .word 0x020F8E60
	thumb_func_end sub_0209BED0

	thumb_func_start sub_0209BEF0
sub_0209BEF0: ; 0x0209BEF0
	push {r4, lr}
	add r1, r0, #0
	mov r0, #0x46
	add r4, r2, #0
	ldrsh r2, [r3, r0]
	mov r0, #1
	lsl r0, r1
	orr r2, r0
	add r0, r3, #0
	add r0, #0x46
	strh r2, [r0]
	add r0, r3, #0
	bl sub_0209C188
	mov r2, #0x59
	add r1, r4, #0
	lsl r2, r2, #4
	bl sub_020D50B8
	pop {r4, pc}
	thumb_func_end sub_0209BEF0

	thumb_func_start sub_0209BF18
sub_0209BF18: ; 0x0209BF18
	cmp r0, #0
	bne _0209BF20
	ldrb r0, [r2]
	str r0, [r3, #0x28]
_0209BF20:
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209BF18

	thumb_func_start sub_0209BF24
sub_0209BF24: ; 0x0209BF24
	ldr r0, [r3, #0x20]
	add r0, r0, #1
	str r0, [r3, #0x20]
	bx lr
	thumb_func_end sub_0209BF24

	thumb_func_start sub_0209BF2C
sub_0209BF2C: ; 0x0209BF2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_0203608C
	cmp r0, #0
	beq _0209BF50
	mov r0, #0
	str r0, [r4, #0x20]
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, [r4, #0]
	lsl r2, r5, #0x18
	ldr r0, [r0, #0x3c]
	mov r1, #0x1f
	lsr r2, r2, #0x18
	bl ov109_021D5140
_0209BF50:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0209BF2C

	thumb_func_start sub_0209BF54
sub_0209BF54: ; 0x0209BF54
	ldr r0, [r3, #0]
	ldr r3, _0209BF60 ; =ov109_021D5140
	ldr r0, [r0, #0x3c]
	mov r1, #2
	mov r2, #0
	bx r3
	; .align 2, 0
_0209BF60: .word ov109_021D5140
	thumb_func_end sub_0209BF54

	thumb_func_start sub_0209BF64
sub_0209BF64: ; 0x0209BF64
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r6, #0
	beq _0209BFEE
	bl sub_0203608C
	cmp r0, #0
	bne _0209C03C
	ldrb r1, [r5]
	add r0, sp, #0
	strb r1, [r0]
	ldrb r1, [r5, #1]
	strb r1, [r0, #1]
	ldrb r1, [r5, #2]
	strb r1, [r0, #2]
	ldrb r1, [r5, #3]
	strb r1, [r0, #3]
	strb r6, [r0]
	ldr r1, [r4, #0x2c]
	strb r1, [r0, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0209BF9C
	cmp r0, #1
	b _0209BFDE
_0209BF9C:
	bl sub_02035E18
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	bne _0209BFBE
	bl sub_0209C16C
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	bne _0209BFBE
	bl sub_020318EC
	bl sub_020D2FE4
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	beq _0209BFC6
_0209BFBE:
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #3]
	b _0209BFDE
_0209BFC6:
	mov r1, #1
	add r0, r1, #0
	ldr r2, [r4, #0x30]
	lsl r0, r6
	orr r0, r2
	str r0, [r4, #0x30]
	add r0, sp, #0
	strb r1, [r0, #3]
	bl sub_02035E18
	bl sub_02037B58
_0209BFDE:
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0
	mov r3, #4
	bl sub_0209BEBC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209BFEE:
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0209BFFC
	cmp r0, #1
	beq _0209C030
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209BFFC:
	ldrb r6, [r5]
	bl sub_0203608C
	cmp r6, r0
	bne _0209C03C
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _0209C01C
	ldr r0, [r4, #0]
	mov r1, #8
	ldr r0, [r0, #0x3c]
	add r2, r6, #0
	bl ov109_021D5140
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209C01C:
	ldrb r0, [r5, #1]
	mov r1, #7
	strh r0, [r4, #0x38]
	ldr r0, [r4, #0]
	ldrb r2, [r5]
	ldr r0, [r0, #0x3c]
	bl ov109_021D5140
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209C030:
	ldr r0, [r4, #0]
	ldrb r2, [r5]
	ldr r0, [r0, #0x3c]
	mov r1, #0x13
	bl ov109_021D5140
_0209C03C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0209BF64

	thumb_func_start sub_0209C040
sub_0209C040: ; 0x0209C040
	push {r4, lr}
	add r4, r3, #0
	ldr r0, [r4, #0]
	ldrb r2, [r2]
	ldr r0, [r0, #0x3c]
	mov r1, #1
	bl ov109_021D5258
	bl sub_0203608C
	cmp r0, #0
	bne _0209C05C
	mov r0, #0
	str r0, [r4, #0x34]
_0209C05C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209C040

	thumb_func_start sub_0209C060
sub_0209C060: ; 0x0209C060
	push {r4, lr}
	add r4, r3, #0
	bl sub_0203608C
	cmp r0, #0
	beq _0209C078
	ldr r0, [r4, #0]
	mov r1, #0xd
	ldr r0, [r0, #0x3c]
	mov r2, #0
	bl ov109_021D5140
_0209C078:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209C060

	thumb_func_start sub_0209C07C
sub_0209C07C: ; 0x0209C07C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_0203608C
	cmp r0, #0
	bne _0209C09A
	add r0, sp, #0
	strb r5, [r0]
	add r0, r4, #0
	mov r1, #0
	add r2, sp, #0
	mov r3, #1
	bl sub_0209BEBC
_0209C09A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0209C07C

	thumb_func_start sub_0209C09C
sub_0209C09C: ; 0x0209C09C
	add r0, r3, #0
	add r0, #0x40
	ldrh r1, [r0]
	ldrh r0, [r2]
	add r3, #0x40
	orr r0, r1
	strh r0, [r3]
	bx lr
	thumb_func_end sub_0209C09C

	thumb_func_start sub_0209C0AC
sub_0209C0AC: ; 0x0209C0AC
	add r1, r3, #0
	add r1, #0x42
	ldrh r2, [r1]
	mov r1, #1
	lsl r1, r0
	add r0, r2, #0
	orr r0, r1
	add r3, #0x42
	strh r0, [r3]
	bx lr
	thumb_func_end sub_0209C0AC

	thumb_func_start sub_0209C0C0
sub_0209C0C0: ; 0x0209C0C0
	ldr r0, [r3, #0]
	ldr r3, _0209C0CC ; =ov109_021D3B24
	ldr r0, [r0, #0x38]
	add r1, r2, #0
	bx r3
	nop
_0209C0CC: .word ov109_021D3B24
	thumb_func_end sub_0209C0C0

	thumb_func_start sub_0209C0D0
sub_0209C0D0: ; 0x0209C0D0
	ldr r0, [r3, #0]
	ldr r3, _0209C0DC ; =ov109_021D3B50
	ldr r0, [r0, #0x38]
	ldr r1, [r2, #0]
	bx r3
	nop
_0209C0DC: .word ov109_021D3B50
	thumb_func_end sub_0209C0D0

	thumb_func_start sub_0209C0E0
sub_0209C0E0: ; 0x0209C0E0
	ldr r0, [r3, #0]
	ldr r3, _0209C0EC ; =ov109_021D3A68
	ldr r0, [r0, #0x38]
	ldrb r1, [r2]
	bx r3
	nop
_0209C0EC: .word ov109_021D3A68
	thumb_func_end sub_0209C0E0

	thumb_func_start sub_0209C0F0
sub_0209C0F0: ; 0x0209C0F0
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r3, #0
	bl sub_0203608C
	cmp r0, #0
	beq _0209C108
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0x38]
	bl ov109_021D3A70
_0209C108:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0209C0F0

	thumb_func_start sub_0209C10C
sub_0209C10C: ; 0x0209C10C
	add r1, r0, #0
	ldr r0, [r3, #0]
	ldr r3, _0209C118 ; =ov109_021D3BE4
	ldr r0, [r0, #0x38]
	ldr r2, [r2, #0]
	bx r3
	; .align 2, 0
_0209C118: .word ov109_021D3BE4
	thumb_func_end sub_0209C10C

	thumb_func_start sub_0209C11C
sub_0209C11C: ; 0x0209C11C
	ldr r0, [r3, #0]
	ldr r3, _0209C128 ; =ov109_021D3BEC
	ldr r0, [r0, #0x38]
	add r1, r2, #0
	bx r3
	nop
_0209C128: .word ov109_021D3BEC
	thumb_func_end sub_0209C11C

	thumb_func_start sub_0209C12C
sub_0209C12C: ; 0x0209C12C
	add r1, r3, #0
	add r1, #0x48
	ldrh r2, [r1]
	mov r1, #1
	lsl r1, r0
	add r0, r2, #0
	orr r0, r1
	add r3, #0x48
	strh r0, [r3]
	bx lr
	thumb_func_end sub_0209C12C

	thumb_func_start sub_0209C140
sub_0209C140: ; 0x0209C140
	add r1, r3, #0
	add r1, #0x4a
	ldrh r2, [r1]
	mov r1, #1
	lsl r1, r0
	add r0, r2, #0
	orr r0, r1
	add r3, #0x4a
	strh r0, [r3]
	bx lr
	thumb_func_end sub_0209C140

	thumb_func_start sub_0209C154
sub_0209C154: ; 0x0209C154
	mov r0, #0x18
	bx lr
	thumb_func_end sub_0209C154

	thumb_func_start sub_0209C158
sub_0209C158: ; 0x0209C158
	mov r0, #0x59
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209C158

	thumb_func_start sub_0209C160
sub_0209C160: ; 0x0209C160
	ldr r2, [r1, #0x4c]
	mov r1, #0x59
	lsl r1, r1, #4
	mul r1, r0
	add r0, r2, r1
	bx lr
	thumb_func_end sub_0209C160

	thumb_func_start sub_0209C16C
sub_0209C16C: ; 0x0209C16C
	push {r3, r4, r5, lr}
	mov r5, #0
	add r4, r5, #0
_0209C172:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _0209C17E
	add r5, r5, #1
_0209C17E:
	add r4, r4, #1
	cmp r4, #5
	blt _0209C172
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0209C16C

	thumb_func_start sub_0209C188
sub_0209C188: ; 0x0209C188
	ldr r2, [r0, #0x50]
	mov r0, #0x59
	lsl r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0209C188

	thumb_func_start sub_0209C194
sub_0209C194: ; 0x0209C194
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x40
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020D5124
	add r2, r4, #0
	add r2, #0x14
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0209BDF8
	str r0, [r4, #0x34]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0209C194

	thumb_func_start sub_0209C1D0
sub_0209C1D0: ; 0x0209C1D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_0209BE64
	ldr r0, [r4, #0x34]
	bl sub_0209BE38
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0209C1D0

	thumb_func_start sub_0209C1E8
sub_0209C1E8: ; 0x0209C1E8
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0209C1E8

	thumb_func_start sub_0209C1EC
sub_0209C1EC: ; 0x0209C1EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #0x38
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x38
	bl sub_020D5124
	str r5, [r4, #0x2c]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	str r0, [r4, #0x18]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0xc]
	bl sub_0202B628
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x18]
	bl sub_02027B50
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0209C1EC

	thumb_func_start sub_0209C238
sub_0209C238: ; 0x0209C238
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	lsl r2, r1, #2
	ldr r1, _0209C258 ; =0x020F951C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #1
	bne _0209C254
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, pc}
_0209C254:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0209C258: .word 0x020F951C
	thumb_func_end sub_0209C238

	thumb_func_start sub_0209C25C
sub_0209C25C: ; 0x0209C25C
	push {r4, lr}
	add r4, r0, #0
	add r0, #8
	mov r1, #0xb
	bl sub_0209C194
	str r0, [r4, #0x28]
	mov r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #0x2c]
	ldr r1, _0209C27C ; =0x020F94FC
	ldr r2, [r4, #0x28]
	bl sub_0203CD84
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0209C27C: .word 0x020F94FC
	thumb_func_end sub_0209C25C

	thumb_func_start sub_0209C280
sub_0209C280: ; 0x0209C280
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_020509B4
	cmp r0, #0
	bne _0209C2BA
	ldr r0, [r4, #0x28]
	bl sub_0209C1E8
	cmp r0, #0
	bne _0209C29E
	mov r0, #5
	str r0, [r4, #0]
	b _0209C2BA
_0209C29E:
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #4]
	bl sub_0203D644
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x28]
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #2
	str r0, [r4, #0]
_0209C2BA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209C280

	thumb_func_start sub_0209C2C0
sub_0209C2C0: ; 0x0209C2C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_020509B4
	cmp r0, #0
	bne _0209C31C
	ldr r0, [r5, #0x30]
	add r1, r0, #0
	add r1, #0x22
	ldrb r4, [r1]
	bl sub_020181C4
	ldr r0, [r5, #0x30]
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #1
	bne _0209C304
	ldr r0, [r5, #0x2c]
	mov r1, #3
	mov r2, #0
	bl sub_0203D670
	str r0, [r5, #0x34]
	str r4, [r5, #4]
	ldr r0, [r5, #0x34]
	strb r4, [r0, #0x14]
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x34]
	bl sub_0203D334
	mov r0, #3
	str r0, [r5, #0]
	b _0209C31C
_0209C304:
	ldr r0, [r5, #0x28]
	ldr r1, _0209C320 ; =0x020F950C
	str r4, [r0, #4]
	ldr r0, [r5, #0x2c]
	ldr r2, [r5, #0x28]
	bl sub_0203CD84
	ldr r0, [r5, #0x28]
	mov r1, #3
	str r1, [r0, #0]
	mov r0, #4
	str r0, [r5, #0]
_0209C31C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0209C320: .word 0x020F950C
	thumb_func_end sub_0209C2C0

	thumb_func_start sub_0209C324
sub_0209C324: ; 0x0209C324
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_020509B4
	cmp r0, #0
	bne _0209C346
	ldr r0, [r4, #0x34]
	bl sub_020181C4
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #4]
	bl sub_0203D644
	str r0, [r4, #0x30]
	mov r0, #2
	str r0, [r4, #0]
_0209C346:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209C324

	thumb_func_start sub_0209C34C
sub_0209C34C: ; 0x0209C34C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_020509B4
	cmp r0, #0
	bne _0209C35E
	mov r0, #5
	str r0, [r4, #0]
_0209C35E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209C34C

	thumb_func_start sub_0209C364
sub_0209C364: ; 0x0209C364
	push {r3, lr}
	ldr r0, [r0, #0x28]
	bl sub_0209C1D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0209C364

	thumb_func_start sub_0209C370
sub_0209C370: ; 0x0209C370
	push {r4, lr}
	mov r1, #4
	bl sub_02018144
	mov r1, #0
	mov r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209C370

	thumb_func_start sub_0209C388
sub_0209C388: ; 0x0209C388
	ldr r3, _0209C38C ; =sub_020181C4
	bx r3
	; .align 2, 0
_0209C38C: .word sub_020181C4
	thumb_func_end sub_0209C388

	thumb_func_start sub_0209C390
sub_0209C390: ; 0x0209C390
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02039A58
	add r4, r0, #0
	bl sub_02039A60
	add r1, r0, #0
	add r0, r4, #0
	add r2, r5, #0
	bl sub_02032798
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0209C390

	thumb_func_start sub_0209C3AC
sub_0209C3AC: ; 0x0209C3AC
	push {r4, lr}
	bl sub_02039A58
	add r4, r0, #0
	bl sub_02039A60
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl sub_02032798
	pop {r4, pc}
	thumb_func_end sub_0209C3AC

	thumb_func_start sub_0209C3C4
sub_0209C3C4: ; 0x0209C3C4
	mov r0, #0
	bx lr
	thumb_func_end sub_0209C3C4

	thumb_func_start sub_0209C3C8
sub_0209C3C8: ; 0x0209C3C8
	mov r0, #8
	bx lr
	thumb_func_end sub_0209C3C8

	thumb_func_start sub_0209C3CC
sub_0209C3CC: ; 0x0209C3CC
	mov r0, #4
	bx lr
	thumb_func_end sub_0209C3CC

	thumb_func_start sub_0209C3D0
sub_0209C3D0: ; 0x0209C3D0
	push {r3, lr}
	cmp r3, #0
	beq _0209C3DE
	add r0, r3, #0
	add r1, r2, #0
	bl ov65_022366E4
_0209C3DE:
	pop {r3, pc}
	thumb_func_end sub_0209C3D0

	thumb_func_start sub_0209C3E0
sub_0209C3E0: ; 0x0209C3E0
	push {r3, lr}
	cmp r3, #0
	beq _0209C3EC
	add r0, r3, #0
	bl ov65_02236744
_0209C3EC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0209C3E0

	thumb_func_start sub_0209C3F0
sub_0209C3F0: ; 0x0209C3F0
	push {r3, lr}
	cmp r3, #0
	beq _0209C3FE
	add r0, r3, #0
	add r1, r2, #0
	bl ov65_02236760
_0209C3FE:
	pop {r3, pc}
	thumb_func_end sub_0209C3F0
