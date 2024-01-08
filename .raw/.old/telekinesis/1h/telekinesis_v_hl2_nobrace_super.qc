
$opaque
$origin 5 -3 66

//$modelname v92/weapons/telekinesis_c
$modelname weapons/v_superphyscannon
$include c_arms_definebones.qci
$model "Telekinesis" demo
$model	HEV	"arm-hev"

$cdmaterials models/v92/weapons/telekinesis
$cdmaterials models/weapons/v_hand
$hboxset default

// $attachment "muzzle" "ValveBiped.Bip01_R_Hand" 4 -2 0 rotate 0 0 0
// $attachment "fork1b" "ValveBiped.Bip01_R_Finger1" 0 0 0 rotate 0 0 0
// $attachment "fork1m" "ValveBiped.Bip01_R_Finger11" 0 0 0 rotate 0 0 0
// $attachment "fork1t" "ValveBiped.Bip01_R_Finger12" 1 0 0 rotate 0 0 0
// $attachment "fork2b" "ValveBiped.Bip01_R_Finger0" 0 0 0 rotate 0 0 0
// $attachment "fork2m" "ValveBiped.Bip01_R_Finger01" 0 0 0 rotate 0 0 0
// $attachment "fork2t" "ValveBiped.Bip01_R_Finger02" 1.5 0 0 rotate 0 0 0
$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 4 -2 90 rotate 0 0 0
$attachment "fork1b" "ValveBiped.Bip01_R_Finger1" 0 0 90 rotate 0 0 0
$attachment "fork1m" "ValveBiped.Bip01_R_Finger11" 0 0 90 rotate 0 0 0
$attachment "fork1t" "ValveBiped.Bip01_R_Finger12" 1 0 90 rotate 0 0 0
$attachment "fork2b" "ValveBiped.Bip01_R_Finger0" 0 0 90 rotate 0 0 0
$attachment "fork2m" "ValveBiped.Bip01_R_Finger01" 0 0 90 rotate 0 0 0
$attachment "fork2t" "ValveBiped.Bip01_R_Finger02" 1.5 0 90 rotate 0 0 0

$ikchain rhand "ValveBiped.Bip01_R_Hand" Z 0 knee 0.707 0.707 0
$ikchain lhand "ValveBiped.Bip01_L_Hand" Z 0 knee 0.707 0.707 0

$surfaceprop no_decal

$illumposition 2.673 0 -9.38

$sequence idle idle_nobrace {
	fps 1
	activity ACT_VM_IDLE 1
	loop
}

$sequence hold_idle grabidle_nobrace {
	fps 1
	activity ACT_VM_RELOAD 1
	loop
}

$sequence draw draw_nobrace {
	fps 8
	activity ACT_VM_DRAW 1
}

$sequence holster holster_nobrace {
	fps 8
	activity ACT_VM_HOLSTER 1
}

$sequence fire throw_nobrace {
	fps 30
	activity ACT_VM_PRIMARYATTACK 1
}

$sequence altfire grab_nobrace {
	fps 16
	activity ACT_VM_SECONDARYATTACK 1
}

$sequence drop drop_nobrace {
	fps 8
	activity ACT_VM_SECONDARYATTACK 1
}

// $sequence Sprint "Sprint" loop ACT_VM_PRIMARYATTACK_2 1 fps 30.00

// $sequence Generic_Use "Generic_Use" ACT_VM_DEPLOY_2 1 fps 38.00 {
  // { event AE_CL_PLAYSOUND 8 "Mag_Gen.Use" }
// }

// $sequence ClimbLedge "ClimbLedge" ACT_VM_PRIMARYATTACK_8 1 fps 30.00
// $sequence ClimbLadder "ClimbLedge" loop ACT_VM_PRIMARYATTACK_9 1 fps 60
