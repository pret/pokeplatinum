	.include "macros/function.inc"
	.include "include/unk_02025E08.inc"

	

	.text


	thumb_func_start sub_02025E08
sub_02025E08: ; 0x02025E08
	mov r0, #0x2c
	bx lr
	thumb_func_end sub_02025E08

	thumb_func_start sub_02025E0C
sub_02025E0C: ; 0x02025E0C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x2c
	bl MIi_CpuClearFast
	add r0, r4, #0
	bl sub_02027A1C
	add r0, r4, #4
	bl sub_02025E8C
	add r0, r4, #0
	add r0, #0x24
	bl sub_0202B594
	add r4, #0x26
	add r0, r4, #0
	bl sub_0202CBE4
	pop {r4, pc}
	thumb_func_end sub_02025E0C

	thumb_func_start sub_02025E38
sub_02025E38: ; 0x02025E38
	push {r3, lr}
	mov r1, #1
	bl sub_020245BC
	add r0, r0, #4
	pop {r3, pc}
	thumb_func_end sub_02025E38

	thumb_func_start sub_02025E44
sub_02025E44: ; 0x02025E44
	ldr r3, _02025E4C ; =sub_020245BC
	mov r1, #1
	bx r3
	nop
_02025E4C: .word sub_020245BC
	thumb_func_end sub_02025E44

	thumb_func_start sub_02025E50
sub_02025E50: ; 0x02025E50
	push {r3, lr}
	mov r1, #1
	bl sub_020245BC
	add r0, #0x24
	pop {r3, pc}
	thumb_func_end sub_02025E50

	thumb_func_start sub_02025E5C
sub_02025E5C: ; 0x02025E5C
	push {r3, lr}
	mov r1, #1
	bl sub_020245BC
	add r0, #0x26
	pop {r3, pc}
	thumb_func_end sub_02025E5C