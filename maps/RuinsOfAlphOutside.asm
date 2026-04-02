	object_const_def

RuinsOfAlphOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsOfAlphOutsideCavesCallback

RuinsOfAlphOutsideCavesCallback:
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .RuinsAreOpen
	changeblock 10, 12, $b8 ; closed ruins
	changeblock 2, 16, $b8 ; closed ho-oh
	changeblock 2, 28, $b8 ; closed omanyte
	changeblock 16, 32, $b8 ; closed aerodactyl
.RuinsAreOpen
	endcallback

RuinsOfAlphOutsideScientistScript:
	checkflag ENGINE_UNOWN_DEX
	iftrue .GotUnownDex
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_RUINS_SCIENTIST_AFTER_FALLING
	iftrue .SkipIntro
	writetext RuinsOfAlphOutside_DoneForText
	setevent EVENT_TALKED_TO_RUINS_SCIENTIST_AFTER_FALLING
	promptbutton
.SkipIntro
	clearflag EVENT_RUINS_OF_ALPH_INNER_CHAMBER_SCIENTISTS
	writetext RuinsOfAlphOutside_TellMeText
	waitbutton
	readvar VAR_UNOWNCOUNT
	ifgreater 2, .GiveUnownDex
	closetext
	end

.GiveUnownDex
	writetext RuinsOfAlphOutside_GiveUnownDexText
	waitbutton
	playsound SFX_SWITCH_POKEMON
	pause 30
	playsound SFX_TALLY
	pause 30
	playsound SFX_TRANSACTION
	pause 30
	writetext RuinsOfAlphOutside_ModifiedDexText
;	waitbutton
;	writetext RuinsOfAlphOutside_DexUpgradedText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_UNOWN_DEX
	writetext RuinsOfAlphOutside_ExplainDexText
	waitbutton
	closetext
	special RestartMapMusic
	end

.GotUnownDex
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .CaughtAllUnown
	jumptextfaceplayer RuinsOfAlphOutside_RuinsAreOldText

.CaughtAllUnown:
	jumptextfaceplayer RuinsOfAlphOutside_AllUnownText

RuinsOfAlphOutside_DoneForText:
	text "You! You're okay!"

	para "I thought you were"
	line "done for when you"
	cont "fell through the"
	cont "floor!"

	para "The earth shook"
	line "when that hole"
	cont "opened."
	done

RuinsOfAlphOutside_TellMeText:
	text "The tremor seems"
	line "to have opened up"
	cont "other chambers in"
	cont "the ruins!"

	para "There's so much"
	line "more to study"
	cont "here now."

	para "Please, come tell"
	line "me if you discover"
	cont "anything in these"
	cont "ruins."
	done

;RuinsOfAlphOutsideScientistText:
RuinsOfAlphOutside_GiveUnownDexText:
	text "Hm? What's that?"

	para "There are strange"
	line "#MON appearing"
	cont "in the ruins?"

	para "They look like the"
	line "strange symbols on"
	cont "the walls of the"
	cont "RUINS."

	para "If those symbols"
	line "represent #MON,"
	cont "there should be"
	cont "many more."

	para "Hm? That's a #-"
	line "DEX, isn't it?"

	para "Let me upgrade it"
	line "to keep track of"
	cont "the forms of this"
	cont "new #MON."
	done

RuinsOfAlphOutside_ModifiedDexText:
	text "Done!"

	para "I modified your"
	line "#DEX."

	para "I added an"
	line "optional mode to"
	cont "store UNOWN data."

	para "It records them in"
	line "the sequence that"
	cont "they were caught."
;	done

;RuinsOfAlphOutside_DexUpgradedText:
	para "<PLAYER>'s #DEX"
	line "was upgraded."
	done

RuinsOfAlphOutside_ExplainDexText:
	text "The UNOWN you"
	line "catch will all be"
	cont "recorded."

	para "Check to see how"
	line "many kinds exist."
	done

RuinsOfAlphOutside_RuinsAreOldText:
	text "The RUINS are"
	line "about 1500 years"
	cont "old."

	para "But it's not known"
	line "why they were"
	cont "built--or by whom."
	done

RuinsOfAlphOutside_AllUnownText:
	text "You caught all the"
	line "UNOWN variations?"

	para "That's a great"
	line "achievement!"

	para "But I'm sure that"
	line "there's more to"
	cont "discover here."

	para "I'm going to set"
	line "up a permanent"
	cont "facility here to"
	cont "conduct research."
	done

TrainerPsychicIdris:
	trainer PSYCHIC_T, IDRIS, EVENT_BEAT_PSYCHIC_IDRIS, PsychicIdrisSeenText, PsychicIdrisBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PsychicIdrisAfterBattleText
	waitbutton
	closetext
	end

PsychicIdrisSeenText:
	text "Hmmm… This is a"
	line "strange place."
	done

PsychicIdrisBeatenText:
	text "…"
	done

PsychicIdrisAfterBattleText:
	text "I like thinking"
	line "here."
	done

;RuinsOfAlphOutsideYoungster1Script:
;	faceplayer
;	opentext
;	writetext RuinsOfAlphOutsideYoungster1Text
;	waitbutton
;	closetext
;	end

;RuinsOfAlphOutsideYoungster1Text:
;	text "There are many"
;	line "kinds of UNOWN, so"
;
;	para "we use them for"
;	line "our secret codes."
;	done

;RuinsOfAlphOutsideYoungster2Script:
;	faceplayer
;	opentext
;	writetext RuinsOfAlphOutsideYoungster2Text
;	waitbutton
;	closetext
;	turnobject RUINSOFALPHOUTSIDE_YOUNGSTER3, UP
;	end

;RuinsOfAlphOutsideYoungster2Text:
;	text "A… H… E… A… D…"
;	line "Hmm…"
;
;	para "What?"
;
;	para "I'm decoding this"
;	line "message!"
;	done

RuinsOfAlphSign:
	jumptext RuinsOfAlphSignText
RuinsOfAlphSignText:
	text "RUINS OF ALPH"
	done

RuinsOfAlphResearchSiteSign:
	jumptext RuinsOfAlphResearchSiteSignText
RuinsOfAlphResearchSiteSignText:
	text "RUINS OF ALPH"
	line "RESEARCH SITE"
	done

;RuinsOfAlphOutsideMysteryChamberSign:
;	jumptext RuinsOfAlphOutsideMysteryChamberSignText
;RuinsOfAlphOutsideMysteryChamberSignText:
;	text "MYSTERY STONE"
;	line "PANEL CHAMBER"
;	done

RuinsOfAlphOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  7, RUINS_OF_ALPH_KABUTO_CHAMBER, 1
	warp_event 16, 33, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 1
	warp_event  2, 29, RUINS_OF_ALPH_OMANYTE_CHAMBER, 1
	warp_event  2, 17, RUINS_OF_ALPH_HO_OH_CHAMBER, 1
	warp_event 10, 13, RUINS_OF_ALPH_INNER_CHAMBER, 1
	warp_event  6, 19, UNION_CAVE_B1F, 1
	warp_event  6, 27, UNION_CAVE_B1F, 2
	warp_event  7,  5, ROUTE_36_RUINS_OF_ALPH_GATE, 3
	warp_event 13, 20, ROUTE_32_RUINS_OF_ALPH_GATE, 1
	warp_event 13, 21, ROUTE_32_RUINS_OF_ALPH_GATE, 2
;	warp_event 17, 11, RUINS_OF_ALPH_RESEARCH_CENTER, 1

	def_coord_events

	def_bg_events
	bg_event 12, 16, BGEVENT_READ, RuinsOfAlphSign
	bg_event 18, 12, BGEVENT_READ, RuinsOfAlphResearchSiteSign
;	bg_event 16,  8, BGEVENT_READ, RuinsOfAlphOutsideMysteryChamberSign

	def_object_events
	object_event 16, 11, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientistScript, EVENT_RUINS_OF_ALPH_OUTSIDE_SCIENTIST
	object_event  4, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerPsychicIdris, -1 ;nathan
;	object_event 12,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideYoungster2Script, EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
;	object_event 14, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideYoungster1Script, EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
