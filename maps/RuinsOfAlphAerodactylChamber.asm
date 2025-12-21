	object_const_def

RuinsOfAlphAerodactylChamber_MapScripts:
	def_scene_scripts
	scene_script RuinsOfAlphAerodactylChamberCheckWallScene, SCENE_RUINSOFALPHAERODACTYLCHAMBER_CHECK_WALL
	scene_script RuinsOfAlphAerodactylChamberNoopScene,      SCENE_RUINSOFALPHAERODACTYLCHAMBER_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsOfAlphAerodactylChamberHiddenDoorsCallback

RuinsOfAlphAerodactylChamberCheckWallScene:
	checkevent EVENT_WALL_OPENED_IN_AERODACTYL_CHAMBER
	iftrue .OpenWall
	end

.OpenWall:
	sdefer RuinsOfAlphAerodactylChamberWallOpenScript
RuinsOfAlphAerodactylChamberNoopScene:
	end

RuinsOfAlphAerodactylChamberHiddenDoorsCallback:
	checkevent EVENT_WALL_OPENED_IN_AERODACTYL_CHAMBER
	iftrue .WallOpen
	changeblock 4, 0, $1d ; closed wall
.WallOpen:
	checkevent EVENT_SOLVED_AERODACTYL_PUZZLE
	iffalse .FloorClosed
	endcallback

.FloorClosed:
	changeblock 2, 2, $02 ; left floor
	changeblock 4, 2, $03 ; right floor
	endcallback

RuinsOfAlphAerodactylChamberWallOpenScript:
	pause 30
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 30
	playsound SFX_STRENGTH
	changeblock 4, 0, $1e ; open wall
	reloadmappart
	earthquake 50
	setscene SCENE_RUINSOFALPHAERODACTYLCHAMBER_NOOP
	closetext
	end

RuinsOfAlphAerodactylChamberPuzzle:
	refreshscreen
	setval UNOWNPUZZLE_AERODACTYL
	special UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_SOLVED_AERODACTYL_PUZZLE
	setflag ENGINE_UNLOCKED_UNOWNS_S_TO_W
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

;RuinsOfAlphAerodactylChamber_SkyfallTopMovement: ;in KabutoChamber
;	skyfall_top
;	step_end

RuinsOfAlphAerodactylChamberDescriptionSign:
	jumptext RuinsOfAlphAerodactylChamberDescriptionText
RuinsOfAlphAerodactylChamberDescriptionText:
	text "This flying #-"
	line "MON attacked its"
	cont "prey with saw-like"
	cont "fangs."
	done

RuinsOfAlphAerodactylChamberWallPattern:
	checkevent EVENT_WALL_OPENED_IN_AERODACTYL_CHAMBER
	iftrue .WallOpen
	opentext
	writetext RuinsOfAlphKabutoChamber_WallPatternText
	setval UNOWNWORDS_LIGHT
	special DisplayUnownWords
	closetext
	end

.WallOpen:
	jumptext RuinsOfAlphKabutoChamber_WallHoleText

;RuinsOfAlphAerodactylChamber_WallPatternText: ;in KabutoChamber
;	text "Patterns appeared"
;	line "on the walls…"
;	done

;RuinsOfAlphAerodactylChamber_WallHoleText: ;in KabutoChamber
;	text "There's a big hole"
;	line "in the wall!"
;	done

RuinsOfAlphAerodactylChamberAncientReplica:
	jumptext RuinsOfAlphInnerChamber_StatueText
;RuinsOfAlphAerodactylChamber_StatueText: ;from RuinsOfAlphInnerChamber
;	text "It's a replica of"
;	line "an ancient #-"
;	cont "MON."
;	done

RuinsOfAlphAerodactylChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 2
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 2
	warp_event  3,  3, RUINS_OF_ALPH_INNER_CHAMBER, 8
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 9
	warp_event  4,  0, RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphAerodactylChamberAncientReplica
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphAerodactylChamberAncientReplica
	bg_event  3,  2, BGEVENT_UP, RuinsOfAlphAerodactylChamberPuzzle
	bg_event  4,  2, BGEVENT_UP, RuinsOfAlphAerodactylChamberDescriptionSign
	bg_event  4,  0, BGEVENT_UP, RuinsOfAlphAerodactylChamberWallPattern

	def_object_events
