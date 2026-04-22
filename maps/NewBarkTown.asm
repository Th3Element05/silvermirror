	object_const_def
	const NEWBARKTOWN_RIVAL

NewBarkTown_MapScripts:
	def_scene_scripts
	scene_script NewBarkTownNoop1Scene, SCENE_NEWBARKTOWN_NOOP
	scene_script NewBarkTownNoop2Scene, SCENE_NEWBARKTOWN_RIVAL_ENCOUNTER

	def_callbacks
	callback MAPCALLBACK_NEWMAP, NewBarkTownFlypointCallback
	callback MAPCALLBACK_TILES, NewBarkTownDoorCallback

NewBarkTownFlypointCallback:
	setflag ENGINE_FLYPOINT_NEW_BARK
	endcallback

NewBarkTownDoorCallback:
	checkevent EVENT_ELMS_LAB_ELM
	iffalse .NotLocked
	changeblock 12, 4, $a4 ; LOCKED
.NotLocked:
	endcallback

NewBarkTownNoop1Scene:
NewBarkTownNoop2Scene:
	end

NewBarkTownDoorLocked:
	conditional_event EVENT_ELMS_LAB_ELM, .LockedDoor
.LockedDoor
	jumptext NewBarkTownDoorLockedText
NewBarkTownDoorLockedText:
	text "It's locked."

	para "But you can hear"
	line "people doing some-"
	cont "thing in there."
	done

NewBarkTownRivalEncounterScript:
	turnobject PLAYER, UP
	playmusic MUSIC_NONE
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, NewBarkTown_PlayerStepsBackMovement
	playmusic MUSIC_RIVAL_ENCOUNTER
	playsound SFX_ENTER_DOOR
	appear NEWBARKTOWN_RIVAL
	applymovement NEWBARKTOWN_RIVAL, NewBarkTown_PlayerStepsBackMovement
	pause 10
	opentext
	writetext NewBarkTownRival_IntroText
	promptbutton
	winlosstext NewBarkTownRival_WinText, NewBarkTownRival_LossText
	loadtrainer RIVAL2, RIVAL2_NEW_BARK_TOWN
;	loadmem VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
;	ifequal WIN, .NoHeal
;	special HealParty
;.NoHeal
	reloadmapafterbattle
	opentext
	writetext NewBarkTownRival_LookingForGrampsText
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement NEWBARKTOWN_RIVAL, NewBarkTownRivalLeavesMovement1
	pause 20
	special FadeOutMusic
	pause 20
	applymovement NEWBARKTOWN_RIVAL, NewBarkTownRivalBacktackMovement
	opentext
	writetext NewBarkTownRival_HeyPlayerText
	promptbutton
	turnobject PLAYER, LEFT
	special RestartMapMusic
	writetext NewBarkTownRival_BeenThinkingText
	waitbutton
	closetext
	applymovement NEWBARKTOWN_RIVAL, NewBarkTownRivalLeavesMovement2
	disappear NEWBARKTOWN_RIVAL
	setscene SCENE_NEWBARKTOWN_NOOP
	end

NewBarkTown_PlayerStepsBackMovement:
	fix_facing
	step DOWN
	remove_fixed_facing
	step_end

NewBarkTownRival_IntroText:
	ntag "<RIVAL>:"
	text "<PLAYER>!"

	para "I didn't expect to"
	line "run into you here."

	para "I've got a couple"
	line "new #MON since"
	cont "our last battle."

	para "I've been wanting"
	line "to try them out"
	cont "against you!"

	para "I hope you're"
	line "ready!"
	done

NewBarkTownRival_WinText:
	ntag "<RIVAL>:"
	text "Darn, I still"
	line "can't beat you!"
	done

NewBarkTownRival_LossText:
	ntag "<RIVAL>:"
	text "I won!"

	para "Too bad I couldn't"
	line "beat you at the"
	cont "#MON LEAGUE."
	done

NewBarkTownRival_LookingForGrampsText:
	ntag "<RIVAL>:"
	text "I'm looking for"
	line "GRAMPS, he didn't"
	cont "answer his phone."

	para "I came here to ask"
	line "PROF.ELM if he's"
	cont "seen him."

	para "You don't happen"
	line "to know where he"
	cont "is, do you?"

	para "<……><……>"

	para "He was on his way"
	line "to GOLDENROD?"

	para "He must be record-"
	line "ing his show for"
	cont "the radio."

	para "I'll go look for"
	line "him at the RADIO"
	cont "TOWER."

	para "Smell-"
	line "…"

	para "See ya later!"
	done

NewBarkTownRivalLeavesMovement1:
	slow_step LEFT
	slow_step DOWN
	slow_step DOWN
;	step_sleep 40 ;this is probably too high/long but needs testing
;	turn_head UP
	step_end

NewBarkTownRivalBacktackMovement:
	slow_step UP
	turn_head RIGHT
	step_end

NewBarkTownRival_HeyPlayerText:
	ntag "<RIVAL>:"
	text "Hey, <PLAYER>?"
	done

NewBarkTownRival_BeenThinkingText:
	ntag "<RIVAL>:"
	text "I've been doing a"
	line "lot of thinking"
	cont "since I lost as"
	roll "#MON CHAMPION."

	para "There's more to"
	line "being a trainer"
	cont "than just being"
	roll "the best."

	para "<PLAYER>, you're"
	line "a really strong"
	cont "trainer."

	para "Never take that"
	line "for granted."

	para "See ya later!"
	done

NewBarkTownRivalLeavesMovement2:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

NewBarkTownTeacherScript:
	jumptextfaceplayer Text_GearIsImpressive
Text_GearIsImpressive:
	text "Wow, your #GEAR"
	line "is impressive!"
	done

NewBarkTownFisherScript:
	jumptextfaceplayer Text_ProfElm
Text_ProfElm:
	text "PROF.ELM is the"
	line "most well-known"
	cont "#MON researcher"
	roll "in JOHTO."
	done

NewBarkTownSign:
	jumptext NewBarkTownSignText
NewBarkTownSignText:
	text "NEW BARK TOWN"
	done

;NewBarkTownPlayersHouseSign:
;	jumptext NewBarkTownPlayersHouseSignText
;NewBarkTownPlayersHouseSignText:
;	text "<PLAYER>'s House"
;	done

NewBarkTownElmsLabSign:
	jumptext NewBarkTownElmsLabSignText
NewBarkTownElmsLabSignText:
	text "ELM #MON LAB"
	done

NewBarkTownElmsHouseSign:
	jumptext NewBarkTownElmsHouseSignText
NewBarkTownElmsHouseSignText:
	text "ELM's HOUSE"
	done

NewBarkTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  3, ELMS_LAB, 1
	warp_event 13,  5, REDS_HOUSE_1F, 1
	warp_event  3, 11, PLAYERS_NEIGHBORS_HOUSE, 1
	warp_event 11, 13, ELMS_HOUSE, 1

	def_coord_events
	coord_event  6,  4, SCENE_NEWBARKTOWN_RIVAL_ENCOUNTER, NewBarkTownRivalEncounterScript

	def_bg_events
	bg_event  8,  8, BGEVENT_READ, NewBarkTownSign
;	bg_event 11,  5, BGEVENT_READ, NewBarkTownPlayersHouseSign
	bg_event  3,  3, BGEVENT_READ, NewBarkTownElmsLabSign
	bg_event  9, 13, BGEVENT_READ, NewBarkTownElmsHouseSign
	bg_event 13,  5, BGEVENT_IFSET, NewBarkTownDoorLocked

	def_object_events
	object_event  6,  3, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownRivalEncounterScript, EVENT_NEW_BARK_TOWN_RIVAL
	object_event  6, 13, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownTeacherScript, -1
	object_event 13,  9, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NewBarkTownFisherScript, -1
