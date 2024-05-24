	object_const_def
	const PALLETTOWN_OAK

PalletTown_MapScripts:
	def_scene_scripts
	scene_script PalletTownNoop1Scene, SCENE_PALLETTOWN_OAK_HEY_WAIT
	scene_script PalletTownNoop2Scene, SCENE_PALLETTOWN_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PalletTownFlypointCallback

PalletTownNoop1Scene:
PalletTownNoop2Scene:
	end

PalletTownFlypointCallback:
	setflag ENGINE_FLYPOINT_PALLET
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

PalletTownOakHeyWaitScriptR:
	moveobject PALLETTOWN_OAK, 9, 5
PalletTownOakHeyWaitScriptL:
	playmusic MUSIC_PROF_OAK
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext PalletTownOakHeyWaitText
	waitbutton
	closetext
	appear PALLETTOWN_OAK
	applymovement PALLETTOWN_OAK, PalletTownOakWalkUpMovement
	turnobject PLAYER, DOWN
	opentext
	writetext PalletTownOakUnsafeText
	waitbutton
	closetext
	follow PALLETTOWN_OAK, PLAYER
	readvar VAR_XCOORD
	ifequal 10, .Skip
	applymovement PALLETTOWN_OAK, PalletTownOakGoToLabMovementR
.Skip
	applymovement PALLETTOWN_OAK, PalletTownOakGoToLabMovement
	turnobject PLAYER, UP
	disappear PALLETTOWN_OAK
	playsound SFX_EXIT_BUILDING
	waitsfx
	setmapscene OAKS_LAB, SCENE_OAKSLAB_MEET_OAK
	clearevent EVENT_OAKS_LAB_OAK
	applymovement PLAYER, PalletTownEnterLabMovement
	warpfacing UP, OAKS_LAB, 5, 11
	end

PalletTownOakHeyWaitText:
	text "OAK: Hey! Wait!"
	line "Don't go out!"
	done

PalletTownOakUnsafeText:
	text "OAK: It's unsafe!"
	line "Wild #MON live"
	cont "in tall grass!"

	para "You need your own"
	line "#MON for your"
	cont "protection."
	
	para "I know!"

	para "Here, come with"
	line "me!"
	done

PalletTownTeacherScript:
;;	jumptextfaceplayer PalletTownTeacherText
;	faceplayer
;	opentext
	checkevent EVENT_TALKED_TO_MOM_AFTER_GETTING_POKEDEX
	iftrue .CallMom
	checkevent EVENT_GOT_POKEDEX
	iftrue .TellMomYoureLeaving
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue .MonIsAdorable
	jumptextfaceplayer PalletTownImpressiveGearText
;	waitbutton
;	closetext
;	end

.MonIsAdorable:
	jumptextfaceplayer PalletTownAdorableMonText
;	waitbutton
;	closetext
;	end

.TellMomYoureLeaving:
	jumptextfaceplayer PalletTownTellMomText
;	waitbutton
;	closetext
;	end

.CallMom:
	jumptextfaceplayer PalletTownCallMomText
;	waitbutton
;	closetext
;	end

PalletTownImpressiveGearText:
	text "Wow, your #GEAR"
	line "is impressive!"

	para "Did your mom get"
	line "it for you?"
	done

PalletTownAdorableMonText:
	text "Oh! Your #MON"
	line "is adorable!"
	cont "I wish I had one!"
	done

PalletTownTellMomText:
	text "Hi, <PLAY_G>!"
	line "Leaving again?"

	para "You should tell"
	line "your mom if you"
	cont "are leaving."
	done

PalletTownCallMomText:
	text "Call your mom on"
	line "your #GEAR to"

	para "let her know how"
	line "you're doing."
	done

;PalletTownTeacherText:
;	text "I'm raising #-"
;	line "MON too."
;
;	para "When they get"
;	line "strong, they can"
;	cont "protect me!"
;	done

PalletTownFisherScript:
	jumptextfaceplayer PalletTownFisherText
PalletTownFisherText:
	text "Technology is"
	line "incredible!"

	para "You can now store"
	line "and recall items"
	cont "and #MON as"
	cont "data via PC!"
	done

PalletTownExitRMovement:
	step LEFT
	step_end

PalletTownOakWalkUpMovement:
	step UP
	step RIGHT
	step UP
	step RIGHT
	step UP
	step_end

PalletTownOakGoToLabMovementR:
	step LEFT
	step_end

PalletTownOakGoToLabMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end
	
PalletTownEnterLabMovement:
	step UP
	step_end

PalletTownSign:
	jumptext PalletTownSignText
PalletTownSignText:
	text "PALLET TOWN"

	para "Shades of your"
	line "journey await!"
	done

PlayersHouseSign:
	jumptext PlayersHouseSignText
PlayersHouseSignText:
	text "<PLAYER>'s HOUSE"
	done

OaksLabSign:
	jumptext OaksLabSignText
OaksLabSignText:
	text "OAK #MON"
	line "RESEARCH LAB"
	done

OaksHouseSign:
	jumptext OaksHouseSignText
OaksHouseSignText:
	text "<RIVAL>'s HOUSE"
	done

PalletTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, PLAYERS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE, 1
	warp_event 12, 11, OAKS_LAB, 2

	def_coord_events
	coord_event 10,  1, SCENE_PALLETTOWN_OAK_HEY_WAIT, PalletTownOakHeyWaitScriptL
	coord_event 11,  1, SCENE_PALLETTOWN_OAK_HEY_WAIT, PalletTownOakHeyWaitScriptR

	def_bg_events
	bg_event  7,  9, BGEVENT_READ, PalletTownSign
	bg_event  3,  5, BGEVENT_READ, PlayersHouseSign
	bg_event 13, 13, BGEVENT_READ, OaksLabSign
	bg_event 11,  5, BGEVENT_READ, OaksHouseSign

	def_object_events
	object_event 8,  5, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PALLET_TOWN_OAK
	object_event  4,  8, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript, -1
	object_event 12, 14, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PalletTownFisherScript, -1
