	.include "macros/function.inc"
	.include "include/unk_0206AFE0.inc"

	

	.text


	thumb_func_start sub_0206AFE0
sub_0206AFE0: ; 0x0206AFE0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020508B8
	mov r1, #1
	lsl r1, r1, #0xe
	cmp r5, r1
	blo _0206AFF8
	lsl r1, r1, #1
	cmp r5, r1
	bls _0206B000
_0206AFF8:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206B000:
	cmp r0, #0
	bne _0206B008
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206B008:
	strh r4, [r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206AFE0

	thumb_func_start sub_0206B010
sub_0206B010: ; 0x0206B010
	push {r3, lr}
	bl sub_020508B8
	cmp r0, #0
	bne _0206B01E
	mov r0, #0
	pop {r3, pc}
_0206B01E:
	ldrh r0, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206B010

	thumb_func_start sub_0206B024
sub_0206B024: ; 0x0206B024
	ldr r3, _0206B02C ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B030 ; =0x0000403F
	bx r3
	; .align 2, 0
_0206B02C: .word sub_0206AFE0
_0206B030: .word 0x0000403F
	thumb_func_end sub_0206B024

	thumb_func_start sub_0206B034
sub_0206B034: ; 0x0206B034
	ldr r3, _0206B03C ; =sub_0206B010
	ldr r1, _0206B040 ; =0x0000403F
	bx r3
	nop
_0206B03C: .word sub_0206B010
_0206B040: .word 0x0000403F
	thumb_func_end sub_0206B034

	thumb_func_start sub_0206B044
sub_0206B044: ; 0x0206B044
	ldr r3, _0206B04C ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B050 ; =0x00004030
	bx r3
	; .align 2, 0
_0206B04C: .word sub_0206AFE0
_0206B050: .word 0x00004030
	thumb_func_end sub_0206B044

	thumb_func_start sub_0206B054
sub_0206B054: ; 0x0206B054
	ldr r3, _0206B05C ; =sub_0206B010
	ldr r1, _0206B060 ; =0x00004030
	bx r3
	nop
_0206B05C: .word sub_0206B010
_0206B060: .word 0x00004030
	thumb_func_end sub_0206B054

	thumb_func_start sub_0206B064
sub_0206B064: ; 0x0206B064
	push {r3, lr}
	ldr r1, _0206B084 ; =0x00004030
	bl sub_0206B010
	ldr r2, _0206B088 ; =0x00000183
	cmp r0, r2
	bne _0206B076
	add r2, r2, #3
	b _0206B07E
_0206B076:
	add r1, r2, #3
	cmp r0, r1
	bne _0206B07E
	add r2, r2, #6
_0206B07E:
	add r0, r2, #0
	pop {r3, pc}
	nop
_0206B084: .word 0x00004030
_0206B088: .word 0x00000183
	thumb_func_end sub_0206B064

	thumb_func_start sub_0206B08C
sub_0206B08C: ; 0x0206B08C
	push {r3, lr}
	ldr r1, _0206B0AC ; =0x00004030
	bl sub_0206B010
	ldr r2, _0206B0B0 ; =0x00000183
	cmp r0, r2
	bne _0206B09E
	add r2, r2, #6
	b _0206B0A6
_0206B09E:
	add r1, r2, #3
	cmp r0, r1
	beq _0206B0A6
	add r2, r2, #3
_0206B0A6:
	add r0, r2, #0
	pop {r3, pc}
	nop
_0206B0AC: .word 0x00004030
_0206B0B0: .word 0x00000183
	thumb_func_end sub_0206B08C

	thumb_func_start sub_0206B0B4
sub_0206B0B4: ; 0x0206B0B4
	ldr r3, _0206B0BC ; =sub_0206B010
	ldr r1, _0206B0C0 ; =0x00004035
	bx r3
	nop
_0206B0BC: .word sub_0206B010
_0206B0C0: .word 0x00004035
	thumb_func_end sub_0206B0B4

	thumb_func_start sub_0206B0C4
sub_0206B0C4: ; 0x0206B0C4
	ldr r3, _0206B0CC ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B0D0 ; =0x00004035
	bx r3
	; .align 2, 0
_0206B0CC: .word sub_0206AFE0
_0206B0D0: .word 0x00004035
	thumb_func_end sub_0206B0C4

	thumb_func_start sub_0206B0D4
sub_0206B0D4: ; 0x0206B0D4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206A9D4
	add r0, r4, #0
	mov r1, #0
	bl sub_0206B118
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206B0D4

	thumb_func_start sub_0206B0E8
sub_0206B0E8: ; 0x0206B0E8
	ldr r3, _0206B0F0 ; =sub_0206B010
	ldr r1, _0206B0F4 ; =0x00004033
	bx r3
	nop
_0206B0F0: .word sub_0206B010
_0206B0F4: .word 0x00004033
	thumb_func_end sub_0206B0E8

	thumb_func_start sub_0206B0F8
sub_0206B0F8: ; 0x0206B0F8
	ldr r3, _0206B100 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B104 ; =0x00004033
	bx r3
	; .align 2, 0
_0206B100: .word sub_0206AFE0
_0206B104: .word 0x00004033
	thumb_func_end sub_0206B0F8

	thumb_func_start sub_0206B108
sub_0206B108: ; 0x0206B108
	ldr r3, _0206B110 ; =sub_0206B010
	ldr r1, _0206B114 ; =0x00004034
	bx r3
	nop
_0206B110: .word sub_0206B010
_0206B114: .word 0x00004034
	thumb_func_end sub_0206B108

	thumb_func_start sub_0206B118
sub_0206B118: ; 0x0206B118
	ldr r3, _0206B120 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B124 ; =0x00004034
	bx r3
	; .align 2, 0
_0206B120: .word sub_0206AFE0
_0206B124: .word 0x00004034
	thumb_func_end sub_0206B118

	thumb_func_start sub_0206B128
sub_0206B128: ; 0x0206B128
	push {r4, lr}
	add r4, r0, #0
	bmi _0206B132
	cmp r4, #4
	blo _0206B136
_0206B132:
	bl sub_02022974
_0206B136:
	ldr r0, _0206B140 ; =0x020EFA7C
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	pop {r4, pc}
	nop
_0206B140: .word 0x020EFA7C
	thumb_func_end sub_0206B128

	thumb_func_start sub_0206B144
sub_0206B144: ; 0x0206B144
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B128
	add r2, r0, #0
	ldr r1, _0206B168 ; =0x00004043
	lsl r2, r2, #0x10
	add r1, r4, r1
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0206AFE0
	pop {r3, r4, r5, pc}
	nop
_0206B168: .word 0x00004043
	thumb_func_end sub_0206B144

	thumb_func_start sub_0206B16C
sub_0206B16C: ; 0x0206B16C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _0206B190 ; =0x00004043
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0206B010
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B128
	cmp r5, r0
	bne _0206B18C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206B18C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0206B190: .word 0x00004043
	thumb_func_end sub_0206B16C

	thumb_func_start sub_0206B194
sub_0206B194: ; 0x0206B194
	push {r4, lr}
	add r4, r0, #0
	bmi _0206B19E
	cmp r4, #4
	blt _0206B1A2
_0206B19E:
	bl sub_02022974
_0206B1A2:
	ldr r0, _0206B1AC ; =0x020EFA74
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	pop {r4, pc}
	nop
_0206B1AC: .word 0x020EFA74
	thumb_func_end sub_0206B194

	thumb_func_start sub_0206B1B0
sub_0206B1B0: ; 0x0206B1B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B194
	add r2, r0, #0
	ldr r1, _0206B1D4 ; =0x00004036
	lsl r2, r2, #0x10
	add r1, r4, r1
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0206AFE0
	pop {r3, r4, r5, pc}
	nop
_0206B1D4: .word 0x00004036
	thumb_func_end sub_0206B1B0

	thumb_func_start sub_0206B1D8
sub_0206B1D8: ; 0x0206B1D8
	ldr r2, _0206B1E8 ; =0x00004036
	ldr r3, _0206B1EC ; =sub_0206AFE0
	add r1, r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #0
	bx r3
	nop
_0206B1E8: .word 0x00004036
_0206B1EC: .word sub_0206AFE0
	thumb_func_end sub_0206B1D8

	thumb_func_start sub_0206B1F0
sub_0206B1F0: ; 0x0206B1F0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _0206B214 ; =0x00004036
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0206B010
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206B194
	cmp r5, r0
	bne _0206B210
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206B210:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0206B214: .word 0x00004036
	thumb_func_end sub_0206B1F0

	thumb_func_start sub_0206B218
sub_0206B218: ; 0x0206B218
	ldr r3, _0206B220 ; =sub_0206AFE0
	ldr r1, _0206B224 ; =0x0000403A
	mov r2, #0
	bx r3
	; .align 2, 0
_0206B220: .word sub_0206AFE0
_0206B224: .word 0x0000403A
	thumb_func_end sub_0206B218

	thumb_func_start sub_0206B228
sub_0206B228: ; 0x0206B228
	ldr r3, _0206B230 ; =sub_0206B010
	ldr r1, _0206B234 ; =0x0000403A
	bx r3
	nop
_0206B230: .word sub_0206B010
_0206B234: .word 0x0000403A
	thumb_func_end sub_0206B228

	thumb_func_start sub_0206B238
sub_0206B238: ; 0x0206B238
	push {r4, lr}
	ldr r1, _0206B258 ; =0x0000403A
	add r4, r0, #0
	bl sub_0206B010
	ldr r2, _0206B25C ; =0x00002710
	cmp r0, r2
	bhs _0206B24E
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0206B24E:
	ldr r1, _0206B258 ; =0x0000403A
	add r0, r4, #0
	bl sub_0206AFE0
	pop {r4, pc}
	; .align 2, 0
_0206B258: .word 0x0000403A
_0206B25C: .word 0x00002710
	thumb_func_end sub_0206B238

	thumb_func_start sub_0206B260
sub_0206B260: ; 0x0206B260
	ldr r3, _0206B268 ; =sub_0206B010
	ldr r1, _0206B26C ; =0x0000403B
	bx r3
	nop
_0206B268: .word sub_0206B010
_0206B26C: .word 0x0000403B
	thumb_func_end sub_0206B260

	thumb_func_start sub_0206B270
sub_0206B270: ; 0x0206B270
	ldr r3, _0206B278 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B27C ; =0x0000403B
	bx r3
	; .align 2, 0
_0206B278: .word sub_0206AFE0
_0206B27C: .word 0x0000403B
	thumb_func_end sub_0206B270

	thumb_func_start sub_0206B280
sub_0206B280: ; 0x0206B280
	push {r3, r4, r5, lr}
	add r4, r1, #0
	lsl r2, r4, #0x10
	ldr r1, _0206B2A0 ; =0x0000403C
	lsr r2, r2, #0x10
	add r5, r0, #0
	bl sub_0206AFE0
	lsr r2, r4, #0x10
	lsl r2, r2, #0x10
	ldr r1, _0206B2A0 ; =0x0000403C
	add r0, r5, #0
	lsr r2, r2, #0x10
	bl sub_0206AFE0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0206B2A0: .word 0x0000403C
	thumb_func_end sub_0206B280

	thumb_func_start sub_0206B2A4
sub_0206B2A4: ; 0x0206B2A4
	push {r3, r4, r5, lr}
	ldr r1, _0206B2C0 ; =0x0000403C
	add r5, r0, #0
	bl sub_0206B010
	add r4, r0, #0
	ldr r1, _0206B2C4 ; =0x0000403D
	add r0, r5, #0
	bl sub_0206B010
	lsl r0, r0, #0x10
	orr r0, r4
	pop {r3, r4, r5, pc}
	nop
_0206B2C0: .word 0x0000403C
_0206B2C4: .word 0x0000403D
	thumb_func_end sub_0206B2A4

	thumb_func_start sub_0206B2C8
sub_0206B2C8: ; 0x0206B2C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0201D2E8
	add r4, r0, #0
	bl sub_0201D2E8
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	orr r1, r4
	bl sub_0206B280
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206B2C8

	thumb_func_start sub_0206B2E4
sub_0206B2E4: ; 0x0206B2E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202B4A0
	bl sub_0202B428
	add r2, r0, #0
	ldr r1, _0206B30C ; =0x41C64E6D
	add r0, r4, #0
	mul r2, r1
	ldr r1, _0206B310 ; =0x00003039
	add r1, r2, r1
	bl sub_0206B280
	pop {r3, r4, r5, pc}
	nop
_0206B30C: .word 0x41C64E6D
_0206B310: .word 0x00003039
	thumb_func_end sub_0206B2E4

	thumb_func_start sub_0206B314
sub_0206B314: ; 0x0206B314
	ldr r3, _0206B31C ; =sub_0206B010
	ldr r1, _0206B320 ; =0x00004041
	bx r3
	nop
_0206B31C: .word sub_0206B010
_0206B320: .word 0x00004041
	thumb_func_end sub_0206B314

	thumb_func_start sub_0206B324
sub_0206B324: ; 0x0206B324
	ldr r3, _0206B32C ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B330 ; =0x00004041
	bx r3
	; .align 2, 0
_0206B32C: .word sub_0206AFE0
_0206B330: .word 0x00004041
	thumb_func_end sub_0206B324

	thumb_func_start sub_0206B334
sub_0206B334: ; 0x0206B334
	push {r4, lr}
	bl sub_020507E4
	add r4, r0, #0
	bl sub_0201D2E8
	mov r1, #0x62
	bl sub_020E1F6C
	add r1, r1, #2
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_0206B324
	pop {r4, pc}
	thumb_func_end sub_0206B334

	thumb_func_start sub_0206B354
sub_0206B354: ; 0x0206B354
	ldr r3, _0206B35C ; =sub_0206B010
	ldr r1, _0206B360 ; =0x0000403E
	bx r3
	nop
_0206B35C: .word sub_0206B010
_0206B360: .word 0x0000403E
	thumb_func_end sub_0206B354

	thumb_func_start sub_0206B364
sub_0206B364: ; 0x0206B364
	ldr r3, _0206B36C ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B370 ; =0x0000403E
	bx r3
	; .align 2, 0
_0206B36C: .word sub_0206AFE0
_0206B370: .word 0x0000403E
	thumb_func_end sub_0206B364

	thumb_func_start sub_0206B374
sub_0206B374: ; 0x0206B374
	ldr r3, _0206B37C ; =sub_0206B010
	ldr r1, _0206B380 ; =0x00004049
	bx r3
	nop
_0206B37C: .word sub_0206B010
_0206B380: .word 0x00004049
	thumb_func_end sub_0206B374

	thumb_func_start sub_0206B384
sub_0206B384: ; 0x0206B384
	ldr r3, _0206B38C ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B390 ; =0x00004049
	bx r3
	; .align 2, 0
_0206B38C: .word sub_0206AFE0
_0206B390: .word 0x00004049
	thumb_func_end sub_0206B384

	thumb_func_start sub_0206B394
sub_0206B394: ; 0x0206B394
	ldr r3, _0206B39C ; =sub_0206B010
	ldr r1, _0206B3A0 ; =0x00004040
	bx r3
	nop
_0206B39C: .word sub_0206B010
_0206B3A0: .word 0x00004040
	thumb_func_end sub_0206B394

	thumb_func_start sub_0206B3A4
sub_0206B3A4: ; 0x0206B3A4
	ldr r3, _0206B3AC ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B3B0 ; =0x00004040
	bx r3
	; .align 2, 0
_0206B3AC: .word sub_0206AFE0
_0206B3B0: .word 0x00004040
	thumb_func_end sub_0206B3A4

	thumb_func_start sub_0206B3B4
sub_0206B3B4: ; 0x0206B3B4
	push {r4, lr}
	ldr r1, _0206B3D4 ; =0x00004042
	add r4, r0, #0
	bl sub_0206B010
	ldr r2, _0206B3D8 ; =0x00002710
	cmp r0, r2
	bhs _0206B3CA
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0206B3CA:
	ldr r1, _0206B3D4 ; =0x00004042
	add r0, r4, #0
	bl sub_0206AFE0
	pop {r4, pc}
	; .align 2, 0
_0206B3D4: .word 0x00004042
_0206B3D8: .word 0x00002710
	thumb_func_end sub_0206B3B4

	thumb_func_start sub_0206B3DC
sub_0206B3DC: ; 0x0206B3DC
	ldr r3, _0206B3E4 ; =sub_0206B010
	ldr r1, _0206B3E8 ; =0x00004042
	bx r3
	nop
_0206B3E4: .word sub_0206B010
_0206B3E8: .word 0x00004042
	thumb_func_end sub_0206B3DC

	thumb_func_start sub_0206B3EC
sub_0206B3EC: ; 0x0206B3EC
	ldr r3, _0206B3F4 ; =sub_0206B010
	ldr r1, _0206B3F8 ; =0x00004054
	bx r3
	nop
_0206B3F4: .word sub_0206B010
_0206B3F8: .word 0x00004054
	thumb_func_end sub_0206B3EC

	thumb_func_start sub_0206B3FC
sub_0206B3FC: ; 0x0206B3FC
	ldr r3, _0206B404 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B408 ; =0x00004054
	bx r3
	; .align 2, 0
_0206B404: .word sub_0206AFE0
_0206B408: .word 0x00004054
	thumb_func_end sub_0206B3FC

	thumb_func_start sub_0206B40C
sub_0206B40C: ; 0x0206B40C
	ldr r3, _0206B414 ; =sub_0206B010
	ldr r1, _0206B418 ; =0x00004047
	bx r3
	nop
_0206B414: .word sub_0206B010
_0206B418: .word 0x00004047
	thumb_func_end sub_0206B40C

	thumb_func_start sub_0206B41C
sub_0206B41C: ; 0x0206B41C
	ldr r3, _0206B424 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B428 ; =0x00004047
	bx r3
	; .align 2, 0
_0206B424: .word sub_0206AFE0
_0206B428: .word 0x00004047
	thumb_func_end sub_0206B41C

	thumb_func_start sub_0206B42C
sub_0206B42C: ; 0x0206B42C
	ldr r3, _0206B434 ; =sub_0206B010
	ldr r1, _0206B438 ; =0x00004048
	bx r3
	nop
_0206B434: .word sub_0206B010
_0206B438: .word 0x00004048
	thumb_func_end sub_0206B42C

	thumb_func_start sub_0206B43C
sub_0206B43C: ; 0x0206B43C
	ldr r3, _0206B444 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B448 ; =0x00004048
	bx r3
	; .align 2, 0
_0206B444: .word sub_0206AFE0
_0206B448: .word 0x00004048
	thumb_func_end sub_0206B43C

	thumb_func_start sub_0206B44C
sub_0206B44C: ; 0x0206B44C
	ldr r3, _0206B454 ; =sub_0206B010
	ldr r1, _0206B458 ; =0x0000404A
	bx r3
	nop
_0206B454: .word sub_0206B010
_0206B458: .word 0x0000404A
	thumb_func_end sub_0206B44C

	thumb_func_start sub_0206B45C
sub_0206B45C: ; 0x0206B45C
	ldr r3, _0206B464 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B468 ; =0x0000404A
	bx r3
	; .align 2, 0
_0206B464: .word sub_0206AFE0
_0206B468: .word 0x0000404A
	thumb_func_end sub_0206B45C

	thumb_func_start sub_0206B46C
sub_0206B46C: ; 0x0206B46C
	ldr r3, _0206B474 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B478 ; =0x0000404B
	bx r3
	; .align 2, 0
_0206B474: .word sub_0206AFE0
_0206B478: .word 0x0000404B
	thumb_func_end sub_0206B46C

	thumb_func_start sub_0206B47C
sub_0206B47C: ; 0x0206B47C
	ldr r3, _0206B484 ; =sub_0206B010
	ldr r1, _0206B488 ; =0x0000404B
	bx r3
	nop
_0206B484: .word sub_0206B010
_0206B488: .word 0x0000404B
	thumb_func_end sub_0206B47C

	thumb_func_start sub_0206B48C
sub_0206B48C: ; 0x0206B48C
	add r2, r1, #0
	add r2, r2, #1
	lsl r2, r2, #0x10
	ldr r3, _0206B49C ; =sub_0206AFE0
	ldr r1, _0206B4A0 ; =0x0000404D
	lsr r2, r2, #0x10
	bx r3
	nop
_0206B49C: .word sub_0206AFE0
_0206B4A0: .word 0x0000404D
	thumb_func_end sub_0206B48C

	thumb_func_start sub_0206B4A4
sub_0206B4A4: ; 0x0206B4A4
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
	mov r7, #2
_0206B4AE:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0206AF6C
	cmp r0, #1
	bne _0206B4C2
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_0206B4C2:
	add r4, r4, #1
	cmp r4, #0x14
	blt _0206B4AE
	cmp r5, #0xc
	blo _0206B4D0
	mov r4, #2
	b _0206B4DA
_0206B4D0:
	cmp r5, #8
	blo _0206B4D8
	mov r4, #1
	b _0206B4DA
_0206B4D8:
	mov r4, #0
_0206B4DA:
	bl sub_0201D2E8
	mov r1, #0x64
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0206B50C ; =0x020EFA70
	ldrb r0, [r0, r4]
	cmp r1, r0
	ble _0206B4F4
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_0206B4F4:
	bl sub_0201D2E8
	ldr r1, _0206B510 ; =0x020EFA6C
	ldrb r1, [r1, r4]
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206B50C: .word 0x020EFA70
_0206B510: .word 0x020EFA6C
	thumb_func_end sub_0206B4A4

	thumb_func_start sub_0206B514
sub_0206B514: ; 0x0206B514
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020507E4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203A790
	bl sub_0203A720
	ldr r1, [r0, #0]
	ldr r0, _0206B554 ; =0x000001C9
	cmp r1, r0
	beq _0206B550
	add r0, r0, #7
	cmp r1, r0
	beq _0206B550
	add r0, r4, #0
	bl sub_0206AF90
	add r0, r4, #0
	bl sub_0206AFA0
	add r0, r4, #0
	bl sub_0206B4A4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206B558
_0206B550:
	pop {r3, r4, r5, pc}
	nop
_0206B554: .word 0x000001C9
	thumb_func_end sub_0206B514

	thumb_func_start sub_0206B558
sub_0206B558: ; 0x0206B558
	push {r4, lr}
	add r2, r1, #0
	ldr r1, _0206B580 ; =0x0000404E
	add r4, r0, #0
	bl sub_0206AFE0
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	add r2, r1, #0
	lsl r2, r2, #0x10
	ldr r1, _0206B584 ; =0x0000405A
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl sub_0206AFE0
	pop {r4, pc}
	nop
_0206B580: .word 0x0000404E
_0206B584: .word 0x0000405A
	thumb_func_end sub_0206B558

	thumb_func_start sub_0206B588
sub_0206B588: ; 0x0206B588
	ldr r3, _0206B590 ; =sub_0206B010
	ldr r1, _0206B594 ; =0x00004050
	bx r3
	nop
_0206B590: .word sub_0206B010
_0206B594: .word 0x00004050
	thumb_func_end sub_0206B588

	thumb_func_start sub_0206B598
sub_0206B598: ; 0x0206B598
	ldr r3, _0206B5A0 ; =sub_0206B010
	ldr r1, _0206B5A4 ; =0x00004051
	bx r3
	nop
_0206B5A0: .word sub_0206B010
_0206B5A4: .word 0x00004051
	thumb_func_end sub_0206B598

	thumb_func_start sub_0206B5A8
sub_0206B5A8: ; 0x0206B5A8
	ldr r3, _0206B5B0 ; =sub_0206B010
	ldr r1, _0206B5B4 ; =0x00004052
	bx r3
	nop
_0206B5B0: .word sub_0206B010
_0206B5B4: .word 0x00004052
	thumb_func_end sub_0206B5A8

	thumb_func_start sub_0206B5B8
sub_0206B5B8: ; 0x0206B5B8
	ldr r3, _0206B5C0 ; =sub_0206B010
	ldr r1, _0206B5C4 ; =0x00004053
	bx r3
	nop
_0206B5C0: .word sub_0206B010
_0206B5C4: .word 0x00004053
	thumb_func_end sub_0206B5B8

	thumb_func_start sub_0206B5C8
sub_0206B5C8: ; 0x0206B5C8
	ldr r3, _0206B5D0 ; =sub_0206B010
	ldr r1, _0206B5D4 ; =0x0000404F
	bx r3
	nop
_0206B5D0: .word sub_0206B010
_0206B5D4: .word 0x0000404F
	thumb_func_end sub_0206B5C8

	thumb_func_start sub_0206B5D8
sub_0206B5D8: ; 0x0206B5D8
	ldr r3, _0206B5E0 ; =sub_0206B010
	ldr r1, _0206B5E4 ; =0x00004055
	bx r3
	nop
_0206B5E0: .word sub_0206B010
_0206B5E4: .word 0x00004055
	thumb_func_end sub_0206B5D8

	thumb_func_start sub_0206B5E8
sub_0206B5E8: ; 0x0206B5E8
	ldr r3, _0206B5F0 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B5F4 ; =0x00004055
	bx r3
	; .align 2, 0
_0206B5F0: .word sub_0206AFE0
_0206B5F4: .word 0x00004055
	thumb_func_end sub_0206B5E8

	thumb_func_start sub_0206B5F8
sub_0206B5F8: ; 0x0206B5F8
	ldr r3, _0206B600 ; =sub_0206B010
	ldr r1, _0206B604 ; =0x00004056
	bx r3
	nop
_0206B600: .word sub_0206B010
_0206B604: .word 0x00004056
	thumb_func_end sub_0206B5F8

	thumb_func_start sub_0206B608
sub_0206B608: ; 0x0206B608
	ldr r3, _0206B610 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B614 ; =0x00004056
	bx r3
	; .align 2, 0
_0206B610: .word sub_0206AFE0
_0206B614: .word 0x00004056
	thumb_func_end sub_0206B608

	thumb_func_start sub_0206B618
sub_0206B618: ; 0x0206B618
	ldr r3, _0206B620 ; =sub_0206B010
	ldr r1, _0206B624 ; =0x00004057
	bx r3
	nop
_0206B620: .word sub_0206B010
_0206B624: .word 0x00004057
	thumb_func_end sub_0206B618

	thumb_func_start sub_0206B628
sub_0206B628: ; 0x0206B628
	ldr r3, _0206B630 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B634 ; =0x00004057
	bx r3
	; .align 2, 0
_0206B630: .word sub_0206AFE0
_0206B634: .word 0x00004057
	thumb_func_end sub_0206B628

	thumb_func_start sub_0206B638
sub_0206B638: ; 0x0206B638
	ldr r3, _0206B640 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B644 ; =0x00004058
	bx r3
	; .align 2, 0
_0206B640: .word sub_0206AFE0
_0206B644: .word 0x00004058
	thumb_func_end sub_0206B638

	thumb_func_start sub_0206B648
sub_0206B648: ; 0x0206B648
	ldr r3, _0206B650 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B654 ; =0x00004059
	bx r3
	; .align 2, 0
_0206B650: .word sub_0206AFE0
_0206B654: .word 0x00004059
	thumb_func_end sub_0206B648

	thumb_func_start sub_0206B658
sub_0206B658: ; 0x0206B658
	ldr r3, _0206B660 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B664 ; =0x0000405E
	bx r3
	; .align 2, 0
_0206B660: .word sub_0206AFE0
_0206B664: .word 0x0000405E
	thumb_func_end sub_0206B658

	thumb_func_start sub_0206B668
sub_0206B668: ; 0x0206B668
	ldr r3, _0206B670 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B674 ; =0x0000405F
	bx r3
	; .align 2, 0
_0206B670: .word sub_0206AFE0
_0206B674: .word 0x0000405F
	thumb_func_end sub_0206B668

	thumb_func_start sub_0206B678
sub_0206B678: ; 0x0206B678
	ldr r3, _0206B680 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B684 ; =0x00004060
	bx r3
	; .align 2, 0
_0206B680: .word sub_0206AFE0
_0206B684: .word 0x00004060
	thumb_func_end sub_0206B678

	thumb_func_start sub_0206B688
sub_0206B688: ; 0x0206B688
	push {r3, lr}
	ldr r3, _0206B6D8 ; =0x000001E1
	cmp r1, r3
	bgt _0206B6A6
	bge _0206B6AE
	cmp r1, #0x92
	bgt _0206B6D4
	cmp r1, #0x90
	blt _0206B6D4
	beq _0206B6CE
	cmp r1, #0x91
	beq _0206B6C6
	cmp r1, #0x92
	beq _0206B6BE
	pop {r3, pc}
_0206B6A6:
	add r3, r3, #7
	cmp r1, r3
	beq _0206B6B6
	pop {r3, pc}
_0206B6AE:
	add r1, r2, #0
	bl sub_0206B648
	pop {r3, pc}
_0206B6B6:
	add r1, r2, #0
	bl sub_0206B638
	pop {r3, pc}
_0206B6BE:
	add r1, r2, #0
	bl sub_0206B658
	pop {r3, pc}
_0206B6C6:
	add r1, r2, #0
	bl sub_0206B668
	pop {r3, pc}
_0206B6CE:
	add r1, r2, #0
	bl sub_0206B678
_0206B6D4:
	pop {r3, pc}
	nop
_0206B6D8: .word 0x000001E1
	thumb_func_end sub_0206B688

	thumb_func_start sub_0206B6DC
sub_0206B6DC: ; 0x0206B6DC
	ldr r3, _0206B6E4 ; =sub_0206B010
	ldr r1, _0206B6E8 ; =0x0000405B
	bx r3
	nop
_0206B6E4: .word sub_0206B010
_0206B6E8: .word 0x0000405B
	thumb_func_end sub_0206B6DC

	thumb_func_start sub_0206B6EC
sub_0206B6EC: ; 0x0206B6EC
	ldr r3, _0206B6F4 ; =sub_0206AFE0
	add r2, r1, #0
	ldr r1, _0206B6F8 ; =0x0000405B
	bx r3
	; .align 2, 0
_0206B6F4: .word sub_0206AFE0
_0206B6F8: .word 0x0000405B
	thumb_func_end sub_0206B6EC

	thumb_func_start sub_0206B6FC
sub_0206B6FC: ; 0x0206B6FC
	ldr r3, _0206B704 ; =sub_0206B010
	ldr r1, _0206B708 ; =0x00004064
	bx r3
	nop
_0206B704: .word sub_0206B010
_0206B708: .word 0x00004064
	thumb_func_end sub_0206B6FC

	.rodata


	.global Unk_020EFA6C
Unk_020EFA6C: ; 0x020EFA6C
	.incbin "incbin/arm9_rodata.bin", 0xAE2C, 0xAE30 - 0xAE2C

	.global Unk_020EFA70
Unk_020EFA70: ; 0x020EFA70
	.incbin "incbin/arm9_rodata.bin", 0xAE30, 0xAE34 - 0xAE30

	.global Unk_020EFA74
Unk_020EFA74: ; 0x020EFA74
	.incbin "incbin/arm9_rodata.bin", 0xAE34, 0xAE3C - 0xAE34

	.global Unk_020EFA7C
Unk_020EFA7C: ; 0x020EFA7C
	.incbin "incbin/arm9_rodata.bin", 0xAE3C, 0x8

