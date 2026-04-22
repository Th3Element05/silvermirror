	object_const_def

TinTower1F_MapScripts:
	def_scene_scripts
	scene_script TinTower1FTowerShakesScene, SCENE_TINTOWER1F_TOWER_SHAKES
	scene_script TinTower1FNoopScene,        SCENE_TINTOWER1F_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, TinTower1FStairsCallback

TinTower1FSuicuneBattleScene:
	sdefer TinTower1FTowerShakesScene
TinTower1FNoopScene:
	end

TinTower1FStairsCallback:
;	setscene SCENE_TINTOWER1F_TOWER_SHAKES
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue .DontHideStairs
	changeblock 10, 2, $09 ; floor
.DontHideStairs:
	endcallback

; scene
TinTower1FTowerShakesScene:
	checkitem RAINBOW_WING
	iffalse .NoHooh
	checkflag ENGINE_PLAYER_CAUGHT_HO_OH
	iftrue .NoHooh
	checkevent EVENT_FOUGHT_HO_OH
	iftrue .NoHooh
	cry HO_OH
;	waitsfx
	earthquake 60
	opentext
	writetext TinTower1FTowerShookText
	waitbutton
	closetext
.NoHooh
	setscene SCENE_TINTOWER1F_NOOP
	end

TinTower1FTowerShookText:
	text "The tower shook!"

	para "HO-OH must be"
	line "waiting at the top"
	cont "of the TOWER."
	done
	

; npc
TinTower1FSage1Script:
	jumptextfaceplayer TinTower1FSage1Text
TinTower1FSage1Text:
;	ntag "SAGE:"
	text "HO-OH appears to"
	line "have descended"
	cont "upon the TOWER!"
	done

TinTower1FSage2Script:
	jumptextfaceplayer TinTower1FSage2Text
TinTower1FSage2Text:
;	ntag "SAGE:"
	text "When the BRASS"
	line "TOWER burned down,"
	cont "three nameless"
	roll "#MON were said"
	cont "to have perished."
	roll "It was tragic."

	para "However…"

	para "The rainbow-winged"
	line "#MON, HO-OH,"
	cont "descended from the"
	roll "TIN TOWER and gave"
	cont "new life to the"
	roll "three #MON."

	para "These legendary"
	line "#MON are named"
	cont "RAIKOU, ENTEI and"
	roll "SUICUNE."

	para "That is what the"
	line "legends say."
	done

TinTower1FSage3Script:
	jumptextfaceplayer TinTower1FSage3Text
TinTower1FSage3Text:
;	ntag "SAGE:"
	text "The legendary"
	line "#MON are said"
	cont "to embody three"
	roll "powers…"

	para "The lightning that"
	line "struck the TOWER."

	para "The fire that"
	line "burned the TOWER."

	para "And the rain that"
	line "put out the fire…"
	done

TinTower1FSage4Script:
	jumptextfaceplayer TinTower1FSage4Text
TinTower1FSage4Text:
;	ntag "SAGE:"
	text "The two TOWERs are"
	line "said to have been"
	cont "built to foster"
	roll "friendship and"
	cont "hope between #-"
	roll "MON and people."

	para "That was 700 years"
	line "ago, but the ideal"
	cont "still remains"
	roll "important today."
	done

TinTower1FSage5Script:
	checkevent EVENT_FOUGHT_HO_OH
	iftrue .NoHooh
	jumptextfaceplayer TinTower1FSage5Text1

.NoHooh
	jumptextfaceplayer TinTower1FSage5Text2

TinTower1FSage5Text1:
;	ntag "SAGE:"
	text "I believe you are"
	line "being tested."

	para "Free your mind"
	line "from uncertainty,"
	cont "and advance."
	done

TinTower1FSage5Text2:
;	ntag "SAGE:"
	text "I have more time"
	line "to meditate now"
	cont "that things have"
	roll "quieted down."
	done


TinTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 15, ECRUTEAK_CITY, 12
	warp_event  8, 15, ECRUTEAK_CITY, 12
	warp_event  8,  2, TIN_TOWER_FLOORS, 2 ;3 ;TIN_TOWER_2F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5, 12, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage1Script, EVENT_FOUGHT_HO_OH
	object_event  7, 11, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage2Script, -1
	object_event  8, 11, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage3Script, -1
	object_event  9, 11, SPRITE_SAGE, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage4Script, -1
	object_event  7,  1, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage5Script, -1

