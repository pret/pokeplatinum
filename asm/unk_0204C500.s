	.include "macros/function.inc"
	.include "include/unk_0204C500.inc"

	

	.text


	thumb_func_start sub_0204C500
sub_0204C500: ; 0x0204C500
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	cmp r0, #0
	bne _0204C536
	add r0, r4, #0
	bl sub_0206AE6C
	add r5, #0x80
	ldr r0, [r5, #0]
	bl sub_020562F8
	b _0204C54E
_0204C536:
	cmp r0, #1
	bne _0204C54A
	add r0, r4, #0
	bl sub_0206AE7C
	add r5, #0x80
	ldr r0, [r5, #0]
	bl sub_02056328
	b _0204C54E
_0204C54A:
	bl sub_02022974
_0204C54E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204C500

	thumb_func_start sub_0204C554
sub_0204C554: ; 0x0204C554
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02024440
	add r6, r0, #0
	mov r0, #0x20
	bl sub_02073C74
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202F028
	cmp r0, #6
	bne _0204C58C
	mov r0, #1
	b _0204C58E
_0204C58C:
	mov r0, #0
_0204C58E:
	strh r0, [r4]
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204C554

	thumb_func_start sub_0204C59C
sub_0204C59C: ; 0x0204C59C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02024440
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02024420
	str r0, [sp, #8]
	mov r0, #0x20
	bl sub_02073C74
	add r4, r0, #0
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_02027560
	mov r5, #0
_0204C5E0:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202F000
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #4]
	add r0, r4, #0
	mov r2, #2
	mov r3, #0
	bl sub_0209304C
	add r0, r4, #0
	bl sub_02076B10
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_02079868
	cmp r0, #0
	bne _0204C610
	bl sub_02022974
_0204C610:
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	bl sub_0202F180
	add r5, r5, #1
	cmp r5, #6
	blt _0204C5E0
	add r0, r4, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0202EF04
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204C59C

	thumb_func_start sub_0204C638
sub_0204C638: ; 0x0204C638
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, r0, #0
	cmp r6, #3
	bhi _0204C6C4
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204C672: ; jump table
	.short _0204C67A - _0204C672 - 2 ; case 0
	.short _0204C686 - _0204C672 - 2 ; case 1
	.short _0204C692 - _0204C672 - 2 ; case 2
	.short _0204C69E - _0204C672 - 2 ; case 3
_0204C67A:
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_020563D0
	strh r0, [r5]
	b _0204C6C4
_0204C686:
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_020563E0
	strh r0, [r5]
	b _0204C6C4
_0204C692:
	add r4, #0x80
	ldr r0, [r4, #0]
	bl sub_020563F0
	strh r0, [r5]
	b _0204C6C4
_0204C69E:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020563E0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_020563D0
	add r4, #0x80
	add r7, r0, #0
	ldr r0, [r4, #0]
	bl sub_020563F0
	add r0, r7, r0
	add r0, r6, r0
	strh r0, [r5]
_0204C6C4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204C638