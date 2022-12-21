	.include "macros/function.inc"
	.include "include/unk_020277A4.inc"

	

	.text


	thumb_func_start sub_020277A4
sub_020277A4: ; 0x020277A4
	ldr r0, _020277A8 ; =0x0000078C
	bx lr
	; .align 2, 0
_020277A8: .word 0x0000078C
	thumb_func_end sub_020277A4

	thumb_func_start sub_020277AC
sub_020277AC: ; 0x020277AC
	push {r4, lr}
	add r4, r0, #0
	ldr r2, _0202781C ; =0x0000078C
	mov r0, #0
	add r1, r4, #0
	bl sub_020C4BB8
	add r0, r4, #0
	bl sub_02027B70
	mov r0, #7
	lsl r0, r0, #8
	add r0, r4, r0
	bl sub_02027F50
	ldr r1, _02027820 ; =0x00000724
	ldr r0, _02027824 ; =0x0000FFFF
	add r1, r4, r1
	mov r2, #8
	bl sub_020C4AF0
	ldr r1, _02027828 ; =0x00000734
	ldr r0, _02027824 ; =0x0000FFFF
	add r1, r4, r1
	mov r2, #0xb
	bl sub_020C4AF0
	ldr r0, _0202782C ; =0x00000754
	mov r1, #4
	add r0, r4, r0
	bl sub_02014A9C
	ldr r0, _02027830 ; =0x00000756
	mov r1, #0
	strh r1, [r4, r0]
	ldr r0, _02027834 ; =0x000001B9
	mov r1, #0x63
	bl sub_02014DFC
	ldr r1, _02027838 ; =0x00000758
	ldr r2, _02027824 ; =0x0000FFFF
	strh r0, [r4, r1]
	add r0, r1, #2
	strh r2, [r4, r0]
	mov r3, #0
	add r0, r1, #4
	sub r2, r3, #1
	add r1, #0x18
_0202780C:
	str r2, [r4, r0]
	str r2, [r4, r1]
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, #5
	blt _0202780C
	pop {r4, pc}
	nop
_0202781C: .word 0x0000078C
_02027820: .word 0x00000724
_02027824: .word 0x0000FFFF
_02027828: .word 0x00000734
_0202782C: .word 0x00000754
_02027830: .word 0x00000756
_02027834: .word 0x000001B9
_02027838: .word 0x00000758
	thumb_func_end sub_020277AC

	thumb_func_start sub_0202783C
sub_0202783C: ; 0x0202783C
	ldr r3, _02027844 ; =sub_020245BC
	mov r1, #0xa
	bx r3
	nop
_02027844: .word sub_020245BC
	thumb_func_end sub_0202783C

	thumb_func_start sub_02027848
sub_02027848: ; 0x02027848
	ldr r3, _02027850 ; =sub_020245E0
	mov r1, #0xa
	bx r3
	nop
_02027850: .word sub_020245E0
	thumb_func_end sub_02027848

	thumb_func_start sub_02027854
sub_02027854: ; 0x02027854
	ldr r3, _0202785C ; =sub_020245BC
	mov r1, #0xa
	bx r3
	nop
_0202785C: .word sub_020245BC
	thumb_func_end sub_02027854

	thumb_func_start sub_02027860
sub_02027860: ; 0x02027860
	push {r3, lr}
	mov r1, #0xa
	bl sub_020245BC
	mov r1, #7
	lsl r1, r1, #8
	add r0, r0, r1
	pop {r3, pc}
	thumb_func_end sub_02027860

	thumb_func_start sub_02027870
sub_02027870: ; 0x02027870
	ldr r1, _02027878 ; =0x00000724
	add r0, r0, r1
	bx lr
	nop
_02027878: .word 0x00000724
	thumb_func_end sub_02027870

	thumb_func_start sub_0202787C
sub_0202787C: ; 0x0202787C
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, _0202788C ; =0x00000724
	ldr r3, _02027890 ; =sub_02023DF0
	add r1, r2, r1
	mov r2, #8
	bx r3
	nop
_0202788C: .word 0x00000724
_02027890: .word sub_02023DF0
	thumb_func_end sub_0202787C

	thumb_func_start sub_02027894
sub_02027894: ; 0x02027894
	ldr r1, _0202789C ; =0x00000734
	add r0, r0, r1
	bx lr
	nop
_0202789C: .word 0x00000734
	thumb_func_end sub_02027894

	thumb_func_start sub_020278A0
sub_020278A0: ; 0x020278A0
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, _020278B0 ; =0x00000734
	ldr r3, _020278B4 ; =sub_02023DF0
	add r1, r2, r1
	mov r2, #0xb
	bx r3
	nop
_020278B0: .word 0x00000734
_020278B4: .word sub_02023DF0
	thumb_func_end sub_020278A0

	thumb_func_start sub_020278B8
sub_020278B8: ; 0x020278B8
	ldr r2, _020278C8 ; =0x0000074D
	mov r1, #1
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #1
	orr r1, r3
	strb r1, [r0, r2]
	bx lr
	; .align 2, 0
_020278C8: .word 0x0000074D
	thumb_func_end sub_020278B8

	thumb_func_start sub_020278CC
sub_020278CC: ; 0x020278CC
	ldr r1, _020278D8 ; =0x0000074D
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	nop
_020278D8: .word 0x0000074D
	thumb_func_end sub_020278CC

	thumb_func_start sub_020278DC
sub_020278DC: ; 0x020278DC
	push {r4, r5}
	ldr r4, _02027910 ; =0x0000074A
	mov r5, #0x7f
	strh r1, [r0, r4]
	add r1, r4, #2
	ldrb r1, [r0, r1]
	lsl r2, r2, #0x18
	bic r1, r5
	lsr r5, r2, #0x18
	mov r2, #0x7f
	and r2, r5
	orr r2, r1
	add r1, r4, #2
	strb r2, [r0, r1]
	ldrb r1, [r0, r1]
	mov r2, #0x80
	bic r1, r2
	lsl r2, r3, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x18
	orr r2, r1
	add r1, r4, #2
	strb r2, [r0, r1]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02027910: .word 0x0000074A
	thumb_func_end sub_020278DC

	thumb_func_start sub_02027914
sub_02027914: ; 0x02027914
	push {r4, r5}
	ldr r4, _02027934 ; =0x0000074A
	ldrh r5, [r0, r4]
	str r5, [r1, #0]
	add r1, r4, #2
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	str r1, [r2, #0]
	add r1, r4, #2
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	str r0, [r3, #0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02027934: .word 0x0000074A
	thumb_func_end sub_02027914

	thumb_func_start sub_02027938
sub_02027938: ; 0x02027938
	ldr r2, _02027954 ; =0x00000754
	ldrh r3, [r0, r2]
	strh r3, [r1]
	add r3, r2, #2
	ldrh r3, [r0, r3]
	strh r3, [r1, #2]
	add r3, r2, #4
	ldrh r3, [r0, r3]
	add r2, r2, #6
	strh r3, [r1, #4]
	ldrh r0, [r0, r2]
	strh r0, [r1, #6]
	bx lr
	nop
_02027954: .word 0x00000754
	thumb_func_end sub_02027938

	thumb_func_start sub_02027958
sub_02027958: ; 0x02027958
	push {r3, r4}
	ldrh r3, [r1]
	ldr r2, _02027978 ; =0x00000754
	strh r3, [r0, r2]
	ldrh r4, [r1, #2]
	add r3, r2, #2
	strh r4, [r0, r3]
	ldrh r4, [r1, #4]
	add r3, r2, #4
	strh r4, [r0, r3]
	ldrh r3, [r1, #6]
	add r1, r2, #6
	strh r3, [r0, r1]
	pop {r3, r4}
	bx lr
	nop
_02027978: .word 0x00000754
	thumb_func_end sub_02027958

	thumb_func_start sub_0202797C
sub_0202797C: ; 0x0202797C
	ldr r2, _02027988 ; =0x0000074D
	ldrb r0, [r0, r2]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1c
	strb r0, [r1]
	bx lr
	; .align 2, 0
_02027988: .word 0x0000074D
	thumb_func_end sub_0202797C

	thumb_func_start sub_0202798C
sub_0202798C: ; 0x0202798C
	push {r3, r4}
	ldr r3, _020279A4 ; =0x0000074D
	lsl r1, r1, #0x1c
	ldrb r4, [r0, r3]
	mov r2, #0x1e
	lsr r1, r1, #0x1b
	bic r4, r2
	orr r1, r4
	strb r1, [r0, r3]
	pop {r3, r4}
	bx lr
	nop
_020279A4: .word 0x0000074D
	thumb_func_end sub_0202798C

	thumb_func_start sub_020279A8
sub_020279A8: ; 0x020279A8
	push {r3, r4, r5, r6}
	sub r4, r1, #1
	lsl r1, r4, #2
	add r1, r0, r1
	ldr r5, _020279CC ; =0x0000075C
	add r0, r0, r4
	ldr r6, [r1, r5]
	str r6, [r2, #0]
	add r2, r5, #0
	add r2, #0x14
	ldr r1, [r1, r2]
	add r5, #0x28
	str r1, [r3, #0]
	ldrb r1, [r0, r5]
	ldr r0, [sp, #0x10]
	strb r1, [r0]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_020279CC: .word 0x0000075C
	thumb_func_end sub_020279A8

	thumb_func_start sub_020279D0
sub_020279D0: ; 0x020279D0
	push {r4, r5}
	sub r1, r1, #1
	lsl r4, r1, #2
	add r5, r0, r4
	ldr r4, _020279F4 ; =0x0000075C
	add r0, r0, r1
	str r2, [r5, r4]
	add r2, r4, #0
	add r2, #0x14
	str r3, [r5, r2]
	ldr r2, _020279F8 ; =0xFFFFFFF8
	add r4, #0x28
	add r2, sp
	ldrb r2, [r2, #0x10]
	strb r2, [r0, r4]
	pop {r4, r5}
	bx lr
	nop
_020279F4: .word 0x0000075C
_020279F8: .word 0xFFFFFFF8
	thumb_func_end sub_020279D0