	.include "macros/function.inc"

	.extern NNSi_G3dSendJointSRTBasic
	.extern NNSi_G3dSendJointSRTMaya
	.extern NNSi_G3dSendJointSRTSi3d
	.extern NNSi_G3dGetJointScaleBasic
	.extern NNSi_G3dGetJointScaleMaya
	.extern NNSi_G3dGetJointScaleSi3d
	.extern NNSi_G3dSendTexSRTMaya
	.extern NNSi_G3dSendTexSRTSi3d
	.extern NNSi_G3dSendTexSRT3dsMax
	.extern NNSi_G3dSendTexSRTXsi

	.data


	.global Unk_02100F3C
Unk_02100F3C: ; 0x02100F3C
	.word NNSi_G3dSendJointSRTBasic
	.word NNSi_G3dSendJointSRTMaya
	.word NNSi_G3dSendJointSRTSi3d

	.global Unk_02100F48
Unk_02100F48: ; 0x02100F48
	.word NNSi_G3dGetJointScaleBasic
	.word NNSi_G3dGetJointScaleMaya
	.word NNSi_G3dGetJointScaleSi3d

	.global Unk_02100F54
Unk_02100F54: ; 0x02100F54
	.word NNSi_G3dSendTexSRTMaya
	.word NNSi_G3dSendTexSRTSi3d
	.word NNSi_G3dSendTexSRT3dsMax
	.word NNSi_G3dSendTexSRTXsi

