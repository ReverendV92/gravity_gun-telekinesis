
$opaque
$origin 0 0 66

//$modelname "jessev92/weapons/telekinesis_c.mdl"
//$modelname "weapons/v_physcannon.mdl"
$modelname "weapons/v_superphyscannon.mdl"
$include c_arms_definebones.qci // include c_arms_definebones.qci in your model to ensure bones don't disappear.
$model "Telekinesis" "demo.smd"
$model	HEV	"arm-hev"

$cdmaterials "models/jessev92"
$cdmaterials "models\weapons\v_hand\"
$hboxset "default"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 4 -2 0 rotate 0 0 0
$attachment "fork1b" "ValveBiped.Bip01_R_Finger0" 0 0 0 rotate 0 0 0
$attachment "fork1m" "ValveBiped.Bip01_R_Finger01" 0 0 0 rotate 0 0 0
$attachment "fork1t" "ValveBiped.Bip01_R_Finger02" 1 0 0 rotate 0 0 0
$attachment "fork2b" "ValveBiped.Bip01_R_Finger1" 0 0 0 rotate 0 0 0
$attachment "fork2m" "ValveBiped.Bip01_R_Finger11" 0 0 0 rotate 0 0 0
$attachment "fork2t" "ValveBiped.Bip01_R_Finger12" 1 0 0 rotate 0 0 0
$attachment "fork3b" "ValveBiped.Bip01_R_Finger2" 0 0 0 rotate 0 0 0
$attachment "fork3m" "ValveBiped.Bip01_R_Finger21" 0 0 0 rotate 0 0 0
$attachment "fork3t" "ValveBiped.Bip01_R_Finger22" 1 0 0 rotate 0 0 0
$attachment "fork4b" "ValveBiped.Bip01_R_Finger3" 0 0 0 rotate 0 0 0
$attachment "fork4m" "ValveBiped.Bip01_R_Finger31" 0 0 0 rotate 0 0 0
$attachment "fork4t" "ValveBiped.Bip01_R_Finger32" 1 0 0 rotate 0 0 0
$attachment "fork5b" "ValveBiped.Bip01_R_Finger4" 0 0 0 rotate 0 0 0
$attachment "fork5m" "ValveBiped.Bip01_R_Finger41" 0 0 0 rotate 0 0 0
$attachment "fork5t" "ValveBiped.Bip01_R_Finger42" 1 0 0 rotate 0 0 0

$attachment "muzzle" "ValveBiped.Bip01_L_Hand" 4 -2 0 rotate 0 0 0
$attachment "fork6b" "ValveBiped.Bip01_L_Finger0" 0 0 0 rotate 0 0 0
$attachment "fork6m" "ValveBiped.Bip01_L_Finger01" 0 0 0 rotate 0 0 0
$attachment "fork6t" "ValveBiped.Bip01_L_Finger02" 1.5 0 0 rotate 0 0 0
$attachment "fork7b" "ValveBiped.Bip01_L_Finger1" 0 0 0 rotate 0 0 0
$attachment "fork7m" "ValveBiped.Bip01_L_Finger11" 0 0 0 rotate 0 0 0
$attachment "fork7t" "ValveBiped.Bip01_L_Finger12" 1.5 0 0 rotate 0 0 0
$attachment "fork8b" "ValveBiped.Bip01_L_Finger2" 0 0 0 rotate 0 0 0
$attachment "fork8m" "ValveBiped.Bip01_L_Finger21" 0 0 0 rotate 0 0 0
$attachment "fork8t" "ValveBiped.Bip01_L_Finger22" 1.5 0 0 rotate 0 0 0
$attachment "fork9b" "ValveBiped.Bip01_L_Finger3" 0 0 0 rotate 0 0 0
$attachment "fork9m" "ValveBiped.Bip01_L_Finger31" 0 0 0 rotate 0 0 0
$attachment "fork9t" "ValveBiped.Bip01_L_Finger32" 1.5 0 0 rotate 0 0 0
$attachment "fork10b" "ValveBiped.Bip01_L_Finger4" 0 0 0 rotate 0 0 0
$attachment "fork10m" "ValveBiped.Bip01_L_Finger41" 0 0 0 rotate 0 0 0
$attachment "fork10t" "ValveBiped.Bip01_L_Finger42" 1.5 0 0 rotate 0 0 0

// Inverse kinematics stuff
$ikchain rhand "ValveBiped.Bip01_R_Hand" Z 0 knee 0.707 0.707 0
$ikchain lhand "ValveBiped.Bip01_L_Hand" Z 0 knee 0.707 0.707 0

//$attachment "Camera" "Camera_Bone" 0.00 0.00 0.00 rotate -0.00 -90.00 0.00

$surfaceprop "default"

$illumposition 2.673 0.000 -9.380

$sequence "idle" "idle.smd" {
	fps 1
	activity "ACT_VM_IDLE" 1
	loop
}

$sequence "hold_idle" "grabidle.smd" {
	fps 1
	activity "ACT_VM_RELOAD" 1
	loop
}

$sequence "draw" "draw.smd" {
	fps 8
	activity "ACT_VM_DRAW" 1
	//snap
}

$sequence "holster" "holster.smd" {
	fps 8
	activity "ACT_VM_HOLSTER" 1
}

$sequence "fire" "throw.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	//snap
}

$sequence "altfire" "grab.smd" {
	fps 16
	activity "ACT_VM_SECONDARYATTACK" 1
	//snap
}

$sequence "drop" "drop.smd" {
	fps 8
	activity "ACT_VM_SECONDARYATTACK" 1
	//snap
}

$sequence Sprint "Sprint" loop ACT_VM_PRIMARYATTACK_2 1 fps 30.00

$sequence Generic_Use "Generic_Use" ACT_VM_DEPLOY_2 1 fps 38.00 {
  { event AE_CL_PLAYSOUND 8 "Mag_Gen.Use" }
}

$sequence ClimbLedge "ClimbLedge" ACT_VM_PRIMARYATTACK_8 1 fps 30.00
$sequence ClimbLadder "ClimbLedge" loop ACT_VM_PRIMARYATTACK_9 1 fps 60
