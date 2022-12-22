	.include "macros/function.inc"
	.include "include/unk_020366A0.inc"

	

	.text


	thumb_func_start sub_020366A0
sub_020366A0: ; 0x020366A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02036730 ; =0x021C07D4
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0203672C
	cmp r5, #0
	bne _020366B6
	bl sub_02022974
_020366B6:
	bl sub_02033478
	mov r0, #0xf
	mov r1, #0x64
	bl sub_02018144
	ldr r1, _02036730 ; =0x021C07D4
	mov r2, #0x64
	str r0, [r1, #0]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _02036730 ; =0x021C07D4
	mov r2, #0x32
	ldr r1, [r0, #0]
	str r2, [r1, #0x40]
	ldr r1, [r0, #0]
	mov r2, #1
	add r1, #0x4e
	strb r2, [r1]
	ldr r0, [r0, #0]
	str r5, [r0, #0x28]
	add r0, r5, #0
	bl sub_02025E38
	ldr r1, _02036730 ; =0x021C07D4
	ldr r2, [r1, #0]
	str r0, [r2, #0x2c]
	ldr r0, [r1, #0]
	mov r2, #2
	add r0, #0x46
	strb r2, [r0]
	ldr r0, [r1, #0]
	mov r2, #0
	add r0, #0x48
	strb r2, [r0]
	ldr r0, [r1, #0]
	add r0, #0x53
	strb r2, [r0]
	ldr r0, [r1, #0]
	add r0, #0x4a
	strb r4, [r0]
	ldr r0, [r1, #0]
	add r0, #0xc
	bl sub_020361BC
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_02032798
	cmp r4, #9
	beq _0203672C
	cmp r4, #0x11
	beq _0203672C
	cmp r4, #0xf
	beq _0203672C
	bl sub_02039734
_0203672C:
	pop {r3, r4, r5, pc}
	nop
_02036730: .word 0x021C07D4
	thumb_func_end sub_020366A0

	thumb_func_start sub_02036734
sub_02036734: ; 0x02036734
	push {r3, lr}
	ldr r0, _0203677C ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203677A
	bl sub_020327E0
	ldr r0, _0203677C ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02036750
	bl sub_020181C4
_02036750:
	bl sub_020389B8
	cmp r0, #0
	beq _0203675E
	mov r0, #0x31
	bl sub_0201807C
_0203675E:
	bl sub_02039794
	bl sub_020334CC
	ldr r0, _0203677C ; =0x021C07D4
	ldr r0, [r0, #0]
	bl sub_020181C4
	mov r0, #0xf
	bl sub_0201807C
	ldr r0, _0203677C ; =0x021C07D4
	mov r1, #0
	str r1, [r0, #0]
_0203677A:
	pop {r3, pc}
	; .align 2, 0
_0203677C: .word 0x021C07D4
	thumb_func_end sub_02036734

	thumb_func_start sub_02036780
sub_02036780: ; 0x02036780
	ldr r0, _02036790 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203678C
	mov r0, #1
	bx lr
_0203678C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02036790: .word 0x021C07D4
	thumb_func_end sub_02036780

	thumb_func_start sub_02036794
sub_02036794: ; 0x02036794
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020367C8 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020367C4
	mov r1, #0xf
	mov r0, #3
	lsl r2, r1, #0xc
	bl sub_02017FD4
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020366A0
	ldr r0, _020367C8 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x4b
	strb r1, [r0]
	ldr r0, _020367CC ; =sub_02036CA4
	mov r1, #0x32
	bl sub_02036C94
_020367C4:
	pop {r4, pc}
	nop
_020367C8: .word 0x021C07D4
_020367CC: .word sub_02036CA4
	thumb_func_end sub_02036794

	thumb_func_start sub_020367D0
sub_020367D0: ; 0x020367D0
	push {r3, lr}
	ldr r0, _020367E8 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020367E6
	bl sub_020363D0
	ldr r0, _020367EC ; =sub_02037344
	mov r1, #0
	bl sub_02036C94
_020367E6:
	pop {r3, pc}
	; .align 2, 0
_020367E8: .word 0x021C07D4
_020367EC: .word sub_02037344
	thumb_func_end sub_020367D0

	thumb_func_start sub_020367F0
sub_020367F0: ; 0x020367F0
	push {r3, lr}
	bl sub_02034AE4
	bl sub_0203608C
	ldr r1, _0203680C ; =0x021C07D4
	ldr r1, [r1, #0]
	add r1, #0x44
	strh r0, [r1]
	ldr r0, _02036810 ; =sub_0203712C
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_0203680C: .word 0x021C07D4
_02036810: .word sub_0203712C
	thumb_func_end sub_020367F0

	thumb_func_start sub_02036814
sub_02036814: ; 0x02036814
	ldr r1, _02036820 ; =0x021C07D4
	ldr r1, [r1, #0]
	add r1, #0x5a
	strb r0, [r1]
	bx lr
	nop
_02036820: .word 0x021C07D4
	thumb_func_end sub_02036814

	thumb_func_start sub_02036824
sub_02036824: ; 0x02036824
	ldr r3, _0203682C ; =sub_02036C94
	ldr r0, _02036830 ; =sub_02036FA4
	mov r1, #0
	bx r3
	; .align 2, 0
_0203682C: .word sub_02036C94
_02036830: .word sub_02036FA4
	thumb_func_end sub_02036824

	thumb_func_start sub_02036834
sub_02036834: ; 0x02036834
	push {r4}
	sub sp, #0xc
	ldr r4, _0203687C ; =0x020E5E7C
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	ldr r0, _02036880 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x24]
	cmp r0, #0
	bne _02036858
	add sp, #0xc
	mov r0, #0
	pop {r4}
	bx lr
_02036858:
	ldr r0, [sp]
	cmp r0, #0
	beq _02036874
_0203685E:
	ldr r0, [r2, #0]
	cmp r1, r0
	bne _0203686C
	add sp, #0xc
	mov r0, #1
	pop {r4}
	bx lr
_0203686C:
	add r2, r2, #4
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _0203685E
_02036874:
	mov r0, #0
	add sp, #0xc
	pop {r4}
	bx lr
	; .align 2, 0
_0203687C: .word 0x020E5E7C
_02036880: .word 0x021C07D4
	thumb_func_end sub_02036834

	thumb_func_start sub_02036884
sub_02036884: ; 0x02036884
	ldr r3, _0203688C ; =sub_02036C94
	ldr r0, _02036890 ; =sub_020370EC
	mov r1, #0
	bx r3
	; .align 2, 0
_0203688C: .word sub_02036C94
_02036890: .word sub_020370EC
	thumb_func_end sub_02036884

	thumb_func_start sub_02036894
sub_02036894: ; 0x02036894
	ldr r0, _020368A0 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x57
	strb r1, [r0]
	bx lr
	; .align 2, 0
_020368A0: .word 0x021C07D4
	thumb_func_end sub_02036894

	thumb_func_start sub_020368A4
sub_020368A4: ; 0x020368A4
	push {r3, lr}
	bl sub_02033478
	ldr r0, _020368B4 ; =sub_02037108
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_020368B4: .word sub_02037108
	thumb_func_end sub_020368A4

	thumb_func_start sub_020368B8
sub_020368B8: ; 0x020368B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02035E38
	cmp r0, #0
	bne _020368F0
	ldr r2, _020368F4 ; =0x00007080
	mov r0, #3
	mov r1, #0xf
	bl sub_02017FD4
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020366A0
	ldr r0, _020368F8 ; =0x021C07D4
	ldr r1, [r0, #0]
	add r1, #0x4b
	strb r5, [r1]
	ldr r0, [r0, #0]
	mov r1, #0
	str r4, [r0, #0x30]
	ldr r0, _020368FC ; =sub_02037144
	bl sub_02036C94
_020368F0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020368F4: .word 0x00007080
_020368F8: .word 0x021C07D4
_020368FC: .word sub_02037144
	thumb_func_end sub_020368B8

	thumb_func_start sub_02036900
sub_02036900: ; 0x02036900
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02035E38
	cmp r0, #0
	bne _02036938
	ldr r2, _0203693C ; =0x00007080
	mov r0, #3
	mov r1, #0xf
	bl sub_02017FD4
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020366A0
	ldr r0, _02036940 ; =0x021C07D4
	ldr r1, [r0, #0]
	add r1, #0x4b
	strb r5, [r1]
	ldr r0, [r0, #0]
	mov r1, #0
	str r4, [r0, #0x30]
	ldr r0, _02036944 ; =sub_020371C0
	bl sub_02036C94
_02036938:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203693C: .word 0x00007080
_02036940: .word 0x021C07D4
_02036944: .word sub_020371C0
	thumb_func_end sub_02036900

	thumb_func_start sub_02036948
sub_02036948: ; 0x02036948
	ldr r1, _02036958 ; =0x021C07D4
	ldr r3, _0203695C ; =sub_02036C94
	ldr r1, [r1, #0]
	add r1, #0x49
	strb r0, [r1]
	ldr r0, _02036960 ; =sub_02037210
	mov r1, #0
	bx r3
	; .align 2, 0
_02036958: .word 0x021C07D4
_0203695C: .word sub_02036C94
_02036960: .word sub_02037210
	thumb_func_end sub_02036948

	thumb_func_start sub_02036964
sub_02036964: ; 0x02036964
	push {r3, lr}
	bl sub_02034B2C
	ldr r0, _02036974 ; =sub_020372DC
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_02036974: .word sub_020372DC
	thumb_func_end sub_02036964

	thumb_func_start sub_02036978
sub_02036978: ; 0x02036978
	push {r3, lr}
	ldr r0, _0203698C ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203698A
	ldr r0, _02036990 ; =sub_020373B8
	mov r1, #5
	bl sub_02036C94
_0203698A:
	pop {r3, pc}
	; .align 2, 0
_0203698C: .word 0x021C07D4
_02036990: .word sub_020373B8
	thumb_func_end sub_02036978

	thumb_func_start sub_02036994
sub_02036994: ; 0x02036994
	ldr r3, _02036998 ; =sub_0203208C
	bx r3
	; .align 2, 0
_02036998: .word sub_0203208C
	thumb_func_end sub_02036994

	thumb_func_start sub_0203699C
sub_0203699C: ; 0x0203699C
	push {r4}
	sub sp, #0xc
	ldr r4, _020369E4 ; =0x020E5E88
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	ldr r0, _020369E8 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x24]
	cmp r0, #0
	bne _020369C0
	add sp, #0xc
	mov r0, #0
	pop {r4}
	bx lr
_020369C0:
	ldr r0, [sp]
	cmp r0, #0
	beq _020369DC
_020369C6:
	ldr r0, [r2, #0]
	cmp r1, r0
	bne _020369D4
	add sp, #0xc
	mov r0, #1
	pop {r4}
	bx lr
_020369D4:
	add r2, r2, #4
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _020369C6
_020369DC:
	mov r0, #0
	add sp, #0xc
	pop {r4}
	bx lr
	; .align 2, 0
_020369E4: .word 0x020E5E88
_020369E8: .word 0x021C07D4
	thumb_func_end sub_0203699C

	thumb_func_start sub_020369EC
sub_020369EC: ; 0x020369EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02036A2C ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02036A2A
	ldr r2, _02036A30 ; =0x00007080
	mov r0, #3
	mov r1, #0xf
	bl sub_02017FD4
	cmp r0, #0
	bne _02036A0A
	bl sub_02038A0C
_02036A0A:
	add r0, r4, #0
	mov r1, #9
	bl sub_020366A0
	ldr r0, _02036A2C ; =0x021C07D4
	mov r2, #9
	ldr r1, [r0, #0]
	add r1, #0x4a
	strb r2, [r1]
	ldr r0, [r0, #0]
	mov r1, #0
	add r0, #0x4b
	strb r1, [r0]
	ldr r0, _02036A34 ; =sub_020373F0
	bl sub_02036C94
_02036A2A:
	pop {r4, pc}
	; .align 2, 0
_02036A2C: .word 0x021C07D4
_02036A30: .word 0x00007080
_02036A34: .word sub_020373F0
	thumb_func_end sub_020369EC

	thumb_func_start sub_02036A38
sub_02036A38: ; 0x02036A38
	push {r3, lr}
	ldr r1, _02036A60 ; =0x021C07D4
	ldr r2, [r1, #0]
	add r2, #0x49
	strb r0, [r2]
	ldr r0, [r1, #0]
	mov r2, #3
	add r0, #0x44
	strh r2, [r0]
	mov r0, #1
	bl sub_02032138
	bl sub_02039734
	ldr r0, _02036A64 ; =sub_020375A4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	nop
_02036A60: .word 0x021C07D4
_02036A64: .word sub_020375A4
	thumb_func_end sub_02036A38

	thumb_func_start sub_02036A68
sub_02036A68: ; 0x02036A68
	ldr r0, _02036A94 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02036A76
	mov r0, #0
	mvn r0, r0
	bx lr
_02036A76:
	ldr r1, [r0, #0x24]
	ldr r0, _02036A98 ; =sub_02037724
	cmp r1, r0
	bne _02036A82
	mov r0, #1
	bx lr
_02036A82:
	ldr r0, _02036A9C ; =sub_0203773C
	cmp r1, r0
	bne _02036A8C
	mov r0, #1
	b _02036A8E
_02036A8C:
	mov r0, #0
_02036A8E:
	neg r0, r0
	bx lr
	nop
_02036A94: .word 0x021C07D4
_02036A98: .word sub_02037724
_02036A9C: .word sub_0203773C
	thumb_func_end sub_02036A68

	thumb_func_start sub_02036AA0
sub_02036AA0: ; 0x02036AA0
	ldr r0, _02036ABC ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02036AAC
	mov r0, #0
	bx lr
_02036AAC:
	ldr r1, [r0, #0x24]
	ldr r0, _02036AC0 ; =sub_02037790
	cmp r1, r0
	bne _02036AB8
	mov r0, #1
	bx lr
_02036AB8:
	mov r0, #0
	bx lr
	; .align 2, 0
_02036ABC: .word 0x021C07D4
_02036AC0: .word sub_02037790
	thumb_func_end sub_02036AA0

	thumb_func_start sub_02036AC4
sub_02036AC4: ; 0x02036AC4
	push {r3, lr}
	mov r0, #0
	bl sub_02032138
	ldr r0, _02036B38 ; =0x021C07D4
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #1
	bne _02036AEC
	add r0, r1, #0
	add r0, #0x50
	ldrb r0, [r0]
	cmp r0, #1
	bne _02036AEC
	add r1, #0x4a
	ldrb r0, [r1]
	cmp r0, #9
	bne _02036AF4
_02036AEC:
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
_02036AF4:
	bl sub_02039794
	ldr r0, _02036B38 ; =0x021C07D4
	mov r2, #9
	ldr r1, [r0, #0]
	add r1, #0x4a
	strb r2, [r1]
	ldr r1, [r0, #0]
	mov r2, #0
	add r1, #0x53
	strb r2, [r1]
	ldr r0, [r0, #0]
	add r0, #0x46
	ldrb r0, [r0]
	bl sub_02031FA4
	bl sub_0203608C
	cmp r0, #0
	bne _02036B2C
	mov r0, #1
	bl sub_02032160
	ldr r0, _02036B3C ; =sub_02037354
	mov r1, #0xf
	bl sub_02036C94
	pop {r3, pc}
_02036B2C:
	ldr r0, _02036B40 ; =sub_0203739C
	mov r1, #5
	bl sub_02036C94
	pop {r3, pc}
	nop
_02036B38: .word 0x021C07D4
_02036B3C: .word sub_02037354
_02036B40: .word sub_0203739C
	thumb_func_end sub_02036AC4

	thumb_func_start sub_02036B44
sub_02036B44: ; 0x02036B44
	ldr r0, _02036B60 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02036B50
	mov r0, #1
	bx lr
_02036B50:
	ldr r1, [r0, #0x24]
	ldr r0, _02036B64 ; =sub_02037474
	cmp r1, r0
	beq _02036B5C
	mov r0, #1
	bx lr
_02036B5C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02036B60: .word 0x021C07D4
_02036B64: .word sub_02037474
	thumb_func_end sub_02036B44

	thumb_func_start sub_02036B68
sub_02036B68: ; 0x02036B68
	push {r3, lr}
	ldr r0, _02036B7C ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02036B7A
	ldr r0, _02036B80 ; =sub_020373B8
	mov r1, #5
	bl sub_02036C94
_02036B7A:
	pop {r3, pc}
	; .align 2, 0
_02036B7C: .word 0x021C07D4
_02036B80: .word sub_020373B8
	thumb_func_end sub_02036B68

	thumb_func_start sub_02036B84
sub_02036B84: ; 0x02036B84
	push {r3, lr}
	ldr r0, _02036B9C ; =0x021C07D4
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02036B98
	mov r0, #1
	add r1, #0x53
	strb r0, [r1]
	bl sub_02032138
_02036B98:
	pop {r3, pc}
	nop
_02036B9C: .word 0x021C07D4
	thumb_func_end sub_02036B84

	thumb_func_start sub_02036BA0
sub_02036BA0: ; 0x02036BA0
	push {r3, lr}
	ldr r0, _02036BC0 ; =0x021C07D4
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02036BBC
	mov r0, #1
	add r1, #0x53
	strb r0, [r1]
	bl sub_02032138
	ldr r0, _02036BC4 ; =sub_020377E4
	mov r1, #0
	bl sub_02036C94
_02036BBC:
	pop {r3, pc}
	nop
_02036BC0: .word 0x021C07D4
_02036BC4: .word sub_020377E4
	thumb_func_end sub_02036BA0

	thumb_func_start sub_02036BC8
sub_02036BC8: ; 0x02036BC8
	ldr r0, _02036BD4 ; =0x021C07D4
	mov r1, #0x12
	ldr r0, [r0, #0]
	add r0, #0x4a
	strb r1, [r0]
	bx lr
	; .align 2, 0
_02036BD4: .word 0x021C07D4
	thumb_func_end sub_02036BC8

	thumb_func_start sub_02036BD8
sub_02036BD8: ; 0x02036BD8
	ldr r0, _02036BE4 ; =0x021C07D4
	mov r1, #9
	ldr r0, [r0, #0]
	add r0, #0x4a
	strb r1, [r0]
	bx lr
	; .align 2, 0
_02036BE4: .word 0x021C07D4
	thumb_func_end sub_02036BD8

	thumb_func_start sub_02036BE8
sub_02036BE8: ; 0x02036BE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02035E38
	cmp r0, #0
	bne _02036C10
	ldr r2, _02036C14 ; =0x00007080
	mov r0, #3
	mov r1, #0xf
	bl sub_02017FD4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020366A0
	ldr r0, _02036C18 ; =sub_02037E20
	mov r1, #0
	bl sub_02036C94
_02036C10:
	pop {r3, r4, r5, pc}
	nop
_02036C14: .word 0x00007080
_02036C18: .word sub_02037E20
	thumb_func_end sub_02036BE8

	thumb_func_start sub_02036C1C
sub_02036C1C: ; 0x02036C1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02035E38
	cmp r0, #0
	bne _02036C44
	ldr r2, _02036C48 ; =0x00007080
	mov r0, #3
	mov r1, #0xf
	bl sub_02017FD4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020366A0
	ldr r0, _02036C4C ; =sub_02037E68
	mov r1, #0
	bl sub_02036C94
_02036C44:
	pop {r3, r4, r5, pc}
	nop
_02036C48: .word 0x00007080
_02036C4C: .word sub_02037E68
	thumb_func_end sub_02036C1C

	thumb_func_start sub_02036C50
sub_02036C50: ; 0x02036C50
	push {r3, lr}
	ldr r0, _02036C90 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02036C62
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _02036C62
	blx r0
_02036C62:
	bl sub_020389B8
	cmp r0, #0
	beq _02036C78
	bl ov4_021D7EAC
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
	pop {r3, pc}
_02036C78:
	bl sub_02033E1C
	cmp r0, #0
	beq _02036C8C
	bl WM_GetLinkLevel
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
_02036C8C:
	pop {r3, pc}
	nop
_02036C90: .word 0x021C07D4
	thumb_func_end sub_02036C50

	thumb_func_start sub_02036C94
sub_02036C94: ; 0x02036C94
	ldr r2, _02036CA0 ; =0x021C07D4
	ldr r3, [r2, #0]
	str r0, [r3, #0x24]
	ldr r0, [r2, #0]
	str r1, [r0, #0x40]
	bx lr
	; .align 2, 0
_02036CA0: .word 0x021C07D4
	thumb_func_end sub_02036C94

	thumb_func_start sub_02036CA4
sub_02036CA4: ; 0x02036CA4
	push {r3, r4, r5, lr}
	ldr r0, _02036D70 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02036CB6
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, r4, r5, pc}
_02036CB6:
	bl sub_020334A4
	cmp r0, #0
	beq _02036D6C
	ldr r0, _02036D70 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _02036D70 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bl sub_020329E0
	mov r0, #1
	bl sub_02036168
	bl sub_02035EA8
	ldr r0, _02036D70 ; =0x021C07D4
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x55
	ldrb r0, [r0]
	cmp r0, #0
	beq _02036D3E
	add r1, #0x4e
	ldrb r1, [r1]
	mov r0, #1
	mov r2, #0x7d
	lsl r2, r2, #2
	add r3, r0, #0
	bl sub_02034778
	cmp r0, #0
	beq _02036D6C
	ldr r0, _02036D70 ; =0x021C07D4
	ldr r5, [r0, #0]
	add r4, r5, #0
	add r4, #0xc
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r5, #0xc]
	ldr r3, [r4, #4]
	bl _ull_mul
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r5, #0xc]
	str r3, [r4, #4]
	add r0, r3, #0
	mov r1, #0
	mov r2, #0x14
	mov r3, #0
	bl _ull_mul
	mov r0, #0
	add r5, #0x4e
	strb r0, [r5]
	ldr r0, _02036D74 ; =sub_02037040
	add r1, #0x14
	bl sub_02036C94
	pop {r3, r4, r5, pc}
_02036D3E:
	mov r0, #1
	mov r2, #0x7d
	add r1, r0, #0
	lsl r2, r2, #2
	bl sub_020347B4
	cmp r0, #0
	beq _02036D6C
	ldr r0, _02036D70 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x57
	ldrb r0, [r0]
	cmp r0, #0
	beq _02036D64
	ldr r0, _02036D78 ; =sub_02037330
	mov r1, #0
	bl sub_02036C94
	pop {r3, r4, r5, pc}
_02036D64:
	ldr r0, _02036D7C ; =sub_02036E5C
	mov r1, #0x40
	bl sub_02036C94
_02036D6C:
	pop {r3, r4, r5, pc}
	nop
_02036D70: .word 0x021C07D4
_02036D74: .word sub_02037040
_02036D78: .word sub_02037330
_02036D7C: .word sub_02036E5C
	thumb_func_end sub_02036CA4

	thumb_func_start sub_02036D80
sub_02036D80: ; 0x02036D80
	push {r3, r4, r5, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _02036DFA
	mov r0, #1
	bl sub_02036168
	bl sub_02035EA8
	ldr r0, _02036DFC ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x55
	ldrb r0, [r0]
	cmp r0, #0
	beq _02036DAA
	ldr r0, _02036E00 ; =sub_02036FD4
	mov r1, #0
	bl sub_02036C94
	pop {r3, r4, r5, pc}
_02036DAA:
	mov r2, #0x7d
	mov r0, #0
	mov r1, #1
	lsl r2, r2, #2
	bl sub_020347B4
	cmp r0, #0
	beq _02036DFA
	ldr r0, _02036DFC ; =0x021C07D4
	ldr r5, [r0, #0]
	add r4, r5, #0
	add r4, #0xc
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r5, #0xc]
	ldr r3, [r4, #4]
	bl _ull_mul
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r5, #0xc]
	mov r1, #0
	lsr r0, r3, #0x1a
	lsl r1, r1, #6
	orr r1, r0
	add r0, r5, #0
	str r3, [r4, #4]
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	beq _02036DF4
	lsl r1, r0, #6
	mov r0, #0
	add r5, #0x44
	strh r0, [r5]
_02036DF4:
	ldr r0, _02036E04 ; =sub_02036E5C
	bl sub_02036C94
_02036DFA:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02036DFC: .word 0x021C07D4
_02036E00: .word sub_02036FD4
_02036E04: .word sub_02036E5C
	thumb_func_end sub_02036D80

	thumb_func_start sub_02036E08
sub_02036E08: ; 0x02036E08
	push {r3, r4, r5, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _02036E52
	mov r0, #0
	mov r2, #0x7d
	add r1, r0, #0
	lsl r2, r2, #2
	bl sub_020347B4
	cmp r0, #0
	beq _02036E52
	ldr r0, _02036E54 ; =0x021C07D4
	ldr r4, [r0, #0]
	add r5, r4, #0
	add r5, #0xc
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r4, #0xc]
	ldr r3, [r5, #4]
	bl _ull_mul
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4, #0xc]
	mov r1, #0
	lsr r2, r3, #0x1b
	lsl r1, r1, #5
	orr r1, r2
	ldr r0, _02036E58 ; =sub_02036E5C
	add r1, #0x10
	str r3, [r5, #4]
	bl sub_02036C94
_02036E52:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02036E54: .word 0x021C07D4
_02036E58: .word sub_02036E5C
	thumb_func_end sub_02036E08

	thumb_func_start sub_02036E5C
sub_02036E5C: ; 0x02036E5C
	push {r3, lr}
	bl sub_02033A5C
	ldr r0, _02036ED0 ; =0x021C07D4
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _02036ECC
	add r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0
	bne _02036ECC
	bl sub_020338EC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02036E96
	ldr r1, _02036ED0 ; =0x021C07D4
	ldr r1, [r1, #0]
	add r1, #0x49
	strb r0, [r1]
	ldr r0, _02036ED4 ; =sub_02036EDC
	mov r1, #0x20
	bl sub_02036C94
	pop {r3, pc}
_02036E96:
	ldr r0, _02036ED0 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02036EA6
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02036EA6:
	bl sub_0203394C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02036EC4
	ldr r1, _02036ED0 ; =0x021C07D4
	ldr r1, [r1, #0]
	add r1, #0x49
	strb r0, [r1]
	ldr r0, _02036ED4 ; =sub_02036EDC
	mov r1, #0x20
	bl sub_02036C94
	pop {r3, pc}
_02036EC4:
	ldr r0, _02036ED8 ; =sub_02036FA4
	mov r1, #0
	bl sub_02036C94
_02036ECC:
	pop {r3, pc}
	nop
_02036ED0: .word 0x021C07D4
_02036ED4: .word sub_02036EDC
_02036ED8: .word sub_02036FA4
	thumb_func_end sub_02036E5C

	thumb_func_start sub_02036EDC
sub_02036EDC: ; 0x02036EDC
	push {r3, lr}
	bl sub_02033A5C
	ldr r0, _02036F38 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x49
	ldrb r0, [r0]
	bl sub_02033898
	cmp r0, #0
	beq _02036F0C
	ldr r0, _02036F38 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x49
	ldrb r0, [r0]
	bl sub_02034984
	cmp r0, #0
	beq _02036F0C
	ldr r0, _02036F3C ; =sub_02036F44
	mov r1, #0x64
	bl sub_02036C94
	pop {r3, pc}
_02036F0C:
	bl sub_020360F0
	cmp r0, #0
	beq _02036F1E
	ldr r0, _02036F40 ; =sub_02036FA4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02036F1E:
	ldr r0, _02036F38 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02036F2E
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02036F2E:
	ldr r0, _02036F40 ; =sub_02036FA4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_02036F38: .word 0x021C07D4
_02036F3C: .word sub_02036F44
_02036F40: .word sub_02036FA4
	thumb_func_end sub_02036EDC

	thumb_func_start sub_02036F44
sub_02036F44: ; 0x02036F44
	push {r3, lr}
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _02036F6A
	bl sub_02034AE4
	mov r0, #0
	bl sub_02036168
	bl sub_02035EA8
	ldr r0, _02036F98 ; =sub_020370B8
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02036F6A:
	bl sub_020360F0
	cmp r0, #0
	beq _02036F7C
	ldr r0, _02036F9C ; =sub_02036FA4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02036F7C:
	ldr r0, _02036FA0 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02036F8C
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02036F8C:
	ldr r0, _02036F9C ; =sub_02036FA4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	nop
_02036F98: .word sub_020370B8
_02036F9C: .word sub_02036FA4
_02036FA0: .word 0x021C07D4
	thumb_func_end sub_02036F44

	thumb_func_start sub_02036FA4
sub_02036FA4: ; 0x02036FA4
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _02036FB6
	ldr r0, _02036FB8 ; =sub_02036FD4
	mov r1, #0
	bl sub_02036C94
_02036FB6:
	pop {r3, pc}
	; .align 2, 0
_02036FB8: .word sub_02036FD4
	thumb_func_end sub_02036FA4

	thumb_func_start sub_02036FBC
sub_02036FBC: ; 0x02036FBC
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _02036FCE
	ldr r0, _02036FD0 ; =sub_02036E08
	mov r1, #0
	bl sub_02036C94
_02036FCE:
	pop {r3, pc}
	; .align 2, 0
_02036FD0: .word sub_02036E08
	thumb_func_end sub_02036FBC

	thumb_func_start sub_02036FD4
sub_02036FD4: ; 0x02036FD4
	push {r3, r4, r5, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _02037036
	mov r0, #1
	bl sub_02036168
	ldr r1, _02037038 ; =0x021C07D4
	mov r2, #0x7d
	ldr r1, [r1, #0]
	mov r0, #0
	add r1, #0x4e
	ldrb r1, [r1]
	lsl r2, r2, #2
	mov r3, #1
	bl sub_02034778
	cmp r0, #0
	beq _02037036
	ldr r0, _02037038 ; =0x021C07D4
	ldr r5, [r0, #0]
	add r4, r5, #0
	add r4, #0xc
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r5, #0xc]
	ldr r3, [r4, #4]
	bl _ull_mul
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r5, #0xc]
	str r3, [r4, #4]
	add r0, r3, #0
	mov r1, #0
	mov r2, #0x14
	mov r3, #0
	bl _ull_mul
	mov r0, #0
	add r5, #0x4e
	strb r0, [r5]
	ldr r0, _0203703C ; =sub_02037040
	add r1, #0x14
	bl sub_02036C94
_02037036:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02037038: .word 0x021C07D4
_0203703C: .word sub_02037040
	thumb_func_end sub_02036FD4

	thumb_func_start sub_02037040
sub_02037040: ; 0x02037040
	push {r3, lr}
	bl sub_020360E8
	cmp r0, #0
	beq _0203705E
	ldr r0, _02037088 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x4e
	strb r1, [r0]
	ldr r0, _0203708C ; =sub_02037094
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_0203705E:
	ldr r0, _02037088 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _0203706E
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_0203706E:
	add r1, #0x55
	ldrb r0, [r1]
	cmp r0, #0
	bne _02037086
	bl sub_020336D4
	cmp r0, #0
	beq _02037086
	ldr r0, _02037090 ; =sub_02036FBC
	mov r1, #2
	bl sub_02036C94
_02037086:
	pop {r3, pc}
	; .align 2, 0
_02037088: .word 0x021C07D4
_0203708C: .word sub_02037094
_02037090: .word sub_02036FBC
	thumb_func_end sub_02037040

	thumb_func_start sub_02037094
sub_02037094: ; 0x02037094
	push {r3, lr}
	mov r0, #0
	bl sub_02036168
	mov r0, #1
	bl sub_02033EA8
	bl sub_02035EA8
	ldr r0, _020370B0 ; =sub_020370B4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_020370B0: .word sub_020370B4
	thumb_func_end sub_02037094

	thumb_func_start sub_020370B4
sub_020370B4: ; 0x020370B4
	bx lr
	; .align 2, 0
	thumb_func_end sub_020370B4

	thumb_func_start sub_020370B8
sub_020370B8: ; 0x020370B8
	bx lr
	; .align 2, 0
	thumb_func_end sub_020370B8

	thumb_func_start sub_020370BC
sub_020370BC: ; 0x020370BC
	push {r3, lr}
	bl sub_020389B8
	cmp r0, #0
	bne _020370DE
	bl sub_02033E30
	cmp r0, #0
	beq _020370E6
	mov r0, #1
	bl sub_02036168
	bl sub_02035EA8
	mov r0, #1
	bl sub_02033794
_020370DE:
	ldr r0, _020370E8 ; =sub_02037330
	mov r1, #0
	bl sub_02036C94
_020370E6:
	pop {r3, pc}
	; .align 2, 0
_020370E8: .word sub_02037330
	thumb_func_end sub_020370BC

	thumb_func_start sub_020370EC
sub_020370EC: ; 0x020370EC
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _02037102
	bl sub_02034AE4
	ldr r0, _02037104 ; =sub_020370BC
	mov r1, #0
	bl sub_02036C94
_02037102:
	pop {r3, pc}
	; .align 2, 0
_02037104: .word sub_020370BC
	thumb_func_end sub_020370EC

	thumb_func_start sub_02037108
sub_02037108: ; 0x02037108
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02037124
	mov r0, #0
	bl sub_02033794
	bl sub_02034AE4
	ldr r0, _02037128 ; =sub_02036D80
	mov r1, #0
	bl sub_02036C94
_02037124:
	pop {r3, pc}
	nop
_02037128: .word sub_02036D80
	thumb_func_end sub_02037108

	thumb_func_start sub_0203712C
sub_0203712C: ; 0x0203712C
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _0203713E
	ldr r0, _02037140 ; =sub_02036D80
	mov r1, #0
	bl sub_02036C94
_0203713E:
	pop {r3, pc}
	; .align 2, 0
_02037140: .word sub_02036D80
	thumb_func_end sub_0203712C

	thumb_func_start sub_02037144
sub_02037144: ; 0x02037144
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02037182
	ldr r0, _02037184 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _02037184 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x30]
	bl sub_020329E0
	mov r0, #1
	add r1, r0, #0
	lsl r2, r0, #9
	add r3, r0, #0
	bl sub_02034778
	cmp r0, #0
	beq _02037182
	bl sub_02034878
	ldr r0, _02037188 ; =sub_0203718C
	mov r1, #0
	bl sub_02036C94
_02037182:
	pop {r3, pc}
	; .align 2, 0
_02037184: .word 0x021C07D4
_02037188: .word sub_0203718C
	thumb_func_end sub_02037144

	thumb_func_start sub_0203718C
sub_0203718C: ; 0x0203718C
	push {r3, lr}
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _020371A2
	ldr r0, _020371A4 ; =sub_020371A8
	mov r1, #0
	bl sub_02036C94
_020371A2:
	pop {r3, pc}
	; .align 2, 0
_020371A4: .word sub_020371A8
	thumb_func_end sub_0203718C

	thumb_func_start sub_020371A8
sub_020371A8: ; 0x020371A8
	push {r3, lr}
	bl sub_02035E38
	cmp r0, #0
	bne _020371BA
	ldr r0, _020371BC ; =sub_02037334
	mov r1, #0
	bl sub_02036C94
_020371BA:
	pop {r3, pc}
	; .align 2, 0
_020371BC: .word sub_02037334
	thumb_func_end sub_020371A8

	thumb_func_start sub_020371C0
sub_020371C0: ; 0x020371C0
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _020371FC
	ldr r0, _02037200 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _02037200 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x30]
	bl sub_020329E0
	mov r0, #1
	add r1, r0, #0
	lsl r2, r0, #9
	bl sub_020347B4
	cmp r0, #0
	beq _020371FC
	bl sub_02034878
	ldr r0, _02037204 ; =sub_02037208
	mov r1, #0
	bl sub_02036C94
_020371FC:
	pop {r3, pc}
	nop
_02037200: .word 0x021C07D4
_02037204: .word sub_02037208
	thumb_func_end sub_020371C0

	thumb_func_start sub_02037208
sub_02037208: ; 0x02037208
	ldr r3, _0203720C ; =sub_02033A5C
	bx r3
	; .align 2, 0
_0203720C: .word sub_02033A5C
	thumb_func_end sub_02037208

	thumb_func_start sub_02037210
sub_02037210: ; 0x02037210
	push {r3, lr}
	bl sub_02033A5C
	ldr r0, _02037230 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x49
	ldrb r0, [r0]
	bl sub_02034984
	cmp r0, #0
	beq _0203722E
	ldr r0, _02037234 ; =sub_02037238
	mov r1, #0xa
	bl sub_02036C94
_0203722E:
	pop {r3, pc}
	; .align 2, 0
_02037230: .word 0x021C07D4
_02037234: .word sub_02037238
	thumb_func_end sub_02037210

	thumb_func_start sub_02037238
sub_02037238: ; 0x02037238
	push {r3, lr}
	bl sub_020360F0
	cmp r0, #0
	beq _0203724A
	ldr r0, _02037268 ; =sub_02037270
	mov r1, #0
	bl sub_02036C94
_0203724A:
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _02037266
	bl sub_0203608C
	cmp r0, #0
	beq _02037266
	ldr r0, _0203726C ; =sub_020372C4
	mov r1, #0
	bl sub_02036C94
_02037266:
	pop {r3, pc}
	; .align 2, 0
_02037268: .word sub_02037270
_0203726C: .word sub_020372C4
	thumb_func_end sub_02037238

	thumb_func_start sub_02037270
sub_02037270: ; 0x02037270
	push {r3, lr}
	bl sub_020336D4
	ldr r0, _02037280 ; =sub_02037284
	mov r1, #2
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_02037280: .word sub_02037284
	thumb_func_end sub_02037270

	thumb_func_start sub_02037284
sub_02037284: ; 0x02037284
	push {r3, lr}
	ldr r0, _020372BC ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02037296
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02037296:
	bl sub_02033E30
	cmp r0, #0
	beq _020372B8
	mov r1, #1
	mov r0, #0
	lsl r2, r1, #9
	bl sub_020347B4
	cmp r0, #0
	beq _020372B8
	bl sub_02034878
	ldr r0, _020372C0 ; =sub_02037210
	mov r1, #0xa
	bl sub_02036C94
_020372B8:
	pop {r3, pc}
	nop
_020372BC: .word 0x021C07D4
_020372C0: .word sub_02037210
	thumb_func_end sub_02037284

	thumb_func_start sub_020372C4
sub_020372C4: ; 0x020372C4
	push {r3, lr}
	bl sub_02035E38
	cmp r0, #0
	bne _020372D6
	ldr r0, _020372D8 ; =sub_02037334
	mov r1, #0
	bl sub_02036C94
_020372D6:
	pop {r3, pc}
	; .align 2, 0
_020372D8: .word sub_02037334
	thumb_func_end sub_020372C4

	thumb_func_start sub_020372DC
sub_020372DC: ; 0x020372DC
	push {r3, lr}
	bl sub_020336D4
	ldr r0, _020372EC ; =sub_020372F0
	mov r1, #2
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_020372EC: .word sub_020372F0
	thumb_func_end sub_020372DC

	thumb_func_start sub_020372F0
sub_020372F0: ; 0x020372F0
	push {r3, lr}
	ldr r0, _02037328 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02037302
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02037302:
	bl sub_02033E30
	cmp r0, #0
	beq _02037324
	mov r1, #1
	mov r0, #0
	lsl r2, r1, #9
	bl sub_020347B4
	cmp r0, #0
	beq _02037324
	bl sub_02034878
	ldr r0, _0203732C ; =sub_02037208
	mov r1, #0xa
	bl sub_02036C94
_02037324:
	pop {r3, pc}
	nop
_02037328: .word 0x021C07D4
_0203732C: .word sub_02037208
	thumb_func_end sub_020372F0

	thumb_func_start sub_02037330
sub_02037330: ; 0x02037330
	bx lr
	; .align 2, 0
	thumb_func_end sub_02037330

	thumb_func_start sub_02037334
sub_02037334: ; 0x02037334
	push {r3, lr}
	bl sub_02035E38
	cmp r0, #0
	bne _02037342
	bl sub_02036734
_02037342:
	pop {r3, pc}
	thumb_func_end sub_02037334

	thumb_func_start sub_02037344
sub_02037344: ; 0x02037344
	ldr r3, _0203734C ; =sub_02036C94
	ldr r0, _02037350 ; =sub_020373B8
	mov r1, #5
	bx r3
	; .align 2, 0
_0203734C: .word sub_02036C94
_02037350: .word sub_020373B8
	thumb_func_end sub_02037344

	thumb_func_start sub_02037354
sub_02037354: ; 0x02037354
	push {r3, lr}
	bl sub_02035E18
	cmp r0, #1
	bgt _02037370
	mov r0, #0
	bl sub_02032160
	bl sub_02034B04
	ldr r0, _02037394 ; =sub_02037474
	mov r1, #0
	bl sub_02036C94
_02037370:
	ldr r0, _02037398 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02037380
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02037380:
	mov r0, #0
	bl sub_02032160
	bl sub_02034B04
	ldr r0, _02037394 ; =sub_02037474
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_02037394: .word sub_02037474
_02037398: .word 0x021C07D4
	thumb_func_end sub_02037354

	thumb_func_start sub_0203739C
sub_0203739C: ; 0x0203739C
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _020373B2
	bl sub_02034AE4
	ldr r0, _020373B4 ; =sub_02037474
	mov r1, #0
	bl sub_02036C94
_020373B2:
	pop {r3, pc}
	; .align 2, 0
_020373B4: .word sub_02037474
	thumb_func_end sub_0203739C

	thumb_func_start sub_020373B8
sub_020373B8: ; 0x020373B8
	push {r3, lr}
	ldr r0, _020373E8 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _020373C8
	sub r0, r0, #1
	str r0, [r1, #0x40]
_020373C8:
	bl sub_020336D4
	cmp r0, #0
	beq _020373E6
	ldr r0, _020373E8 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	bne _020373E6
	bl sub_020348C4
	ldr r0, _020373EC ; =sub_02037334
	mov r1, #0
	bl sub_02036C94
_020373E6:
	pop {r3, pc}
	; .align 2, 0
_020373E8: .word 0x021C07D4
_020373EC: .word sub_02037334
	thumb_func_end sub_020373B8

	thumb_func_start sub_020373F0
sub_020373F0: ; 0x020373F0
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02037438
	ldr r0, _0203743C ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _0203743C ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x46
	ldrb r0, [r0]
	bl sub_02031FA4
	ldr r0, _0203743C ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bl sub_020329E0
	mov r0, #1
	add r1, r0, #0
	lsl r2, r0, #9
	bl sub_020347B4
	cmp r0, #0
	beq _02037438
	bl sub_02034878
	ldr r0, _02037440 ; =sub_02037444
	mov r1, #0x40
	bl sub_02036C94
_02037438:
	pop {r3, pc}
	nop
_0203743C: .word 0x021C07D4
_02037440: .word sub_02037444
	thumb_func_end sub_020373F0

	thumb_func_start sub_02037444
sub_02037444: ; 0x02037444
	push {r3, lr}
	bl sub_02033A5C
	ldr r0, _0203746C ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _0203745A
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_0203745A:
	bl sub_020336D4
	cmp r0, #0
	beq _0203746A
	ldr r0, _02037470 ; =sub_0203748C
	mov r1, #0
	bl sub_02036C94
_0203746A:
	pop {r3, pc}
	; .align 2, 0
_0203746C: .word 0x021C07D4
_02037470: .word sub_0203748C
	thumb_func_end sub_02037444

	thumb_func_start sub_02037474
sub_02037474: ; 0x02037474
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _02037486
	ldr r0, _02037488 ; =sub_0203748C
	mov r1, #0
	bl sub_02036C94
_02037486:
	pop {r3, pc}
	; .align 2, 0
_02037488: .word sub_0203748C
	thumb_func_end sub_02037474

	thumb_func_start sub_0203748C
sub_0203748C: ; 0x0203748C
	push {r3, r4, r5, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _020374E4
	ldr r1, _020374E8 ; =0x021C07D4
	mov r2, #2
	ldr r1, [r1, #0]
	mov r0, #0
	add r1, #0x4e
	ldrb r1, [r1]
	lsl r2, r2, #8
	mov r3, #1
	bl sub_02034778
	cmp r0, #0
	beq _020374E4
	ldr r0, _020374E8 ; =0x021C07D4
	ldr r4, [r0, #0]
	add r5, r4, #0
	add r5, #0xc
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r4, #0xc]
	ldr r3, [r5, #4]
	bl _ull_mul
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4, #0xc]
	str r3, [r5, #4]
	bl sub_02034878
	ldr r0, _020374E8 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x4e
	strb r1, [r0]
	ldr r0, _020374EC ; =sub_020374F4
	ldr r1, _020374F0 ; =0x00002710
	bl sub_02036C94
_020374E4:
	pop {r3, r4, r5, pc}
	nop
_020374E8: .word 0x021C07D4
_020374EC: .word sub_020374F4
_020374F0: .word 0x00002710
	thumb_func_end sub_0203748C

	thumb_func_start sub_020374F4
sub_020374F4: ; 0x020374F4
	push {r3, lr}
	bl sub_02034148
	cmp r0, #0
	bne _0203752E
	bl sub_020360E8
	cmp r0, #0
	beq _0203751E
	ldr r0, _02037540 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x4e
	strb r1, [r0]
	bl sub_02039734
	ldr r0, _02037544 ; =sub_02037790
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_0203751E:
	ldr r0, _02037540 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _0203752E
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_0203752E:
	bl sub_020336D4
	cmp r0, #0
	beq _0203753E
	ldr r0, _02037548 ; =sub_0203754C
	mov r1, #0
	bl sub_02036C94
_0203753E:
	pop {r3, pc}
	; .align 2, 0
_02037540: .word 0x021C07D4
_02037544: .word sub_02037790
_02037548: .word sub_0203754C
	thumb_func_end sub_020374F4

	thumb_func_start sub_0203754C
sub_0203754C: ; 0x0203754C
	push {r3, r4, r5, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _02037598
	mov r0, #0
	mov r2, #2
	add r1, r0, #0
	lsl r2, r2, #8
	bl sub_020347B4
	cmp r0, #0
	beq _02037598
	bl sub_02034878
	ldr r0, _0203759C ; =0x021C07D4
	ldr r4, [r0, #0]
	add r5, r4, #0
	add r5, #0xc
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r4, #0xc]
	ldr r3, [r5, #4]
	bl _ull_mul
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4, #0xc]
	mov r1, #0
	ldr r0, _020375A0 ; =sub_02037444
	lsr r2, r3, #0x1b
	lsl r1, r1, #5
	orr r1, r2
	str r3, [r5, #4]
	bl sub_02036C94
_02037598:
	pop {r3, r4, r5, pc}
	nop
_0203759C: .word 0x021C07D4
_020375A0: .word sub_02037444
	thumb_func_end sub_0203754C

	thumb_func_start sub_020375A4
sub_020375A4: ; 0x020375A4
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _020375B6
	ldr r0, _020375B8 ; =sub_020375BC
	mov r1, #0
	bl sub_02036C94
_020375B6:
	pop {r3, pc}
	; .align 2, 0
_020375B8: .word sub_020375BC
	thumb_func_end sub_020375A4

	thumb_func_start sub_020375BC
sub_020375BC: ; 0x020375BC
	push {r3, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _020375E2
	mov r0, #0
	mov r2, #2
	add r1, r0, #0
	lsl r2, r2, #8
	bl sub_020347B4
	cmp r0, #0
	beq _020375E2
	bl sub_02034878
	ldr r0, _020375E4 ; =sub_020375E8
	mov r1, #0x64
	bl sub_02036C94
_020375E2:
	pop {r3, pc}
	; .align 2, 0
_020375E4: .word sub_020375E8
	thumb_func_end sub_020375BC

	thumb_func_start sub_020375E8
sub_020375E8: ; 0x020375E8
	push {r3, lr}
	ldr r0, _02037640 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x49
	ldrb r0, [r0]
	bl sub_02033898
	cmp r0, #0
	beq _02037614
	ldr r0, _02037640 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x49
	ldrb r0, [r0]
	bl sub_02034984
	cmp r0, #0
	beq _02037614
	ldr r0, _02037644 ; =sub_0203764C
	mov r1, #0x64
	bl sub_02036C94
	pop {r3, pc}
_02037614:
	bl sub_020360F0
	cmp r0, #0
	beq _02037626
	ldr r0, _02037648 ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037626:
	ldr r0, _02037640 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02037636
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02037636:
	ldr r0, _02037648 ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_02037640: .word 0x021C07D4
_02037644: .word sub_0203764C
_02037648: .word sub_02037740
	thumb_func_end sub_020375E8

	thumb_func_start sub_0203764C
sub_0203764C: ; 0x0203764C
	push {r3, lr}
	bl sub_020360F0
	cmp r0, #0
	beq _02037660
	ldr r0, _0203769C ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037660:
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _02037680
	ldr r0, _020376A0 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x48
	strb r1, [r0]
	ldr r0, _020376A4 ; =sub_020376A8
	mov r1, #0x78
	bl sub_02036C94
	pop {r3, pc}
_02037680:
	ldr r0, _020376A0 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02037690
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02037690:
	ldr r0, _0203769C ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	nop
_0203769C: .word sub_02037740
_020376A0: .word 0x021C07D4
_020376A4: .word sub_020376A8
	thumb_func_end sub_0203764C

	thumb_func_start sub_020376A8
sub_020376A8: ; 0x020376A8
	push {r3, lr}
	bl sub_020360F0
	cmp r0, #0
	beq _020376BC
	ldr r0, _02037710 ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_020376BC:
	ldr r0, _02037714 ; =0x021C07D4
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #2
	bne _020376D4
	ldr r0, _02037718 ; =sub_0203773C
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_020376D4:
	cmp r0, #1
	bne _020376E6
	bl sub_02032AC0
	ldr r0, _0203771C ; =sub_02037724
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_020376E6:
	ldr r0, [r1, #0x40]
	cmp r0, #0x6e
	ble _020376F4
	ldr r1, _02037720 ; =0x02100A20
	mov r0, #6
	bl sub_020360D0
_020376F4:
	ldr r0, _02037714 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02037704
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02037704:
	ldr r0, _02037710 ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	nop
_02037710: .word sub_02037740
_02037714: .word 0x021C07D4
_02037718: .word sub_0203773C
_0203771C: .word sub_02037724
_02037720: .word 0x02100A20
	thumb_func_end sub_020376A8

	thumb_func_start sub_02037724
sub_02037724: ; 0x02037724
	push {r3, lr}
	bl sub_020360F0
	cmp r0, #0
	beq _02037736
	ldr r0, _02037738 ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
_02037736:
	pop {r3, pc}
	; .align 2, 0
_02037738: .word sub_02037740
	thumb_func_end sub_02037724

	thumb_func_start sub_0203773C
sub_0203773C: ; 0x0203773C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203773C

	thumb_func_start sub_02037740
sub_02037740: ; 0x02037740
	push {r3, lr}
	ldr r0, _02037784 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x48
	strb r1, [r0]
	bl sub_020336D4
	cmp r0, #0
	beq _02037780
	ldr r0, _02037784 ; =0x021C07D4
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	beq _02037778
	add r0, r1, #0
	add r0, #0x44
	ldrh r0, [r0]
	add r1, #0x44
	sub r0, r0, #1
	strh r0, [r1]
	ldr r0, _02037788 ; =sub_020375BC
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037778:
	ldr r0, _0203778C ; =sub_0203773C
	mov r1, #0
	bl sub_02036C94
_02037780:
	pop {r3, pc}
	nop
_02037784: .word 0x021C07D4
_02037788: .word sub_020375BC
_0203778C: .word sub_0203773C
	thumb_func_end sub_02037740

	thumb_func_start sub_02037790
sub_02037790: ; 0x02037790
	push {r3, lr}
	bl sub_020360E8
	cmp r0, #0
	bne _020377B4
	bl sub_02038938
	cmp r0, #0
	bne _020377C0
	bl sub_020336D4
	cmp r0, #0
	beq _020377C0
	ldr r0, _020377DC ; =sub_0203754C
	mov r1, #0
	bl sub_02036C94
	b _020377C0
_020377B4:
	bl sub_0203608C
	cmp r0, #0
	bne _020377C0
	bl sub_02032CE8
_020377C0:
	bl sub_020360F0
	cmp r0, #0
	beq _020377D8
	bl sub_02038938
	cmp r0, #0
	bne _020377D8
	ldr r0, _020377E0 ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
_020377D8:
	pop {r3, pc}
	nop
_020377DC: .word sub_0203754C
_020377E0: .word sub_02037740
	thumb_func_end sub_02037790

	thumb_func_start sub_020377E4
sub_020377E4: ; 0x020377E4
	push {r3, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _02037812
	ldr r1, _02037814 ; =0x021C07D4
	mov r0, #0
	ldr r1, [r1, #0]
	mov r2, #2
	add r1, #0x4e
	ldrb r1, [r1]
	lsl r2, r2, #8
	add r3, r0, #0
	bl sub_02034778
	cmp r0, #0
	beq _02037812
	bl sub_02034878
	ldr r0, _02037818 ; =sub_02037330
	mov r1, #0
	bl sub_02036C94
_02037812:
	pop {r3, pc}
	; .align 2, 0
_02037814: .word 0x021C07D4
_02037818: .word sub_02037330
	thumb_func_end sub_020377E4

	thumb_func_start sub_0203781C
sub_0203781C: ; 0x0203781C
	push {r3, lr}
	ldr r0, _02037850 ; =0x021C07D4
	mov r1, #0xd
	ldr r0, [r0, #0]
	add r0, #0x4a
	strb r1, [r0]
	bl sub_0203608C
	cmp r0, #0
	add r0, sp, #0
	bne _02037842
	mov r1, #0
	strb r1, [r0, #1]
	add r1, sp, #0
	mov r0, #0xa
	add r1, #1
	bl sub_020360D0
	pop {r3, pc}
_02037842:
	mov r1, #0
	strb r1, [r0]
	mov r0, #0xa
	add r1, sp, #0
	bl sub_020360D0
	pop {r3, pc}
	; .align 2, 0
_02037850: .word 0x021C07D4
	thumb_func_end sub_0203781C

	thumb_func_start sub_02037854
sub_02037854: ; 0x02037854
	ldr r1, _0203786C ; =0x021C07D4
	ldr r3, _02037870 ; =sub_02036C94
	ldr r2, [r1, #0]
	add r2, #0x49
	strb r0, [r2]
	ldr r0, [r1, #0]
	mov r2, #3
	add r0, #0x44
	strh r2, [r0]
	ldr r0, _02037874 ; =sub_020378F8
	mov r1, #0
	bx r3
	; .align 2, 0
_0203786C: .word 0x021C07D4
_02037870: .word sub_02036C94
_02037874: .word sub_020378F8
	thumb_func_end sub_02037854

	thumb_func_start sub_02037878
sub_02037878: ; 0x02037878
	ldr r0, _02037884 ; =0x021C07D4
	mov r1, #7
	ldr r0, [r0, #0]
	add r0, #0x4a
	strb r1, [r0]
	bx lr
	; .align 2, 0
_02037884: .word 0x021C07D4
	thumb_func_end sub_02037878

	thumb_func_start sub_02037888
sub_02037888: ; 0x02037888
	push {r3, lr}
	ldr r1, _020378B0 ; =0x021C07D4
	ldr r2, [r1, #0]
	add r2, #0x49
	strb r0, [r2]
	ldr r0, [r1, #0]
	mov r2, #7
	add r0, #0x4a
	strb r2, [r0]
	ldr r0, [r1, #0]
	mov r2, #3
	add r0, #0x44
	strh r2, [r0]
	bl sub_02039734
	ldr r0, _020378B4 ; =sub_020375A4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_020378B0: .word 0x021C07D4
_020378B4: .word sub_020375A4
	thumb_func_end sub_02037888

	thumb_func_start sub_020378B8
sub_020378B8: ; 0x020378B8
	ldr r0, _020378C4 ; =0x021C07D4
	mov r1, #0x1a
	ldr r0, [r0, #0]
	add r0, #0x4a
	strb r1, [r0]
	bx lr
	; .align 2, 0
_020378C4: .word 0x021C07D4
	thumb_func_end sub_020378B8

	thumb_func_start sub_020378C8
sub_020378C8: ; 0x020378C8
	push {r3, lr}
	ldr r1, _020378F0 ; =0x021C07D4
	ldr r2, [r1, #0]
	add r2, #0x49
	strb r0, [r2]
	ldr r0, [r1, #0]
	mov r2, #0x1a
	add r0, #0x4a
	strb r2, [r0]
	ldr r0, [r1, #0]
	mov r2, #3
	add r0, #0x44
	strh r2, [r0]
	bl sub_02039734
	ldr r0, _020378F4 ; =sub_020375A4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_020378F0: .word 0x021C07D4
_020378F4: .word sub_020375A4
	thumb_func_end sub_020378C8

	thumb_func_start sub_020378F8
sub_020378F8: ; 0x020378F8
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _0203790A
	ldr r0, _0203790C ; =sub_02037910
	mov r1, #0
	bl sub_02036C94
_0203790A:
	pop {r3, pc}
	; .align 2, 0
_0203790C: .word sub_02037910
	thumb_func_end sub_020378F8

	thumb_func_start sub_02037910
sub_02037910: ; 0x02037910
	push {r3, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _02037940
	ldr r0, _02037944 ; =0x021C07D4
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #0xd
	add r0, #0x4a
	strb r1, [r0]
	mov r0, #0
	add r1, r0, #0
	lsl r2, r2, #8
	bl sub_020347B4
	cmp r0, #0
	beq _02037940
	bl sub_02034884
	ldr r0, _02037948 ; =sub_0203794C
	mov r1, #0x64
	bl sub_02036C94
_02037940:
	pop {r3, pc}
	nop
_02037944: .word 0x021C07D4
_02037948: .word sub_0203794C
	thumb_func_end sub_02037910

	thumb_func_start sub_0203794C
sub_0203794C: ; 0x0203794C
	push {r3, lr}
	ldr r0, _020379C0 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x49
	ldrb r0, [r0]
	bl sub_02033898
	cmp r0, #0
	beq _02037978
	ldr r0, _020379C0 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x49
	ldrb r0, [r0]
	bl sub_02034984
	cmp r0, #0
	beq _02037978
	ldr r0, _020379C4 ; =sub_020379D0
	mov r1, #0x64
	bl sub_02036C94
	pop {r3, pc}
_02037978:
	bl sub_020360F0
	cmp r0, #0
	bne _0203798A
	ldr r0, _020379C0 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	bne _020379B8
_0203798A:
	ldr r1, _020379C0 ; =0x021C07D4
	ldr r2, [r1, #0]
	add r0, r2, #0
	add r0, #0x44
	ldrh r0, [r0]
	add r2, #0x44
	sub r0, r0, #1
	strh r0, [r2]
	ldr r0, [r1, #0]
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _020379AE
	ldr r0, _020379C8 ; =sub_0203773C
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_020379AE:
	ldr r0, _020379CC ; =sub_020378F8
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_020379B8:
	beq _020379BE
	sub r0, r0, #1
	str r0, [r1, #0x40]
_020379BE:
	pop {r3, pc}
	; .align 2, 0
_020379C0: .word 0x021C07D4
_020379C4: .word sub_020379D0
_020379C8: .word sub_0203773C
_020379CC: .word sub_020378F8
	thumb_func_end sub_0203794C

	thumb_func_start sub_020379D0
sub_020379D0: ; 0x020379D0
	push {r3, lr}
	ldr r0, _02037A68 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0x5a
	ble _020379E2
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_020379E2:
	bl sub_020360F0
	cmp r0, #0
	beq _02037A18
	ldr r1, _02037A68 ; =0x021C07D4
	ldr r2, [r1, #0]
	add r0, r2, #0
	add r0, #0x44
	ldrh r0, [r0]
	add r2, #0x44
	sub r0, r0, #1
	strh r0, [r2]
	ldr r0, [r1, #0]
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _02037A0E
	ldr r0, _02037A6C ; =sub_0203773C
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037A0E:
	ldr r0, _02037A70 ; =sub_020378F8
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037A18:
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _02037A2E
	ldr r0, _02037A74 ; =sub_02037724
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037A2E:
	ldr r1, _02037A68 ; =0x021C07D4
	ldr r2, [r1, #0]
	ldr r0, [r2, #0x40]
	cmp r0, #0
	beq _02037A3E
	sub r0, r0, #1
	str r0, [r2, #0x40]
	pop {r3, pc}
_02037A3E:
	add r0, r2, #0
	add r0, #0x44
	ldrh r0, [r0]
	add r2, #0x44
	sub r0, r0, #1
	strh r0, [r2]
	ldr r0, [r1, #0]
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _02037A5E
	ldr r0, _02037A6C ; =sub_0203773C
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037A5E:
	ldr r0, _02037A70 ; =sub_020378F8
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_02037A68: .word 0x021C07D4
_02037A6C: .word sub_0203773C
_02037A70: .word sub_020378F8
_02037A74: .word sub_02037724
	thumb_func_end sub_020379D0

	thumb_func_start sub_02037A78
sub_02037A78: ; 0x02037A78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0203608C
	cmp r0, #0
	bne _02037AC6
	ldr r6, _02037AC8 ; =0x02100A20
	mov r3, #1
	mov r2, #0
_02037A8C:
	ldrb r1, [r6]
	ldrb r0, [r4, r2]
	cmp r1, r0
	beq _02037A98
	mov r3, #0
	b _02037AA0
_02037A98:
	add r2, r2, #1
	add r6, r6, #1
	cmp r2, #6
	blo _02037A8C
_02037AA0:
	cmp r3, #0
	beq _02037ABC
	ldr r0, _02037ACC ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x53
	ldrb r0, [r0]
	cmp r0, #0
	bne _02037ABC
	ldr r1, _02037AD0 ; =0x02100A30
	mov r0, #7
	strb r5, [r1]
	bl sub_02035B48
	pop {r4, r5, r6, pc}
_02037ABC:
	ldr r1, _02037AD4 ; =0x02100A28
	mov r0, #7
	strb r5, [r1]
	bl sub_02035B48
_02037AC6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02037AC8: .word 0x02100A20
_02037ACC: .word 0x021C07D4
_02037AD0: .word 0x02100A30
_02037AD4: .word 0x02100A28
	thumb_func_end sub_02037A78

	thumb_func_start sub_02037AD8
sub_02037AD8: ; 0x02037AD8
	push {r3, r4, r5, lr}
	mov r4, #1
	ldr r5, _02037B48 ; =0x02100A31
	add r3, r4, #0
_02037AE0:
	ldrb r1, [r5]
	ldrb r0, [r2, r3]
	cmp r1, r0
	beq _02037AEC
	mov r4, #0
	b _02037AF4
_02037AEC:
	add r3, r3, #1
	add r5, r5, #1
	cmp r3, #6
	blo _02037AE0
_02037AF4:
	cmp r4, #0
	beq _02037B0E
	ldrb r4, [r2]
	bl sub_0203608C
	cmp r4, r0
	bne _02037B44
	ldr r0, _02037B4C ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x48
	strb r1, [r0]
	pop {r3, r4, r5, pc}
_02037B0E:
	mov r4, #1
	ldr r3, _02037B50 ; =0x02100A29
	add r5, r4, #0
_02037B14:
	ldrb r1, [r3]
	ldrb r0, [r2, r5]
	cmp r1, r0
	beq _02037B20
	mov r4, #0
	b _02037B28
_02037B20:
	add r5, r5, #1
	add r3, r3, #1
	cmp r5, #6
	blo _02037B14
_02037B28:
	cmp r4, #0
	beq _02037B44
	ldrb r4, [r2]
	bl sub_0203608C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r4, r0
	bne _02037B44
	ldr r0, _02037B4C ; =0x021C07D4
	mov r1, #2
	ldr r0, [r0, #0]
	add r0, #0x48
	strb r1, [r0]
_02037B44:
	pop {r3, r4, r5, pc}
	nop
_02037B48: .word 0x02100A31
_02037B4C: .word 0x021C07D4
_02037B50: .word 0x02100A29
	thumb_func_end sub_02037AD8

	thumb_func_start sub_02037B54
sub_02037B54: ; 0x02037B54
	mov r0, #6
	bx lr
	thumb_func_end sub_02037B54

	thumb_func_start sub_02037B58
sub_02037B58: ; 0x02037B58
	push {r3, lr}
	ldr r1, _02037B6C ; =0x021C07D4
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02037B6A
	add r1, #0x46
	strb r0, [r1]
	bl sub_02031FA4
_02037B6A:
	pop {r3, pc}
	; .align 2, 0
_02037B6C: .word 0x021C07D4
	thumb_func_end sub_02037B58

	thumb_func_start sub_02037B70
sub_02037B70: ; 0x02037B70
	ldr r3, _02037B74 ; =sub_02033A5C
	bx r3
	; .align 2, 0
_02037B74: .word sub_02033A5C
	thumb_func_end sub_02037B70

	thumb_func_start sub_02037B78
sub_02037B78: ; 0x02037B78
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02037BB4
	ldr r0, _02037BB8 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _02037BB8 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bl sub_020329E0
	mov r0, #1
	add r1, r0, #0
	mov r2, #0x20
	bl sub_020347B4
	cmp r0, #0
	beq _02037BB4
	bl sub_02034878
	ldr r0, _02037BBC ; =sub_02037B70
	mov r1, #0
	bl sub_02036C94
_02037BB4:
	pop {r3, pc}
	nop
_02037BB8: .word 0x021C07D4
_02037BBC: .word sub_02037B70
	thumb_func_end sub_02037B78

	thumb_func_start sub_02037BC0
sub_02037BC0: ; 0x02037BC0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035E38
	cmp r0, #0
	bne _02037BF0
	mov r2, #7
	mov r0, #3
	mov r1, #0xf
	lsl r2, r2, #0xc
	bl sub_02017FD4
	add r0, r4, #0
	mov r1, #0xe
	bl sub_020366A0
	ldr r0, _02037BF4 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x4b
	strb r1, [r0]
	ldr r0, _02037BF8 ; =sub_02037B78
	bl sub_02036C94
_02037BF0:
	pop {r4, pc}
	nop
_02037BF4: .word 0x021C07D4
_02037BF8: .word sub_02037B78
	thumb_func_end sub_02037BC0

	thumb_func_start sub_02037BFC
sub_02037BFC: ; 0x02037BFC
	push {r3, lr}
	ldr r0, _02037C10 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02037C0E
	ldr r0, _02037C14 ; =sub_020373B8
	mov r1, #5
	bl sub_02036C94
_02037C0E:
	pop {r3, pc}
	; .align 2, 0
_02037C10: .word 0x021C07D4
_02037C14: .word sub_020373B8
	thumb_func_end sub_02037BFC

	thumb_func_start sub_02037C18
sub_02037C18: ; 0x02037C18
	sub sp, #8
	ldr r1, _02037C54 ; =0x020E5E74
	add r0, sp, #0
	ldr r2, [r1, #0]
	ldr r1, [r1, #4]
	str r2, [sp]
	str r1, [sp, #4]
	ldr r1, _02037C58 ; =0x021C07D4
	ldr r1, [r1, #0]
	ldr r3, [r1, #0x24]
	cmp r1, #0
	bne _02037C36
	mov r0, #0
	add sp, #8
	bx lr
_02037C36:
	cmp r2, #0
	beq _02037C4E
_02037C3A:
	ldr r1, [r0, #0]
	cmp r3, r1
	bne _02037C46
	mov r0, #1
	add sp, #8
	bx lr
_02037C46:
	add r0, r0, #4
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _02037C3A
_02037C4E:
	mov r0, #0
	add sp, #8
	bx lr
	; .align 2, 0
_02037C54: .word 0x020E5E74
_02037C58: .word 0x021C07D4
	thumb_func_end sub_02037C18

	thumb_func_start sub_02037C5C
sub_02037C5C: ; 0x02037C5C
	ldr r2, _02037CD4 ; =0x00400131
	cmp r0, r2
	bhi _02037C6C
	bhs _02037CAA
	ldr r2, _02037CD8 ; =0x00000333
	cmp r0, r2
	beq _02037C7E
	bx lr
_02037C6C:
	ldr r1, _02037CDC ; =0x00400286
	cmp r0, r1
	bhi _02037C76
	beq _02037CBE
	bx lr
_02037C76:
	add r1, #0x92
	cmp r0, r1
	beq _02037C96
	bx lr
_02037C7E:
	cmp r1, #0xf
	bne _02037CD0
	ldr r0, _02037CE0 ; =0x021C07D4
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x54
	ldrb r1, [r0]
	mov r0, #1
	add r2, #0x54
	orr r0, r1
	strb r0, [r2]
	bx lr
_02037C96:
	ldr r0, _02037CE0 ; =0x021C07D4
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x54
	ldrb r1, [r0]
	mov r0, #1
	add r2, #0x54
	orr r0, r1
	strb r0, [r2]
	bx lr
_02037CAA:
	ldr r0, _02037CE0 ; =0x021C07D4
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x54
	ldrb r1, [r0]
	mov r0, #2
	add r2, #0x54
	orr r0, r1
	strb r0, [r2]
	bx lr
_02037CBE:
	ldr r0, _02037CE0 ; =0x021C07D4
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x54
	ldrb r1, [r0]
	mov r0, #4
	add r2, #0x54
	orr r0, r1
	strb r0, [r2]
_02037CD0:
	bx lr
	nop
_02037CD4: .word 0x00400131
_02037CD8: .word 0x00000333
_02037CDC: .word 0x00400286
_02037CE0: .word 0x021C07D4
	thumb_func_end sub_02037C5C

	thumb_func_start sub_02037CE4
sub_02037CE4: ; 0x02037CE4
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	mov r2, #0x20
	bl sub_020347B4
	cmp r0, #0
	beq _02037D00
	bl sub_02034878
	ldr r0, _02037D04 ; =sub_02037B70
	mov r1, #0
	bl sub_02036C94
_02037D00:
	pop {r3, pc}
	nop
_02037D04: .word sub_02037B70
	thumb_func_end sub_02037CE4

	thumb_func_start sub_02037D08
sub_02037D08: ; 0x02037D08
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02037D38
	ldr r0, _02037D3C ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _02037D3C ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bl sub_020329E0
	ldr r0, _02037D40 ; =sub_02037C5C
	bl sub_020320FC
	ldr r0, _02037D44 ; =sub_02037CE4
	mov r1, #0
	bl sub_02036C94
_02037D38:
	pop {r3, pc}
	nop
_02037D3C: .word 0x021C07D4
_02037D40: .word sub_02037C5C
_02037D44: .word sub_02037CE4
	thumb_func_end sub_02037D08

	thumb_func_start sub_02037D48
sub_02037D48: ; 0x02037D48
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035E38
	cmp r0, #0
	bne _02037D78
	mov r2, #7
	mov r0, #3
	mov r1, #0xf
	lsl r2, r2, #0xc
	bl sub_02017FD4
	add r0, r4, #0
	mov r1, #0x11
	bl sub_020366A0
	ldr r0, _02037D7C ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x4b
	strb r1, [r0]
	ldr r0, _02037D80 ; =sub_02037D08
	bl sub_02036C94
_02037D78:
	pop {r4, pc}
	nop
_02037D7C: .word 0x021C07D4
_02037D80: .word sub_02037D08
	thumb_func_end sub_02037D48

	thumb_func_start sub_02037D84
sub_02037D84: ; 0x02037D84
	push {r3, lr}
	ldr r0, _02037D98 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02037D96
	ldr r0, _02037D9C ; =sub_020373B8
	mov r1, #5
	bl sub_02036C94
_02037D96:
	pop {r3, pc}
	; .align 2, 0
_02037D98: .word 0x021C07D4
_02037D9C: .word sub_020373B8
	thumb_func_end sub_02037D84

	thumb_func_start sub_02037DA0
sub_02037DA0: ; 0x02037DA0
	ldr r0, _02037DAC ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x54
	ldrb r0, [r0]
	bx lr
	nop
_02037DAC: .word 0x021C07D4
	thumb_func_end sub_02037DA0

	thumb_func_start sub_02037DB0
sub_02037DB0: ; 0x02037DB0
	push {r3, lr}
	bl sub_020363D0
	ldr r0, _02037E10 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02037DC2
	mov r0, #1
	pop {r3, pc}
_02037DC2:
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _02037DD2
	cmp r0, #0x19
	beq _02037DD2
	cmp r0, #0x24
	bne _02037DDA
_02037DD2:
	bl ov4_021D2184
	mov r0, #1
	pop {r3, pc}
_02037DDA:
	bl sub_020389B8
	cmp r0, #0
	beq _02037E02
	ldr r0, _02037E10 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0x21
	bne _02037DF8
	ldr r0, _02037E14 ; =sub_02038D80
	mov r1, #0
	bl sub_02036C94
	b _02037E0A
_02037DF8:
	ldr r0, _02037E18 ; =sub_02038314
	mov r1, #0
	bl sub_02036C94
	b _02037E0A
_02037E02:
	ldr r0, _02037E1C ; =sub_020370EC
	mov r1, #0
	bl sub_02036C94
_02037E0A:
	mov r0, #0
	pop {r3, pc}
	nop
_02037E10: .word 0x021C07D4
_02037E14: .word sub_02038D80
_02037E18: .word sub_02038314
_02037E1C: .word sub_020370EC
	thumb_func_end sub_02037DB0

	thumb_func_start sub_02037E20
sub_02037E20: ; 0x02037E20
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02037E5E
	ldr r0, _02037E60 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _02037E60 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bl sub_020329E0
	mov r0, #1
	add r1, r0, #0
	lsl r2, r0, #9
	add r3, r0, #0
	bl sub_02034778
	cmp r0, #0
	beq _02037E5E
	bl sub_02034878
	ldr r0, _02037E64 ; =sub_0203718C
	mov r1, #0
	bl sub_02036C94
_02037E5E:
	pop {r3, pc}
	; .align 2, 0
_02037E60: .word 0x021C07D4
_02037E64: .word sub_0203718C
	thumb_func_end sub_02037E20

	thumb_func_start sub_02037E68
sub_02037E68: ; 0x02037E68
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02037EA4
	ldr r0, _02037EA8 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _02037EA8 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bl sub_020329E0
	mov r0, #1
	add r1, r0, #0
	lsl r2, r0, #9
	bl sub_020347B4
	cmp r0, #0
	beq _02037EA4
	bl sub_02034878
	ldr r0, _02037EAC ; =sub_02037208
	mov r1, #0
	bl sub_02036C94
_02037EA4:
	pop {r3, pc}
	nop
_02037EA8: .word 0x021C07D4
_02037EAC: .word sub_02037208
	thumb_func_end sub_02037E68

	thumb_func_start sub_02037EB0
sub_02037EB0: ; 0x02037EB0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02037EB0

	thumb_func_start sub_02037EB4
sub_02037EB4: ; 0x02037EB4
	push {r3, lr}
	mov r0, #0
	bl ov4_021D12D4
	cmp r0, #0
	bge _02037EC8
	ldr r0, _02037ECC ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_02037EC8:
	pop {r3, pc}
	nop
_02037ECC: .word sub_02037EB0
	thumb_func_end sub_02037EB4

	thumb_func_start sub_02037ED0
sub_02037ED0: ; 0x02037ED0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02037ED0

	thumb_func_start sub_02037ED4
sub_02037ED4: ; 0x02037ED4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02037ED4

	thumb_func_start sub_02037ED8
sub_02037ED8: ; 0x02037ED8
	push {r3, lr}
	mov r0, #1
	bl sub_020362B4
	mov r0, #0
	bl ov4_021D12D4
	cmp r0, #0xa
	blt _02037EF8
	cmp r0, #0x14
	bge _02037EF8
	ldr r0, _02037F80 ; =sub_02037ED4
	mov r1, #0
	bl sub_02036C94
	b _02037F5A
_02037EF8:
	cmp r0, #0
	bge _02037F06
	ldr r0, _02037F84 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	b _02037F5A
_02037F06:
	cmp r0, #0x17
	bne _02037F14
	ldr r0, _02037F88 ; =sub_02037EB4
	mov r1, #0
	bl sub_02036C94
	b _02037F5A
_02037F14:
	cmp r0, #0x18
	bne _02037F38
	ldr r0, _02037F8C ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _02037F2E
	ldr r0, _02037F84 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	b _02037F5A
_02037F2E:
	ldr r0, _02037F90 ; =sub_02037ED0
	mov r1, #0
	bl sub_02036C94
	b _02037F5A
_02037F38:
	cmp r0, #0x15
	bne _02037F5A
	ldr r0, _02037F8C ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _02037F52
	ldr r0, _02037F84 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	b _02037F5A
_02037F52:
	ldr r0, _02037F90 ; =sub_02037ED0
	mov r1, #0
	bl sub_02036C94
_02037F5A:
	ldr r0, _02037F8C ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _02037F7E
	bl sub_02035E18
	ldr r1, _02037F8C ; =0x021C07D4
	ldr r1, [r1, #0]
	add r1, #0x47
	ldrb r1, [r1]
	cmp r1, r0
	beq _02037F7E
	ldr r0, _02037F84 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_02037F7E:
	pop {r3, pc}
	; .align 2, 0
_02037F80: .word sub_02037ED4
_02037F84: .word sub_02037EB0
_02037F88: .word sub_02037EB4
_02037F8C: .word 0x021C07D4
_02037F90: .word sub_02037ED0
	thumb_func_end sub_02037ED8

	thumb_func_start sub_02037F94
sub_02037F94: ; 0x02037F94
	push {r3, r4}
	ldr r3, _02037FB8 ; =0x021C07D4
	ldr r4, [r3, #0]
	cmp r4, #0
	beq _02037FB4
	add r3, r0, #0
	sub r3, #0x19
	cmp r3, #1
	bls _02037FA8
	neg r0, r0
_02037FA8:
	str r0, [r4, #0x34]
	ldr r0, _02037FB8 ; =0x021C07D4
	ldr r3, [r0, #0]
	str r1, [r3, #0x38]
	ldr r0, [r0, #0]
	str r2, [r0, #0x3c]
_02037FB4:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02037FB8: .word 0x021C07D4
	thumb_func_end sub_02037F94

	thumb_func_start sub_02037FBC
sub_02037FBC: ; 0x02037FBC
	push {r3, lr}
	mov r0, #0
	bl ov4_021D12D4
	cmp r0, #0xa
	blt _02037FD6
	cmp r0, #0x14
	bge _02037FD6
	ldr r0, _0203801C ; =sub_02037ED4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037FD6:
	cmp r0, #0
	bge _02037FE4
	ldr r0, _02038020 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037FE4:
	cmp r0, #0x14
	bne _02037FF2
	ldr r0, _02038024 ; =sub_02037ED8
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037FF2:
	cmp r0, #0x15
	bne _02038000
	ldr r0, _02038028 ; =sub_02037ED0
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038000:
	cmp r0, #0x16
	bne _0203800E
	ldr r0, _0203801C ; =sub_02037ED4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_0203800E:
	cmp r0, #0x18
	bne _0203801A
	ldr r0, _02038028 ; =sub_02037ED0
	mov r1, #0
	bl sub_02036C94
_0203801A:
	pop {r3, pc}
	; .align 2, 0
_0203801C: .word sub_02037ED4
_02038020: .word sub_02037EB0
_02038024: .word sub_02037ED8
_02038028: .word sub_02037ED0
	thumb_func_end sub_02037FBC

	thumb_func_start sub_0203802C
sub_0203802C: ; 0x0203802C
	push {r3, lr}
	mov r0, #1
	bl ov4_021D12D4
	cmp r0, #0
	bge _02038042
	ldr r0, _02038094 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038042:
	ldr r0, _02038098 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4a
	ldrb r0, [r0]
	bl sub_0203266C
	add r2, r0, #0
	ldr r0, _02038098 ; =0x021C07D4
	ldr r1, [r0, #0]
	mov r0, #0x4d
	ldrsb r0, [r1, r0]
	add r1, r2, #1
	mov r2, #0
	bl ov4_021D2248
	add r0, r0, #3
	cmp r0, #3
	bhi _02038090
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02038072: ; jump table
	.short _02038088 - _02038072 - 2 ; case 0
	.short _02038090 - _02038072 - 2 ; case 1
	.short _02038090 - _02038072 - 2 ; case 2
	.short _0203807A - _02038072 - 2 ; case 3
_0203807A:
	bl sub_02034AE4
	ldr r0, _0203809C ; =sub_02037FBC
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038088:
	ldr r0, _02038094 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_02038090:
	pop {r3, pc}
	nop
_02038094: .word sub_02037EB0
_02038098: .word 0x021C07D4
_0203809C: .word sub_02037FBC
	thumb_func_end sub_0203802C

	thumb_func_start sub_020380A0
sub_020380A0: ; 0x020380A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020380D0 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x24]
	ldr r0, _020380D4 ; =sub_02037FBC
	cmp r1, r0
	beq _020380B4
	mov r0, #0
	pop {r4, pc}
_020380B4:
	ldr r0, _020380D8 ; =sub_020351F8
	ldr r1, _020380DC ; =sub_0203509C
	bl ov4_021D1104
	ldr r0, _020380D0 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x4d
	strb r4, [r0]
	ldr r0, _020380E0 ; =sub_0203802C
	bl sub_02036C94
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_020380D0: .word 0x021C07D4
_020380D4: .word sub_02037FBC
_020380D8: .word sub_020351F8
_020380DC: .word sub_0203509C
_020380E0: .word sub_0203802C
	thumb_func_end sub_020380A0

	thumb_func_start sub_020380E4
sub_020380E4: ; 0x020380E4
	ldr r0, _02038140 ; =0x021C07D4
	ldr r1, _02038144 ; =sub_02037FBC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x24]
	cmp r0, r1
	bne _020380F4
	mov r0, #0
	bx lr
_020380F4:
	ldr r1, _02038148 ; =sub_02037ED8
	cmp r0, r1
	bne _020380FE
	mov r0, #1
	bx lr
_020380FE:
	ldr r1, _0203814C ; =sub_02037EB4
	cmp r0, r1
	bne _02038108
	mov r0, #3
	bx lr
_02038108:
	ldr r1, _02038150 ; =sub_02037ED0
	cmp r0, r1
	bne _02038112
	mov r0, #4
	bx lr
_02038112:
	ldr r1, _02038154 ; =sub_02037ED4
	cmp r0, r1
	bne _0203811C
	mov r0, #5
	bx lr
_0203811C:
	ldr r1, _02038158 ; =sub_02038DEC
	cmp r0, r1
	bne _02038126
	mov r0, #0
	bx lr
_02038126:
	ldr r1, _0203815C ; =sub_02038DCC
	cmp r0, r1
	bne _02038130
	mov r0, #1
	bx lr
_02038130:
	ldr r1, _02038160 ; =sub_02038E84
	cmp r0, r1
	bne _0203813A
	mov r0, #3
	bx lr
_0203813A:
	mov r0, #2
	bx lr
	nop
_02038140: .word 0x021C07D4
_02038144: .word sub_02037FBC
_02038148: .word sub_02037ED8
_0203814C: .word sub_02037EB4
_02038150: .word sub_02037ED0
_02038154: .word sub_02037ED4
_02038158: .word sub_02038DEC
_0203815C: .word sub_02038DCC
_02038160: .word sub_02038E84
	thumb_func_end sub_020380E4

	thumb_func_start sub_02038164
sub_02038164: ; 0x02038164
	push {r3, lr}
	ldr r0, _020381DC ; =sub_020351F8
	ldr r1, _020381E0 ; =sub_0203509C
	bl ov4_021D1104
	mov r0, #0
	mvn r0, r0
	mov r1, #4
	mov r2, #1
	bl ov4_021D2248
	add r0, r0, #4
	cmp r0, #4
	bhi _020381BA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203818C: ; jump table
	.short _020381B8 - _0203818C - 2 ; case 0
	.short _020381AE - _0203818C - 2 ; case 1
	.short _020381BA - _0203818C - 2 ; case 2
	.short _020381BA - _0203818C - 2 ; case 3
	.short _02038196 - _0203818C - 2 ; case 4
_02038196:
	ldr r0, _020381E4 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x58
	strb r1, [r0]
	bl sub_02034AE4
	ldr r0, _020381E8 ; =sub_02037FBC
	mov r1, #0
	bl sub_02036C94
	b _020381BA
_020381AE:
	ldr r0, _020381EC ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	b _020381BA
_020381B8:
	pop {r3, pc}
_020381BA:
	bl ov4_021D1B5C
	cmp r0, #0
	bge _020381CC
	ldr r0, _020381EC ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_020381CC:
	cmp r0, #0x1a
	bne _020381D8
	ldr r0, _020381EC ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_020381D8:
	pop {r3, pc}
	nop
_020381DC: .word sub_020351F8
_020381E0: .word sub_0203509C
_020381E4: .word 0x021C07D4
_020381E8: .word sub_02037FBC
_020381EC: .word sub_02037EB0
	thumb_func_end sub_02038164

	thumb_func_start sub_020381F0
sub_020381F0: ; 0x020381F0
	push {r3, lr}
	mov r0, #0
	bl sub_020362B4
	ldr r0, _02038234 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4c
	ldrb r0, [r0]
	bl ov4_021D20B0
	cmp r0, #0
	beq _0203821E
	bl ov4_021D2134
	cmp r0, #0
	beq _0203821E
	bl sub_02032A70
	ldr r0, _02038238 ; =sub_02038164
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_0203821E:
	mov r0, #0
	bl ov4_021D12D4
	cmp r0, #0
	bge _02038230
	ldr r0, _0203823C ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_02038230:
	pop {r3, pc}
	nop
_02038234: .word 0x021C07D4
_02038238: .word sub_02038164
_0203823C: .word sub_02037EB0
	thumb_func_end sub_020381F0

	thumb_func_start sub_02038240
sub_02038240: ; 0x02038240
	push {r3, lr}
	bl sub_0203608C
	cmp r0, #0
	bne _0203825C
	ldr r0, _0203827C ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x4c
	strb r1, [r0]
	ldr r0, _02038280 ; =sub_020381F0
	bl sub_02036C94
	b _0203826E
_0203825C:
	ldr r0, _0203827C ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x4c
	strb r1, [r0]
	ldr r0, _02038280 ; =sub_020381F0
	mov r1, #0
	bl sub_02036C94
_0203826E:
	ldr r0, _0203827C ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x58
	strb r1, [r0]
	pop {r3, pc}
	nop
_0203827C: .word 0x021C07D4
_02038280: .word sub_020381F0
	thumb_func_end sub_02038240

	thumb_func_start sub_02038284
sub_02038284: ; 0x02038284
	ldr r0, _02038290 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x58
	ldrb r0, [r0]
	bx lr
	nop
_02038290: .word 0x021C07D4
	thumb_func_end sub_02038284

	thumb_func_start sub_02038294
sub_02038294: ; 0x02038294
	ldr r0, _020382B4 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x24]
	ldr r0, _020382B8 ; =sub_02038164
	cmp r1, r0
	bne _020382A4
	mov r0, #1
	bx lr
_020382A4:
	ldr r0, _020382BC ; =sub_02038C68
	cmp r1, r0
	bne _020382AE
	mov r0, #1
	bx lr
_020382AE:
	mov r0, #0
	bx lr
	nop
_020382B4: .word 0x021C07D4
_020382B8: .word sub_02038164
_020382BC: .word sub_02038C68
	thumb_func_end sub_02038294

	thumb_func_start sub_020382C0
sub_020382C0: ; 0x020382C0
	ldr r0, _020382E8 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x24]
	ldr r0, _020382EC ; =sub_02037FBC
	cmp r1, r0
	bne _020382D0
	mov r0, #1
	bx lr
_020382D0:
	ldr r0, _020382F0 ; =sub_02038164
	cmp r1, r0
	bne _020382DA
	mov r0, #1
	bx lr
_020382DA:
	ldr r0, _020382F4 ; =sub_02038C68
	cmp r1, r0
	bne _020382E4
	mov r0, #1
	bx lr
_020382E4:
	mov r0, #0
	bx lr
	; .align 2, 0
_020382E8: .word 0x021C07D4
_020382EC: .word sub_02037FBC
_020382F0: .word sub_02038164
_020382F4: .word sub_02038C68
	thumb_func_end sub_020382C0

	thumb_func_start sub_020382F8
sub_020382F8: ; 0x020382F8
	push {r3, lr}
	ldr r0, _02038310 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02038306
	bl sub_02022974
_02038306:
	ldr r0, _02038310 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x34
	pop {r3, pc}
	nop
_02038310: .word 0x021C07D4
	thumb_func_end sub_020382F8

	thumb_func_start sub_02038314
sub_02038314: ; 0x02038314
	push {r3, lr}
	mov r0, #0
	bl sub_020362B4
	mov r0, #0
	bl ov4_021D20B0
	cmp r0, #0
	beq _02038332
	bl ov4_021D2134
	ldr r0, _02038348 ; =sub_020373B8
	mov r1, #0
	bl sub_02036C94
_02038332:
	mov r0, #0
	bl ov4_021D12D4
	cmp r0, #0
	bge _02038344
	ldr r0, _0203834C ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_02038344:
	pop {r3, pc}
	nop
_02038348: .word sub_020373B8
_0203834C: .word sub_02037EB0
	thumb_func_end sub_02038314

	thumb_func_start sub_02038350
sub_02038350: ; 0x02038350
	push {r3, lr}
	ldr r0, _02038370 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203836C
	mov r0, #1
	bl sub_02017DF0
	bl sub_02032A70
	ldr r0, _02038374 ; =sub_020373B8
	mov r1, #5
	bl sub_02036C94
_0203836C:
	pop {r3, pc}
	nop
_02038370: .word 0x021C07D4
_02038374: .word sub_020373B8
	thumb_func_end sub_02038350

	thumb_func_start sub_02038378
sub_02038378: ; 0x02038378
	push {r3, lr}
	ldr r0, _02038390 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203838E
	mov r1, #0
	add r0, #0x4c
	strb r1, [r0]
	ldr r0, _02038394 ; =sub_020381F0
	bl sub_02036C94
_0203838E:
	pop {r3, pc}
	; .align 2, 0
_02038390: .word 0x021C07D4
_02038394: .word sub_020381F0
	thumb_func_end sub_02038378

	thumb_func_start sub_02038398
sub_02038398: ; 0x02038398
	push {r3, lr}
	ldr r0, _020383CC ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020383CA
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	bl sub_0203608C
	cmp r0, #0
	bne _020383B8
	mov r1, #0
	ldr r0, _020383CC ; =0x021C07D4
	b _020383BC
_020383B8:
	ldr r0, _020383CC ; =0x021C07D4
	mov r1, #1
_020383BC:
	ldr r0, [r0, #0]
	add r0, #0x4c
	strb r1, [r0]
	ldr r0, _020383D0 ; =sub_020381F0
	mov r1, #0
	bl sub_02036C94
_020383CA:
	pop {r3, pc}
	; .align 2, 0
_020383CC: .word 0x021C07D4
_020383D0: .word sub_020381F0
	thumb_func_end sub_02038398

	thumb_func_start sub_020383D4
sub_020383D4: ; 0x020383D4
	push {r3, lr}
	bl sub_0203608C
	add r1, sp, #0
	strb r0, [r1]
	mov r0, #0x15
	add r1, sp, #0
	bl sub_020360D0
	pop {r3, pc}
	thumb_func_end sub_020383D4

	thumb_func_start sub_020383E8
sub_020383E8: ; 0x020383E8
	ldr r0, _02038428 ; =0x021C07D4
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02038422
	ldr r1, [r2, #0x24]
	ldr r0, _0203842C ; =sub_02037EB0
	cmp r1, r0
	bne _020383FC
	mov r0, #1
	bx lr
_020383FC:
	ldr r0, _02038430 ; =sub_02037EB4
	cmp r1, r0
	bne _02038410
	add r0, r2, #0
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _02038410
	mov r0, #1
	bx lr
_02038410:
	ldr r0, _02038434 ; =sub_02038E84
	cmp r1, r0
	bne _02038422
	add r2, #0x4f
	ldrb r0, [r2]
	cmp r0, #0
	beq _02038422
	mov r0, #1
	bx lr
_02038422:
	mov r0, #0
	bx lr
	nop
_02038428: .word 0x021C07D4
_0203842C: .word sub_02037EB0
_02038430: .word sub_02037EB4
_02038434: .word sub_02038E84
	thumb_func_end sub_020383E8

	thumb_func_start sub_02038438
sub_02038438: ; 0x02038438
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02038488 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02038486
	mov r1, #0xf
	add r2, r1, #0
	mov r0, #3
	add r2, #0xf1
	bl sub_02017FD4
	mov r0, #0xf
	mov r1, #0x64
	bl sub_02018144
	ldr r1, _02038488 ; =0x021C07D4
	mov r2, #0x64
	str r0, [r1, #0]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _02038488 ; =0x021C07D4
	mov r2, #0x18
	ldr r1, [r0, #0]
	add r1, #0x4a
	strb r2, [r1]
	ldr r2, [r0, #0]
	mov r1, #1
	add r2, #0x51
	strb r1, [r2]
	ldr r0, [r0, #0]
	str r4, [r0, #0x28]
	mov r0, #0
	bl sub_020388F4
	mov r0, #1
	bl sub_02017DE0
_02038486:
	pop {r4, pc}
	; .align 2, 0
_02038488: .word 0x021C07D4
	thumb_func_end sub_02038438

	thumb_func_start sub_0203848C
sub_0203848C: ; 0x0203848C
	push {r3, lr}
	ldr r0, _020384BC ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020384B8
	mov r0, #1
	bl sub_02017DF0
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	ldr r0, _020384BC ; =0x021C07D4
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _020384BC ; =0x021C07D4
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #0xf
	bl sub_0201807C
_020384B8:
	pop {r3, pc}
	nop
_020384BC: .word 0x021C07D4
	thumb_func_end sub_0203848C

	thumb_func_start sub_020384C0
sub_020384C0: ; 0x020384C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02038510 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0203850E
	mov r1, #0xf
	add r2, r1, #0
	mov r0, #3
	add r2, #0xf1
	bl sub_02017FD4
	mov r0, #0xf
	mov r1, #0x64
	bl sub_02018144
	ldr r1, _02038510 ; =0x021C07D4
	mov r2, #0x64
	str r0, [r1, #0]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _02038510 ; =0x021C07D4
	mov r2, #0x19
	ldr r1, [r0, #0]
	add r1, #0x4a
	strb r2, [r1]
	ldr r2, [r0, #0]
	mov r1, #1
	add r2, #0x51
	strb r1, [r2]
	ldr r0, [r0, #0]
	str r4, [r0, #0x28]
	mov r0, #0
	bl sub_020388F4
	mov r0, #1
	bl sub_02017DE0
_0203850E:
	pop {r4, pc}
	; .align 2, 0
_02038510: .word 0x021C07D4
	thumb_func_end sub_020384C0

	thumb_func_start sub_02038514
sub_02038514: ; 0x02038514
	push {r3, lr}
	ldr r0, _02038544 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02038540
	mov r0, #1
	bl sub_02017DF0
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	ldr r0, _02038544 ; =0x021C07D4
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _02038544 ; =0x021C07D4
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #0xf
	bl sub_0201807C
_02038540:
	pop {r3, pc}
	nop
_02038544: .word 0x021C07D4
	thumb_func_end sub_02038514

	thumb_func_start sub_02038548
sub_02038548: ; 0x02038548
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02038598 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02038596
	mov r1, #0xf
	add r2, r1, #0
	mov r0, #3
	add r2, #0xf1
	bl sub_02017FD4
	mov r0, #0xf
	mov r1, #0x64
	bl sub_02018144
	ldr r1, _02038598 ; =0x021C07D4
	mov r2, #0x64
	str r0, [r1, #0]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _02038598 ; =0x021C07D4
	mov r2, #0x24
	ldr r1, [r0, #0]
	add r1, #0x4a
	strb r2, [r1]
	ldr r2, [r0, #0]
	mov r1, #1
	add r2, #0x51
	strb r1, [r2]
	ldr r0, [r0, #0]
	str r4, [r0, #0x28]
	mov r0, #0
	bl sub_020388F4
	mov r0, #1
	bl sub_02017DE0
_02038596:
	pop {r4, pc}
	; .align 2, 0
_02038598: .word 0x021C07D4
	thumb_func_end sub_02038548

	thumb_func_start sub_0203859C
sub_0203859C: ; 0x0203859C
	push {r3, lr}
	ldr r0, _020385CC ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020385C8
	mov r0, #1
	bl sub_02017DF0
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	ldr r0, _020385CC ; =0x021C07D4
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _020385CC ; =0x021C07D4
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #0xf
	bl sub_0201807C
_020385C8:
	pop {r3, pc}
	nop
_020385CC: .word 0x021C07D4
	thumb_func_end sub_0203859C

	thumb_func_start sub_020385D0
sub_020385D0: ; 0x020385D0
	push {r3, lr}
	sub sp, #8
	ldr r0, _02038628 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020385E2
	add sp, #8
	mov r0, #0
	pop {r3, pc}
_020385E2:
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _020385EE
	cmp r0, #0x24
	bne _02038604
_020385EE:
	add r0, sp, #4
	add r1, sp, #0
	bl ov4_021D75F4
	cmp r0, #0
	beq _02038620
	bl ov4_021D76E8
	add sp, #8
	mov r0, #1
	pop {r3, pc}
_02038604:
	cmp r0, #0x19
	bne _02038620
	add r0, sp, #4
	add r1, sp, #0
	bl ov4_021D75F4
	cmp r0, #0
	beq _02038620
	ldr r0, [sp]
	cmp r0, #7
	bne _02038620
	add sp, #8
	mov r0, #1
	pop {r3, pc}
_02038620:
	mov r0, #0
	add sp, #8
	pop {r3, pc}
	nop
_02038628: .word 0x021C07D4
	thumb_func_end sub_020385D0

	thumb_func_start sub_0203862C
sub_0203862C: ; 0x0203862C
	push {r3, lr}
	bl ov4_021D0FEC
	ldr r1, _020386A0 ; =0x021C07D4
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x40]
	sub r2, r2, #1
	str r2, [r3, #0x40]
	cmp r0, #0x1b
	bne _02038680
	ldr r1, [r1, #0]
	add r0, r1, #0
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0x21
	bne _02038676
	ldr r0, [r1, #0x5c]
	bl ov66_02232714
	cmp r0, #1
	bne _0203866C
	ldr r1, _020386A0 ; =0x021C07D4
	mov r2, #1
	ldr r0, [r1, #0]
	add r0, #0x60
	strb r2, [r0]
	ldr r1, [r1, #0]
	ldr r0, _020386A4 ; =sub_02038C1C
	ldr r1, [r1, #0x40]
	bl sub_02036C94
	pop {r3, pc}
_0203866C:
	ldr r0, _020386A8 ; =sub_02038DC8
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038676:
	ldr r0, _020386AC ; =sub_02038164
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038680:
	cmp r0, #0
	beq _0203868C
	ldr r0, _020386B0 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_0203868C:
	ldr r0, _020386A0 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	bgt _0203869E
	ldr r0, _020386B0 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_0203869E:
	pop {r3, pc}
	; .align 2, 0
_020386A0: .word 0x021C07D4
_020386A4: .word sub_02038C1C
_020386A8: .word sub_02038DC8
_020386AC: .word sub_02038164
_020386B0: .word sub_02037EB0
	thumb_func_end sub_0203862C

	thumb_func_start sub_020386B4
sub_020386B4: ; 0x020386B4
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _0203870E
	mov r2, #0xd5
	mov r0, #3
	mov r1, #0x31
	lsl r2, r2, #0xa
	bl sub_02017FD4
	mov r0, #1
	add r1, r0, #0
	lsl r2, r0, #9
	add r3, r0, #0
	bl sub_02034778
	cmp r0, #0
	beq _0203870E
	ldr r0, _02038710 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4a
	ldrb r0, [r0]
	bl sub_0203266C
	add r3, r0, #0
	ldr r0, _02038710 ; =0x021C07D4
	mov r2, #0xb1
	ldr r0, [r0, #0]
	mov r1, #0x31
	ldr r0, [r0, #0x28]
	lsl r2, r2, #0xa
	add r3, r3, #1
	bl ov4_021D0D80
	ldr r0, _02038714 ; =sub_020389FC
	bl ov4_021D2170
	bl sub_02034878
	mov r1, #0xe1
	ldr r0, _02038718 ; =sub_0203862C
	lsl r1, r1, #4
	bl sub_02036C94
_0203870E:
	pop {r3, pc}
	; .align 2, 0
_02038710: .word 0x021C07D4
_02038714: .word sub_020389FC
_02038718: .word sub_0203862C
	thumb_func_end sub_020386B4

	thumb_func_start sub_0203871C
sub_0203871C: ; 0x0203871C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02025E38
	bl sub_02035E38
	cmp r0, #0
	beq _02038732
	mov r0, #0
	pop {r3, r4, r5, pc}
_02038732:
	mov r0, #1
	bl sub_02017DE0
	ldr r2, _02038780 ; =0x00007080
	mov r0, #3
	mov r1, #0xf
	bl sub_02017FD4
	add r0, r5, #0
	mov r1, #0x17
	bl sub_020366A0
	mov r0, #0xf
	add r1, r4, #0
	bl sub_02018144
	ldr r1, _02038784 ; =0x021C07D4
	ldr r2, [r1, #0]
	str r0, [r2, #0]
	ldr r0, [r1, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl MI_CpuFill8
	ldr r0, _02038784 ; =0x021C07D4
	mov r1, #0
	ldr r2, [r0, #0]
	add r2, #0x4b
	strb r1, [r2]
	ldr r0, [r0, #0]
	str r5, [r0, #0x28]
	ldr r0, _02038788 ; =sub_020386B4
	bl sub_02036C94
	ldr r0, _02038784 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02038780: .word 0x00007080
_02038784: .word 0x021C07D4
_02038788: .word sub_020386B4
	thumb_func_end sub_0203871C

	thumb_func_start sub_0203878C
sub_0203878C: ; 0x0203878C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02025E38
	bl sub_02035E38
	cmp r0, #0
	bne _020387D8
	mov r0, #1
	bl sub_02017DE0
	ldr r2, _020387DC ; =0x00007080
	mov r0, #3
	mov r1, #0xf
	bl sub_02017FD4
	add r0, r5, #0
	mov r1, #0x21
	bl sub_020366A0
	ldr r0, _020387E0 ; =0x021C07D4
	mov r1, #0
	ldr r2, [r0, #0]
	str r1, [r2, #0]
	ldr r2, [r0, #0]
	str r4, [r2, #0x5c]
	ldr r2, [r0, #0]
	add r2, #0x60
	strb r1, [r2]
	ldr r2, [r0, #0]
	add r2, #0x4b
	strb r1, [r2]
	ldr r0, [r0, #0]
	str r5, [r0, #0x28]
	ldr r0, _020387E4 ; =sub_02038BA8
	bl sub_02036C94
_020387D8:
	pop {r3, r4, r5, pc}
	nop
_020387DC: .word 0x00007080
_020387E0: .word 0x021C07D4
_020387E4: .word sub_02038BA8
	thumb_func_end sub_0203878C

	thumb_func_start sub_020387E8
sub_020387E8: ; 0x020387E8
	push {r3, lr}
	ldr r0, _020387FC ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020387FA
	ldr r0, _02038800 ; =sub_02038D80
	mov r1, #0
	bl sub_02036C94
_020387FA:
	pop {r3, pc}
	; .align 2, 0
_020387FC: .word 0x021C07D4
_02038800: .word sub_02038D80
	thumb_func_end sub_020387E8

	thumb_func_start sub_02038804
sub_02038804: ; 0x02038804
	ldr r0, _02038818 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02038810
	mov r0, #0
	bx lr
_02038810:
	add r0, #0x60
	ldrb r0, [r0]
	bx lr
	nop
_02038818: .word 0x021C07D4
	thumb_func_end sub_02038804

	thumb_func_start sub_0203881C
sub_0203881C: ; 0x0203881C
	ldr r0, _02038834 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02038830
	ldr r1, [r0, #0x24]
	ldr r0, _02038838 ; =sub_02038DC8
	cmp r1, r0
	bne _02038830
	mov r0, #1
	bx lr
_02038830:
	mov r0, #0
	bx lr
	; .align 2, 0
_02038834: .word 0x021C07D4
_02038838: .word sub_02038DC8
	thumb_func_end sub_0203881C

	thumb_func_start sub_0203883C
sub_0203883C: ; 0x0203883C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02038884 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0203884C
	bl sub_02022974
_0203884C:
	bl sub_020382C0
	cmp r0, #1
	beq _02038858
	bl sub_02022974
_02038858:
	add r0, r4, #0
	bl ov66_02233184
	cmp r0, #0
	bne _02038874
	add r0, r4, #0
	mov r1, #4
	bl ov66_02232F38
	ldr r0, _02038888 ; =sub_02038DEC
	mov r1, #0
	bl sub_02036C94
	pop {r4, pc}
_02038874:
	add r0, r4, #0
	bl ov66_02233260
	ldr r0, _02038888 ; =sub_02038DEC
	mov r1, #0
	bl sub_02036C94
	pop {r4, pc}
	; .align 2, 0
_02038884: .word 0x021C07D4
_02038888: .word sub_02038DEC
	thumb_func_end sub_0203883C

	thumb_func_start sub_0203888C
sub_0203888C: ; 0x0203888C
	push {r3, lr}
	bl ov66_02233374
	cmp r0, #1
	bne _0203889A
	bl ov66_02233064
_0203889A:
	bl ov66_0223361C
	ldr r0, _020388A8 ; =sub_02038E38
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_020388A8: .word sub_02038E38
	thumb_func_end sub_0203888C

	thumb_func_start sub_020388AC
sub_020388AC: ; 0x020388AC
	ldr r0, _020388D8 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020388D4
	ldr r1, [r0, #0x24]
	ldr r0, _020388DC ; =sub_02038DCC
	cmp r1, r0
	bne _020388C0
	mov r0, #2
	bx lr
_020388C0:
	ldr r0, _020388E0 ; =sub_02038DEC
	cmp r1, r0
	bne _020388CA
	mov r0, #1
	bx lr
_020388CA:
	ldr r0, _020388E4 ; =sub_02038E38
	cmp r1, r0
	bne _020388D4
	mov r0, #3
	bx lr
_020388D4:
	mov r0, #0
	bx lr
	; .align 2, 0
_020388D8: .word 0x021C07D4
_020388DC: .word sub_02038DCC
_020388E0: .word sub_02038DEC
_020388E4: .word sub_02038E38
	thumb_func_end sub_020388AC

	thumb_func_start sub_020388E8
sub_020388E8: ; 0x020388E8
	ldr r0, _020388F0 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020388F0: .word 0x021C07D4
	thumb_func_end sub_020388E8

	thumb_func_start sub_020388F4
sub_020388F4: ; 0x020388F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02038934 ; =0x021C07D4
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02038924
	add r2, #0x4f
	strb r4, [r2]
	ldr r2, [r0, #0]
	add r2, #0x50
	strb r1, [r2]
	cmp r4, #0
	beq _0203891C
	bl sub_02035E18
	ldr r1, _02038934 ; =0x021C07D4
	ldr r1, [r1, #0]
	add r1, #0x47
	strb r0, [r1]
	b _02038924
_0203891C:
	ldr r0, [r0, #0]
	mov r1, #0
	add r0, #0x47
	strb r1, [r0]
_02038924:
	add r0, r4, #0
	bl sub_02033EA8
	add r0, r4, #0
	bl sub_02033ED4
	pop {r4, pc}
	nop
_02038934: .word 0x021C07D4
	thumb_func_end sub_020388F4

	thumb_func_start sub_02038938
sub_02038938: ; 0x02038938
	ldr r0, _02038958 ; =0x021C07D4
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02038954
	add r0, r1, #0
	add r0, #0x59
	ldrb r0, [r0]
	cmp r0, #0
	beq _0203894E
	mov r0, #1
	bx lr
_0203894E:
	add r1, #0x50
	ldrb r0, [r1]
	bx lr
_02038954:
	mov r0, #0
	bx lr
	; .align 2, 0
_02038958: .word 0x021C07D4
	thumb_func_end sub_02038938

	thumb_func_start sub_0203895C
sub_0203895C: ; 0x0203895C
	ldr r0, _02038970 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203896A
	add r0, #0x4a
	ldrb r0, [r0]
	bx lr
_0203896A:
	mov r0, #1
	bx lr
	nop
_02038970: .word 0x021C07D4
	thumb_func_end sub_0203895C

	thumb_func_start sub_02038974
sub_02038974: ; 0x02038974
	ldr r0, _02038988 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02038982
	add r0, #0x4b
	ldrb r0, [r0]
	bx lr
_02038982:
	mov r0, #0
	bx lr
	nop
_02038988: .word 0x021C07D4
	thumb_func_end sub_02038974

	thumb_func_start sub_0203898C
sub_0203898C: ; 0x0203898C
	ldr r1, _02038998 ; =0x021C07D4
	ldr r3, _0203899C ; =MI_CpuCopy8
	ldr r1, [r1, #0]
	mov r2, #6
	add r1, r1, #4
	bx r3
	; .align 2, 0
_02038998: .word 0x021C07D4
_0203899C: .word MI_CpuCopy8
	thumb_func_end sub_0203898C

	thumb_func_start sub_020389A0
sub_020389A0: ; 0x020389A0
	add r1, r0, #0
	ldr r0, _020389B0 ; =0x021C07D4
	ldr r3, _020389B4 ; =MI_CpuCopy8
	ldr r0, [r0, #0]
	mov r2, #6
	add r0, r0, #4
	bx r3
	nop
_020389B0: .word 0x021C07D4
_020389B4: .word MI_CpuCopy8
	thumb_func_end sub_020389A0

	thumb_func_start sub_020389B8
sub_020389B8: ; 0x020389B8
	push {r3, lr}
	bl sub_0203895C
	bl sub_020326EC
	pop {r3, pc}
	thumb_func_end sub_020389B8

	thumb_func_start sub_020389C4
sub_020389C4: ; 0x020389C4
	ldr r1, _020389D4 ; =0x021C07D4
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _020389D0
	add r1, #0x52
	strb r0, [r1]
_020389D0:
	bx lr
	nop
_020389D4: .word 0x021C07D4
	thumb_func_end sub_020389C4

	thumb_func_start sub_020389D8
sub_020389D8: ; 0x020389D8
	push {r3, lr}
	bl sub_02017E54
	cmp r0, #0
	beq _020389E6
	mov r0, #0
	pop {r3, pc}
_020389E6:
	ldr r0, _020389F8 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020389F4
	add r0, #0x52
	ldrb r0, [r0]
	pop {r3, pc}
_020389F4:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_020389F8: .word 0x021C07D4
	thumb_func_end sub_020389D8

	thumb_func_start sub_020389FC
sub_020389FC: ; 0x020389FC
	push {r3, lr}
	add r2, r0, #0
	mov r0, #0
	mov r1, #1
	bl sub_02039834
_02038A08:
	b _02038A08
	; .align 2, 0
	thumb_func_end sub_020389FC

	thumb_func_start sub_02038A0C
sub_02038A0C: ; 0x02038A0C
	push {r3, lr}
	mov r0, #0
	mov r1, #4
	add r2, r0, #0
	bl sub_02039834
_02038A18:
	b _02038A18
	; .align 2, 0
	thumb_func_end sub_02038A0C

	thumb_func_start sub_02038A1C
sub_02038A1C: ; 0x02038A1C
	bx lr
	; .align 2, 0
	thumb_func_end sub_02038A1C

	thumb_func_start sub_02038A20
sub_02038A20: ; 0x02038A20
	push {r3, lr}
	bl sub_02038938
	cmp r0, #0
	beq _02038AAC
	bl sub_020360F0
	cmp r0, #0
	bne _02038A56
	bl sub_020383E8
	cmp r0, #0
	bne _02038A56
	bl sub_020385D0
	cmp r0, #0
	bne _02038A56
	ldr r0, _02038AB0 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x59
	ldrb r0, [r0]
	cmp r0, #0
	bne _02038A56
	bl sub_0203881C
	cmp r0, #0
	beq _02038AAC
_02038A56:
	bl sub_02017E54
	cmp r0, #0
	bne _02038AAC
	bl sub_020389D8
	cmp r0, #0
	bne _02038AAC
	bl sub_0200569C
	ldr r0, _02038AB0 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bl sub_02024850
	ldr r1, _02038AB4 ; =0x021BF6DC
	mov r0, #1
	strb r0, [r1, #4]
	ldr r1, _02038AB0 ; =0x021C07D4
	ldr r2, [r1, #0]
	add r1, r2, #0
	add r1, #0x59
	ldrb r1, [r1]
	cmp r1, #3
	bne _02038A90
	mov r0, #3
	bl sub_020389C4
	pop {r3, pc}
_02038A90:
	add r2, #0x4a
	ldrb r1, [r2]
	cmp r1, #0x19
	beq _02038AA0
	cmp r1, #0xf
	beq _02038AA0
	cmp r1, #0x24
	bne _02038AA8
_02038AA0:
	mov r0, #2
	bl sub_020389C4
	pop {r3, pc}
_02038AA8:
	bl sub_020389C4
_02038AAC:
	pop {r3, pc}
	nop
_02038AB0: .word 0x021C07D4
_02038AB4: .word 0x021BF6DC
	thumb_func_end sub_02038A20

	thumb_func_start sub_02038AB8
sub_02038AB8: ; 0x02038AB8
	push {r3, lr}
	bl sub_02033DFC
	cmp r0, #0
	bne _02038ACA
	bl sub_02036780
	cmp r0, #0
	bne _02038ACE
_02038ACA:
	mov r0, #1
	pop {r3, pc}
_02038ACE:
	bl sub_020332D0
	cmp r0, #0
	bne _02038ADA
	mov r0, #1
	pop {r3, pc}
_02038ADA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02038AB8

	thumb_func_start sub_02038AE0
sub_02038AE0: ; 0x02038AE0
	push {r3, lr}
	ldr r1, _02038AFC ; =0x021C07D4
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02038AF6
	add r1, #0x59
	strb r0, [r1]
	bl sub_020363D0
	mov r0, #1
	pop {r3, pc}
_02038AF6:
	mov r0, #0
	pop {r3, pc}
	nop
_02038AFC: .word 0x021C07D4
	thumb_func_end sub_02038AE0

	thumb_func_start sub_02038B00
sub_02038B00: ; 0x02038B00
	ldr r0, _02038B14 ; =0x021C07D4
	mov r1, #0x1d
	ldr r0, [r0, #0]
	ldr r3, _02038B18 ; =ov4_021D1104
	add r0, #0x4a
	strb r1, [r0]
	ldr r0, _02038B1C ; =sub_020352C0
	add r1, r0, #0
	bx r3
	nop
_02038B14: .word 0x021C07D4
_02038B18: .word ov4_021D1104
_02038B1C: .word sub_020352C0
	thumb_func_end sub_02038B00

	thumb_func_start sub_02038B20
sub_02038B20: ; 0x02038B20
	ldr r0, _02038B34 ; =0x021C07D4
	mov r1, #0x23
	ldr r0, [r0, #0]
	ldr r3, _02038B38 ; =ov4_021D1104
	add r0, #0x4a
	strb r1, [r0]
	ldr r0, _02038B3C ; =sub_020352C0
	add r1, r0, #0
	bx r3
	nop
_02038B34: .word 0x021C07D4
_02038B38: .word ov4_021D1104
_02038B3C: .word sub_020352C0
	thumb_func_end sub_02038B20

	thumb_func_start sub_02038B40
sub_02038B40: ; 0x02038B40
	ldr r0, _02038B54 ; =0x021C07D4
	mov r1, #0x21
	ldr r0, [r0, #0]
	ldr r3, _02038B58 ; =ov4_021D1104
	add r0, #0x4a
	strb r1, [r0]
	ldr r0, _02038B5C ; =sub_020352C0
	add r1, r0, #0
	bx r3
	nop
_02038B54: .word 0x021C07D4
_02038B58: .word ov4_021D1104
_02038B5C: .word sub_020352C0
	thumb_func_end sub_02038B40

	thumb_func_start sub_02038B60
sub_02038B60: ; 0x02038B60
	ldr r0, _02038B74 ; =0x021C07D4
	ldr r3, _02038B78 ; =ov4_021D1104
	ldr r0, [r0, #0]
	mov r1, #0x17
	add r0, #0x4a
	strb r1, [r0]
	ldr r0, _02038B7C ; =sub_020351F8
	ldr r1, _02038B80 ; =sub_0203509C
	bx r3
	nop
_02038B74: .word 0x021C07D4
_02038B78: .word ov4_021D1104
_02038B7C: .word sub_020351F8
_02038B80: .word sub_0203509C
	thumb_func_end sub_02038B60

	thumb_func_start sub_02038B84
sub_02038B84: ; 0x02038B84
	ldr r0, _02038B98 ; =0x021C07D4
	ldr r3, _02038B9C ; =ov4_021D1104
	ldr r0, [r0, #0]
	mov r1, #0x13
	add r0, #0x4a
	strb r1, [r0]
	ldr r0, _02038BA0 ; =sub_020351F8
	ldr r1, _02038BA4 ; =sub_0203509C
	bx r3
	nop
_02038B98: .word 0x021C07D4
_02038B9C: .word ov4_021D1104
_02038BA0: .word sub_020351F8
_02038BA4: .word sub_0203509C
	thumb_func_end sub_02038B84

	thumb_func_start sub_02038BA8
sub_02038BA8: ; 0x02038BA8
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02038C0C
	mov r0, #3
	mov r1, #0x31
	lsl r2, r0, #0x11
	bl sub_02017FD4
	mov r0, #1
	add r1, r0, #0
	lsl r2, r0, #9
	add r3, r0, #0
	bl sub_02034778
	cmp r0, #0
	beq _02038C0C
	ldr r0, _02038C10 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4a
	ldrb r0, [r0]
	bl sub_0203266C
	add r3, r0, #0
	ldr r0, _02038C10 ; =0x021C07D4
	mov r2, #0x16
	ldr r0, [r0, #0]
	mov r1, #0x31
	ldr r0, [r0, #0x28]
	lsl r2, r2, #0xe
	add r3, r3, #1
	bl ov4_021D0D80
	ldr r0, _02038C14 ; =sub_020389FC
	bl ov4_021D2170
	bl sub_02034878
	mov r0, #0
	bl ov4_021D2584
	mov r0, #0
	bl sub_0203632C
	mov r1, #0xe1
	ldr r0, _02038C18 ; =sub_0203862C
	lsl r1, r1, #4
	bl sub_02036C94
_02038C0C:
	pop {r3, pc}
	nop
_02038C10: .word 0x021C07D4
_02038C14: .word sub_020389FC
_02038C18: .word sub_0203862C
	thumb_func_end sub_02038BA8

	thumb_func_start sub_02038C1C
sub_02038C1C: ; 0x02038C1C
	push {r3, lr}
	ldr r0, _02038C5C ; =0x021C07D4
	ldr r2, [r0, #0]
	ldr r1, [r2, #0x40]
	sub r1, r1, #1
	str r1, [r2, #0x40]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	bgt _02038C3A
	ldr r0, _02038C60 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038C3A:
	mov r0, #1
	bl sub_020362B4
	bl sub_02038D44
	cmp r0, #0
	beq _02038C58
	bl ov66_02232804
	cmp r0, #0
	beq _02038C58
	ldr r0, _02038C64 ; =sub_02038C68
	mov r1, #0
	bl sub_02036C94
_02038C58:
	pop {r3, pc}
	nop
_02038C5C: .word 0x021C07D4
_02038C60: .word sub_02037EB0
_02038C64: .word sub_02038C68
	thumb_func_end sub_02038C1C

	thumb_func_start sub_02038C68
sub_02038C68: ; 0x02038C68
	push {r3, lr}
	bl sub_02038D44
	cmp r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02038C68

	thumb_func_start sub_02038C74
sub_02038C74: ; 0x02038C74
	push {r4, lr}
	mov r4, #1
	cmp r0, #0xa
	blt _02038C8C
	cmp r0, #0x14
	bge _02038C8C
	ldr r0, _02038CFC ; =sub_02037ED4
	mov r1, #0
	bl sub_02036C94
	mov r4, #0
	b _02038CD0
_02038C8C:
	cmp r0, #0
	bge _02038C9C
	ldr r0, _02038D00 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	mov r4, #0
	b _02038CD0
_02038C9C:
	cmp r0, #0x17
	bne _02038CAC
	ldr r0, _02038D04 ; =sub_02038E84
	mov r1, #0
	bl sub_02036C94
	mov r4, #0
	b _02038CD0
_02038CAC:
	cmp r0, #0x18
	bne _02038CD0
	ldr r0, _02038D08 ; =0x021C07D4
	mov r4, #0
	ldr r0, [r0, #0]
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _02038CC8
	ldr r0, _02038D00 ; =sub_02037EB0
	add r1, r4, #0
	bl sub_02036C94
	b _02038CD0
_02038CC8:
	ldr r0, _02038D0C ; =sub_02037ED0
	add r1, r4, #0
	bl sub_02036C94
_02038CD0:
	ldr r0, _02038D08 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _02038CF6
	bl sub_02035E18
	ldr r1, _02038D08 ; =0x021C07D4
	ldr r1, [r1, #0]
	add r1, #0x47
	ldrb r1, [r1]
	cmp r1, r0
	beq _02038CF6
	ldr r0, _02038D00 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	mov r4, #0
_02038CF6:
	add r0, r4, #0
	pop {r4, pc}
	nop
_02038CFC: .word sub_02037ED4
_02038D00: .word sub_02037EB0
_02038D04: .word sub_02038E84
_02038D08: .word 0x021C07D4
_02038D0C: .word sub_02037ED0
	thumb_func_end sub_02038C74

	thumb_func_start sub_02038D10
sub_02038D10: ; 0x02038D10
	push {r4, lr}
	mov r4, #1
	bl ov66_022325D8
	cmp r0, #4
	bhi _02038D3C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02038D28: ; jump table
	.short _02038D3C - _02038D28 - 2 ; case 0
	.short _02038D3C - _02038D28 - 2 ; case 1
	.short _02038D3C - _02038D28 - 2 ; case 2
	.short _02038D3C - _02038D28 - 2 ; case 3
	.short _02038D32 - _02038D28 - 2 ; case 4
_02038D32:
	ldr r0, _02038D40 ; =sub_02038DC8
	mov r1, #0
	bl sub_02036C94
	mov r4, #0
_02038D3C:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02038D40: .word sub_02038DC8
	thumb_func_end sub_02038D10

	thumb_func_start sub_02038D44
sub_02038D44: ; 0x02038D44
	push {r3, lr}
	mov r0, #0
	bl ov4_021D12D4
	bl sub_02038C74
	cmp r0, #0
	beq _02038D58
	bl sub_02038D10
_02038D58:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02038D44

	thumb_func_start sub_02038D5C
sub_02038D5C: ; 0x02038D5C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	bl ov4_021D12D4
	cmp r0, #0x14
	blt _02038D6E
	str r0, [r4, #0]
	b _02038D7A
_02038D6E:
	mov r1, #0
	str r1, [r4, #0]
	bl sub_02038C74
	cmp r0, #0
	beq _02038D7E
_02038D7A:
	bl sub_02038D10
_02038D7E:
	pop {r4, pc}
	thumb_func_end sub_02038D5C

	thumb_func_start sub_02038D80
sub_02038D80: ; 0x02038D80
	push {r3, lr}
	bl ov66_0223282C
	ldr r0, _02038D90 ; =sub_02038D94
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_02038D90: .word sub_02038D94
	thumb_func_end sub_02038D80

	thumb_func_start sub_02038D94
sub_02038D94: ; 0x02038D94
	push {r3, lr}
	mov r0, #0
	bl ov4_021D12D4
	bl sub_02038D10
	bl ov66_02232854
	cmp r0, #0
	beq _02038DC0
	mov r0, #1
	bl sub_02017DF0
	bl sub_02032A70
	ldr r0, _02038DC4 ; =sub_020373B8
	mov r1, #5
	bl sub_02036C94
	mov r0, #0
	bl sub_020362B4
_02038DC0:
	pop {r3, pc}
	nop
_02038DC4: .word sub_020373B8
	thumb_func_end sub_02038D94

	thumb_func_start sub_02038DC8
sub_02038DC8: ; 0x02038DC8
	bx lr
	; .align 2, 0
	thumb_func_end sub_02038DC8

	thumb_func_start sub_02038DCC
sub_02038DCC: ; 0x02038DCC
	push {r3, lr}
	bl sub_02038D44
	bl ov66_02233164
	cmp r0, #1
	bne _02038DE6
	bl ov66_0223361C
	ldr r0, _02038DE8 ; =sub_02038E38
	mov r1, #0
	bl sub_02036C94
_02038DE6:
	pop {r3, pc}
	; .align 2, 0
_02038DE8: .word sub_02038E38
	thumb_func_end sub_02038DCC

	thumb_func_start sub_02038DEC
sub_02038DEC: ; 0x02038DEC
	push {r3, lr}
	bl ov66_02233164
	cmp r0, #1
	bne _02038E04
	bl ov66_0223361C
	ldr r0, _02038E2C ; =sub_02038E38
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038E04:
	add r0, sp, #0
	bl sub_02038D5C
	ldr r0, [sp]
	cmp r0, #0
	beq _02038E2A
	cmp r0, #0x14
	bne _02038E1E
	ldr r0, _02038E30 ; =sub_02038DCC
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038E1E:
	bl ov66_0223361C
	ldr r0, _02038E34 ; =sub_02038C68
	mov r1, #0
	bl sub_02036C94
_02038E2A:
	pop {r3, pc}
	; .align 2, 0
_02038E2C: .word sub_02038E38
_02038E30: .word sub_02038DCC
_02038E34: .word sub_02038C68
	thumb_func_end sub_02038DEC

	thumb_func_start sub_02038E38
sub_02038E38: ; 0x02038E38
	push {r3, lr}
	mov r0, #1
	bl ov4_021D12D4
	cmp r0, #0
	bge _02038E4E
	ldr r0, _02038E7C ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038E4E:
	bl sub_02038D10
	cmp r0, #0
	beq _02038E7A
	mov r0, #0
	bl ov4_021D20B0
	cmp r0, #0
	beq _02038E7A
	bl ov4_021D2134
	cmp r0, #0
	beq _02038E7A
	bl sub_02034AE4
	mov r0, #0
	bl sub_0203632C
	ldr r0, _02038E80 ; =sub_02038C68
	mov r1, #0
	bl sub_02036C94
_02038E7A:
	pop {r3, pc}
	; .align 2, 0
_02038E7C: .word sub_02037EB0
_02038E80: .word sub_02038C68
	thumb_func_end sub_02038E38

	thumb_func_start sub_02038E84
sub_02038E84: ; 0x02038E84
	push {r3, lr}
	mov r0, #0
	bl ov4_021D12D4
	cmp r0, #0
	bge _02038E98
	ldr r0, _02038EA0 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_02038E98:
	bl sub_02038D10
	pop {r3, pc}
	nop
_02038EA0: .word sub_02037EB0
	thumb_func_end sub_02038E84

	thumb_func_start sub_02038EA4
sub_02038EA4: ; 0x02038EA4
	ldr r0, _02038EB0 ; =0x021C07D4
	mov r1, #0x22
	ldr r0, [r0, #0]
	add r0, #0x4a
	strb r1, [r0]
	bx lr
	; .align 2, 0
_02038EB0: .word 0x021C07D4
	thumb_func_end sub_02038EA4

	thumb_func_start sub_02038EB4
sub_02038EB4: ; 0x02038EB4
	push {r3, lr}
	ldr r0, _02038ED0 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02038ECA
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _02038ECA
	mov r0, #0
	pop {r3, pc}
_02038ECA:
	bl sub_02035E38
	pop {r3, pc}
	; .align 2, 0
_02038ED0: .word 0x021C07D4
	thumb_func_end sub_02038EB4

	.rodata


	.global Unk_020E5E74
Unk_020E5E74: ; 0x020E5E74
	.incbin "incbin/arm9_rodata.bin", 0x1234, 0x123C - 0x1234

	.global Unk_020E5E7C
Unk_020E5E7C: ; 0x020E5E7C
	.incbin "incbin/arm9_rodata.bin", 0x123C, 0x1248 - 0x123C

	.global Unk_020E5E88
Unk_020E5E88: ; 0x020E5E88
	.incbin "incbin/arm9_rodata.bin", 0x1248, 0xC



	.data


	.global Unk_02100A20
Unk_02100A20: ; 0x02100A20
	.incbin "incbin/arm9_data.bin", 0x1D40, 0x1D48 - 0x1D40

	.global Unk_02100A28
Unk_02100A28: ; 0x02100A28
	.incbin "incbin/arm9_data.bin", 0x1D48, 0x1D50 - 0x1D48

	.global Unk_02100A30
Unk_02100A30: ; 0x02100A30
	.incbin "incbin/arm9_data.bin", 0x1D50, 0x6



	.bss


	.global Unk_021C07D4
Unk_021C07D4: ; 0x021C07D4
	.space 0x4

