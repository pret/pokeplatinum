	.include "macros/function.inc"
	.include "include/unk_020508D4.inc"

	

	.text


	thumb_func_start sub_020508D4
sub_020508D4: ; 0x020508D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x20
	add r6, r1, #0
	add r1, r0, #0
	add r7, r2, #0
	bl sub_02018184
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0]
	str r6, [r4, #4]
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	mov r0, #0x20
	mov r1, #4
	str r5, [r4, #0x18]
	bl sub_02018184
	str r0, [r4, #0x1c]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020508D4

	thumb_func_start sub_02050904
sub_02050904: ; 0x02050904
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _02050916
	bl sub_02022974
_02050916:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020508D4
	str r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02050904

	thumb_func_start sub_02050924
sub_02050924: ; 0x02050924
	push {r4, lr}
	add r4, r0, #0
	str r1, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	str r2, [r4, #0xc]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _02050938
	beq _02050942
_02050938:
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
_02050942:
	pop {r4, pc}
	thumb_func_end sub_02050924

	thumb_func_start sub_02050944
sub_02050944: ; 0x02050944
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_020508D4
	str r4, [r0, #0]
	ldr r1, [r4, #0x18]
	str r0, [r1, #0x10]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02050944

	thumb_func_start sub_02050958
sub_02050958: ; 0x02050958
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02050966
	mov r0, #0
	pop {r3, r4, r5, pc}
_02050966:
	ldr r1, [r0, #4]
	blx r1
	cmp r0, #1
	bne _0205099E
_0205096E:
	ldr r0, [r5, #0x10]
	ldr r4, [r0, #0]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0205097C
	bl sub_020181C4
_0205097C:
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0x1c]
	bl sub_020181C4
	ldr r0, [r5, #0x10]
	bl sub_020181C4
	str r4, [r5, #0x10]
	cmp r4, #0
	bne _02050994
	mov r0, #1
	pop {r3, r4, r5, pc}
_02050994:
	ldr r0, [r5, #0x10]
	ldr r1, [r0, #4]
	blx r1
	cmp r0, #1
	beq _0205096E
_0205099E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02050958

	thumb_func_start sub_020509A4
sub_020509A4: ; 0x020509A4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020509AE
	mov r0, #1
	bx lr
_020509AE:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020509A4

	thumb_func_start sub_020509B4
sub_020509B4: ; 0x020509B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203CD4C
	cmp r0, #0
	bne _020509CA
	add r0, r4, #0
	bl sub_0203CD74
	cmp r0, #0
	beq _020509CE
_020509CA:
	mov r0, #1
	pop {r4, pc}
_020509CE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020509B4

	thumb_func_start sub_020509D4
sub_020509D4: ; 0x020509D4
	ldr r3, _020509D8 ; =sub_0203CD00
	bx r3
	; .align 2, 0
_020509D8: .word sub_0203CD00
	thumb_func_end sub_020509D4

	thumb_func_start sub_020509DC
sub_020509DC: ; 0x020509DC
	push {r3, lr}
	bl sub_0203CD5C
	cmp r0, #0
	beq _020509EA
	mov r0, #1
	pop {r3, pc}
_020509EA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020509DC

	thumb_func_start sub_020509F0
sub_020509F0: ; 0x020509F0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02050A0E
	cmp r0, #1
	beq _02050A20
	b _02050A34
_02050A0E:
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	bl sub_0203CD84
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02050A34
_02050A20:
	add r0, r5, #0
	bl sub_020509B4
	cmp r0, #0
	bne _02050A34
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02050A34:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020509F0

	thumb_func_start sub_02050A38
sub_02050A38: ; 0x02050A38
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x20
	mov r1, #0xc
	add r4, r2, #0
	bl sub_02018184
	add r2, r0, #0
	mov r0, #0
	str r0, [r2, #0]
	str r5, [r2, #4]
	ldr r1, _02050A5C ; =sub_020509F0
	add r0, r6, #0
	str r4, [r2, #8]
	bl sub_02050944
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02050A5C: .word sub_020509F0
	thumb_func_end sub_02050A38

	thumb_func_start sub_02050A60
sub_02050A60: ; 0x02050A60
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_02050A60

	thumb_func_start sub_02050A64
sub_02050A64: ; 0x02050A64
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02050A64

	thumb_func_start sub_02050A68
sub_02050A68: ; 0x02050A68
	add r0, #8
	bx lr
	thumb_func_end sub_02050A68

	thumb_func_start sub_02050A6C
sub_02050A6C: ; 0x02050A6C
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02050A6C