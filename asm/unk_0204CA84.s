	.include "macros/function.inc"
	.include "include/unk_0204CA84.inc"

	

	.text


	thumb_func_start sub_0204CA84
sub_0204CA84: ; 0x0204CA84
	push {r3, r4, r5, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	ldr r5, [r0, #0xc]
	bl sub_0203F098
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02026310
	ldr r1, [r4, #0]
	bl ov5_021E72BC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204CA84

	thumb_func_start sub_0204CAA4
sub_0204CAA4: ; 0x0204CAA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #8
	bl sub_020245BC
	bl ov5_021E73C8
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204CAA4

	thumb_func_start sub_0204CAD4
sub_0204CAD4: ; 0x0204CAD4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #8
	ldr r0, [r0, #0xc]
	bl sub_020245BC
	bl ov5_021E6B40
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204CAD4

	thumb_func_start sub_0204CAEC
sub_0204CAEC: ; 0x0204CAEC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #8
	ldr r0, [r5, #0xc]
	bl sub_020245BC
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r4, #0x80
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203D174
	bl sub_02025E38
	add r2, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ov5_021E6EA8
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204CAEC

	thumb_func_start sub_0204CB20
sub_0204CB20: ; 0x0204CB20
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0xf
	add r0, r5, #0
	bl sub_0203F098
	add r7, r0, #0
	add r0, r4, #0
	ldr r6, [r5, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #8
	bl sub_020245BC
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	lsl r3, r4, #0x18
	ldr r1, [r7, #0]
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl ov5_021E64F8
	ldr r1, [sp]
	strh r0, [r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204CB20

	thumb_func_start sub_0204CB80
sub_0204CB80: ; 0x0204CB80
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0xf
	add r0, r5, #0
	bl sub_0203F098
	add r7, r0, #0
	add r0, r4, #0
	ldr r5, [r5, #0xc]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #8
	bl sub_020245BC
	lsl r1, r4, #0x18
	ldr r2, [r7, #0]
	lsr r1, r1, #0x18
	bl ov5_021E6630
	strh r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204CB80

	thumb_func_start sub_0204CBD4
sub_0204CBD4: ; 0x0204CBD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	ldr r4, [r0, #0xc]
	bl sub_0203F098
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #8
	bl sub_020245BC
	ldr r2, [r6, #0]
	add r1, r5, #0
	bl ov5_021E6640
	strh r0, [r7]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204CBD4

	thumb_func_start sub_0204CC24
sub_0204CC24: ; 0x0204CC24
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	mov r1, #0xf
	add r0, r5, #0
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	ldr r2, [r6, #0]
	add r1, r7, #0
	bl ov5_021E73A0
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204CC24

	thumb_func_start sub_0204CC78
sub_0204CC78: ; 0x0204CC78
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r1, r6, #0
	add r1, #0x80
	ldr r4, [r1, #0]
	ldr r5, [r4, #0xc]
	bl sub_0203E838
	add r6, #0x80
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl sub_0203F150
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #8
	bl sub_020245BC
	lsl r1, r6, #0x18
	add r2, r0, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r3, r5, #0
	bl ov5_021E6358
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204CC78

	thumb_func_start sub_0204CCB8
sub_0204CCB8: ; 0x0204CCB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	ldr r5, [r0, #0xc]
	bl sub_0203F098
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02026310
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [r6, #0]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	str r1, [sp, #4]
	lsl r1, r7, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov5_021E7308
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204CCB8

	thumb_func_start sub_0204CD44
sub_0204CD44: ; 0x0204CD44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #8
	bl sub_020245BC
	bl ov5_021E7420
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204CD44

	thumb_func_start sub_0204CD74
sub_0204CD74: ; 0x0204CD74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	ldr r4, [r1, #0xc]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #8
	bl sub_020245BC
	bl sub_02026234
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0204CD74

	thumb_func_start sub_0204CDA4
sub_0204CDA4: ; 0x0204CDA4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204CDA4

	thumb_func_start sub_0204CDBC
sub_0204CDBC: ; 0x0204CDBC
	mov r0, #0
	bx lr
	thumb_func_end sub_0204CDBC

	thumb_func_start sub_0204CDC0
sub_0204CDC0: ; 0x0204CDC0
	mov r0, #0
	bx lr
	thumb_func_end sub_0204CDC0

	thumb_func_start sub_0204CDC4
sub_0204CDC4: ; 0x0204CDC4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F118
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0204CDC4