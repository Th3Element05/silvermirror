	object_const_def
;	const COPYCATSHOUSE2F_COPYCAT1 ; if player is male
;	const COPYCATSHOUSE2F_COPYCAT2 ; if player is female
	const COPYCATSHOUSE2F_COPYCAT ; neutral blue color
	const COPYCATSHOUSE2F_POKEDOLL ; pokedoll

CopycatsHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CopycatsHouse2FHouseTilesCallback
;	callback MAPCALLBACK_OBJECTS, CopycatsHouse2FWhichGenderCallback

CopycatsHouse2FHouseTilesCallback:
	changeblock 2, 0, $32 ; table
	changeblock 0, 4, $1c ; pink bed
	endcallback

;CopycatsHouse2FWhichGenderCallback:
;	checkflag ENGINE_PLAYER_IS_FEMALE
;	iftrue .Female
;	disappear COPYCATSHOUSE2F_COPYCAT2
;	appear COPYCATSHOUSE2F_COPYCAT1
;	sjump .Done
;.Female:
;	disappear COPYCATSHOUSE2F_COPYCAT1
;	appear COPYCATSHOUSE2F_COPYCAT2
;.Done:
;	endcallback

Copycat:
	faceplayer
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Default_Female_1
	applymovement COPYCATSHOUSE2F_COPYCAT, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_CHRIS
	sjump .Default_Merge_1

.Default_Female_1:
	applymovement COPYCATSHOUSE2F_COPYCAT, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_KRIS
.Default_Merge_1:
	special LoadUsedSpritesGFX
	checkevent EVENT_GOT_TM31_MIMIC
	iftrue .GotMimic
	opentext
	writetext CopycatText_Default
	waitbutton
	closetext
	scall CopycatIntoTwinScript
	opentext
	writetext CopycatText_QuitMimicking
	checkitem POKE_DOLL
	iffalse .NoPokeDoll
	promptbutton
	writetext CopycatText_IsThatAPokedoll
	yesorno
	iffalse .DollNotForYou
	writetext CopycatText_ThanksGiveTM
	promptbutton
	takeitem POKE_DOLL
	verbosegiveitem TM_MIMIC
	writetext CopycatText_ExplainTM
	waitbutton
	closetext
	appear COPYCATSHOUSE2F_POKEDOLL
	setevent EVENT_GOT_TM31_MIMIC
	end

.DollNotForYou
	writetext CopycatText_DidntGiveDoll
.NoPokeDoll
	waitbutton
	closetext
	end

.GotMimic
	opentext
	writetext CopycatText_ThanksForTM
	waitbutton
	closetext
	scall CopycatIntoTwinScript
	opentext
	writetext CopycatText_YouBet
	waitbutton
	closetext
	end

CopycatIntoTwinScript:
	applymovement COPYCATSHOUSE2F_COPYCAT, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_TWIN
	special LoadUsedSpritesGFX
	end

CopycatsDoduo:
	opentext
	writetext CopycatsDoduoText
	cry DODRIO
	waitbutton
	closetext
	end

CopycatsHouse2FDoll:
	jumptext CopycatsHouse2FDollText

CopycatsHouse2FBookshelf:
	jumpstd PictureBookshelfScript

CopycatSpinAroundMovementData:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

CopycatText_Default:
	text "<PLAYER>: Hi! Do"
	line "you like #MON?"

	para "<PLAYER>: Uh, no, I"
	line "just asked you."

	para "<PLAYER>: Huh?"
	line "You're strange!"
	done

CopycatText_QuitMimicking:
	text "COPYCAT: Hmm?"
	line "Quit mimicking?"

	para "But that's my"
	line "favorite hobby!"

	para "My other hobby"
	line "is collecting"
	cont "# DOLLs!"

	para "I can't get"
	line "enough of them!"
	done

CopycatText_IsThatAPokedoll:
	text "Oh wow!"
	line "A # DOLL?"

	para "Is it for me?"
	done

CopycatText_DidntGiveDoll:
	text "COPYCAT: Awww!"
	line "That's too bad!"
	done

CopycatText_ThanksGiveTM:
	text "Thank you!"

	para "Here, you can"
	line "have this!"
	done

CopycatText_ExplainTM:
	text "TM31 contains my"
	line "favorite, MIMIC!"

	para "It will copy an"
	line "opponent's move!"
	cont "But only for one"
	cont "battle!"

	para "Use it on a good"
	line "#MON!"
	done

CopycatText_ThanksForTM:
	text "<PLAYER>: Hi!"
	line "Thanks for TM31!"

	para "<PLAYER>: Pardon?"

	para "<PLAYER>: Is it"
	line "that fun to mimic"
	cont "my every move?"
	done

CopycatText_YouBet:
	text "COPYCAT: You bet!"
	line "It's a scream!"
	done

CopycatsDoduoText:
	text "DODRIO: Gii giii!"

	para "MIRROR, MIRROR,"
	line "ON THE WALL,"

	para "WHO'S THE FAIREST"
	line "ONE OF ALL?"
	done

CopycatsHouse2FDollText:
	text "This is a rare"
	line "#MON!"

	para "Huh?"
	line "It's only a doll…"
	done

CopycatsHouse2FHiddenNugget:
	hiddenitem NUGGET, EVENT_COPYCATS_HOUSE_2F_HIDDEN_NUGGET

CopycatsHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  0, COPYCATS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_READ, CopycatsHouse2FBookshelf
	bg_event  3,  1, BGEVENT_ITEM, CopycatsHouse2FHiddenNugget

	def_object_events
;	object_event  2,  4, SPRITE_COPYCAT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Copycat, EVENT_COPYCAT_1
;	object_event  2,  4, SPRITE_COPYCAT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Copycat, EVENT_COPYCAT_2
	object_event  2,  4, SPRITE_COPYCAT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Copycat, -1
	object_event  1,  5, SPRITE_CLEFAIRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, EVENT_COPYCATS_HOUSE_2F_DOLL
	object_event  6,  4, SPRITE_DODUO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CopycatsDoduo, -1
	object_event  0,  1, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, -1
	object_event  2,  1, SPRITE_EEVEE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, -1
	object_event  4,  4, SPRITE_SHELLDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, -1
	object_event  5,  4, SPRITE_JIGGLYPUFF, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, -1
;	object_event  2,  1, SPRITE_PIDGEY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, -1

;.PinkOverYellowOBPalette