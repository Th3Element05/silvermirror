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

	para "<……>"

	para "I wish <RIVAL>"
	line "would come visit"
	cont "more often."
	done

DaisyScript:
	checkflag ENGINE_MAP_CARD
	iftrue .DaisyGroom ; keep grooming?
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iffalse .BlueAtLab
	checkevent EVENT_GOT_POKEDEX
	iffalse .DaisyIdle
	jumptextfaceplayer BluesHouseNoMapText

.BlueAtLab
	jumptextfaceplayer BluesHouseBlueAtLabText

.DaisyIdle
	jumptextfaceplayer BluesHouseDaisyIdleText

.DaisyGroom
	checktime NITE
	iffalse .Daytime
	jumptextfaceplayer DaisyOutLateText

.Daytime:
	faceplayer
	opentext
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
	ntag "DAISY:"
	text "Hi <PLAYER>!"
	line "<RIVAL> is out at"
	cont "Grandpa's lab."
	done

BluesHouseNoMapText:
	ntag "DAISY:"
	text "You want to borrow"
	line "a MAP CARD?"

	para "I just loaned mine"
	line "to <RIVAL>."

	para "Sorry. I don't"
	line "have another one."
	done

BluesHouseDaisyIdleText:
	ntag "DAISY:"
	text "#MON are living"
	line "things! If they"
	cont "get tired, give"
	roll "them a rest!"
	done

DaisyOutLateText:
	ntag "DAISY:"
	text "Hi! You're out"
	line "late tonight!"

	para "How is your"
	line "#DEX coming"
	cont "along?"

	para "<……>"

	para "That many!"

	para "My grandpa OAK"
	line "is lucky to have"
	cont "you and <RIVAL>"
	roll "helping him!"
	done

DaisyOfferGroomingText:
	ntag "DAISY:"
	text "Hi! Good timing!"
	line "I'm about to have"
	cont "some tea."

	para "Would you like to"
	line "join me?"

	para "Oh, your #MON"
	line "are a bit dirty."

	para "Would you like me"
	line "to groom one?"
	done

DaisyWhichMonText:
	ntag "DAISY:"
	text "Which one should"
	line "I groom?"
	done

DaisyAlrightText:
	ntag "DAISY:"
	text "OK, I'll get it"
	line "all cleaned up in"
	cont "no time."
	done

GroomedMonLooksContentText:
	text_ram wStringBuffer3
	text " looks"
	line "content."
	done

DaisyAllDoneText:
	ntag "DAISY:"
	text "There you go!"
	line "All done."

	para "See? Doesn't it"
	line "look nice?"

	para "It's such a cute"
	line "#MON."
	done

DaisyAlreadyGroomedText:
	ntag "DAISY:"
	text "I always enjoy a"
	line "nice cup of tea!"

	para "Come visit again"
	line "soon!"
	done

DaisyRefusedText:
	ntag "DAISY:"
	text "You don't want tp"
	line "have one groomed?"
	cont "OK, we can just"
	roll "have tea."
	done

DaisyCantGroomEggText:
	ntag "DAISY:"
	text "Oh, sorry. I can't"
	line "groom an EGG."
	done

BluesHouse1FStoveScript:
	jumptext BluesHouse1FStoveText
BluesHouse1FStoveText:
	text "It's the stove."
	done

BluesHouse1FSinkScript:
	jumptext BluesHouse1FSinkText
BluesHouse1FSinkText:
	text "The sink is nice"
	line "and clean."
	done

BluesHouse1FFridgeScript:
	jumptext BluesHouse1FFridgeText
BluesHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "SODA POP!"
	done

BluesHouse1FTV:
	jumpstd TVScript

BluesHouse1FBookshelf:
	jumpstd MagazineBookshelfScript

BluesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, PALLET_TOWN, 2
	warp_event  5,  7, PALLET_TOWN, 2
	warp_event  9,  0, BLUES_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, BluesHouse1FStoveScript
	bg_event  1,  1, BGEVENT_READ, BluesHouse1FSinkScript
	bg_event  2,  1, BGEVENT_READ, BluesHouse1FFridgeScript
	bg_event  4,  1, BGEVENT_READ, BluesHouse1FTV
	bg_event  6,  1, BGEVENT_READ, BluesHouse1FBookshelf
	bg_event  7,  1, BGEVENT_READ, BluesHouse1FBookshelf

	def_object_events
	object_event  4,  4, SPRITE_DAISY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DaisyScript, -1
	object_event  7,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BluesHouseNeighbor, EVENT_BLUES_HOUSE_NEIGHBOR
