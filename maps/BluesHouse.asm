	object_const_def
;	const BLUESHOUSE_DAISY

BluesHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BluesHouseNeighbor:
	jumptextfaceplayer BluesHouseNeighborText
BluesHouseNeighborText:
	text "Hi <PLAYER>!"

	para "Are you back in"
	line "PALLET TOWN to"
	cont "visit your mom?"

	para "..."

	para "I wish <RIVAL>"
	line "would come visit"
	cont "more often."
	done

DaisyScript:
	checkflag ENGINE_MAP_CARD
	iftrue .DaisyGroom ; keep grooming?
	checkevent EVENT_GOT_POKEDEX
	iffalse .DaisyIdle
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iffalse .BlueAtLab
	jumptextfaceplayer BluesHouseNoMapText

.BlueAtLab
	jumptextfaceplayer BluesHouseBlueAtLabText

.DaisyIdle
	jumptextfaceplayer BluesHouseDaisyIdleText

.DaisyGroom
	faceplayer
	opentext
	checktime NITE
	iffalse .Daytime
	writetext DaisyOutLateText
	waitbutton
	closetext
	end

.Daytime:
	checkflag ENGINE_DAISYS_GROOMING
	iftrue .AlreadyGroomedMon
	writetext DaisyOfferGroomingText
	yesorno
	iffalse .Refused
	writetext DaisyWhichMonText
	waitbutton
	special DaisysGrooming
	ifequal $0, .Refused
	ifequal $1, .CantGroomEgg
	setflag ENGINE_DAISYS_GROOMING
	writetext DaisyAlrightText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext GroomedMonLooksContentText
	special PlayCurMonCry
	promptbutton
	writetext DaisyAllDoneText
	waitbutton
	closetext
	end

.AlreadyGroomedMon:
	writetext DaisyAlreadyGroomedText
	waitbutton
	closetext
	end

.Refused:
	writetext DaisyRefusedText
	waitbutton
	closetext
	end

.CantGroomEgg:
	writetext DaisyCantGroomEggText
	waitbutton
	closetext
	end

BluesHouseBlueAtLabText:
	text "Hi <PLAYER>!"
	line "<RIVAL> is out at"
	cont "Grandpa's lab."
	done

BluesHouseNoMapText:
	text "You want to"
	line "borrow a MAP CARD?"

	para "I just loaned mine"
	line "to <RIVAL>."

	para "Sorry. I don't"
	line "have an extra one."
	done

BluesHouseDaisyIdleText:
	text "#MON are living"
	line "things! If they"
	cont "get tired, give"
	cont "them a rest!"
	done

DaisyOutLateText:
	text "DAISY: Hi! You're"
	line "out late tonight!"

	para "How is your"
	line "#DEX coming"
	cont "along?"

	para "..."

	para "That many!"

	para "My grandpa OAK"
	line "is lucky to have"
	cont "you and <RIVAL>"
	cont "helping him!"
	done

DaisyOfferGroomingText:
	text "DAISY: Hi! Good"
	line "timing. I'm about"
	cont "to have some tea."

	para "Would you like to"
	line "join me?"

	para "Oh, your #MON"
	line "are a bit dirty."

	para "Would you like me"
	line "to groom one?"
	done

DaisyWhichMonText:
	text "DAISY: Which one"
	line "should I groom?"
	done

DaisyAlrightText:
	text "DAISY: OK, I'll"
	line "get it looking"
	cont "nice in no time."
	done

GroomedMonLooksContentText:
	text_ram wStringBuffer3
	text " looks"
	line "content."
	done

DaisyAllDoneText:
	text "DAISY: There you"
	line "go! All done."

	para "See? Doesn't it"
	line "look nice?"

	para "It's such a cute"
	line "#MON."
	done

DaisyAlreadyGroomedText:
	text "DAISY: I always"
	line "enjoy a nice cup"
	cont "of tea!"

	para "Come visit again"
	line "soon!"
	done

DaisyRefusedText:
	text "DAISY: You don't"
	line "want to have one"
	cont "groomed? OK, we'll"
	cont "just have tea."
	done

DaisyCantGroomEggText:
	text "DAISY: Oh, sorry."
	line "I honestly can't"
	cont "groom an EGG."
	done

BluesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 2
	warp_event  3,  7, PALLET_TOWN, 2
	warp_event  7,  0, BLUES_HOUSE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_DAISY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DaisyScript, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BluesHouseNeighbor, EVENT_BLUES_HOUSE_NEIGHBOR
