	.include "macros/function.inc"
	.include "include/unk_020482D4.inc"

	

	.text


	thumb_func_start sub_020482D4
sub_020482D4: ; 0x020482D4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02005690
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020482D4

	thumb_func_start sub_020482FC
sub_020482FC: ; 0x020482FC
	push {r3, lr}
	bl sub_0203E838
	bl sub_0200549C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020482FC

	thumb_func_start sub_0204830C
sub_0204830C: ; 0x0204830C
	push {r3, lr}
	bl sub_0203E838
	bl sub_020041FC
	mov r1, #0
	bl sub_020055D0
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204830C

	thumb_func_start sub_02048320
sub_02048320: ; 0x02048320
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x1c]
	ldr r1, [r1, #0]
	bl sub_020554A4
	bl sub_0200549C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02048320

	thumb_func_start sub_02048338
sub_02048338: ; 0x02048338
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_020553F0
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02048338

	thumb_func_start sub_02048350
sub_02048350: ; 0x02048350
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0200564C
	ldr r1, _02048374 ; =sub_02048378
	add r0, r5, #0
	bl sub_0203E764
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02048374: .word sub_02048378
	thumb_func_end sub_02048350

	thumb_func_start sub_02048378
sub_02048378: ; 0x02048378
	push {r3, lr}
	bl sub_02005684
	cmp r0, #0
	bne _02048386
	mov r0, #1
	pop {r3, pc}
_02048386:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02048378

	thumb_func_start sub_0204838C
sub_0204838C: ; 0x0204838C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	mov r0, #0x7f
	mov r2, #0
	bl sub_0200560C
	ldr r1, _020483AC ; =sub_02048378
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_020483AC: .word sub_02048378
	thumb_func_end sub_0204838C

	thumb_func_start sub_020483B0
sub_020483B0: ; 0x020483B0
	push {r3, lr}
	ldr r1, [r0, #8]
	add r3, r1, #1
	str r3, [r0, #8]
	ldrb r2, [r1]
	add r1, r3, #1
	str r1, [r0, #8]
	ldrb r1, [r3]
	add r0, r2, #0
	bl sub_020049F4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020483B0

	thumb_func_start sub_020483CC
sub_020483CC: ; 0x020483CC
	push {r3, lr}
	bl sub_0203E838
	add r1, r0, #0
	mov r0, #4
	bl sub_02005588
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020483CC

	thumb_func_start sub_020483E0
sub_020483E0: ; 0x020483E0
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r0, [r2]
	bl sub_020041CC
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020483E0

	thumb_func_start sub_020483F4
sub_020483F4: ; 0x020483F4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	bl sub_02005748
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020483F4

	thumb_func_start sub_02048410
sub_02048410: ; 0x02048410
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	mov r1, #0
	bl sub_020057A4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02048410

	thumb_func_start sub_0204842C
sub_0204842C: ; 0x0204842C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [r4, #0x64]
	ldr r1, _02048450 ; =sub_02048454
	add r0, r4, #0
	bl sub_0203E764
	mov r0, #1
	pop {r4, pc}
	nop
_02048450: .word sub_02048454
	thumb_func_end sub_0204842C

	thumb_func_start sub_02048454
sub_02048454: ; 0x02048454
	push {r3, lr}
	ldr r0, [r0, #0x64]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020057D4
	cmp r0, #0
	bne _02048468
	mov r0, #1
	pop {r3, pc}
_02048468:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02048454

	thumb_func_start sub_0204846C
sub_0204846C: ; 0x0204846C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r0, r5, #0
	mov r1, #0
	bl sub_02005844
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204846C

	thumb_func_start sub_020484A0
sub_020484A0: ; 0x020484A0
	push {r3, lr}
	ldr r1, _020484AC ; =sub_020484B0
	bl sub_0203E764
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_020484AC: .word sub_020484B0
	thumb_func_end sub_020484A0

	thumb_func_start sub_020484B0
sub_020484B0: ; 0x020484B0
	push {r3, lr}
	bl sub_0200598C
	cmp r0, #0
	bne _020484BE
	mov r0, #1
	pop {r3, pc}
_020484BE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020484B0

	thumb_func_start sub_020484C4
sub_020484C4: ; 0x020484C4
	push {r3, lr}
	bl sub_0203E838
	bl sub_02006150
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020484C4

	thumb_func_start sub_020484D4
sub_020484D4: ; 0x020484D4
	push {r3, lr}
	ldr r1, _020484E0 ; =sub_020484E4
	bl sub_0203E764
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_020484E0: .word sub_020484E4
	thumb_func_end sub_020484D4

	thumb_func_start sub_020484E4
sub_020484E4: ; 0x020484E4
	push {r3, lr}
	bl sub_020061E4
	cmp r0, #0
	bne _020484F2
	mov r0, #1
	pop {r3, pc}
_020484F2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020484E4

	thumb_func_start sub_020484F8
sub_020484F8: ; 0x020484F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CC98
	bl sub_02006260
	cmp r0, #1
	bne _02048528
	mov r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
_02048528:
	mov r0, #0
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020484F8

	thumb_func_start sub_02048530
sub_02048530: ; 0x02048530
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	bl sub_0200637C
	cmp r0, #0
	bne _02048554
	mov r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r4, pc}
_02048554:
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02048530

	thumb_func_start sub_0204855C
sub_0204855C: ; 0x0204855C
	push {r3, lr}
	bl sub_020063B8
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204855C

	thumb_func_start sub_02048568
sub_02048568: ; 0x02048568
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CC98
	bl sub_020063C0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_02048568

	thumb_func_start sub_0204857C
sub_0204857C: ; 0x0204857C
	push {r3, lr}
	mov r1, #0
	mov r0, #0x3f
	add r2, r1, #0
	bl sub_02004550
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0204857C

	thumb_func_start sub_0204858C
sub_0204858C: ; 0x0204858C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02004AD4
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204858C

	thumb_func_start sub_020485C0
sub_020485C0: ; 0x020485C0
	push {r3, lr}
	ldr r1, _020485D0 ; =0x000004C2
	mov r0, #0x16
	mov r2, #1
	bl sub_02004550
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_020485D0: .word 0x000004C2
	thumb_func_end sub_020485C0

	thumb_func_start sub_020485D4
sub_020485D4: ; 0x020485D4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r1, r0, #0
	mov r0, #4
	mov r2, #1
	bl sub_02004550
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020485D4

	thumb_func_start sub_020485F4
sub_020485F4: ; 0x020485F4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	bl sub_020041FC
	strh r0, [r4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020485F4