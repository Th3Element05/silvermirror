	object_const_def

RuinsOfAlphOmanyteChamber_MapScripts:
	def_scene_scripts
	scene_script RuinsOfAlphOmanyteChamberCheckWallScene, SCENE_RUINSOFALPHOMANYTECHAMBER_CHECK_WALL
	scene_script RuinsOfAlphOmanyteChamberNoopScene,      SCENE_RUINSOFALPHOMANYTECHAMBER_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsOfAlphOmanyteChamberHiddenDoorsCallback

RuinsOfAlphOmanyteChamberCheckWallScene:
	special OmanyteChamber
	checkevent EVENT_WALL_OPENED_IN_OMANYTE_CHAMBER
	iftrue .OpenWall
	end

.OpenWall:
	sdefer RuinsOfAlphOmanyteChamberWallOpenScript
RuinsOfAlphOmanyteChamberNoopScene:
	end

RuinsOfAlphOmanyteChamberHiddenDoorsCallback:
	checkevent EVENT_WALL_OPENED_IN_OMANYTE_CHAMBER
	iftrue .WallOpen
	changeblock 4, 0, $1d ; closed wall
.WallOpen:
	checkevent EVENT_SOLVED_OMANYTE_PUZZLE
	iffalse .FloorClosed
	endcallback

.FloorClosed:
	changeblock 2, 2, $02 ; left floor
	changeblock 4, 2, $03 ; right floor
	endcallback

RuinsOfAlphOmanyteChamberWallOpenScript:
	pause 30
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 30
	playsound SFX_STRENGTH
	changeblock 4, 0, $1e ; open wall
	reloadmappart
	earthquake 50
	setscene SCENE_RUINSOFALPHOMANYTECHAMBER_NOOP
	closetext
	end

RuinsOfAlphOmanyteChamberPuzzle:
	refreshscreen
	setval UNOWNPUZZLE_OMANYTE
	special UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
;	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_OMANYTE_PUZZLE
	setflag ENGINE_UNLOCKED_UNOWNS_L_TO_R
	setmapscene RUINS_OF_ALPH_INNER_CHAMBER, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 2, 2, $18 ; left hole
	changeblock 4, 2, $19 ; right hole
	reloadmappart
	playsound SFX_STRENGTH
	earthquake 80
	applymovement PLAYER, RuinsOfAlphKabutoChamber_SkyfallTopMovement
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end

;RuinsOfAlphOmanyteChamber_SkyfallTopMovement:
;	skyfall_top
;	step_end

RuinsOfAlphOmanyteChamberDescriptionSign:
	jumptext RuinsOfAlphOmanyteChamberDescriptionText
RuinsOfAlphOmanyteChamberDescriptionText:
	text "This #MON"
	line "drifted in the"
	cont "sea by twisting"
	cont "its ten tentacles."
	done

RuinsOfAlphOmanyteChamberWallPattern:
	checkevent EVENT_WALL_OPENED_IN_OMANYTE_CHAMBER
	iftrue .WallOpen
	opentext
	writetext RuinsOfAlphKabutoChamber_WallPatternText
	setval UNOWNWORDS_WATER ;(UNOWN)
	special DisplayUnownWords
	closetext
	end

.WallOpen:
	jumptext RuinsOfAlphKabutoChamber_WallHoleText

;RuinsOfAlphOmanyteChamber_WallPatternRightText:
;	text "Patterns appeared"
;	line "on the walls…"
;	done

;RuinsOfAlphOmanyteChamber_WallHoleText:
;	text "There's a big hole"
;	line "in the wall!"
;	done

RuinsOfAlphOmanyteChamberAncientReplica:
	jumptext RuinsOfAlphInnerChamber_StatueText
;RuinsOfAlphOmanyteChamber_StatueText:
;	text "It's a replica of"
;	line "an ancient #-"
;	cont "MON."
;	done

RuinsOfAlphOmanyteChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 3
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 3
	warp_event  3,  3, RUINS_OF_ALPH_INNER_CHAMBER, 6
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 7
	warp_event  4,  0, RUINS_OF_ALPH_OMANYTE_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphOmanyteChamberAncientReplica
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphOmanyteChamberAncientReplica
	bg_event  3,  2, BGEVENT_UP, RuinsOfAlphOmanyteChamberPuzzle
	bg_event  4,  2, BGEVENT_UP, RuinsOfAlphOmanyteChamberDescriptionSign
	bg_event  4,  0, BGEVENT_UP, RuinsOfAlphOmanyteChamberWallPattern

	def_object_events
