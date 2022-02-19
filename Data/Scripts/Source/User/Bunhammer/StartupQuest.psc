Scriptname Bunhammer:StartupQuest extends Quest

ObjectReference Property Bunhammer_SpawnMarker Auto Const Mandatory
LeveledItem Property Bunhammer_Weapon Auto Const Mandatory
ObjectMod Property Bunhammer_Weapon_Mod Auto Const Mandatory

ObjectReference weaponRef = None

Event OnQuestInit()
	weaponRef = Bunhammer_SpawnMarker.PlaceAtMe(Bunhammer_Weapon, 1, false, true, false)
	weaponRef.AttachMod(Bunhammer_Weapon_Mod)
	weaponRef.Enable()
EndEvent
