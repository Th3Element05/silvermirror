	object_const_def
	const CERULEANCITY_RIVAL
	const CERULEANCITY_OFFICER
	const CERULEANCITY_ROCKET
	const CERULEANCITY_SLOWBRO
	const CERULEANCITY_SLOWBRO_TRAINER
	const CERULEANCITY_CAVE_COOLTRAINER_M

CeruleanCity_MapScripts:
	def_scene_scripts
	scene_script CeruleanCityNoop1Scene, SCENE_CERULEANCITY_RIVAL_BATTLE
	scene_script CeruleanCityNoop2Scene, SCENE_CERULEANCITY_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CeruleanCityFlypointCallback
	callback MAPCALLBACK_OBJECTS, CeruleanCityBlockersCallback
;	callback MAPCALLBACK_OBJECTS, CeruleanCityMoveOfficerCallback
;	callback MAPCALLBACK_OBJECTS, CeruleanCityMoveSlowbroCallback
;	callback MAPCALLBACK_OBJECTS, CeruleanCaveBlockCallback

CeruleanCityNoop1Scene:
CeruleanCityNoop2Scene:
	end

CeruleanCityFlypointCallback:
	setflag ENGINE_FLYPOINT_CERULEAN
	setmapscene CINNABAR_ISLAND, SCENE_CINNABARISLAND_NOOP
	endcallback

CeruleanCityBlockersCallback:
;CeruleanCityMoveOfficerCallback:
	checkevent EVENT_HELPED_BILL
	iftrue .BillHelped
	moveobject CERULEANCITY_OFFICER, 27, 12
.BillHelped
;	endcallback
	; fallthrough
;CeruleanCityMoveSlowbroCallback:
	checkevent EVENT_BEAT_GRUNTM_4 ;EVENT_BEAT_LTSURGE
	iftrue .ObtainedDig
	moveobject CERULEANCITY_SLOWBRO, 20, 27
	moveobject CERULEANCITY_SLOWBRO_TRAINER, 21, 27
.ObtainedDig
;	endcallback
	; fallthrough
;CeruleanCaveBlockCallback:
	readvar VAR_BADGES
	ifequal NUM_KANTO_BADGES, .Disappear ;NUM_BADGES, .Disappear
	appear CERULEANCITY_CAVE_COOLTRAINER_M
	endcallback
.Disappear:
	disappear CERULEANCITY_CAVE_COOLTRAINER_M
	endcallback

; scripts
CeruleanCityRivalEncounterR:
	moveobject CERULEANCITY_RIVAL, 21, 2
	; fallthrough
CeruleanCityRivalEncounterL:
	playmusic MUSIC_RIVAL_ENCOUNTER
	pause 20
	appear CERULEANCITY_RIVAL
	applymovement CERULEANCITY_RIVAL, CeruleanCityRivalApproachMovement
	opentext
	writetext CeruleanCityRivalBeforeBattleText
	waitbutton
	closetext
	setevent EVENT_CERULEAN_CITY_RIVAL
	setlasttalked CERULEANCITY_RIVAL
	winlosstext CeruleanCityRivalBattleWinText, CeruleanCityRivalBattleLossText
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .RivalBulbasaur
	checkevent EVENT_GOT_BULBASAUR_FROM_OAK
	iftrue .RivalCharmander
	loadtrainer RIVAL1, RIVAL1_3_SQUIRTLE
	startbattle
	reloadmapafterbattle
	sjump .FinishRival
.RivalBulbasaur
	loadtrainer RIVAL1, RIVAL1_3_BULBASAUR
	startbattle
	reloadmapafterbattle
	sjump .FinishRival
.RivalCharmander
	loadtrainer RIVAL1, RIVAL1_3_CHARMANDER
	startbattle
	reloadmapafterbattle
;	sjump .FinishRival
	; fallthrough
.FinishRival
	opentext
	writetext CeruleanCityRivalAfterBattleText
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_ENCOUNTER
	scall CeruleanCityRivalGoesAroundScript
	applymovement CERULEANCITY_RIVAL, CeruleanCityRivalLeavesMovement
	disappear CERULEANCITY_RIVAL
	setscene SCENE_CERULEANCITY_NOOP
	special RestartMapMusic
	end

CeruleanCityRivalGoesAroundScript:
	readvar VAR_XCOORD
	ifequal 20, .Right
	applymovement CERULEANCITY_RIVAL, CeruleanCityRivalLeftMovement
	end
.Right
	applymovement CERULEANCITY_RIVAL, CeruleanCityRivalRightMovement
	end

CeruleanCityRivalBeforeBattleText:
	text "<RIVAL>: Yo!"
	line "<PLAYER>!"

	para "You're still"
	line "struggling along"
	cont "back here?"

	para "I'm doing great!"
	line "I caught a bunch"
	cont "of strong and"
	cont "smart #MON!"

	para "Here, let me see"
	line "what you caught,"
	cont "<PLAYER>!"
	done

CeruleanCityRivalBattleWinText:
	text "Hey!"
	line "Take it easy!"
	cont "You won already!"
	done

CeruleanCityRivalBattleLossText:
	text "Heh!"
	line "You're no match"
	cont "for my genius!"
	done

CeruleanCityRivalAfterBattleText:
	text "<RIVAL>: Hey,"
	line "guess what?"

	para "I went to BILL's"
	line "and got him to"
	cont "show me his rare"
	cont "#MON!"

	para "That added a lot"
	line "of pages to my"
	cont "#DEX!"

	para "After all, BILL's"
	line "world famous as a"
	cont "#MANIAC!"

	para "He invented the"
	line "#MON Storage"
	cont "System on PC!"

	para "Since you're using"
	line "his system, go"
	cont "thank him!"

	para "Well, I better"
	line "get rolling!"
	cont "Smell ya later!"
	done

CeruleanCityOfficerScript:
	jumptextfaceplayer CeruleanCityOfficerText
CeruleanCityOfficerText:
	text "The people here"
	line "were robbed."

	para "It's obvious that"
	line "TEAM ROCKET is"
	cont "behind this most"
	cont "heinous crime!"

	para "Even our POLICE"
	line "force has trouble"
	cont "with the ROCKETs!"
	done

TrainerRocketGruntM4:
	trainer GRUNTM, GRUNTM_4, EVENT_BEAT_GRUNTM_4, CeruleanCityRocketSeenText, CeruleanCityRocketBeatenText, 0, .Script
.Script:
	opentext
	writetext CeruleanCityRocketAfterBattleText
	promptbutton
	giveitem TM_DIG
	waitsfx
	writetext CeruleanCityRecoveredDigText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	writetext CeruleanCityRocketLeavesText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear CERULEANCITY_ROCKET
	playsound SFX_ESCAPE_ROPE
	waitsfx
	special FadeInQuickly
	end

CeruleanCityRocketSeenText:
	text "Hey! Stay out!"
	line "It's not your"
	cont "yard! Huh? Me?"

	para "I'm an innocent"
	line "bystander! Don't"
	cont "you believe me?"
	done

CeruleanCityRocketBeatenText:
	text "Stop!"
	line "I give up!"
	cont "I'll leave quietly!"
	done

CeruleanCityRocketAfterBattleText:
	text "OK! I'll return"
	line "the TM I stole!"
	done

CeruleanCityRecoveredDigText:
	text "<PLAYER> recovered"
	line "TM28!" ; "TM28!@"
	done

CeruleanCityRocketLeavesText:
	text "I better get"
	line "moving! Bye!"
	done

CeruleanCitySlowbroScript:
	opentext
	writetext CeruleanCitySlowbroText1
	pause 60
	writetext CeruleanCitySlowbroText2
	cry SLOWBRO
	waitbutton
	closetext
	end

CeruleanCitySlowbroText1:
	text "SLOWBRO: …"

	para "<……> <……> <……>"
	done

CeruleanCitySlowbroText2:
	text "<……> <……>Yarah?"
	done

CeruleanCitySlowbroTrainerScript:
	turnobject CERULEANCITY_SLOWBRO_TRAINER, LEFT
	opentext
	random 3
;	ifequal 0, .WaterGun ;just fallthrough
	ifequal 1, .Withdraw
	ifequal 2, .Psychic
;.WaterGun
	writetext CeruleanCitySlowbroTrainerWaterGunText
	promptbutton
	closetext
	sjump CeruleanCitySlowbroDisobeysScript
.Withdraw
	writetext CeruleanCitySlowbroTrainerWithdrawText
	promptbutton
	closetext
	sjump CeruleanCitySlowbroDisobeysScript
.Psychic
	writetext CeruleanCitySlowbroTrainerPsychicText
	promptbutton
	closetext
	; fallthrough
CeruleanCitySlowbroDisobeysScript:
	opentext
	random 4
;	ifequal 0, .Snooze ;just fallthrough
	ifequal 1, .Loaf
	ifequal 2, .Turn
	ifequal 3, .Ignore
;.Snooze
	writetext CeruleanCitySlowbroSnoozeText
	waitbutton
	closetext
	jumptextfaceplayer CeruleanCityObedienceSpeechText
.Loaf
	writetext CeruleanCitySlowbroLoafText
	waitbutton
	closetext
	jumptextfaceplayer CeruleanCityObedienceSpeechText
.Turn
	writetext CeruleanCitySlowbroTurnText
	waitbutton
	closetext
	jumptextfaceplayer CeruleanCityObedienceSpeechText
.Ignore
	writetext CeruleanCitySlowbroIgnoreText
	waitbutton
	closetext
	jumptextfaceplayer CeruleanCityObedienceSpeechText

CeruleanCitySlowbroTrainerWaterGunText:
	text "OK! SLOWBRO!"
	line "Use WATER GUN!"

	para "No! That's wrong!"
	done

CeruleanCitySlowbroTrainerWithdrawText:
	text "SLOWBRO, WITHDRAW!"

	para "No! You blew it"
	line "again!"
	done

CeruleanCitySlowbroTrainerPsychicText:
	text "Show me your"
	line "PSYCHIC attack!"

	para "Come on, SLOWBRO"
	line "pay attention!"
	done

CeruleanCitySlowbroSnoozeText:
	text "SLOWBRO took a"
	line "snooze…"
	done

CeruleanCitySlowbroLoafText:
	text "SLOWBRO is"
	line "loafing around…"
	done

CeruleanCitySlowbroTurnText:
	text "SLOWBRO turned"
	line "away…"
	done

CeruleanCitySlowbroIgnoreText:
	text "SLOWBRO"
	line "ignored orders…"
	done

CeruleanCityObedienceSpeechText:
	text "It's so hard to"
	line "control #MON!"

	para "Your #MON's"
	line "obedience depends"
	cont "on your abilities"
	cont "as a trainer!"
	done

CeruleanCitySuperNerd1Script:
	jumptextfaceplayer CeruleanCitySuperNerd1Text
CeruleanCitySuperNerd1Text:
	text "That trainer in"
	line "front of the shop"
	cont "can't control her"
	cont "SLOWBRO."
	
	para "Its blocking the"
	line "path…"

	para "There might be a"
	line "way around."
	done

CeruleanCityCooltrainerMScript:
	jumptextfaceplayer CeruleanCityCooltrainerMText
CeruleanCityCooltrainerMText:
	text "You're a trainer"
	line "too? Collecting,"
	cont "fighting, it's a"
	cont "tough life."
	done

CeruleanCitySuperNerd2Script:
	jumptextfaceplayer CeruleanCitySuperNerd2Text
CeruleanCitySuperNerd2Text:
	text "You're making an"
	line "encyclopedia on"
	cont "#MON? That"
	cont "sounds amusing."
	done

CeruleanCityCooltrainerFScript:
	jumptextfaceplayer CeruleanCityCooltrainerFText
CeruleanCityCooltrainerFText:
	text "I want a bright"
	line "red BICYCLE!"

	para "I'll keep it at"
	line "home, so it won't"
	cont "get dirty!"
	done

CeruleanCaveCooltrainerMScript:
	jumptextfaceplayer CeruleanCaveCooltrainerMText
CeruleanCaveCooltrainerMText:
	text "This is CERULEAN"
	line "CAVE! Horribly"
	cont "strong #MON"
	cont "live in there!"

	para "The #MON LEAGUE"
	line "CHAMPION is the"
	cont "only person who"
	cont "is allowed in!"
	done

; signs
CeruleanCitySign:
	jumptext CeruleanCitySignText
CeruleanCitySignText:
	text "CERULEAN CITY"

	para "A Mysterious Blue"
	line "Aura Surrounds It"
	done

CeruleanGymSign:
	jumptext CeruleanGymSignText
CeruleanGymSignText:
	text "CERULEAN CITY"
	line "#MON GYM"
	cont "LEADER: MISTY"

	para "The Tomboyish"
	line "Mermaid"
	done

CeruleanCityBikeShopSign:
	jumptext CeruleanCityBikeShopSignText
CeruleanCityBikeShopSignText:
	text "Grass and caves"
	line "handled easily!"
	cont "BIKE SHOP"
	done

CeruleanCityTrainerTips:
	jumptext CeruleanCityTrainerTipsText
CeruleanCityTrainerTipsText:
	text "TRAINER TIPS"

	para "Pressing B Button"
	line "during evolution"
	cont "cancels the whole"
	cont "process."
	done

CeruleanCityPokecenterSign:
	jumpstd PokecenterSignScript

CeruleanCityMartSign:
	jumpstd MartSignScript

; movements
CeruleanCityRivalLeftMovement:
	slow_step LEFT
	step_end

CeruleanCityRivalRightMovement:
	slow_step RIGHT
	step_end

CeruleanCityRivalLeavesMovement:
	slow_step DOWN
	slow_step DOWN
CeruleanCityRivalApproachMovement:
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_end

; hidden items
CeruleanCityHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_CERULEAN_CITY_HIDDEN_RARE_CANDY

CeruleanCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  9, CERULEAN_TRASHED_HOUSE, 1          ; 1
	warp_event  4, 11, CERULEAN_CAVE_1F, 1                ; 2
	warp_event  9, 11, CERULEAN_GYM_BADGE_SPEECH_HOUSE, 1 ; 3
	warp_event 27, 11, CERULEAN_TRASHED_HOUSE, 2          ; 4
	warp_event 13, 15, CERULEAN_TRADE_SPEECH_HOUSE, 1     ; 5
	warp_event 19, 17, CERULEAN_POKECENTER_1F, 1          ; 6
	warp_event 30, 19, CERULEAN_GYM, 1                    ; 7
	warp_event 14, 25, BIKE_SHOP, 1                       ; 8
	warp_event 25, 25, CERULEAN_MART, 1                   ; 9
	warp_event  9,  9, CERULEAN_GYM_BADGE_SPEECH_HOUSE, 3 ; 10

	def_coord_events
	coord_event 20,  7, SCENE_CERULEANCITY_RIVAL_BATTLE, CeruleanCityRivalEncounterL
	coord_event 21,  7, SCENE_CERULEANCITY_RIVAL_BATTLE, CeruleanCityRivalEncounterR

	def_bg_events
	bg_event 23, 19, BGEVENT_READ, CeruleanCitySign
	bg_event 29, 19, BGEVENT_READ, CeruleanGymSign
	bg_event 11, 25, BGEVENT_READ, CeruleanCityBikeShopSign
	bg_event 17, 29, BGEVENT_READ, CeruleanCityTrainerTips
	bg_event 15,  8, BGEVENT_ITEM, CeruleanCityHiddenRareCandy

	def_object_events
	object_event 20,  2, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CERULEAN_CITY_RIVAL
	object_event 28, 12, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCityOfficerScript, -1
	object_event 30,  8, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRocketGruntM4, EVENT_CERULEAN_CITY_ROCKET
	object_event 20, 26, SPRITE_SLOWBRO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, CeruleanCitySlowbroScript, -1
	object_event 21, 26, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanCitySlowbroTrainerScript, -1
	object_event  4, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, CeruleanCaveCooltrainerMScript, 0
	object_event 15, 18, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanCitySuperNerd1Script, -1
	object_event 31, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCityCooltrainerMScript, -1
	object_event  9, 21, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCitySuperNerd2Script, -1
	object_event  9, 27, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanCityCooltrainerFScript, -1

;.PinkOverYellowOBPalette