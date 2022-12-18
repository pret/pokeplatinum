	.include "macros/function.inc"
	.include "include/ov6_02246184.inc"

	

	.text


	thumb_func_start ov6_02246184
ov6_02246184: ; 0x02246184
	push {r3, r4, r5, r6, lr}
	sub sp, #0x104
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #4
	blo _02246194
	bl sub_02022974
_02246194:
	add r0, r5, #0
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_022461A4:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _022461A4
	mov r2, #0
	str r2, [sp]
	mov r0, #0x73
	add r1, r6, #0
	add r3, r5, #0
	bl sub_02006FE8
	str r0, [r4, #0]
	str r5, [r4, #0x10]
	str r6, [r4, #0xc]
	add r0, r5, #0
	bl sub_02073C74
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02025E6C
	str r0, [r4, #8]
	bl sub_02025E8C
	add r0, r5, #0
	add r1, r6, #4
	bl ov6_022462E4
	add r5, r0, #0
	add r1, sp, #4
	mov r2, #0x80
	bl sub_02023DF0
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, [r4, #8]
	add r1, sp, #4
	bl sub_02025EC0
	ldr r1, [r4, #0]
	ldr r0, [r4, #8]
	ldr r1, [r1, #0x40]
	bl sub_02025F2C
	add r0, r4, #0
	add sp, #0x104
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov6_02246184

	thumb_func_start ov6_02246204
ov6_02246204: ; 0x02246204
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02246204

	thumb_func_start ov6_02246224
ov6_02246224: ; 0x02246224
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_02246224

	thumb_func_start ov6_0224622C
ov6_0224622C: ; 0x0224622C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x4c]
	bx lr
	; .align 2, 0
	thumb_func_end ov6_0224622C

	thumb_func_start ov6_02246234
ov6_02246234: ; 0x02246234
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0207A268
	ldr r2, [r6, #4]
	add r1, r4, #0
	bl sub_0207A128
	ldr r0, [r5, #0xc]
	ldr r1, [r6, #4]
	bl sub_0202F180
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02246234

	thumb_func_start ov6_02246254
ov6_02246254: ; 0x02246254
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6, #0xc]
	add r7, r2, #0
	add r5, r1, #0
	add r4, r3, #0
	bl sub_0207A268
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #0xa1
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #0x10]
	str r0, [sp]
	ldr r0, [r6, #0x1c]
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0]
	ldr r3, [r5, #0xc]
	bl ov6_0224630C
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	bl sub_020775EC
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	bl sub_020775EC
	ldr r0, [sp, #0x20]
	bl sub_02076B10
	str r0, [r4, #0]
	ldr r0, [sp, #0x24]
	bl sub_02076B10
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r6, #0xc]
	bl sub_02025E44
	str r0, [r4, #0x14]
	add r0, r6, #0
	bl sub_02055BA8
	cmp r0, #1
	bhi _022462CE
	mov r0, #0
	add sp, #8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022462CE:
	cmp r0, #2
	bne _022462DA
	mov r0, #1
	add sp, #8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022462DA:
	mov r0, #2
	str r0, [r4, #0xc]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02246254

	thumb_func_start ov6_022462E4
ov6_022462E4: ; 0x022462E4
	push {r3, r4, r5, lr}
	ldr r2, _02246308 ; =0x00000172
	add r3, r0, #0
	add r4, r1, #0
	mov r0, #0
	mov r1, #0x1a
	bl sub_0200B144
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02246308: .word 0x00000172
	thumb_func_end ov6_022462E4

	thumb_func_start ov6_0224630C
ov6_0224630C: ; 0x0224630C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r3, #0
	mov r3, #1
	add r4, r1, #0
	str r3, [sp]
	ldr r1, [r4, #0x38]
	add r5, r0, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	ldr r1, [r4, #0x20]
	mov r3, #0x20
	str r1, [sp, #0xc]
	ldr r1, [r4, #0]
	bl sub_02073D80
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	bl ov6_022462E4
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x77
	add r2, r7, #0
	bl sub_02074B30
	add r0, r7, #0
	bl sub_020237BC
	mov r1, #1
	add r0, sp, #0x10
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0x4d
	add r2, sp, #0x10
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #0x46
	add r2, r4, #4
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x47
	add r2, #8
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x48
	add r2, #0xc
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x49
	add r2, #0x10
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x4a
	add r2, #0x14
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x4b
	add r2, #0x18
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x13
	add r2, #0x24
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x14
	add r2, #0x28
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x15
	add r2, #0x2c
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x16
	add r2, #0x30
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x17
	add r2, #0x34
	bl sub_02074B30
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #6
	add r2, #0x3c
	bl sub_02074B30
	ldr r0, [sp, #0x28]
	add r1, r6, #4
	bl ov6_022462E4
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x91
	add r2, r6, #0
	bl sub_02074B30
	add r0, r6, #0
	bl sub_020237BC
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x9d
	add r2, #0x40
	bl sub_02074B30
	add r4, #0x48
	add r0, r5, #0
	mov r1, #0xc
	add r2, r4, #0
	bl sub_02074B30
	ldr r0, [sp, #0x2c]
	bl sub_0203A138
	add r3, r0, #0
	ldr r0, [sp, #0x28]
	mov r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	bl sub_0209304C
	add r0, r5, #0
	bl sub_0207418C
	add r0, r5, #0
	bl sub_02075E0C
	cmp r0, #0
	beq _02246440
	bl sub_02022974
_02246440:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_0224630C