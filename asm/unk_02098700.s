	.include "macros/function.inc"
	.include "include/unk_02098700.inc"

	

	.text


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