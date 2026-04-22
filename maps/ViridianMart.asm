	object_const_def
	const VIRIDIANMART_CLERK

ViridianMart_MapScripts:
	def_scene_scripts
	scene_script ViridianMartOaksParcelScene, SCENE_VIRIDIANMART_GET_OAKS_PARCEL
	scene_script ViridianMartNoop2Scene,      SCENE_VIRIDIANMART_NOOP

	def_callbacks

ViridianMartOaksParcelScene:
	showemote EMOTE_SHOCK, VIRIDIANMART_CLERK, 30
	opentext
	writetext ViridianMartFromPalletText
	waitbutton
	closetext
	applymovement PLAYER, ViridianMartApproachCounterMovement
	opentext
	writetext ViridianMartOaksParcelText
	playsound SFX_KEY_ITEM
	giveitem OAKS_PARCEL
	waitsfx
	waitbutton
	closetext
	setevent EVENT_GOT_OAKS_PARCEL
	setevent EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
	setscene SCENE_VIRIDIANMART_NOOP
	end

ViridianMartNoop2Scene:
	end

ViridianMartClerkScript:
	checkevent EVENT_GOT_POKEDEX
	iftrue .Mart
	jumptext ViridianMartSayHiToOakText
.Mart
	faceplayer
	opentext
	readvar VAR_BADGES
	ifgreater 4, .BallsFive
	ifequal 3, .BallsThree
	ifequal 1, .BallsOne
	pokemart MARTTYPE_STANDARD, MART_BALLS_ZERO
	closetext
	end
.BallsOne
	pokemart MARTTYPE_STANDARD, MART_BALLS_ONE
	closetext
	end
.BallsThree
	pokemart MARTTYPE_STANDARD, MART_BALLS_THREE
	closetext
	end
.BallsFive
	pokemart MARTTYPE_STANDARD, MART_BALLS_FIVE
	closetext
	end

ViridianMartSayHiToOakText:
	ntag "CLERK:"
	text "Okay! Say hi to"
	line "PROF.OAK for me!"
	done

ViridianMartMedScript:
	checkevent EVENT_GOT_POKEDEX
	iftrue .Mart
	jumptext ViridianMartRestockingText
.Mart
	opentext
	readvar VAR_BADGES
	ifgreater 5, .MedSix
	ifequal 4, .MedFour
	ifequal 2, .MedTwo
	pokemart MARTTYPE_STANDARD, MART_MED_ZERO
	closetext
	end
.MedTwo
	pokemart MARTTYPE_STANDARD, MART_MED_TWO
	closetext
	end
.MedFour
	pokemart MARTTYPE_STANDARD, MART_MED_FOUR
	closetext
	end
.MedSix
	pokemart MARTTYPE_STANDARD, MART_MED_SIX
	closetext
	end

ViridianMartRestockingText:
	text "I'm restocking the"
	line "#MON medicine."

	para "Come buy some"
	line "later!"
	done

ViridianMartCooltrainerMScript:
	jumptextfaceplayer ViridianMartCooltrainerMText

ViridianMartYoungsterScript:
	jumptextfaceplayer ViridianMartYoungsterText

; movements
ViridianMartApproachCounterMovement:
	step UP
	step UP
	step LEFT
	step_end

; npc text
ViridianMartFromPalletText:
	ntag "CLERK:"
	text "Hey! You came from"
	line "PALLET TOWN?"
	done

ViridianMartOaksParcelText:
	ntag "CLERK:"
	text "You know PROF."
	line "OAK, right?"

	para "His order came in."
	line "Will you take it"
	cont "to him?@"
	
	text_promptbutton
	ntag "─────"
	para "<PLAYER> got"
	line "OAK's PARCEL!"
	done

ViridianMartCooltrainerMText:
	text "Use POTIONs on"
	line "injured #MON"
	cont "to restore HP!"
	done

ViridianMartYoungsterText:
	text "This shop sells"
	line "many ANTIDOTEs."
	done

ViridianMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIRIDIAN_CITY, 4
	warp_event  4,  7, VIRIDIAN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianMartClerkScript, -1
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianMartMedScript, -1
	object_event  3,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMartCooltrainerMScript, -1
	object_event  6,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianMartYoungsterScript, -1
