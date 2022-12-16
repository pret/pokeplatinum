	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov20_021D5044
ov20_021D5044: ; 0x021D5044
	mov r0, #0x1b
	bx lr
	thumb_func_end ov20_021D5044

	thumb_func_start ov20_021D5048
ov20_021D5048: ; 0x021D5048
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0x1b
	blo _021D5056
	bl sub_02022974
_021D5056:
	mov r1, #0xa
	ldr r2, _021D5068 ; =0x021D5320
	mul r1, r4
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #2
	bl sub_02023D8C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D5068: .word 0x021D5320
	thumb_func_end ov20_021D5048

	thumb_func_start ov20_021D506C
ov20_021D506C: ; 0x021D506C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0x1b
	blo _021D507C
	bl sub_02022974
_021D507C:
	mov r0, #0xa
	add r1, r5, #0
	mul r1, r0
	ldr r0, _021D5090 ; =0x021D5322
	ldrb r0, [r0, r1]
	str r0, [r4, #0]
	ldr r0, _021D5094 ; =0x021D5323
	ldrb r0, [r0, r1]
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D5090: .word 0x021D5322
_021D5094: .word 0x021D5323
	thumb_func_end ov20_021D506C

	thumb_func_start ov20_021D5098
ov20_021D5098: ; 0x021D5098
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x1b
	blo _021D50A4
	bl sub_02022974
_021D50A4:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021D50B0 ; =0x021D5324
	ldrb r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_021D50B0: .word 0x021D5324
	thumb_func_end ov20_021D5098

	thumb_func_start ov20_021D50B4
ov20_021D50B4: ; 0x021D50B4
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x1b
	blo _021D50C0
	bl sub_02022974
_021D50C0:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021D50CC ; =0x021D5325
	ldrb r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_021D50CC: .word 0x021D5325
	thumb_func_end ov20_021D50B4

	thumb_func_start ov20_021D50D0
ov20_021D50D0: ; 0x021D50D0
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x1b
	blo _021D50DC
	bl sub_02022974
_021D50DC:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021D50E8 ; =0x021D5326
	ldrb r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_021D50E8: .word 0x021D5326
	thumb_func_end ov20_021D50D0

	thumb_func_start ov20_021D50EC
ov20_021D50EC: ; 0x021D50EC
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x1b
	blo _021D50F8
	bl sub_02022974
_021D50F8:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021D5104 ; =0x021D5327
	ldrb r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_021D5104: .word 0x021D5327
	thumb_func_end ov20_021D50EC

	thumb_func_start ov20_021D5108
ov20_021D5108: ; 0x021D5108
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x1b
	blo _021D5114
	bl sub_02022974
_021D5114:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021D5120 ; =0x021D5328
	ldrb r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_021D5120: .word 0x021D5328
	thumb_func_end ov20_021D5108

	thumb_func_start ov20_021D5124
ov20_021D5124: ; 0x021D5124
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x1b
	blo _021D5130
	bl sub_02022974
_021D5130:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021D513C ; =0x021D5329
	ldrb r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_021D513C: .word 0x021D5329
	thumb_func_end ov20_021D5124

	.rodata


	.global Unk_ov20_021D5320
Unk_ov20_021D5320: ; 0x021D5320
	.incbin "incbin/overlay20_rodata.bin", 0x1E0, 0x10E

