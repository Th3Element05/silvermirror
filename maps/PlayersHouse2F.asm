	object_const_def
	const PLAYERSHOUSE2F_CONSOLE
	const PLAYERSHOUSE2F_DOLL_1
	const PLAYERSHOUSE2F_DOLL_2
	const PLAYERSHOUSE2F_BIG_DOLL

PlayersHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PlayersHouse2FInitializeRoomCallback
	callback MAPCALLBACK_TILES, PlayersHouse2FSetUpTileDecorationsCallback

PlayersHouse2FInitializeRoomCallback:
	special ToggleDecorationsVisibility
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
;	checkevent EVENT_INITIALIZED_EVENTS        ;silvermirror- event initialization
;	iftrue .SkipInitialization
;	jumpstd InitializeEventsScript
;	endcallback
;
;.SkipInitialization:
	endcallback

PlayersHouse2FSetUpTileDecorationsCallback:
	special ToggleMaptileDecorations
	endcallback

PlayersHouseDoll1Script::
	describedecoration DECODESC_LEFT_DOLL

PlayersHouseDoll2Script:
	describedecoration DECODESC_RIGHT_DOLL

PlayersHouseBigDollScript:
	describedecoration DECODESC_BIG_DOLL

PlayersHouseGameConsoleScript:
	describedecoration DECODESC_CONSOLE

PlayersHousePosterScript:
	conditional_event EVENT_PLAYERS_ROOM_POSTER, .Script

.Script:
	describedecoration DECODESC_POSTER

PlayersHouseRadioScript:
if DEF(_DEBUG)
	opentext
;	; full pokegear
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
;	setflag ENGINE_PAGER_CARD
;	setflag ENGINE_RADIO_CARD
;	setflag ENGINE_EXPN_CARD
;	; wPagerFlags
;	setflag ENGINE_PAGER_CUT
;	setflag ENGINE_PAGER_FLY
;	setflag ENGINE_PAGER_SURF
;	setflag ENGINE_PAGER_STRENGTH
;	setflag ENGINE_PAGER_FLASH
;	setflag ENGINE_PAGER_WHIRLPOOL
;	setflag ENGINE_PAGER_ROCK_SMASH
;	; pokedex
;	setflag ENGINE_POKEDEX
;	; useful items
;	giveitem MAX_REPEL, 50
;	giveitem RARE_CANDY, 50
;	giveitem POKE_BALL, 50
;	giveitem GREAT_BALL, 50
;	giveitem ULTRA_BALL, 50
;	giveitem MASTER_BALL, 50
;	giveitem HEAVY_BALL, 50
;	giveitem LEVEL_BALL, 50
;	giveitem LURE_BALL, 50
;	giveitem FAST_BALL, 50
;	giveitem FRIEND_BALL, 50
;	giveitem MOON_BALL, 50
;	giveitem LOVE_BALL, 50
;	giveitem PARK_BALL, 50
;	giveitem SAFARI_BALL, 50
	; good party
	givepoke STARMIE, 90, LEFTOVERS
	givepoke MAGMAR, 90, LEFTOVERS
	givepoke VICTREEBEL, 90, LEFTOVERS
	givepoke WEEZING, 90, LEFTOVERS
	givepoke ELECTABUZZ, 90, LEFTOVERS
;	givepoke PIDGEOT, 90, LEFTOVERS
;
	loadmem wPartyMon1Moves+0, SURF
	loadmem wPartyMon1Moves+1, ICE_BEAM
	loadmem wPartyMon1Moves+2, THUNDERBOLT
	loadmem wPartyMon1Moves+3, PSYCHIC_M
;	loadmem wPartyMon2DVs+0, $ea
;	loadmem wPartyMon2DVs+1, $aa
;
	loadmem wPartyMon2Moves+0, FLAMETHROWER
	loadmem wPartyMon2Moves+1, THUNDERPUNCH
	loadmem wPartyMon2Moves+2, PSYCHIC_M
	loadmem wPartyMon2Moves+3, HEADBUTT
;	loadmem wPartyMon2DVs+0, $ea
;	loadmem wPartyMon2DVs+1, $aa
;
	loadmem wPartyMon3Moves+0, GIGA_DRAIN
	loadmem wPartyMon3Moves+1, SLUDGE_BOMB
	loadmem wPartyMon3Moves+2, TOXIC
	loadmem wPartyMon3Moves+3, SLEEP_POWDER
;	loadmem wPartyMon3DVs+0, $ea
;	loadmem wPartyMon3DVs+1, $aa
;
	loadmem wPartyMon4Moves+0, SLUDGE_BOMB
	loadmem wPartyMon4Moves+1, SMOKESCREEN
	loadmem wPartyMon4Moves+2, FEINT_ATTACK
	loadmem wPartyMon4Moves+3, SELFDESTRUCT
;	loadmem wPartyMon4DVs+0, $ea
;	loadmem wPartyMon4DVs+1, $aa
;
	loadmem wPartyMon5Moves+0, THUNDERBOLT
	loadmem wPartyMon5Moves+1, ICE_PUNCH
	loadmem wPartyMon5Moves+2, KARATE_CHOP
	loadmem wPartyMon5Moves+3, THIEF
;	loadmem wPartyMon5DVs+0, $ea
;	loadmem wPartyMon5DVs+1, $aa
;
;	loadmem wPartyMon6Moves+0, WING_ATTACK
;	loadmem wPartyMon6Moves+1, SWIFT
;	loadmem wPartyMon6Moves+2, DOUBLE_TEAM
;	loadmem wPartyMon6Moves+3, ROAR
;	loadmem wPartyMon6DVs+0, $ea
;	loadmem wPartyMon6DVs+1, $aa
;	; Grant All Pokemon                     ;commented out Grant All Pokemon
;	for x, NUM_POKEMON
;	givepoke BULBASAUR + x, 50
;endr
	; intro events
	addcellnum PHONE_MOM
	addcellnum PHONE_OAK
	setmapscene PLAYERS_HOUSE_1F, $1
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	closetext
	end
else

	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftrue .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext PlayersRadioText1
	pause 45
	writetext PlayersRadioText2
	pause 45
	writetext PlayersRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	writetext PlayersRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end

.NormalRadio:
	jumpstd Radio1Script

.AbbreviatedRadio:
	opentext
	writetext PlayersRadioText4
	pause 45
	closetext
	end

endc

PlayersHouseBookshelfScript:
if DEF(_DEBUG)
	opentext
	checkflag ENGINE_CHALLENGE_MODE_ACTIVE
	iftrue .TurnOffChallengeMode
	playsound SFX_PAY_DAY
	setflag ENGINE_CHALLENGE_MODE_ACTIVE
	writetext PlayersHouseBookshelfChallengeModeActivatedText
.cont:
	waitbutton
	closetext
	end

.TurnOffChallengeMode:
	playsound SFX_SHUT_DOWN_PC
	clearflag ENGINE_CHALLENGE_MODE_ACTIVE
	writetext PlayersHouseBookshelfChallengeModeDeactivatedText
	jump .cont
else
	jumpstd PictureBookshelfScript
endc

PlayersHousePCScript:
	opentext
	special PlayersHousePC
	iftrue .Warp
	closetext
	end
.Warp:
	warp NONE, 0, 0
	end

PlayersBedHealing:
	opentext
	writetext PlayersBedHealingText1
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iffalse .NoHeal
	promptbutton
	writetext PlayersBedHealingText2
	yesorno
	iffalse .NoHeal
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext PlayersBedHealingText3
	; fallthrough
.NoHeal
	waitbutton
	closetext
	end

PlayersBedHealingText1:
	text "Your bed looks"
	line "warm and cozy."
	done

PlayersBedHealingText2:
	text "Would you like to"
	line "rest in your bed?"
	done

PlayersBedHealingText3:
	text "Your #MON are"
	line "feeling refreshed!"
	done

PlayersRadioText1:
	text "#MON TALK!"
	line "Please tune in"
	cont "next time!"
	done

PlayersRadioText2:
	text "#MON CHANNEL!"
	done

PlayersRadioText3:
	text "This is DJ MARY,"
	line "your host!"
	done

PlayersRadioText4:
	text "#MON!"
	line "#MON CHANNEL…"
	done

PlayersHouseBookshelfChallengeModeActivatedText:
	text "CHALLENGE MODE"
	line "ACTIVATED!"
	done

PlayersHouseBookshelfChallengeModeDeactivatedText:
	text "CHALLENGE MODE"
	line "DEACTIVATED!"
	done

PlayersHouseDebugPlayer:
	opentext
	writetext PlayersHouseDebugText
	waitbutton
;	givepoke BULBASAUR, 10
;	givepoke CHARMANDER, 10
;	givepoke SQUIRTLE, 10
	givepoke BULBASAUR, 50
	givepoke CHARMANDER, 50
;	givepoke SQUIRTLE, 50

	loadmem wPartyMon1Moves+0, FIRE_FANG
	loadmem wPartyMon1Moves+1, ICE_FANG
	loadmem wPartyMon1Moves+2, THUNDER_FANG
	loadmem wPartyMon1Moves+3, POISON_FANG
;	loadmem wPartyMon1DVs+0, $ea
;	loadmem wPartyMon1DVs+1, $aa

	loadmem wPartyMon2Moves+0, FIRE_PUNCH
	loadmem wPartyMon2Moves+1, ICE_PUNCH
	loadmem wPartyMon2Moves+2, THUNDERPUNCH
	loadmem wPartyMon2Moves+3, METAL_CLAW
;	loadmem wPartyMon1DVs+0, $ea
;	loadmem wPartyMon1DVs+1, $aa

;	loadmem wPartyMon3Moves+0, SEED_BOMB
;	loadmem wPartyMon3Moves+1, X_SCISSOR
;	loadmem wPartyMon3Moves+2, ASTONISH
;	loadmem wPartyMon3Moves+3, ICICLE_SPEAR
;	loadmem wPartyMon1DVs+0, $ea
;	loadmem wPartyMon1DVs+1, $aa

	giveitem RARE_CANDY, 20
	giveitem CARBOS, 20
	giveitem X_ACCURACY, 20
;	giveitem TM_GIGA_DRAIN
	closetext
	end

TrainerRivalDebug:
	trainer RIVAL1, RIVAL_DEBUG, EVENT_BEAT_GRUNTM_1, PlayersHouseDebugText, PlayersHouseDebugText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PlayersHouseDebugText
	waitbutton
	closetext
	clearevent EVENT_BEAT_GRUNTM_1
	end

PlayersHouseDebugText:
	text "DEBUG STUFF"
	done

PlayersHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  0, PLAYERS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_READ, PlayersBedHealing
	bg_event  0,  5, BGEVENT_READ, PlayersBedHealing
	bg_event  2,  1, BGEVENT_UP, PlayersHousePCScript
	bg_event  3,  1, BGEVENT_READ, PlayersHouseRadioScript
	bg_event  5,  1, BGEVENT_READ, PlayersHouseBookshelfScript
	bg_event  6,  0, BGEVENT_IFSET, PlayersHousePosterScript

	def_object_events
	object_event  4,  2, SPRITE_CONSOLE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayersHouseGameConsoleScript, EVENT_PLAYERS_HOUSE_2F_CONSOLE
	object_event  4,  4, SPRITE_DOLL_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayersHouseDoll1Script, EVENT_PLAYERS_HOUSE_2F_DOLL_1
	object_event  5,  4, SPRITE_DOLL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayersHouseDoll2Script, EVENT_PLAYERS_HOUSE_2F_DOLL_2
	object_event  0,  1, SPRITE_BIG_DOLL, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayersHouseBigDollScript, EVENT_PLAYERS_HOUSE_2F_BIG_DOLL
	object_event  1,  1, SPRITE_CHRIS, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayersHouseDebugPlayer, -1
	object_event  0,  1, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerRivalDebug, -1