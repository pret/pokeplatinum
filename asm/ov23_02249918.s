	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov23_02249918
ov23_02249918: ; 0x02249918
	mov r0, #0x78
	bx lr
	thumb_func_end ov23_02249918

	thumb_func_start ov23_0224991C
ov23_0224991C: ; 0x0224991C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020361BC
	mov r1, #0
	add r4, #0x18
	add r0, r1, #0
_0224992A:
	strb r0, [r4, #0xa]
	str r0, [r4, #4]
	add r1, r1, #1
	add r4, #0xc
	cmp r1, #8
	blt _0224992A
	pop {r4, pc}
	thumb_func_end ov23_0224991C

	thumb_func_start ov23_02249938
ov23_02249938: ; 0x02249938
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02249938

	thumb_func_start ov23_0224993C
ov23_0224993C: ; 0x0224993C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #8
	blt _0224994A
	bl sub_02022974
_0224994A:
	mov r0, #0xc
	add r5, #0x18
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224993C

	thumb_func_start ov23_02249954
ov23_02249954: ; 0x02249954
	mov r3, #0
	add r0, #0x18
	add r1, r3, #0
_0224995A:
	ldr r2, [r0, #4]
	cmp r2, #0
	ble _02249964
	sub r2, r2, #1
	str r2, [r0, #4]
_02249964:
	ldr r2, [r0, #4]
	cmp r2, #0
	bne _0224996C
	strb r1, [r0, #0xa]
_0224996C:
	add r3, r3, #1
	add r0, #0xc
	cmp r3, #8
	blt _0224995A
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02249954

	thumb_func_start ov23_02249978
ov23_02249978: ; 0x02249978
	strb r1, [r0, #0xa]
	lsl r2, r1, #2
	ldr r1, _0224998C ; =0x02257580
	ldr r1, [r1, r2]
	str r1, [r0, #4]
	ldr r1, _02249990 ; =0x0225759C
	ldr r1, [r1, r2]
	str r1, [r0, #0]
	bx lr
	nop
_0224998C: .word 0x02257580
_02249990: .word 0x0225759C
	thumb_func_end ov23_02249978

	thumb_func_start ov23_02249994
ov23_02249994: ; 0x02249994
	ldr r3, _02249998 ; =ov23_02249978
	bx r3
	; .align 2, 0
_02249998: .word ov23_02249978
	thumb_func_end ov23_02249994

	thumb_func_start ov23_0224999C
ov23_0224999C: ; 0x0224999C
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _022499A6
	mov r0, #1
	bx lr
_022499A6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_0224999C

	thumb_func_start ov23_022499AC
ov23_022499AC: ; 0x022499AC
	ldrb r0, [r0, #0xa]
	cmp r0, #2
	bne _022499B6
	mov r0, #0
	bx lr
_022499B6:
	cmp r0, #5
	bne _022499BE
	mov r0, #0
	bx lr
_022499BE:
	cmp r0, #3
	bne _022499C6
	mov r0, #1
	bx lr
_022499C6:
	cmp r0, #1
	bne _022499CE
	mov r0, #1
	bx lr
_022499CE:
	cmp r0, #4
	bne _022499D6
	mov r0, #1
	bx lr
_022499D6:
	cmp r0, #0
	bne _022499DE
	mov r0, #1
	bx lr
_022499DE:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_022499AC
	.data


	.global Unk_ov23_02257580
Unk_ov23_02257580: ; 0x02257580
	.incbin "incbin/overlay23_data.bin", 0x9A0, 0x9BC - 0x9A0

	.global Unk_ov23_0225759C
Unk_ov23_0225759C: ; 0x0225759C
	.incbin "incbin/overlay23_data.bin", 0x9BC, 0x1C

