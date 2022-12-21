	.include "macros/function.inc"
	.include "include/unk_020474B8.inc"

	

	.text


	thumb_func_start sub_020474B8
sub_020474B8: ; 0x020474B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	lsl r2, r2, #0x18
	ldr r0, [r6, #0]
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl sub_0200B824
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020474B8

	thumb_func_start sub_020474F4
sub_020474F4: ; 0x020474F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0xf
	add r0, r6, #0
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r4, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r5, [r1]
	add r0, r6, #0
	bl sub_0203D174
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_0200B498
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020474F4

	thumb_func_start sub_02047528
sub_02047528: ; 0x02047528
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #0xf
	add r0, r4, #0
	bl sub_0203F098
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	ldr r2, [r4, #0xc]
	bl sub_0200B4BC
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02047528

	thumb_func_start sub_0204754C
sub_0204754C: ; 0x0204754C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	mov r1, #0xf
	add r0, r4, #0
	bl sub_0203F098
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	ldr r2, [r4, #0xc]
	bl sub_0200B4E4
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204754C

	thumb_func_start sub_02047570
sub_02047570: ; 0x02047570
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0xf
	add r0, r6, #0
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	add r2, r0, #0
	ldr r0, [r7, #0]
	add r1, r4, #0
	bl sub_0200B538
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02047570

	thumb_func_start sub_020475B8
sub_020475B8: ; 0x020475B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B7EC
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020475B8

	thumb_func_start sub_020475F0
sub_020475F0: ; 0x020475F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B70C
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020475F0

	thumb_func_start sub_02047628
sub_02047628: ; 0x02047628
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B7B4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047628

	thumb_func_start sub_02047660
sub_02047660: ; 0x02047660
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	bl sub_0207D268
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B630
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047660

	thumb_func_start sub_0204769C
sub_0204769C: ; 0x0204769C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B630
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204769C

	thumb_func_start sub_020476D4
sub_020476D4: ; 0x020476D4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	bl sub_0205DFC4
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200B60C
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020476D4

	thumb_func_start sub_0204771C
sub_0204771C: ; 0x0204771C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r6, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp, #8]
	ldr r1, [r5, #8]
	add r2, r1, #1
	str r2, [r5, #8]
	ldrb r4, [r1]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r3, [r2]
	cmp r4, #0
	bne _02047764
	bl sub_0205DFC4
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
_02047764:
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	ldr r2, [sp, #8]
	add r1, r6, #0
	bl sub_0200B60C
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204771C

	thumb_func_start sub_0204777C
sub_0204777C: ; 0x0204777C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r6, [r1]
	bl sub_0203E850
	ldr r1, [r5, #8]
	str r0, [sp, #8]
	add r2, r1, #1
	str r2, [r5, #8]
	ldrb r4, [r1]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r3, [r2]
	cmp r4, #0
	bne _020477B8
	bl sub_0205DFC4
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
_020477B8:
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	ldr r2, [sp, #8]
	add r1, r6, #0
	bl sub_0200B60C
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0204777C

	thumb_func_start sub_020477D0
sub_020477D0: ; 0x020477D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0xf
	add r0, r6, #0
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	add r2, r0, #0
	ldr r0, [r7, #0]
	add r1, r4, #0
	bl sub_0200B5CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020477D0

	thumb_func_start sub_02047818
sub_02047818: ; 0x02047818
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0, #0]
	ldr r0, [r4, #0xc]
	bl sub_02024420
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r5, r0, #0
	mov r1, #0x1e
	bl sub_020E1F6C
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x1e
	bl sub_020E1F6C
	add r2, r1, #0
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02079C9C
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B5CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02047818

	thumb_func_start sub_02047874
sub_02047874: ; 0x02047874
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B928
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047874

	thumb_func_start sub_020478AC
sub_020478AC: ; 0x020478AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B960
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020478AC

	thumb_func_start sub_020478E4
sub_020478E4: ; 0x020478E4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x80
	ldr r5, [r0, #0]
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02025E38
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r7, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r7, #8]
	add r0, r4, #0
	ldrb r5, [r1]
	bl sub_02025F30
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02025F8C
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #2
	bl sub_0205CA14
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r5, #0
	bl sub_0200B998
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020478E4

	thumb_func_start sub_02047930
sub_02047930: ; 0x02047930
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	ldr r1, [r5, #8]
	str r0, [sp, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r5, [r1]
	add r0, r6, #0
	mov r1, #4
	bl sub_02047998
	add r6, r0, #0
	str r5, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	ldr r3, [sp, #8]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200B48C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02047930

	thumb_func_start sub_02047998
sub_02047998: ; 0x02047998
	push {r3, r4, r5, lr}
	mov r2, #0x67
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
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
	thumb_func_end sub_02047998

	thumb_func_start sub_020479C0
sub_020479C0: ; 0x020479C0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r4, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r4, #0x80
	ldr r0, [r4, #0]
	ldrb r5, [r1]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B054
	mov r1, #4
	bl sub_02047998
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020479C0

	thumb_func_start sub_02047A10
sub_02047A10: ; 0x02047A10
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r4, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r4, #0x80
	ldr r0, [r4, #0]
	ldrb r5, [r1]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B064
	mov r1, #4
	bl sub_02047998
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02047A10

	thumb_func_start sub_02047A60
sub_02047A60: ; 0x02047A60
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r4, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r4, #0x80
	ldr r0, [r4, #0]
	ldrb r5, [r1]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B08C
	mov r1, #4
	bl sub_02047998
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02047A60

	thumb_func_start sub_02047AB0
sub_02047AB0: ; 0x02047AB0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BC80
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047AB0

	thumb_func_start sub_02047AE8
sub_02047AE8: ; 0x02047AE8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BB04
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047AE8

	thumb_func_start sub_02047B20
sub_02047B20: ; 0x02047B20
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BA94
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047B20

	thumb_func_start sub_02047B58
sub_02047B58: ; 0x02047B58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x16
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r6, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	mov r1, #4
	add r2, r4, #0
	bl sub_02071D10
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02047B58

	thumb_func_start sub_02047BB8
sub_02047BB8: ; 0x02047BB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r4, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r0, r4, #0
	ldrb r6, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	sub r5, #0x95
	add r4, r0, #0
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x20
	bl sub_0209742C
	add r5, r0, #0
	cmp r4, #2
	bhs _02047C0E
	mov r0, #1
	b _02047C10
_02047C0E:
	mov r0, #0
_02047C10:
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02047BB8

	thumb_func_start sub_02047C30
sub_02047C30: ; 0x02047C30
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B6D8
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047C30

	thumb_func_start sub_02047C68
sub_02047C68: ; 0x02047C68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BFAC
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047C68

	thumb_func_start sub_02047CA0
sub_02047CA0: ; 0x02047CA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	mov r0, #0xb
	ldrb r6, [r1]
	add r1, r0, #0
	bl sub_02023790
	add r5, #0x80
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202783C
	bl sub_02027894
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023D28
	ldr r0, _02047CFC ; =0x020E4C44
	mov r3, #0
	ldrb r0, [r0]
	str r3, [sp]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	add r2, r4, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02047CFC: .word 0x020E4C44
	thumb_func_end sub_02047CA0

	thumb_func_start sub_02047D00
sub_02047D00: ; 0x02047D00
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r6, [r0, #0]
	mov r1, #0xf
	add r0, r6, #0
	bl sub_0203F098
	ldr r1, [r4, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r0, r4, #0
	ldrb r5, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	str r0, [sp]
	add r0, r4, #0
	bl sub_0203E838
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203F150
	add r4, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_0207A268
	ldr r1, [sp]
	bl sub_0207A0FC
	add r4, #0x36
	add r1, r4, #0
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r7, #0]
	add r1, r5, #0
	bl sub_0200B630
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02047D00

	thumb_func_start sub_02047D68
sub_02047D68: ; 0x02047D68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #3
	bl sub_020923C0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B668
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047D68

	thumb_func_start sub_02047DAC
sub_02047DAC: ; 0x02047DAC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	sub r2, r2, #1
	lsl r2, r2, #0x10
	ldr r0, [r6, #0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl sub_0200BE64
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02047DAC

	thumb_func_start sub_02047DE8
sub_02047DE8: ; 0x02047DE8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BA08
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047DE8

	thumb_func_start sub_02047E20
sub_02047E20: ; 0x02047E20
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B744
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047E20

	thumb_func_start sub_02047E58
sub_02047E58: ; 0x02047E58
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B77C
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047E58

	thumb_func_start sub_02047E90
sub_02047E90: ; 0x02047E90
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BCB8
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047E90

	thumb_func_start sub_02047EC8
sub_02047EC8: ; 0x02047EC8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BB3C
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047EC8

	thumb_func_start sub_02047F00
sub_02047F00: ; 0x02047F00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BACC
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047F00

	thumb_func_start sub_02047F38
sub_02047F38: ; 0x02047F38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	ldr r0, [r5, #8]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r5, #8]
	ldr r0, [r6, #0]
	add r2, r7, #0
	bl sub_0200B594
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02047F38

	thumb_func_start sub_02047F80
sub_02047F80: ; 0x02047F80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r5, #0x80
	ldr r0, [r5, #0]
	ldrb r4, [r1]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206B08C
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B594
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02047F80

	thumb_func_start sub_02047FB4
sub_02047FB4: ; 0x02047FB4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200BFE4
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047FB4

	thumb_func_start sub_02047FEC
sub_02047FEC: ; 0x02047FEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_0200B998
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02047FEC

	thumb_func_start sub_02048024
sub_02048024: ; 0x02048024
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F150
	add r2, r0, #0
	sub r2, r2, #1
	lsl r2, r2, #0x10
	ldr r0, [r6, #0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl sub_0200BE98
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02048024

	thumb_func_start sub_02048060
sub_02048060: ; 0x02048060
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	ldr r0, [r0, #0]
	bl sub_0200C324
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02048060

	thumb_func_start sub_02048080
sub_02048080: ; 0x02048080
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl sub_0203F098
	ldr r1, [r4, #8]
	add r3, r1, #1
	str r3, [r4, #8]
	ldrb r1, [r1]
	add r2, r3, #1
	str r2, [r4, #8]
	ldrb r2, [r3]
	ldr r0, [r0, #0]
	bl sub_0200C338
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02048080