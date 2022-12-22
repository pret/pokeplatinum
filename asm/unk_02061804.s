	.include "macros/function.inc"
	.include "include/unk_02061804.inc"

	

	.text


	thumb_func_start sub_02061804
sub_02061804: ; 0x02061804
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r7, r2, #0
	bl sub_020618C8
	add r4, r0, #0
	add r1, r6, #0
	bl sub_0206288C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02062820
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02062854
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02061804

	thumb_func_start sub_02061830
sub_02061830: ; 0x02061830
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062878
	add r1, r0, #0
	mov r0, #0xb
	bl sub_02018238
	mov r0, #0xb
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02061830

	thumb_func_start sub_0206184C
sub_0206184C: ; 0x0206184C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r5, r2, #0
	str r3, [sp, #4]
	ldr r7, [sp, #0x20]
	bl sub_02062824
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_02062878
	add r4, r0, #0
	cmp r6, #0
	beq _020618B4
_0206186A:
	add r0, r4, #0
	bl sub_02062CF8
	cmp r0, #1
	bne _020618AA
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	add r3, r7, #0
	bl sub_0206244C
	cmp r0, #0
	beq _0206188C
	cmp r0, #1
	beq _020618AA
	cmp r0, #2
	b _020618AA
_0206188C:
	add r0, r4, #0
	bl sub_02062918
	cmp r5, r0
	beq _020618AA
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl sub_020628D8
	cmp r0, #0
	bne _020618AA
	add r0, r4, #0
	bl sub_02061AF4
_020618AA:
	mov r0, #0x4a
	lsl r0, r0, #2
	add r4, r4, r0
	sub r6, r6, #1
	bne _0206186A
_020618B4:
	ldr r0, [sp]
	bl sub_0206285C
	add r1, r0, #0
	ldr r0, [sp]
	bl ov5_021EDA38
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206184C

	thumb_func_start sub_020618C8
sub_020618C8: ; 0x020618C8
	push {r4, r5, r6, lr}
	mov r1, #0x4b
	add r4, r0, #0
	mov r0, #0xb
	lsl r1, r1, #2
	bl sub_02018144
	add r5, r0, #0
	bne _020618DE
	bl sub_02022974
_020618DE:
	mov r2, #0x4b
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	mov r0, #0x4a
	lsl r0, r0, #2
	add r6, r4, #0
	mul r6, r0
	mov r0, #0xb
	add r1, r6, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02061902
	bl sub_02022974
_02061902:
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	bl memset
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062860
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020618C8

	thumb_func_start sub_02061918
sub_02061918: ; 0x02061918
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r2, #0
	add r2, sp, #0
	add r3, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r6, #0
	bl sub_020630F4
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020631D8
	cmp r0, #0
	bne _02061964
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02062154
	add r4, r0, #0
	beq _02061986
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020626D0
	add sp, #0x20
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02061964:
	add r0, r6, #0
	bl sub_020631F4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020624CC
	add r4, r0, #0
	beq _02061986
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02062714
	add sp, #0x20
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02061986:
	add r0, r5, #0
	bl sub_02062120
	add r4, r0, #0
	beq _020619D8
	add r0, r5, #0
	bl sub_02062894
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020621E8
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206234C
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02062914
	add r0, r4, #0
	bl sub_02062660
	add r0, r4, #0
	bl sub_02062670
	add r0, r4, #0
	mov r1, #4
	bl sub_020628BC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020621AC
	add r0, r5, #0
	bl sub_0206281C
	bl sub_02062828
	add r0, r4, #0
_020619D8:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02061918

	thumb_func_start sub_020619DC
sub_020619DC: ; 0x020619DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_020630F0
	ldr r1, [sp, #0x38]
	add r0, sp, #0
	bl sub_020630F8
	ldr r1, [sp, #0x3c]
	add r0, sp, #0
	bl sub_02063100
	add r0, sp, #0
	mov r1, #0
	bl sub_02063108
	add r0, sp, #0
	mov r1, #0
	bl sub_02063110
	add r0, sp, #0
	mov r1, #0
	bl sub_02063118
	add r0, sp, #0
	add r1, r7, #0
	bl sub_02063120
	mov r1, #0
	add r0, sp, #0
	add r2, r1, #0
	bl sub_0206312C
	add r0, sp, #0
	mov r1, #0
	mov r2, #1
	bl sub_0206312C
	add r0, sp, #0
	mov r1, #0
	mov r2, #2
	bl sub_0206312C
	add r0, sp, #0
	mov r1, #0
	bl sub_02063174
	add r0, sp, #0
	mov r1, #0
	bl sub_02063180
	add r0, sp, #0
	add r1, r4, #0
	bl sub_0206318C
	add r0, sp, #0
	add r1, r6, #0
	bl sub_0206319C
	add r0, sp, #0
	mov r1, #0
	bl sub_02063194
	ldr r2, [sp, #0x40]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02061918
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020619DC

	thumb_func_start sub_02061A74
sub_02061A74: ; 0x02061A74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [sp, #0x18]
	add r7, r3, #0
	mov r6, #0
	bl sub_020631A4
	str r0, [sp]
	cmp r0, #0
	beq _02061AB0
	bl sub_02063114
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062894
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F188
	cmp r0, #0
	bne _02061AB0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02061918
	add r6, r0, #0
_02061AB0:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02061A74

	thumb_func_start sub_02061AB4
sub_02061AB4: ; 0x02061AB4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206291C
	add r0, r4, #0
	bl sub_02062604
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_020628C4
	add r0, r4, #0
	bl sub_02062670
	pop {r4, pc}
	thumb_func_end sub_02061AB4

	thumb_func_start sub_02061AD4
sub_02061AD4: ; 0x02061AD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062DFC
	cmp r0, #1
	bne _02061AE8
	add r0, r5, #0
	bl sub_02061B48
_02061AE8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02061AB4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02061AD4

	thumb_func_start sub_02061AF4
sub_02061AF4: ; 0x02061AF4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062A40
	bl sub_02062CA8
	cmp r0, #1
	bne _02061B0A
	add r0, r4, #0
	bl sub_02062B7C
_02061B0A:
	add r0, r4, #0
	bl sub_02062B28
	add r0, r4, #0
	bl sub_02062A2C
	add r0, r4, #0
	bl sub_02062A48
	bl sub_02062830
	add r0, r4, #0
	bl sub_0206243C
	pop {r4, pc}
	thumb_func_end sub_02061AF4

	thumb_func_start sub_02061B28
sub_02061B28: ; 0x02061B28
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02062958
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02062C00
	lsl r1, r5, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F19C
	add r0, r4, #0
	bl sub_02061AF4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02061B28

	thumb_func_start sub_02061B48
sub_02061B48: ; 0x02061B48
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062A40
	bl sub_02062CA8
	cmp r0, #1
	bne _02061B76
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_020628D0
	cmp r0, #0
	beq _02061B6C
	add r0, r4, #0
	bl sub_02062B7C
_02061B6C:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_020628C4
_02061B76:
	ldr r1, _02061BA8 ; =0x0000FFFF
	add r0, r4, #0
	bl sub_0206291C
	ldr r1, _02061BAC ; =sub_020633F0
	add r0, r4, #0
	bl sub_02062B4C
	ldr r1, _02061BB0 ; =sub_020633F4
	add r0, r4, #0
	bl sub_02062B60
	ldr r1, _02061BB0 ; =sub_020633F4
	add r0, r4, #0
	bl sub_02062B74
	ldr r1, _02061BB4 ; =sub_020633F8
	add r0, r4, #0
	bl sub_02062B88
	ldr r1, _02061BB8 ; =sub_020633FC
	add r0, r4, #0
	bl sub_02062B9C
	pop {r4, pc}
	; .align 2, 0
_02061BA8: .word 0x0000FFFF
_02061BAC: .word sub_020633F0
_02061BB0: .word sub_020633F4
_02061BB4: .word sub_020633F8
_02061BB8: .word sub_020633FC
	thumb_func_end sub_02061B48

	thumb_func_start sub_02061BBC
sub_02061BBC: ; 0x02061BBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	bl sub_02062824
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02062878
	mov r7, #0x4a
	add r5, r0, #0
	lsl r7, r7, #2
_02061BD4:
	add r0, r5, #0
	mov r1, #1
	bl sub_020628D0
	cmp r0, #0
	beq _02061BE6
	add r0, r5, #0
	bl sub_02061AF4
_02061BE6:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, r6
	blt _02061BD4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02061BBC

	thumb_func_start sub_02061BF0
sub_02061BF0: ; 0x02061BF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062CA8
	cmp r0, #1
	beq _02061C00
	bl sub_02022974
_02061C00:
	add r0, r5, #0
	mov r4, #0
	bl sub_02062824
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02062878
	mov r7, #0x4a
	add r5, r0, #0
	lsl r7, r7, #2
_02061C16:
	add r0, r5, #0
	mov r1, #1
	bl sub_020628D0
	cmp r0, #0
	beq _02061C3C
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xe
	bl sub_020628D0
	cmp r0, #0
	beq _02061C3C
	add r0, r5, #0
	bl sub_02062B90
	add r0, r5, #0
	bl sub_02062628
_02061C3C:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, r6
	blt _02061C16
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02061BF0

	thumb_func_start sub_02061C48
sub_02061C48: ; 0x02061C48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062CA8
	cmp r0, #1
	beq _02061C58
	bl sub_02022974
_02061C58:
	add r0, r5, #0
	mov r4, #0
	bl sub_02062824
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02062878
	mov r7, #0x4a
	add r5, r0, #0
	lsl r7, r7, #2
_02061C6E:
	add r0, r5, #0
	bl sub_02062CF8
	cmp r0, #1
	bne _02061C9C
	add r0, r5, #0
	bl sub_02062D4C
	cmp r0, #1
	bne _02061C8A
	add r0, r5, #0
	bl sub_02062BA4
	b _02061C90
_02061C8A:
	add r0, r5, #0
	bl sub_02062670
_02061C90:
	add r0, r5, #0
	bl sub_02062604
	add r0, r5, #0
	bl sub_02064464
_02061C9C:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, r6
	blt _02061C6E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02061C48

	thumb_func_start sub_02061CA8
sub_02061CA8: ; 0x02061CA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r6, r1, #0
	mov r0, #0
	add r5, r2, #0
	add r4, r3, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	beq _02061CEE
_02061CC8:
	ldr r1, [sp]
	add r0, r7, #0
	add r2, r5, #0
	bl sub_02061D3C
	sub r4, r4, #1
	add r5, #0x50
	cmp r4, #0
	bgt _02061CDE
	bl sub_02022974
_02061CDE:
	add r0, r6, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	bne _02061CC8
_02061CEE:
	cmp r4, #0
	beq _02061CFE
	mov r2, #0x50
	add r0, r5, #0
	mov r1, #0
	mul r2, r4
	bl memset
_02061CFE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02061CA8

	thumb_func_start sub_02061D04
sub_02061D04: ; 0x02061D04
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	beq _02061D3A
_02061D0E:
	ldr r1, [r5, #0]
	mov r0, #1
	tst r0, r1
	beq _02061D34
	add r0, r6, #0
	bl sub_02062120
	add r4, r0, #0
	bne _02061D24
	bl sub_02022974
_02061D24:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02061E80
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02061FA8
_02061D34:
	add r5, #0x50
	sub r7, r7, #1
	bne _02061D0E
_02061D3A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02061D04

	thumb_func_start sub_02061D3C
sub_02061D3C: ; 0x02061D3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	add r0, r5, #0
	bl sub_020628B8
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_020628EC
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02062910
	strb r0, [r4, #8]
	add r0, r5, #0
	bl sub_02062918
	strh r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_02062920
	strh r0, [r4, #0x12]
	add r0, r5, #0
	bl sub_02062948
	strb r0, [r4, #9]
	add r0, r5, #0
	bl sub_02062950
	strh r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_02062958
	strh r0, [r4, #0x16]
	add r0, r5, #0
	bl sub_02062960
	strh r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_02062968
	strb r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_0206298C
	strb r0, [r4, #0xd]
	add r0, r5, #0
	bl sub_0206299C
	strb r0, [r4, #0xe]
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	strh r0, [r4, #0x1a]
	add r0, r5, #0
	mov r1, #1
	bl sub_020629D8
	strh r0, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #2
	bl sub_020629D8
	strh r0, [r4, #0x1e]
	add r0, r5, #0
	bl sub_02062A00
	strb r0, [r4, #0xa]
	add r0, r5, #0
	bl sub_02062A08
	strb r0, [r4, #0xb]
	add r0, r5, #0
	bl sub_02062FF0
	strh r0, [r4, #0x20]
	add r0, r5, #0
	bl sub_02062FF8
	strh r0, [r4, #0x22]
	add r0, r5, #0
	bl sub_02063000
	strh r0, [r4, #0x24]
	add r0, r5, #0
	bl sub_02063020
	strh r0, [r4, #0x26]
	add r0, r5, #0
	bl sub_02063030
	strh r0, [r4, #0x28]
	add r0, r5, #0
	bl sub_02063040
	strh r0, [r4, #0x2a]
	mov r0, #0x26
	mov r1, #0x2a
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	add r2, sp, #0
	bl sub_02064450
	add r0, r5, #0
	bl sub_02063074
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02062FAC
	add r2, r0, #0
	add r0, r6, #0
	add r1, sp, #0
	bl sub_020644D0
	cmp r0, #0
	bne _02061E38
	add r0, r5, #0
	bl sub_02063074
	str r0, [r4, #0x2c]
	b _02061E4E
_02061E38:
	add r0, r5, #0
	bl sub_02062E44
	cmp r0, #1
	bne _02061E4A
	add r0, r5, #0
	bl sub_02063074
	str r0, [sp, #4]
_02061E4A:
	ldr r0, [sp, #4]
	str r0, [r4, #0x2c]
_02061E4E:
	add r0, r5, #0
	bl sub_02062A78
	add r3, r4, #0
	add r3, #0x30
	mov r2, #0x10
_02061E5A:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _02061E5A
	add r0, r5, #0
	bl sub_02062AA0
	add r4, #0x40
	mov r2, #0x10
_02061E70:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r4]
	add r4, r4, #1
	sub r2, r2, #1
	bne _02061E70
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02061D3C

	thumb_func_start sub_02061E80
sub_02061E80: ; 0x02061E80
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	bl sub_020628B4
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl sub_020628E8
	ldrb r1, [r4, #8]
	add r0, r5, #0
	bl sub_0206290C
	ldrh r1, [r4, #0x10]
	add r0, r5, #0
	bl sub_02062914
	ldrh r1, [r4, #0x12]
	add r0, r5, #0
	bl sub_0206291C
	ldrb r1, [r4, #9]
	add r0, r5, #0
	bl sub_02062944
	ldrh r1, [r4, #0x14]
	add r0, r5, #0
	bl sub_0206294C
	ldrh r1, [r4, #0x16]
	add r0, r5, #0
	bl sub_02062954
	ldrh r1, [r4, #0x18]
	add r0, r5, #0
	bl sub_0206295C
	mov r1, #0xc
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_02062964
	mov r1, #0xd
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_0206296C
	mov r1, #0xe
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_02062994
	mov r1, #0x1a
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0
	bl sub_020629B4
	mov r1, #0x1c
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	mov r2, #1
	bl sub_020629B4
	mov r1, #0x1e
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	mov r2, #2
	bl sub_020629B4
	mov r1, #0xa
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_020629FC
	mov r1, #0xb
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	bl sub_02062A04
	mov r1, #0x20
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02062FF4
	mov r1, #0x22
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02062FFC
	mov r1, #0x24
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02063004
	mov r1, #0x26
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02063024
	mov r1, #0x28
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02063034
	mov r1, #0x2a
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl sub_02063044
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02063060
	add r0, r5, #0
	bl sub_02062A78
	add r3, r4, #0
	add r3, #0x30
	mov r2, #0x10
_02061F80:
	ldrb r1, [r3]
	add r3, r3, #1
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _02061F80
	add r0, r5, #0
	bl sub_02062AA0
	add r4, #0x40
	mov r2, #0x10
_02061F96:
	ldrb r1, [r4]
	add r4, r4, #1
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _02061F96
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02061E80

	thumb_func_start sub_02061FA8
sub_02061FA8: ; 0x02061FA8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02061FF0
	add r0, r4, #0
	bl sub_02062010
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02062A38
	add r0, r4, #0
	bl sub_0206239C
	add r0, r4, #0
	bl sub_020656DC
	add r0, r4, #0
	bl sub_02062670
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020621AC
	add r0, r4, #0
	bl sub_02062B34
	add r0, r5, #0
	bl sub_0206281C
	bl sub_02062828
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02061FA8

	thumb_func_start sub_02061FF0
sub_02061FF0: ; 0x02061FF0
	push {r4, lr}
	mov r1, #5
	add r4, r0, #0
	bl sub_020628BC
	ldr r1, _0206200C ; =0x00EF4248
	add r0, r4, #0
	bl sub_020628C4
	add r0, r4, #0
	bl sub_02062618
	pop {r4, pc}
	nop
_0206200C: .word 0x00EF4248
	thumb_func_end sub_02061FF0

	thumb_func_start sub_02062010
sub_02062010: ; 0x02062010
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, sp, #0
	bl sub_02063050
	add r0, r4, #0
	bl sub_02063020
	add r1, r0, #0
	mov r0, #2
	lsl r2, r1, #0x10
	lsl r0, r0, #0xe
	add r0, r2, r0
	str r0, [sp]
	add r0, r4, #0
	bl sub_0206300C
	add r0, r4, #0
	bl sub_02063030
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02063014
	add r0, r4, #0
	bl sub_02063040
	add r1, r0, #0
	mov r0, #2
	lsl r2, r1, #0x10
	lsl r0, r0, #0xe
	add r0, r2, r0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0206301C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02063060
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02062010

	thumb_func_start sub_02062068
sub_02062068: ; 0x02062068
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	add r7, r0, #0
	add r4, r3, #0
	str r1, [sp]
	cmp r5, #0
	bne _0206207C
	bl sub_02022974
_0206207C:
	lsl r0, r5, #5
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	mov r0, #0xb
	bl sub_02018184
	add r6, r0, #0
	bne _02062090
	bl sub_02022974
_02062090:
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl memcpy
	mov r0, #0xb
	mov r1, #0x14
	bl sub_02018184
	add r4, r0, #0
	bne _020620AA
	bl sub_02022974
_020620AA:
	ldr r0, [sp]
	str r0, [r4, #0]
	str r5, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	add r0, r4, #0
	str r6, [r4, #0x10]
	bl sub_020620C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02062068

	thumb_func_start sub_020620C4
sub_020620C4: ; 0x020620C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02062894
	add r6, r5, #0
	ldr r4, [r5, #0x10]
	add r7, r0, #0
	add r6, #8
_020620D6:
	add r0, r4, #0
	bl sub_020631D8
	cmp r0, #1
	beq _020620EC
	ldrh r1, [r4, #8]
	add r0, r7, #0
	bl sub_0203F188
	cmp r0, #0
	bne _020620FE
_020620EC:
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0]
	add r1, r4, #0
	bl sub_02061918
	cmp r0, #0
	bne _020620FE
	bl sub_02022974
_020620FE:
	ldr r0, [r6, #0]
	add r4, #0x20
	add r0, r0, #1
	str r0, [r6, #0]
	ldr r1, [r5, #8]
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _020620D6
	ldr r1, [r5, #0x10]
	mov r0, #0xb
	bl sub_02018238
	mov r0, #0xb
	add r1, r5, #0
	bl sub_02018238
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020620C4

	thumb_func_start sub_02062120
sub_02062120: ; 0x02062120
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	bl sub_02062824
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02062878
	mov r7, #0x4a
	add r5, r0, #0
	lsl r7, r7, #2
_02062138:
	add r0, r5, #0
	mov r1, #1
	bl sub_020628D0
	cmp r0, #0
	bne _02062148
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02062148:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, r6
	blt _02062138
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02062120

	thumb_func_start sub_02062154
sub_02062154: ; 0x02062154
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	add r4, r2, #0
	str r1, [sp, #4]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r6, r0, #0
	bl sub_020625B0
	cmp r0, #1
	bne _020621A6
	add r7, sp, #0
_02062172:
	ldr r0, [sp]
	bl sub_02062E94
	cmp r0, #1
	bne _02062196
	ldr r0, [sp]
	bl sub_02062910
	cmp r5, r0
	bne _02062196
	ldr r0, [sp]
	bl sub_02062C18
	cmp r4, r0
	bne _02062196
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02062196:
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _02062172
_020621A6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02062154

	thumb_func_start sub_020621AC
sub_020621AC: ; 0x020621AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_02062858
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02062948
	cmp r0, #0x30
	beq _020621C4
	cmp r0, #0x32
	bne _020621C6
_020621C4:
	add r5, r5, #2
_020621C6:
	ldr r0, _020621E4 ; =sub_020627E8
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200D9E8
	add r5, r0, #0
	bne _020621D8
	bl sub_02022974
_020621D8:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02062A1C
	pop {r3, r4, r5, pc}
	nop
_020621E4: .word sub_020627E8
	thumb_func_end sub_020621AC

	thumb_func_start sub_020621E8
sub_020621E8: ; 0x020621E8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_020630F4
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206290C
	add r0, r4, #0
	bl sub_020630FC
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0206262C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206291C
	add r0, r4, #0
	bl sub_02063104
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062944
	add r0, r4, #0
	bl sub_0206310C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206294C
	add r0, r4, #0
	bl sub_02063114
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062954
	add r0, r4, #0
	bl sub_0206311C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206295C
	add r0, r4, #0
	bl sub_02063124
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062964
	add r0, r4, #0
	mov r1, #0
	bl sub_02063150
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl sub_020629B4
	add r0, r4, #0
	mov r1, #1
	bl sub_02063150
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_020629B4
	add r0, r4, #0
	mov r1, #2
	bl sub_02063150
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #2
	bl sub_020629B4
	add r0, r4, #0
	bl sub_02063178
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020629FC
	add r0, r4, #0
	bl sub_02063184
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062A04
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020622B8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020621E8

	thumb_func_start sub_020622B8
sub_020622B8: ; 0x020622B8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02063190
	add r5, r0, #0
	mov r0, #2
	lsl r1, r5, #0x10
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02062FF4
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206300C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02063024
	add r0, r6, #0
	bl sub_02063198
	asr r1, r0, #3
	str r0, [sp, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r5, r0, #0xc
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02062FFC
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02063014
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02063034
	add r0, r6, #0
	bl sub_020631A0
	add r5, r0, #0
	mov r0, #2
	lsl r1, r5, #0x10
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02063004
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206301C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02063044
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02063060
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020622B8

	thumb_func_start sub_0206234C
sub_0206234C: ; 0x0206234C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _02062398 ; =0x00001801
	add r5, r0, #0
	bl sub_020628BC
	add r0, r5, #0
	bl sub_020626B4
	cmp r0, #1
	bne _0206236A
	add r0, r5, #0
	mov r1, #1
	bl sub_02062E78
_0206236A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062A38
	add r0, r5, #0
	bl sub_02062968
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206296C
	add r0, r5, #0
	bl sub_02062968
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062994
	add r0, r5, #0
	bl sub_020656DC
	pop {r3, r4, r5, pc}
	nop
_02062398: .word 0x00001801
	thumb_func_end sub_0206234C

	thumb_func_start sub_0206239C
sub_0206239C: ; 0x0206239C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062948
	bl sub_0206320C
	add r4, r0, #0
	bl sub_02063224
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062AF8
	add r0, r4, #0
	bl sub_02063228
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062B0C
	add r0, r4, #0
	bl sub_0206322C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062B20
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206239C

	thumb_func_start sub_020623D4
sub_020623D4: ; 0x020623D4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02062920
	mov r1, #2
	lsl r1, r1, #0xc
	cmp r0, r1
	bne _020623E8
	ldr r5, _02062438 ; =0x021FB470
	b _020623EE
_020623E8:
	bl sub_02063244
	add r5, r0, #0
_020623EE:
	add r0, r5, #0
	bl sub_02063230
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02062B4C
	add r0, r5, #0
	bl sub_02063234
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02062B60
	add r0, r5, #0
	bl sub_02063238
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02062B74
	add r0, r5, #0
	bl sub_0206323C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02062B88
	add r0, r5, #0
	bl sub_02063240
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02062B9C
	pop {r3, r4, r5, pc}
	nop
_02062438: .word 0x021FB470
	thumb_func_end sub_020623D4

	thumb_func_start sub_0206243C
sub_0206243C: ; 0x0206243C
	ldr r3, _02062448 ; =memset
	mov r2, #0x4a
	mov r1, #0
	lsl r2, r2, #2
	bx r3
	nop
_02062448: .word memset
	thumb_func_end sub_0206243C

	thumb_func_start sub_0206244C
sub_0206244C: ; 0x0206244C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r3, #0
	str r1, [sp]
	cmp r7, #0
	beq _020624C6
_0206245A:
	add r0, r6, #0
	bl sub_020630F4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062910
	cmp r4, r0
	bne _020624BE
	add r0, r6, #0
	bl sub_020631D8
	cmp r0, #1
	bne _020624A4
	add r0, r6, #0
	bl sub_020631F4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062E94
	cmp r0, #1
	bne _02062496
	add r0, r5, #0
	bl sub_02062C18
	cmp r4, r0
	bne _020624BE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02062496:
	add r0, r5, #0
	bl sub_02062918
	cmp r4, r0
	bne _020624BE
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_020624A4:
	add r0, r5, #0
	bl sub_02062E94
	cmp r0, #1
	bne _020624BE
	add r0, r5, #0
	bl sub_02062C18
	ldr r1, [sp]
	cmp r1, r0
	bne _020624BE
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_020624BE:
	sub r7, r7, #1
	add r6, #0x20
	cmp r7, #0
	bne _0206245A
_020624C6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206244C

	thumb_func_start sub_020624CC
sub_020624CC: ; 0x020624CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	add r4, r2, #0
	str r1, [sp, #4]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r6, r0, #0
	bl sub_020625B0
	cmp r0, #1
	bne _02062514
	add r7, sp, #0
_020624EA:
	ldr r0, [sp]
	bl sub_02062910
	cmp r5, r0
	bne _02062504
	ldr r0, [sp]
	bl sub_02062918
	cmp r4, r0
	bne _02062504
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02062504:
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _020624EA
_02062514:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020624CC

	thumb_func_start sub_0206251C
sub_0206251C: ; 0x0206251C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	cmp r5, #0
	bne _0206252A
	bl sub_02022974
_0206252A:
	add r0, r5, #0
	bl sub_02062824
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062870
	mov r7, #0x4a
	add r5, r0, #0
	lsl r7, r7, #2
_0206253E:
	add r0, r5, #0
	mov r1, #1
	bl sub_020628D8
	cmp r0, #1
	bne _02062562
	add r0, r5, #0
	bl sub_02062E94
	cmp r0, #0
	bne _02062562
	add r0, r5, #0
	bl sub_02062910
	cmp r6, r0
	bne _02062562
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02062562:
	sub r4, r4, #1
	add r5, r5, r7
	cmp r4, #0
	bgt _0206253E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206251C

	thumb_func_start sub_02062570
sub_02062570: ; 0x02062570
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02062824
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062870
	mov r7, #0x4a
	add r5, r0, #0
	lsl r7, r7, #2
_02062588:
	add r0, r5, #0
	mov r1, #1
	bl sub_020628D8
	cmp r0, #1
	bne _020625A2
	add r0, r5, #0
	bl sub_02062948
	cmp r6, r0
	bne _020625A2
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020625A2:
	sub r4, r4, #1
	add r5, r5, r7
	cmp r4, #0
	bgt _02062588
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02062570

	thumb_func_start sub_020625B0
sub_020625B0: ; 0x020625B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r4, r0, #0
	str r1, [sp]
	add r6, r3, #0
	bl sub_02062824
	add r7, r0, #0
	ldr r0, [r5, #0]
	cmp r0, r7
	blt _020625CA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020625CA:
	add r0, r4, #0
	bl sub_02062870
	mov r1, #0x4a
	ldr r2, [r5, #0]
	lsl r1, r1, #2
	mul r1, r2
	add r4, r0, r1
_020625DA:
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r0, r0, #1
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_020628D0
	cmp r6, r0
	bne _020625F4
	ldr r0, [sp]
	str r4, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020625F4:
	mov r0, #0x4a
	lsl r0, r0, #2
	add r4, r4, r0
	ldr r0, [r5, #0]
	cmp r0, r7
	blt _020625DA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020625B0

	thumb_func_start sub_02062604
sub_02062604: ; 0x02062604
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl sub_020628BC
	add r0, r4, #0
	bl sub_02062618
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02062604

	thumb_func_start sub_02062618
sub_02062618: ; 0x02062618
	ldr r3, _02062620 ; =sub_020628C4
	ldr r1, _02062624 ; =0x05108000
	bx r3
	nop
_02062620: .word sub_020628C4
_02062624: .word 0x05108000
	thumb_func_end sub_02062618

	thumb_func_start sub_02062628
sub_02062628: ; 0x02062628
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062628

	thumb_func_start sub_0206262C
sub_0206262C: ; 0x0206262C
	push {r3, lr}
	cmp r1, #0x65
	blt _02062642
	cmp r1, #0x74
	bgt _02062642
	sub r1, #0x65
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0203F164
	add r1, r0, #0
_02062642:
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206262C

	thumb_func_start sub_02062648
sub_02062648: ; 0x02062648
	push {r4, lr}
	mov r1, #1
	lsl r1, r1, #0xc
	add r4, r0, #0
	bl sub_020628D0
	cmp r0, #0
	beq _0206265E
	add r0, r4, #0
	bl sub_020642F8
_0206265E:
	pop {r4, pc}
	thumb_func_end sub_02062648

	thumb_func_start sub_02062660
sub_02062660: ; 0x02062660
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206239C
	add r0, r4, #0
	bl sub_02063400
	pop {r4, pc}
	thumb_func_end sub_02062660

	thumb_func_start sub_02062670
sub_02062670: ; 0x02062670
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062A40
	bl sub_02062CA8
	cmp r0, #0
	beq _020626B2
	add r0, r4, #0
	bl sub_02062648
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	mov r1, #0
	bl ov5_021EDD78
	add r0, r4, #0
	bl sub_02062D4C
	cmp r0, #0
	bne _020626B2
	add r0, r4, #0
	bl sub_020623D4
	add r0, r4, #0
	bl sub_02062B54
	add r0, r4, #0
	bl sub_02062D40
_020626B2:
	pop {r4, pc}
	thumb_func_end sub_02062670

	thumb_func_start sub_020626B4
sub_020626B4: ; 0x020626B4
	push {r3, lr}
	bl sub_02062960
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _020626CC ; =0x0000FFFF
	cmp r1, r0
	bne _020626C8
	mov r0, #1
	pop {r3, pc}
_020626C8:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_020626CC: .word 0x0000FFFF
	thumb_func_end sub_020626B4

	thumb_func_start sub_020626D0
sub_020626D0: ; 0x020626D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02062E94
	cmp r0, #1
	beq _020626E4
	bl sub_02022974
_020626E4:
	add r0, r5, #0
	mov r1, #0
	bl sub_02062E78
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02062914
	add r0, r4, #0
	bl sub_0206311C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206295C
	add r0, r4, #0
	bl sub_02063114
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062954
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020626D0

	thumb_func_start sub_02062714
sub_02062714: ; 0x02062714
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl sub_020631D8
	cmp r0, #1
	beq _0206272A
	bl sub_02022974
_0206272A:
	add r0, r5, #0
	mov r1, #1
	bl sub_02062E78
	add r0, r6, #0
	bl sub_0206311C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206295C
	add r0, r6, #0
	bl sub_020631F4
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02062954
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062914
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02062714

	thumb_func_start sub_02062758
sub_02062758: ; 0x02062758
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062C0C
	add r0, r0, r4
	pop {r4, pc}
	thumb_func_end sub_02062758

	thumb_func_start sub_02062764
sub_02062764: ; 0x02062764
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #1
	add r5, r0, #0
	add r4, r2, #0
	bl sub_020628D8
	cmp r0, #0
	bne _0206277A
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206277A:
	add r0, r5, #0
	bl sub_02062910
	cmp r6, r0
	beq _02062788
	mov r0, #0
	pop {r4, r5, r6, pc}
_02062788:
	add r0, r5, #0
	bl sub_02062918
	cmp r4, r0
	beq _020627AE
	add r0, r5, #0
	bl sub_02062E94
	cmp r0, #0
	bne _020627A0
	mov r0, #0
	pop {r4, r5, r6, pc}
_020627A0:
	add r0, r5, #0
	bl sub_02062C18
	cmp r4, r0
	beq _020627AE
	mov r0, #0
	pop {r4, r5, r6, pc}
_020627AE:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02062764

	thumb_func_start sub_020627B4
sub_020627B4: ; 0x020627B4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_020628D8
	cmp r0, #0
	bne _020627CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020627CC:
	add r0, r5, #0
	bl sub_02062924
	cmp r0, r4
	beq _020627DA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020627DA:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02062764
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020627B4

	thumb_func_start sub_020627E8
sub_020627E8: ; 0x020627E8
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_02063410
	add r0, r4, #0
	bl sub_02062CF8
	cmp r0, #0
	beq _02062802
	add r0, r4, #0
	bl sub_02062804
_02062802:
	pop {r4, pc}
	thumb_func_end sub_020627E8

	thumb_func_start sub_02062804
sub_02062804: ; 0x02062804
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062A40
	bl sub_02062CA8
	cmp r0, #1
	bne _0206281A
	add r0, r4, #0
	bl ov5_021ECCC8
_0206281A:
	pop {r4, pc}
	thumb_func_end sub_02062804

	thumb_func_start sub_0206281C
sub_0206281C: ; 0x0206281C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0206281C

	thumb_func_start sub_02062820
sub_02062820: ; 0x02062820
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_02062820

	thumb_func_start sub_02062824
sub_02062824: ; 0x02062824
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02062824

	thumb_func_start sub_02062828
sub_02062828: ; 0x02062828
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_02062828

	thumb_func_start sub_02062830
sub_02062830: ; 0x02062830
	ldr r1, [r0, #8]
	sub r1, r1, #1
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_02062830

	thumb_func_start sub_02062838
sub_02062838: ; 0x02062838
	ldr r2, [r0, #0]
	orr r1, r2
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_02062838

	thumb_func_start sub_02062840
sub_02062840: ; 0x02062840
	ldr r2, [r0, #0]
	mvn r1, r1
	and r1, r2
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062840

	thumb_func_start sub_0206284C
sub_0206284C: ; 0x0206284C
	ldr r0, [r0, #0]
	and r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0206284C

	thumb_func_start sub_02062854
sub_02062854: ; 0x02062854
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_02062854

	thumb_func_start sub_02062858
sub_02062858: ; 0x02062858
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02062858

	thumb_func_start sub_0206285C
sub_0206285C: ; 0x0206285C
	add r0, #0x18
	bx lr
	thumb_func_end sub_0206285C

	thumb_func_start sub_02062860
sub_02062860: ; 0x02062860
	mov r2, #0x49
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_02062860

	thumb_func_start sub_02062868
sub_02062868: ; 0x02062868
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_02062868

	thumb_func_start sub_02062870
sub_02062870: ; 0x02062870
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_02062870

	thumb_func_start sub_02062878
sub_02062878: ; 0x02062878
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_02062878

	thumb_func_start sub_02062880
sub_02062880: ; 0x02062880
	mov r1, #0x4a
	ldr r2, [r0, #0]
	lsl r1, r1, #2
	add r1, r2, r1
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_02062880

	thumb_func_start sub_0206288C
sub_0206288C: ; 0x0206288C
	mov r2, #0x4a
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_0206288C

	thumb_func_start sub_02062894
sub_02062894: ; 0x02062894
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_02062894

	thumb_func_start sub_0206289C
sub_0206289C: ; 0x0206289C
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_0206289C

	thumb_func_start sub_020628A0
sub_020628A0: ; 0x020628A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _020628AE
	bl sub_02022974
_020628AE:
	ldr r0, [r4, #0x14]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020628A0

	thumb_func_start sub_020628B4
sub_020628B4: ; 0x020628B4
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_020628B4

	thumb_func_start sub_020628B8
sub_020628B8: ; 0x020628B8
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_020628B8

	thumb_func_start sub_020628BC
sub_020628BC: ; 0x020628BC
	ldr r2, [r0, #0]
	orr r1, r2
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_020628BC

	thumb_func_start sub_020628C4
sub_020628C4: ; 0x020628C4
	ldr r2, [r0, #0]
	mvn r1, r1
	and r1, r2
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020628C4

	thumb_func_start sub_020628D0
sub_020628D0: ; 0x020628D0
	ldr r0, [r0, #0]
	and r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_020628D0

	thumb_func_start sub_020628D8
sub_020628D8: ; 0x020628D8
	ldr r0, [r0, #0]
	tst r0, r1
	beq _020628E2
	mov r0, #1
	bx lr
_020628E2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020628D8

	thumb_func_start sub_020628E8
sub_020628E8: ; 0x020628E8
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_020628E8

	thumb_func_start sub_020628EC
sub_020628EC: ; 0x020628EC
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_020628EC

	thumb_func_start sub_020628F0
sub_020628F0: ; 0x020628F0
	ldr r2, [r0, #4]
	orr r1, r2
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_020628F0

	thumb_func_start sub_020628F8
sub_020628F8: ; 0x020628F8
	ldr r2, [r0, #4]
	mvn r1, r1
	and r1, r2
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020628F8

	thumb_func_start sub_02062904
sub_02062904: ; 0x02062904
	ldr r0, [r0, #4]
	and r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062904

	thumb_func_start sub_0206290C
sub_0206290C: ; 0x0206290C
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0206290C

	thumb_func_start sub_02062910
sub_02062910: ; 0x02062910
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02062910

	thumb_func_start sub_02062914
sub_02062914: ; 0x02062914
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_02062914

	thumb_func_start sub_02062918
sub_02062918: ; 0x02062918
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02062918

	thumb_func_start sub_0206291C
sub_0206291C: ; 0x0206291C
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_0206291C

	thumb_func_start sub_02062920
sub_02062920: ; 0x02062920
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_02062920

	thumb_func_start sub_02062924
sub_02062924: ; 0x02062924
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062920
	add r4, r0, #0
	bl sub_020677F4
	cmp r0, #1
	bne _0206293E
	add r0, r5, #0
	bl sub_02067800
	add r4, r0, #0
_0206293E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02062924

	thumb_func_start sub_02062944
sub_02062944: ; 0x02062944
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_02062944

	thumb_func_start sub_02062948
sub_02062948: ; 0x02062948
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_02062948

	thumb_func_start sub_0206294C
sub_0206294C: ; 0x0206294C
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_0206294C

	thumb_func_start sub_02062950
sub_02062950: ; 0x02062950
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_02062950

	thumb_func_start sub_02062954
sub_02062954: ; 0x02062954
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02062954

	thumb_func_start sub_02062958
sub_02062958: ; 0x02062958
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02062958

	thumb_func_start sub_0206295C
sub_0206295C: ; 0x0206295C
	str r1, [r0, #0x20]
	bx lr
	thumb_func_end sub_0206295C

	thumb_func_start sub_02062960
sub_02062960: ; 0x02062960
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_02062960

	thumb_func_start sub_02062964
sub_02062964: ; 0x02062964
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_02062964

	thumb_func_start sub_02062968
sub_02062968: ; 0x02062968
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_02062968

	thumb_func_start sub_0206296C
sub_0206296C: ; 0x0206296C
	ldr r2, [r0, #0x28]
	str r2, [r0, #0x30]
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end sub_0206296C

	thumb_func_start sub_02062974
sub_02062974: ; 0x02062974
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x80
	add r5, r0, #0
	bl sub_020628D0
	cmp r0, #0
	bne _0206298A
	ldr r0, [r5, #0x28]
	str r0, [r5, #0x30]
	str r4, [r5, #0x28]
_0206298A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02062974

	thumb_func_start sub_0206298C
sub_0206298C: ; 0x0206298C
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end sub_0206298C

	thumb_func_start sub_02062990
sub_02062990: ; 0x02062990
	ldr r0, [r0, #0x30]
	bx lr
	thumb_func_end sub_02062990

	thumb_func_start sub_02062994
sub_02062994: ; 0x02062994
	ldr r2, [r0, #0x2c]
	str r2, [r0, #0x34]
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_02062994

	thumb_func_start sub_0206299C
sub_0206299C: ; 0x0206299C
	ldr r0, [r0, #0x2c]
	bx lr
	thumb_func_end sub_0206299C

	thumb_func_start sub_020629A0
sub_020629A0: ; 0x020629A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062974
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062994
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020629A0

	thumb_func_start sub_020629B4
sub_020629B4: ; 0x020629B4
	push {r3, lr}
	cmp r2, #0
	beq _020629C4
	cmp r2, #1
	beq _020629C8
	cmp r2, #2
	beq _020629CC
	b _020629D0
_020629C4:
	str r1, [r0, #0x38]
	pop {r3, pc}
_020629C8:
	str r1, [r0, #0x3c]
	pop {r3, pc}
_020629CC:
	str r1, [r0, #0x40]
	pop {r3, pc}
_020629D0:
	bl sub_02022974
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020629B4

	thumb_func_start sub_020629D8
sub_020629D8: ; 0x020629D8
	push {r3, lr}
	cmp r1, #0
	beq _020629E8
	cmp r1, #1
	beq _020629EC
	cmp r1, #2
	beq _020629F0
	b _020629F4
_020629E8:
	ldr r0, [r0, #0x38]
	pop {r3, pc}
_020629EC:
	ldr r0, [r0, #0x3c]
	pop {r3, pc}
_020629F0:
	ldr r0, [r0, #0x40]
	pop {r3, pc}
_020629F4:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020629D8

	thumb_func_start sub_020629FC
sub_020629FC: ; 0x020629FC
	str r1, [r0, #0x44]
	bx lr
	thumb_func_end sub_020629FC

	thumb_func_start sub_02062A00
sub_02062A00: ; 0x02062A00
	ldr r0, [r0, #0x44]
	bx lr
	thumb_func_end sub_02062A00

	thumb_func_start sub_02062A04
sub_02062A04: ; 0x02062A04
	str r1, [r0, #0x48]
	bx lr
	thumb_func_end sub_02062A04

	thumb_func_start sub_02062A08
sub_02062A08: ; 0x02062A08
	ldr r0, [r0, #0x48]
	bx lr
	thumb_func_end sub_02062A08

	thumb_func_start sub_02062A0C
sub_02062A0C: ; 0x02062A0C
	add r0, #0xa0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062A0C

	thumb_func_start sub_02062A14
sub_02062A14: ; 0x02062A14
	add r0, #0xa0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062A14

	thumb_func_start sub_02062A1C
sub_02062A1C: ; 0x02062A1C
	add r0, #0xb0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062A1C

	thumb_func_start sub_02062A24
sub_02062A24: ; 0x02062A24
	add r0, #0xb0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062A24

	thumb_func_start sub_02062A2C
sub_02062A2C: ; 0x02062A2C
	push {r3, lr}
	bl sub_02062A24
	bl sub_0200DA58
	pop {r3, pc}
	thumb_func_end sub_02062A2C

	thumb_func_start sub_02062A38
sub_02062A38: ; 0x02062A38
	add r0, #0xb4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062A38

	thumb_func_start sub_02062A40
sub_02062A40: ; 0x02062A40
	add r0, #0xb4
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062A40

	thumb_func_start sub_02062A48
sub_02062A48: ; 0x02062A48
	ldr r3, _02062A50 ; =sub_0206281C
	add r0, #0xb4
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_02062A50: .word sub_0206281C
	thumb_func_end sub_02062A48

	thumb_func_start sub_02062A54
sub_02062A54: ; 0x02062A54
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x10
	ble _02062A62
	bl sub_02022974
_02062A62:
	add r0, r4, #0
	bl sub_02062A78
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	bl memset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02062A54

	thumb_func_start sub_02062A78
sub_02062A78: ; 0x02062A78
	add r0, #0xd8
	bx lr
	thumb_func_end sub_02062A78

	thumb_func_start sub_02062A7C
sub_02062A7C: ; 0x02062A7C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x10
	ble _02062A8A
	bl sub_02022974
_02062A8A:
	add r0, r4, #0
	bl sub_02062AA0
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	bl memset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02062A7C

	thumb_func_start sub_02062AA0
sub_02062AA0: ; 0x02062AA0
	add r0, #0xe8
	bx lr
	thumb_func_end sub_02062AA0

	thumb_func_start sub_02062AA4
sub_02062AA4: ; 0x02062AA4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x10
	ble _02062AB2
	bl sub_02022974
_02062AB2:
	add r0, r4, #0
	bl sub_02062AC8
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	bl memset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02062AA4

	thumb_func_start sub_02062AC8
sub_02062AC8: ; 0x02062AC8
	add r0, #0xf8
	bx lr
	thumb_func_end sub_02062AC8

	thumb_func_start sub_02062ACC
sub_02062ACC: ; 0x02062ACC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x20
	ble _02062ADA
	bl sub_02022974
_02062ADA:
	add r0, r4, #0
	bl sub_02062AF0
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	bl memset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02062ACC

	thumb_func_start sub_02062AF0
sub_02062AF0: ; 0x02062AF0
	mov r1, #0x42
	lsl r1, r1, #2
	add r0, r0, r1
	bx lr
	thumb_func_end sub_02062AF0

	thumb_func_start sub_02062AF8
sub_02062AF8: ; 0x02062AF8
	add r0, #0xb8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062AF8

	thumb_func_start sub_02062B00
sub_02062B00: ; 0x02062B00
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062B00

	thumb_func_start sub_02062B0C
sub_02062B0C: ; 0x02062B0C
	add r0, #0xbc
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062B0C

	thumb_func_start sub_02062B14
sub_02062B14: ; 0x02062B14
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xbc
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062B14

	thumb_func_start sub_02062B20
sub_02062B20: ; 0x02062B20
	add r0, #0xc0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062B20

	thumb_func_start sub_02062B28
sub_02062B28: ; 0x02062B28
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xc0
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062B28

	thumb_func_start sub_02062B34
sub_02062B34: ; 0x02062B34
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062948
	bl sub_0206320C
	add r1, r0, #0
	ldr r1, [r1, #0x10]
	add r0, r4, #0
	blx r1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02062B34

	thumb_func_start sub_02062B4C
sub_02062B4C: ; 0x02062B4C
	add r0, #0xc4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062B4C

	thumb_func_start sub_02062B54
sub_02062B54: ; 0x02062B54
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062B54

	thumb_func_start sub_02062B60
sub_02062B60: ; 0x02062B60
	add r0, #0xc8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062B60

	thumb_func_start sub_02062B68
sub_02062B68: ; 0x02062B68
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xc8
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062B68

	thumb_func_start sub_02062B74
sub_02062B74: ; 0x02062B74
	add r0, #0xcc
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062B74

	thumb_func_start sub_02062B7C
sub_02062B7C: ; 0x02062B7C
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xcc
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062B7C

	thumb_func_start sub_02062B88
sub_02062B88: ; 0x02062B88
	add r0, #0xd0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062B88

	thumb_func_start sub_02062B90
sub_02062B90: ; 0x02062B90
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xd0
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062B90

	thumb_func_start sub_02062B9C
sub_02062B9C: ; 0x02062B9C
	add r0, #0xd4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062B9C

	thumb_func_start sub_02062BA4
sub_02062BA4: ; 0x02062BA4
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	blx r1
	pop {r3, pc}
	thumb_func_end sub_02062BA4

	thumb_func_start sub_02062BB0
sub_02062BB0: ; 0x02062BB0
	add r0, #0xa4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BB0

	thumb_func_start sub_02062BB8
sub_02062BB8: ; 0x02062BB8
	add r0, #0xa4
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BB8

	thumb_func_start sub_02062BC0
sub_02062BC0: ; 0x02062BC0
	add r0, #0xa8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BC0

	thumb_func_start sub_02062BC8
sub_02062BC8: ; 0x02062BC8
	add r1, r0, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	add r0, #0xa8
	add r1, r1, #1
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BC8

	thumb_func_start sub_02062BD8
sub_02062BD8: ; 0x02062BD8
	add r0, #0xa8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BD8

	thumb_func_start sub_02062BE0
sub_02062BE0: ; 0x02062BE0
	add r0, #0xac
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BE0

	thumb_func_start sub_02062BE8
sub_02062BE8: ; 0x02062BE8
	add r0, #0xac
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BE8

	thumb_func_start sub_02062BF0
sub_02062BF0: ; 0x02062BF0
	add r0, #0xae
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BF0

	thumb_func_start sub_02062BF8
sub_02062BF8: ; 0x02062BF8
	add r0, #0xae
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02062BF8

	thumb_func_start sub_02062C00
sub_02062C00: ; 0x02062C00
	push {r3, lr}
	bl sub_02062A48
	bl sub_02062894
	pop {r3, pc}
	thumb_func_end sub_02062C00

	thumb_func_start sub_02062C0C
sub_02062C0C: ; 0x02062C0C
	push {r3, lr}
	bl sub_02062A40
	bl sub_02062858
	pop {r3, pc}
	thumb_func_end sub_02062C0C

	thumb_func_start sub_02062C18
sub_02062C18: ; 0x02062C18
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062E94
	cmp r0, #1
	beq _02062C28
	bl sub_02022974
_02062C28:
	add r0, r4, #0
	bl sub_02062958
	pop {r4, pc}
	thumb_func_end sub_02062C18

	thumb_func_start sub_02062C30
sub_02062C30: ; 0x02062C30
	ldr r3, _02062C38 ; =sub_02062838
	mov r1, #6
	bx r3
	nop
_02062C38: .word sub_02062838
	thumb_func_end sub_02062C30

	thumb_func_start sub_02062C3C
sub_02062C3C: ; 0x02062C3C
	ldr r3, _02062C44 ; =sub_02062840
	mov r1, #6
	bx r3
	nop
_02062C44: .word sub_02062840
	thumb_func_end sub_02062C3C

	thumb_func_start sub_02062C48
sub_02062C48: ; 0x02062C48
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062824
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062878
	mov r6, #0x4a
	add r5, r0, #0
	lsl r6, r6, #2
_02062C5E:
	add r0, r5, #0
	bl sub_02062CF8
	cmp r0, #0
	beq _02062C6E
	add r0, r5, #0
	bl sub_02062DD0
_02062C6E:
	add r5, r5, r6
	sub r4, r4, #1
	bne _02062C5E
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02062C48

	thumb_func_start sub_02062C78
sub_02062C78: ; 0x02062C78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062824
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062878
	mov r6, #0x4a
	add r5, r0, #0
	lsl r6, r6, #2
_02062C8E:
	add r0, r5, #0
	bl sub_02062CF8
	cmp r0, #0
	beq _02062C9E
	add r0, r5, #0
	bl sub_02062DDC
_02062C9E:
	add r5, r5, r6
	sub r4, r4, #1
	bne _02062C8E
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02062C78

	thumb_func_start sub_02062CA8
sub_02062CA8: ; 0x02062CA8
	push {r3, lr}
	mov r1, #1
	bl sub_0206284C
	cmp r0, #0
	beq _02062CB8
	mov r0, #1
	pop {r3, pc}
_02062CB8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02062CA8

	thumb_func_start sub_02062CBC
sub_02062CBC: ; 0x02062CBC
	push {r4, lr}
	add r4, r1, #0
	bl sub_02062A40
	add r1, r4, #0
	bl sub_0206284C
	pop {r4, pc}
	thumb_func_end sub_02062CBC

	thumb_func_start sub_02062CCC
sub_02062CCC: ; 0x02062CCC
	push {r3, lr}
	cmp r1, #0
	bne _02062CDA
	mov r1, #8
	bl sub_02062838
	pop {r3, pc}
_02062CDA:
	mov r1, #8
	bl sub_02062840
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062CCC

	thumb_func_start sub_02062CE4
sub_02062CE4: ; 0x02062CE4
	push {r3, lr}
	mov r1, #8
	bl sub_0206284C
	cmp r0, #0
	bne _02062CF4
	mov r0, #1
	pop {r3, pc}
_02062CF4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02062CE4

	thumb_func_start sub_02062CF8
sub_02062CF8: ; 0x02062CF8
	ldr r3, _02062D00 ; =sub_020628D8
	mov r1, #1
	bx r3
	nop
_02062D00: .word sub_020628D8
	thumb_func_end sub_02062CF8

	thumb_func_start sub_02062D04
sub_02062D04: ; 0x02062D04
	ldr r3, _02062D0C ; =sub_020628BC
	mov r1, #2
	bx r3
	nop
_02062D0C: .word sub_020628BC
	thumb_func_end sub_02062D04

	thumb_func_start sub_02062D10
sub_02062D10: ; 0x02062D10
	ldr r3, _02062D18 ; =sub_020628C4
	mov r1, #2
	bx r3
	nop
_02062D18: .word sub_020628C4
	thumb_func_end sub_02062D10

	thumb_func_start sub_02062D1C
sub_02062D1C: ; 0x02062D1C
	ldr r3, _02062D24 ; =sub_020628D8
	mov r1, #2
	bx r3
	nop
_02062D24: .word sub_020628D8
	thumb_func_end sub_02062D1C

	thumb_func_start sub_02062D28
sub_02062D28: ; 0x02062D28
	ldr r3, _02062D30 ; =sub_020628BC
	mov r1, #4
	bx r3
	nop
_02062D30: .word sub_020628BC
	thumb_func_end sub_02062D28

	thumb_func_start sub_02062D34
sub_02062D34: ; 0x02062D34
	ldr r3, _02062D3C ; =sub_020628C4
	mov r1, #8
	bx r3
	nop
_02062D3C: .word sub_020628C4
	thumb_func_end sub_02062D34

	thumb_func_start sub_02062D40
sub_02062D40: ; 0x02062D40
	ldr r3, _02062D48 ; =sub_020628BC
	mov r1, #1
	lsl r1, r1, #0xe
	bx r3
	; .align 2, 0
_02062D48: .word sub_020628BC
	thumb_func_end sub_02062D40

	thumb_func_start sub_02062D4C
sub_02062D4C: ; 0x02062D4C
	ldr r3, _02062D54 ; =sub_020628D8
	mov r1, #1
	lsl r1, r1, #0xe
	bx r3
	; .align 2, 0
_02062D54: .word sub_020628D8
	thumb_func_end sub_02062D4C

	thumb_func_start sub_02062D58
sub_02062D58: ; 0x02062D58
	ldr r3, _02062D60 ; =sub_020628D8
	mov r1, #2
	lsl r1, r1, #8
	bx r3
	; .align 2, 0
_02062D60: .word sub_020628D8
	thumb_func_end sub_02062D58

	thumb_func_start sub_02062D64
sub_02062D64: ; 0x02062D64
	push {r3, lr}
	cmp r1, #1
	bne _02062D74
	mov r1, #2
	lsl r1, r1, #8
	bl sub_020628BC
	pop {r3, pc}
_02062D74:
	mov r1, #2
	lsl r1, r1, #8
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062D64

	thumb_func_start sub_02062D80
sub_02062D80: ; 0x02062D80
	push {r3, lr}
	cmp r1, #1
	bne _02062D90
	mov r1, #1
	lsl r1, r1, #0x12
	bl sub_020628C4
	pop {r3, pc}
_02062D90:
	mov r1, #1
	lsl r1, r1, #0x12
	bl sub_020628BC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062D80

	thumb_func_start sub_02062D9C
sub_02062D9C: ; 0x02062D9C
	push {r3, lr}
	mov r1, #2
	lsl r1, r1, #0x12
	bl sub_020628D8
	cmp r0, #1
	beq _02062DAE
	mov r0, #1
	pop {r3, pc}
_02062DAE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062D9C

	thumb_func_start sub_02062DB4
sub_02062DB4: ; 0x02062DB4
	push {r3, lr}
	cmp r1, #1
	bne _02062DC4
	mov r1, #2
	lsl r1, r1, #0x12
	bl sub_020628BC
	pop {r3, pc}
_02062DC4:
	mov r1, #2
	lsl r1, r1, #0x12
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062DB4

	thumb_func_start sub_02062DD0
sub_02062DD0: ; 0x02062DD0
	ldr r3, _02062DD8 ; =sub_020628BC
	mov r1, #0x40
	bx r3
	nop
_02062DD8: .word sub_020628BC
	thumb_func_end sub_02062DD0

	thumb_func_start sub_02062DDC
sub_02062DDC: ; 0x02062DDC
	ldr r3, _02062DE4 ; =sub_020628C4
	mov r1, #0x40
	bx r3
	nop
_02062DE4: .word sub_020628C4
	thumb_func_end sub_02062DDC

	thumb_func_start sub_02062DE8
sub_02062DE8: ; 0x02062DE8
	push {r3, lr}
	mov r1, #0x40
	bl sub_020628D8
	cmp r0, #1
	bne _02062DF8
	mov r0, #1
	pop {r3, pc}
_02062DF8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02062DE8

	thumb_func_start sub_02062DFC
sub_02062DFC: ; 0x02062DFC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062A40
	bl sub_02062CA8
	cmp r0, #0
	bne _02062E10
	mov r0, #0
	pop {r4, pc}
_02062E10:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_020628D0
	cmp r0, #0
	beq _02062E22
	mov r0, #1
	pop {r4, pc}
_02062E22:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02062DFC

	thumb_func_start sub_02062E28
sub_02062E28: ; 0x02062E28
	push {r3, lr}
	cmp r1, #1
	bne _02062E38
	mov r1, #2
	lsl r1, r1, #0x16
	bl sub_020628BC
	pop {r3, pc}
_02062E38:
	mov r1, #2
	lsl r1, r1, #0x16
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062E28

	thumb_func_start sub_02062E44
sub_02062E44: ; 0x02062E44
	push {r3, lr}
	mov r1, #2
	lsl r1, r1, #0x16
	bl sub_020628D0
	cmp r0, #0
	beq _02062E56
	mov r0, #1
	pop {r3, pc}
_02062E56:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062E44

	thumb_func_start sub_02062E5C
sub_02062E5C: ; 0x02062E5C
	push {r3, lr}
	cmp r1, #1
	bne _02062E6C
	mov r1, #1
	lsl r1, r1, #0xa
	bl sub_020628BC
	pop {r3, pc}
_02062E6C:
	mov r1, #1
	lsl r1, r1, #0xa
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062E5C

	thumb_func_start sub_02062E78
sub_02062E78: ; 0x02062E78
	push {r3, lr}
	cmp r1, #1
	bne _02062E88
	mov r1, #2
	lsl r1, r1, #0x18
	bl sub_020628BC
	pop {r3, pc}
_02062E88:
	mov r1, #2
	lsl r1, r1, #0x18
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062E78

	thumb_func_start sub_02062E94
sub_02062E94: ; 0x02062E94
	push {r3, lr}
	mov r1, #2
	lsl r1, r1, #0x18
	bl sub_020628D0
	cmp r0, #0
	beq _02062EA6
	mov r0, #1
	pop {r3, pc}
_02062EA6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062E94

	thumb_func_start sub_02062EAC
sub_02062EAC: ; 0x02062EAC
	push {r3, lr}
	cmp r1, #1
	bne _02062EBC
	mov r1, #1
	lsl r1, r1, #0x1a
	bl sub_020628BC
	pop {r3, pc}
_02062EBC:
	mov r1, #1
	lsl r1, r1, #0x1a
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062EAC

	thumb_func_start sub_02062EC8
sub_02062EC8: ; 0x02062EC8
	push {r3, lr}
	mov r1, #1
	lsl r1, r1, #0x1a
	bl sub_020628D0
	cmp r0, #0
	beq _02062EDA
	mov r0, #1
	pop {r3, pc}
_02062EDA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062EC8

	thumb_func_start sub_02062EE0
sub_02062EE0: ; 0x02062EE0
	push {r3, lr}
	cmp r1, #1
	bne _02062EF0
	mov r1, #2
	lsl r1, r1, #0x1a
	bl sub_020628BC
	pop {r3, pc}
_02062EF0:
	mov r1, #2
	lsl r1, r1, #0x1a
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062EE0

	thumb_func_start sub_02062EFC
sub_02062EFC: ; 0x02062EFC
	push {r3, lr}
	mov r1, #2
	lsl r1, r1, #0x1a
	bl sub_020628D0
	cmp r0, #0
	beq _02062F0E
	mov r0, #1
	pop {r3, pc}
_02062F0E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062EFC

	thumb_func_start sub_02062F14
sub_02062F14: ; 0x02062F14
	push {r3, lr}
	cmp r1, #1
	bne _02062F24
	mov r1, #1
	lsl r1, r1, #0x1c
	bl sub_020628BC
	pop {r3, pc}
_02062F24:
	mov r1, #1
	lsl r1, r1, #0x1c
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062F14

	thumb_func_start sub_02062F30
sub_02062F30: ; 0x02062F30
	push {r3, lr}
	mov r1, #1
	lsl r1, r1, #0x1c
	bl sub_020628D0
	cmp r0, #0
	beq _02062F42
	mov r0, #1
	pop {r3, pc}
_02062F42:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062F30

	thumb_func_start sub_02062F48
sub_02062F48: ; 0x02062F48
	push {r3, lr}
	cmp r1, #1
	bne _02062F58
	mov r1, #1
	lsl r1, r1, #0x18
	bl sub_020628BC
	pop {r3, pc}
_02062F58:
	mov r1, #1
	lsl r1, r1, #0x18
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062F48

	thumb_func_start sub_02062F64
sub_02062F64: ; 0x02062F64
	push {r3, lr}
	mov r1, #1
	lsl r1, r1, #0x18
	bl sub_020628D0
	cmp r0, #0
	beq _02062F76
	mov r0, #1
	pop {r3, pc}
_02062F76:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062F64

	thumb_func_start sub_02062F7C
sub_02062F7C: ; 0x02062F7C
	push {r3, lr}
	mov r1, #0x10
	bl sub_020628D0
	cmp r0, #0
	beq _02062F8C
	mov r0, #1
	pop {r3, pc}
_02062F8C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02062F7C

	thumb_func_start sub_02062F90
sub_02062F90: ; 0x02062F90
	push {r3, lr}
	cmp r1, #1
	bne _02062FA0
	mov r1, #2
	lsl r1, r1, #0x1c
	bl sub_020628BC
	pop {r3, pc}
_02062FA0:
	mov r1, #2
	lsl r1, r1, #0x1c
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062F90

	thumb_func_start sub_02062FAC
sub_02062FAC: ; 0x02062FAC
	push {r3, lr}
	mov r1, #2
	lsl r1, r1, #0x1c
	bl sub_020628D0
	cmp r0, #0
	beq _02062FBE
	mov r0, #1
	pop {r3, pc}
_02062FBE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062FAC

	thumb_func_start sub_02062FC4
sub_02062FC4: ; 0x02062FC4
	push {r3, lr}
	cmp r1, #1
	bne _02062FD2
	mov r1, #4
	bl sub_020628F0
	pop {r3, pc}
_02062FD2:
	mov r1, #4
	bl sub_020628F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02062FC4

	thumb_func_start sub_02062FDC
sub_02062FDC: ; 0x02062FDC
	push {r3, lr}
	mov r1, #4
	bl sub_02062904
	cmp r0, #0
	beq _02062FEC
	mov r0, #1
	pop {r3, pc}
_02062FEC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02062FDC

	thumb_func_start sub_02062FF0
sub_02062FF0: ; 0x02062FF0
	ldr r0, [r0, #0x4c]
	bx lr
	thumb_func_end sub_02062FF0

	thumb_func_start sub_02062FF4
sub_02062FF4: ; 0x02062FF4
	str r1, [r0, #0x4c]
	bx lr
	thumb_func_end sub_02062FF4

	thumb_func_start sub_02062FF8
sub_02062FF8: ; 0x02062FF8
	ldr r0, [r0, #0x50]
	bx lr
	thumb_func_end sub_02062FF8

	thumb_func_start sub_02062FFC
sub_02062FFC: ; 0x02062FFC
	str r1, [r0, #0x50]
	bx lr
	thumb_func_end sub_02062FFC

	thumb_func_start sub_02063000
sub_02063000: ; 0x02063000
	ldr r0, [r0, #0x54]
	bx lr
	thumb_func_end sub_02063000

	thumb_func_start sub_02063004
sub_02063004: ; 0x02063004
	str r1, [r0, #0x54]
	bx lr
	thumb_func_end sub_02063004

	thumb_func_start sub_02063008
sub_02063008: ; 0x02063008
	ldr r0, [r0, #0x58]
	bx lr
	thumb_func_end sub_02063008

	thumb_func_start sub_0206300C
sub_0206300C: ; 0x0206300C
	str r1, [r0, #0x58]
	bx lr
	thumb_func_end sub_0206300C

	thumb_func_start sub_02063010
sub_02063010: ; 0x02063010
	ldr r0, [r0, #0x5c]
	bx lr
	thumb_func_end sub_02063010

	thumb_func_start sub_02063014
sub_02063014: ; 0x02063014
	str r1, [r0, #0x5c]
	bx lr
	thumb_func_end sub_02063014

	thumb_func_start sub_02063018
sub_02063018: ; 0x02063018
	ldr r0, [r0, #0x60]
	bx lr
	thumb_func_end sub_02063018

	thumb_func_start sub_0206301C
sub_0206301C: ; 0x0206301C
	str r1, [r0, #0x60]
	bx lr
	thumb_func_end sub_0206301C

	thumb_func_start sub_02063020
sub_02063020: ; 0x02063020
	ldr r0, [r0, #0x64]
	bx lr
	thumb_func_end sub_02063020

	thumb_func_start sub_02063024
sub_02063024: ; 0x02063024
	str r1, [r0, #0x64]
	bx lr
	thumb_func_end sub_02063024

	thumb_func_start sub_02063028
sub_02063028: ; 0x02063028
	ldr r2, [r0, #0x64]
	add r1, r2, r1
	str r1, [r0, #0x64]
	bx lr
	thumb_func_end sub_02063028

	thumb_func_start sub_02063030
sub_02063030: ; 0x02063030
	ldr r0, [r0, #0x68]
	bx lr
	thumb_func_end sub_02063030

	thumb_func_start sub_02063034
sub_02063034: ; 0x02063034
	str r1, [r0, #0x68]
	bx lr
	thumb_func_end sub_02063034

	thumb_func_start sub_02063038
sub_02063038: ; 0x02063038
	ldr r2, [r0, #0x68]
	add r1, r2, r1
	str r1, [r0, #0x68]
	bx lr
	thumb_func_end sub_02063038

	thumb_func_start sub_02063040
sub_02063040: ; 0x02063040
	ldr r0, [r0, #0x6c]
	bx lr
	thumb_func_end sub_02063040

	thumb_func_start sub_02063044
sub_02063044: ; 0x02063044
	str r1, [r0, #0x6c]
	bx lr
	thumb_func_end sub_02063044

	thumb_func_start sub_02063048
sub_02063048: ; 0x02063048
	ldr r2, [r0, #0x6c]
	add r1, r2, r1
	str r1, [r0, #0x6c]
	bx lr
	thumb_func_end sub_02063048

	thumb_func_start sub_02063050
sub_02063050: ; 0x02063050
	add r2, r0, #0
	add r2, #0x70
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_02063050

	thumb_func_start sub_02063060
sub_02063060: ; 0x02063060
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x70
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_02063060

	thumb_func_start sub_02063070
sub_02063070: ; 0x02063070
	add r0, #0x70
	bx lr
	thumb_func_end sub_02063070

	thumb_func_start sub_02063074
sub_02063074: ; 0x02063074
	ldr r0, [r0, #0x74]
	bx lr
	thumb_func_end sub_02063074

	thumb_func_start sub_02063078
sub_02063078: ; 0x02063078
	add r2, r0, #0
	add r2, #0x7c
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_02063078

	thumb_func_start sub_02063088
sub_02063088: ; 0x02063088
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x7c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_02063088

	thumb_func_start sub_02063098
sub_02063098: ; 0x02063098
	add r0, #0x7c
	bx lr
	thumb_func_end sub_02063098

	thumb_func_start sub_0206309C
sub_0206309C: ; 0x0206309C
	add r2, r0, #0
	add r2, #0x88
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_0206309C

	thumb_func_start sub_020630AC
sub_020630AC: ; 0x020630AC
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x88
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_020630AC

	thumb_func_start sub_020630BC
sub_020630BC: ; 0x020630BC
	add r2, r0, #0
	add r2, #0x94
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_020630BC

	thumb_func_start sub_020630CC
sub_020630CC: ; 0x020630CC
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x94
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_020630CC

	thumb_func_start sub_020630DC
sub_020630DC: ; 0x020630DC
	push {r3, lr}
	bl sub_02063074
	asr r1, r0, #3
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020630DC

	thumb_func_start sub_020630F0
sub_020630F0: ; 0x020630F0
	strh r1, [r0]
	bx lr
	thumb_func_end sub_020630F0

	thumb_func_start sub_020630F4
sub_020630F4: ; 0x020630F4
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_020630F4

	thumb_func_start sub_020630F8
sub_020630F8: ; 0x020630F8
	strh r1, [r0, #2]
	bx lr
	thumb_func_end sub_020630F8

	thumb_func_start sub_020630FC
sub_020630FC: ; 0x020630FC
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end sub_020630FC

	thumb_func_start sub_02063100
sub_02063100: ; 0x02063100
	strh r1, [r0, #4]
	bx lr
	thumb_func_end sub_02063100

	thumb_func_start sub_02063104
sub_02063104: ; 0x02063104
	ldrh r0, [r0, #4]
	bx lr
	thumb_func_end sub_02063104

	thumb_func_start sub_02063108
sub_02063108: ; 0x02063108
	strh r1, [r0, #6]
	bx lr
	thumb_func_end sub_02063108

	thumb_func_start sub_0206310C
sub_0206310C: ; 0x0206310C
	ldrh r0, [r0, #6]
	bx lr
	thumb_func_end sub_0206310C

	thumb_func_start sub_02063110
sub_02063110: ; 0x02063110
	strh r1, [r0, #8]
	bx lr
	thumb_func_end sub_02063110

	thumb_func_start sub_02063114
sub_02063114: ; 0x02063114
	ldrh r0, [r0, #8]
	bx lr
	thumb_func_end sub_02063114

	thumb_func_start sub_02063118
sub_02063118: ; 0x02063118
	strh r1, [r0, #0xa]
	bx lr
	thumb_func_end sub_02063118

	thumb_func_start sub_0206311C
sub_0206311C: ; 0x0206311C
	ldrh r0, [r0, #0xa]
	bx lr
	thumb_func_end sub_0206311C

	thumb_func_start sub_02063120
sub_02063120: ; 0x02063120
	strh r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_02063120

	thumb_func_start sub_02063124
sub_02063124: ; 0x02063124
	mov r1, #0xc
	ldrsh r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02063124

	thumb_func_start sub_0206312C
sub_0206312C: ; 0x0206312C
	push {r3, lr}
	cmp r2, #0
	beq _0206313C
	cmp r2, #1
	beq _02063140
	cmp r2, #2
	beq _02063144
	b _02063148
_0206313C:
	strh r1, [r0, #0xe]
	pop {r3, pc}
_02063140:
	strh r1, [r0, #0x10]
	pop {r3, pc}
_02063144:
	strh r1, [r0, #0x12]
	pop {r3, pc}
_02063148:
	bl sub_02022974
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206312C

	thumb_func_start sub_02063150
sub_02063150: ; 0x02063150
	push {r3, lr}
	cmp r1, #0
	beq _02063160
	cmp r1, #1
	beq _02063164
	cmp r1, #2
	beq _02063168
	b _0206316C
_02063160:
	ldrh r0, [r0, #0xe]
	pop {r3, pc}
_02063164:
	ldrh r0, [r0, #0x10]
	pop {r3, pc}
_02063168:
	ldrh r0, [r0, #0x12]
	pop {r3, pc}
_0206316C:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02063150

	thumb_func_start sub_02063174
sub_02063174: ; 0x02063174
	strh r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_02063174

	thumb_func_start sub_02063178
sub_02063178: ; 0x02063178
	mov r1, #0x14
	ldrsh r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02063178

	thumb_func_start sub_02063180
sub_02063180: ; 0x02063180
	strh r1, [r0, #0x16]
	bx lr
	thumb_func_end sub_02063180

	thumb_func_start sub_02063184
sub_02063184: ; 0x02063184
	mov r1, #0x16
	ldrsh r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02063184

	thumb_func_start sub_0206318C
sub_0206318C: ; 0x0206318C
	strh r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_0206318C

	thumb_func_start sub_02063190
sub_02063190: ; 0x02063190
	ldrh r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_02063190

	thumb_func_start sub_02063194
sub_02063194: ; 0x02063194
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02063194

	thumb_func_start sub_02063198
sub_02063198: ; 0x02063198
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_02063198

	thumb_func_start sub_0206319C
sub_0206319C: ; 0x0206319C
	strh r1, [r0, #0x1a]
	bx lr
	thumb_func_end sub_0206319C

	thumb_func_start sub_020631A0
sub_020631A0: ; 0x020631A0
	ldrh r0, [r0, #0x1a]
	bx lr
	thumb_func_end sub_020631A0

	thumb_func_start sub_020631A4
sub_020631A4: ; 0x020631A4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	mov r4, #0
	add r5, r2, #0
_020631B0:
	add r0, r5, #0
	bl sub_020631D8
	cmp r0, #0
	bne _020631CC
	add r0, r5, #0
	bl sub_020630F4
	cmp r6, r0
	bne _020631CC
	ldr r0, [sp]
	lsl r1, r4, #5
	add r0, r0, r1
	pop {r3, r4, r5, r6, r7, pc}
_020631CC:
	add r4, r4, #1
	add r5, #0x20
	cmp r4, r7
	blt _020631B0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020631A4

	thumb_func_start sub_020631D8
sub_020631D8: ; 0x020631D8
	push {r3, lr}
	bl sub_0206311C
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _020631F0 ; =0x0000FFFF
	cmp r1, r0
	bne _020631EC
	mov r0, #1
	pop {r3, pc}
_020631EC:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_020631F0: .word 0x0000FFFF
	thumb_func_end sub_020631D8

	thumb_func_start sub_020631F4
sub_020631F4: ; 0x020631F4
	push {r4, lr}
	add r4, r0, #0
	bl sub_020631D8
	cmp r0, #1
	beq _02063204
	bl sub_02022974
_02063204:
	add r0, r4, #0
	bl sub_02063114
	pop {r4, pc}
	thumb_func_end sub_020631F4

	thumb_func_start sub_0206320C
sub_0206320C: ; 0x0206320C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x44
	blo _02063218
	bl sub_02022974
_02063218:
	ldr r0, _02063220 ; =0x020EE3A8
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_02063220: .word 0x020EE3A8
	thumb_func_end sub_0206320C

	thumb_func_start sub_02063224
sub_02063224: ; 0x02063224
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02063224

	thumb_func_start sub_02063228
sub_02063228: ; 0x02063228
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02063228

	thumb_func_start sub_0206322C
sub_0206322C: ; 0x0206322C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0206322C

	thumb_func_start sub_02063230
sub_02063230: ; 0x02063230
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_02063230

	thumb_func_start sub_02063234
sub_02063234: ; 0x02063234
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02063234

	thumb_func_start sub_02063238
sub_02063238: ; 0x02063238
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02063238

	thumb_func_start sub_0206323C
sub_0206323C: ; 0x0206323C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0206323C

	thumb_func_start sub_02063240
sub_02063240: ; 0x02063240
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_02063240

	thumb_func_start sub_02063244
sub_02063244: ; 0x02063244
	push {r3, lr}
	ldr r3, _02063264 ; =0x021FB97C
	ldr r1, _02063268 ; =0x0000FFFF
_0206324A:
	ldr r2, [r3, #0]
	cmp r2, r0
	bne _02063254
	ldr r0, [r3, #4]
	pop {r3, pc}
_02063254:
	add r3, #8
	ldr r2, [r3, #0]
	cmp r2, r1
	bne _0206324A
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02063264: .word 0x021FB97C
_02063268: .word 0x0000FFFF
	thumb_func_end sub_02063244

	thumb_func_start sub_0206326C
sub_0206326C: ; 0x0206326C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl sub_02062824
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02062878
	add r4, r0, #0
_02063284:
	add r0, r4, #0
	mov r1, #1
	bl sub_020628D0
	cmp r0, #0
	beq _020632C6
	ldr r0, [sp]
	cmp r0, #0
	beq _020632AE
	add r0, r4, #0
	bl sub_02063008
	cmp r5, r0
	bne _020632AE
	add r0, r4, #0
	bl sub_02063018
	cmp r6, r0
	bne _020632AE
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_020632AE:
	add r0, r4, #0
	bl sub_02063020
	cmp r5, r0
	bne _020632C6
	add r0, r4, #0
	bl sub_02063040
	cmp r6, r0
	bne _020632C6
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_020632C6:
	mov r0, #0x4a
	lsl r0, r0, #2
	add r4, r4, r0
	sub r7, r7, #1
	bne _02063284
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206326C

	thumb_func_start sub_020632D4
sub_020632D4: ; 0x020632D4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r6, r2, #0
	asr r2, r1, #4
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	add r5, r0, #0
	bl sub_02063024
	ldr r1, [r4, #4]
	add r0, r5, #0
	asr r2, r1, #3
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	bl sub_02063034
	ldr r1, [r4, #8]
	add r0, r5, #0
	asr r2, r1, #4
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	bl sub_02063044
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02063060
	add r0, r5, #0
	bl sub_02064208
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206296C
	add r0, r5, #0
	bl sub_020656DC
	add r0, r5, #0
	mov r1, #4
	bl sub_020628BC
	add r0, r5, #0
	mov r1, #0xa
	bl sub_020628C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020632D4

	thumb_func_start sub_02063340
sub_02063340: ; 0x02063340
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #2
	add r6, r3, #0
	lsl r3, r1, #0x10
	lsl r2, r2, #0xe
	add r2, r3, r2
	add r5, r0, #0
	str r2, [sp]
	bl sub_02063024
	lsl r0, r4, #0xf
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02063034
	mov r0, #2
	lsl r1, r6, #0x10
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02063044
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02063060
	add r0, r5, #0
	bl sub_02064208
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl sub_0206296C
	add r0, r5, #0
	mov r1, #4
	bl sub_020628BC
	add r0, r5, #0
	mov r1, #0xa
	bl sub_020628C4
	add r0, r5, #0
	bl sub_020656DC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02063340

	thumb_func_start sub_020633A8
sub_020633A8: ; 0x020633A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062B28
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02062944
	add r0, r5, #0
	bl sub_0206239C
	add r0, r5, #0
	bl sub_02063400
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020633A8

	thumb_func_start sub_020633C8
sub_020633C8: ; 0x020633C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206290C
	add r0, r4, #0
	bl sub_02062D28
	add r0, r4, #0
	bl sub_02062618
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020633C8

	thumb_func_start sub_020633E0
sub_020633E0: ; 0x020633E0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633E0

	thumb_func_start sub_020633E4
sub_020633E4: ; 0x020633E4
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633E4

	thumb_func_start sub_020633E8
sub_020633E8: ; 0x020633E8
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633E8

	thumb_func_start sub_020633EC
sub_020633EC: ; 0x020633EC
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633EC

	thumb_func_start sub_020633F0
sub_020633F0: ; 0x020633F0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633F0

	thumb_func_start sub_020633F4
sub_020633F4: ; 0x020633F4
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633F4

	thumb_func_start sub_020633F8
sub_020633F8: ; 0x020633F8
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633F8

	thumb_func_start sub_020633FC
sub_020633FC: ; 0x020633FC
	bx lr
	; .align 2, 0
	thumb_func_end sub_020633FC