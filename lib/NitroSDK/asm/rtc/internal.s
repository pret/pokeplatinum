	.include "macros/function.inc"
	.include "include/internal.inc"

	

	.text


	arm_func_start RTCi_ReadRawDateTimeAsync
RTCi_ReadRawDateTimeAsync: ; 0x020CC104
	ldr ip, _020CC110 ; =RtcSendPxiCommand
	mov r0, #0x10
	bx ip
	; .align 2, 0
_020CC110: .word RtcSendPxiCommand
	arm_func_end RTCi_ReadRawDateTimeAsync

	arm_func_start RTCi_ReadRawDateAsync
RTCi_ReadRawDateAsync: ; 0x020CC114
	ldr ip, _020CC120 ; =RtcSendPxiCommand
	mov r0, #0x11
	bx ip
	; .align 2, 0
_020CC120: .word RtcSendPxiCommand
	arm_func_end RTCi_ReadRawDateAsync

	arm_func_start RTCi_ReadRawTimeAsync
RTCi_ReadRawTimeAsync: ; 0x020CC124
	ldr ip, _020CC130 ; =RtcSendPxiCommand
	mov r0, #0x12
	bx ip
	; .align 2, 0
_020CC130: .word RtcSendPxiCommand
	arm_func_end RTCi_ReadRawTimeAsync

	arm_func_start RTCi_WriteRawStatus2Async
RTCi_WriteRawStatus2Async: ; 0x020CC134
	ldr ip, _020CC140 ; =RtcSendPxiCommand
	mov r0, #0x27
	bx ip
	; .align 2, 0
_020CC140: .word RtcSendPxiCommand
	arm_func_end RTCi_WriteRawStatus2Async

	arm_func_start RtcSendPxiCommand
RtcSendPxiCommand: ; 0x020CC144
	stmfd sp!, {r3, lr}
	mov r0, r0, lsl #8
	and r1, r0, #0x7f00
	mov r0, #5
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end RtcSendPxiCommand