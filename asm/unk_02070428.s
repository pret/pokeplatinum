	.include "macros/function.inc"
	.include "include/unk_02070428.inc"

	

	.text


	thumb_func_start sub_02070428
sub_02070428: ; 0x02070428
	add r0, #0xb8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02070428

	thumb_func_start sub_02070430
sub_02070430: ; 0x02070430
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020705DC
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #0
	bl sub_0206AF1C
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #0
	bl sub_0206AEAC
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_0203A8E8
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	mov r1, #0
	bl sub_0202D9EC
	add r0, r5, #0
	mov r1, #0
	add r0, #0x78
	strh r1, [r0]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #0
	bne _02070492
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	ldr r1, [r5, #0x1c]
	add r4, r0, #0
	ldr r1, [r1, #0]
	bl sub_0206C404
	add r0, r4, #0
	bl sub_0206C37C
_02070492:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02070430

	thumb_func_start sub_02070494
sub_02070494: ; 0x02070494
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	cmp r1, #1
	beq _0207056A
	bl sub_020705DC
	cmp r0, #0
	bne _020704B0
	add r0, r5, #0
	bl sub_02070610
_020704B0:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #0
	bl sub_0206AF1C
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE9C
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #0
	bl sub_0206AEAC
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_0203A8E8
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	mov r1, #0
	bl sub_0202D9EC
	add r0, r5, #0
	mov r1, #0
	add r0, #0x78
	strh r1, [r0]
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	ldr r1, [r5, #0x1c]
	ldr r1, [r1, #0]
	bl sub_0206C404
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A274
	cmp r0, #0
	bne _0207051C
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	bl sub_0206AECC
	add r0, r4, #0
	bl sub_0206AEFC
_0207051C:
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A780
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02070540
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A1F0
	cmp r0, #0
	bne _02070540
	mov r0, #0
	str r0, [r4, #4]
	b _0207054A
_02070540:
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _0207054A
	mov r0, #0
	str r0, [r4, #4]
_0207054A:
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A24C
	cmp r0, #0
	beq _0207056A
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A76C
	ldr r2, [r5, #0x1c]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	bl sub_020556E8
_0207056A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02070494

	thumb_func_start sub_0207056C
sub_0207056C: ; 0x0207056C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AE4C
	ldr r0, [r4, #0xc]
	bl sub_0202D834
	bl sub_0206C354
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207056C

	thumb_func_start sub_02070588
sub_02070588: ; 0x02070588
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AE4C
	ldr r0, [r4, #0xc]
	bl sub_0202D834
	bl sub_0206C354
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02070588

	thumb_func_start sub_020705A4
sub_020705A4: ; 0x020705A4
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE4C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020705A4

	thumb_func_start sub_020705B4
sub_020705B4: ; 0x020705B4
	push {r4, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r4, r0, #0
	bl sub_0206A974
	add r0, r4, #0
	mov r1, #0
	bl sub_0206B024
	pop {r4, pc}
	thumb_func_end sub_020705B4

	thumb_func_start sub_020705CC
sub_020705CC: ; 0x020705CC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202D834
	bl sub_0206C354
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020705CC

	thumb_func_start sub_020705DC
sub_020705DC: ; 0x020705DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A87C
	add r1, r0, #0
	beq _0207060A
	add r0, r4, #0
	bl sub_0203A920
	cmp r0, #0
	bne _0207060A
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0x9c
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x20
	bl sub_0202C704
	mov r0, #1
	pop {r4, pc}
_0207060A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020705DC

	thumb_func_start sub_02070610
sub_02070610: ; 0x02070610
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A728
	ldr r1, [r5, #0x1c]
	ldr r6, [r0, #0]
	ldr r4, [r1, #0]
	cmp r6, r4
	beq _02070646
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	mov r1, #0x20
	add r5, #0x9c
	str r1, [sp]
	ldr r1, [r5, #0]
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0202C5C4
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02070646:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02070610