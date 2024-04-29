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

PlayersHouse2FNoopScene: ; unreferenced
	end

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

	db 0, 0, 0 ; unused

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
;	setflag ENGINE_POKEGEAR
;	setflag ENGINE_PHONE_CARD
;	setflag ENGINE_MAP_CARD
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
;	giveitem TM_DYNAMICPUNCH
;	giveitem TM_RAZOR_WIND
;	giveitem TM_SWORDS_DANCE
;	giveitem TM_WHIRLWIND
;	giveitem TM_MEGA_KICK
;	giveitem TM_TOXIC
;	giveitem TM_HORN_DRILL
;	giveitem TM_BODY_SLAM
;	giveitem TM_TAKE_DOWN
;	giveitem TM_DOUBLE_EDGE
;	giveitem TM_BUBBLEBEAM
;	giveitem TM_WATER_GUN
;	giveitem TM_ICE_BEAM
;	giveitem TM_BLIZZARD
;	giveitem TM_HYPER_BEAM
;	giveitem TM_PAY_DAY
;	giveitem TM_SUBMISSION
;	giveitem TM_COUNTER
;	giveitem TM_SEISMIC_TOSS
;	giveitem TM_RAGE
;	giveitem TM_GIGA_DRAIN
;	giveitem TM_SOLARBEAM
;	giveitem TM_DRAGONBREATH
;	giveitem TM_THUNDERBOLT
;	giveitem TM_THUNDER
;	giveitem TM_EARTHQUAKE
;	giveitem TM_FISSURE
;	giveitem TM_DIG
;	giveitem TM_PSYCHIC_M
;	giveitem TM_TELEPORT
;	giveitem TM_MIMIC
;	giveitem TM_DOUBLE_TEAM
;	giveitem TM_REFLECT
;	giveitem TM_BIDE
;	giveitem TM_METRONOME
;	giveitem TM_SELFDESTRUCT
;	giveitem TM_EGG_BOMB
;	giveitem TM_FIRE_BLAST
;	giveitem TM_SWIFT
;	giveitem TM_SKULL_BASH
;	giveitem TM_SOFTBOILED
;	giveitem TM_DREAM_EATER
;	giveitem TM_SKY_ATTACK
;	giveitem TM_REST
;	giveitem TM_THUNDER_WAVE
;	giveitem TM_PSYWAVE
;	giveitem TM_EXPLOSION
;	giveitem TM_ROCK_SLIDE
;	giveitem TM_TRI_ATTACK
;	giveitem TM_SUBSTITUTE
;	giveitem TM_FLAMETHROWER
;	giveitem TM_SPARK
;	giveitem TM_ICY_WIND
;	giveitem TM_HEADBUTT
;	giveitem TM_CURSE
;	giveitem TM_ROLLOUT
;	giveitem TM_ROCK_SMASH
;	giveitem TM_HIDDEN_POWER
;	giveitem TM_SUNNY_DAY
;	giveitem TM_SWEET_SCENT
;	giveitem TM_SNORE
;	giveitem TM_PROTECT
;	giveitem TM_RAIN_DANCE
;	giveitem TM_ENDURE
;	;	giveitem TM_FRUSTRATION
;	giveitem TM_IRON_TAIL
;	giveitem TM_RETURN
;	giveitem TM_SHADOW_BALL
;	giveitem TM_MUD_SLAP
;	;	giveitem TM_ICE_PUNCH
;	giveitem TM_SWAGGER
;	giveitem TM_SLEEP_TALK
;	giveitem TM_SLUDGE_BOMB
;	giveitem TM_SANDSTORM
;	;	giveitem TM_THUNDERPUNCH
;	giveitem TM_ATTRACT
;	giveitem TM_THIEF
;	giveitem TM_STEEL_WING
;	;	giveitem TM_FIRE_PUNCH
;	giveitem TM_FURY_CUTTER
;	giveitem TM_NIGHTMARE
;	giveitem HM_CUT
;	giveitem HM_FLY
;	giveitem HM_SURF
;	giveitem HM_STRENGTH
;	giveitem HM_FLASH
;	giveitem HM_WHIRLPOOL
;	giveitem HM_WATERFALL
;	; all badges
;	setflag ENGINE_ZEPHYRBADGE
;	setflag ENGINE_HIVEBADGE
;	setflag ENGINE_PLAINBADGE
;	setflag ENGINE_FOGBADGE
;	setflag ENGINE_STORMBADGE
;	setflag ENGINE_MINERALBADGE
;	setflag ENGINE_GLACIERBADGE
;	setflag ENGINE_RISINGBADGE
;	setflag ENGINE_BOULDERBADGE
;	setflag ENGINE_CASCADEBADGE
;	setflag ENGINE_THUNDERBADGE
;	setflag ENGINE_RAINBOWBADGE
;	setflag ENGINE_MARSHBADGE
;	setflag ENGINE_SOULBADGE
;	setflag ENGINE_VOLCANOBADGE
;	setflag ENGINE_EARTHBADGE
;	setevent EVENT_BEAT_FALKNER
;	setevent EVENT_BEAT_BUGSY
;	setevent EVENT_BEAT_WHITNEY
;	setevent EVENT_BEAT_MORTY
;	setevent EVENT_BEAT_CHUCK
;	setevent EVENT_BEAT_JASMINE
;	setevent EVENT_BEAT_PRYCE
;	setevent EVENT_BEAT_CLAIR
;	setevent EVENT_BEAT_BROCK
;	setevent EVENT_BEAT_MISTY
;	setevent EVENT_BEAT_LTSURGE
;	setevent EVENT_BEAT_ERIKA
;	setevent EVENT_BEAT_KOGA
;	setevent EVENT_BEAT_SABRINA
;	setevent EVENT_BEAT_BLAINE
;	setevent EVENT_BEAT_GIOVANNI
;	setevent EVENT_BEAT_ELITE_FOUR
;	; fly anywhere
;	setflag ENGINE_FLYPOINT_NEW_BARK
;	setflag ENGINE_FLYPOINT_CHERRYGROVE
;	setflag ENGINE_FLYPOINT_VIOLET
;	setflag ENGINE_FLYPOINT_AZALEA
;	setflag ENGINE_FLYPOINT_GOLDENROD
;	setflag ENGINE_FLYPOINT_ECRUTEAK
;	setflag ENGINE_FLYPOINT_OLIVINE
;	setflag ENGINE_FLYPOINT_CIANWOOD
;	setflag ENGINE_FLYPOINT_MAHOGANY
;	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
;	setflag ENGINE_FLYPOINT_BLACKTHORN
;	setflag ENGINE_FLYPOINT_SILVER_CAVE
;	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
;	setflag ENGINE_FLYPOINT_PALLET
;	setflag ENGINE_FLYPOINT_VIRIDIAN
;	setflag ENGINE_FLYPOINT_PEWTER
;	setflag ENGINE_FLYPOINT_CERULEAN
;	setflag ENGINE_FLYPOINT_VERMILION
;	setflag ENGINE_FLYPOINT_CELADON
;	setflag ENGINE_FLYPOINT_ROCK_TUNNEL
;	setflag ENGINE_FLYPOINT_LAVENDER
;	setflag ENGINE_FLYPOINT_FUCHSIA
;	setflag ENGINE_FLYPOINT_SAFFRON
;	setflag ENGINE_FLYPOINT_CINNABAR
;	setflag ENGINE_FLYPOINT_SAFARI_ZONE_GATE
;	setflag ENGINE_UNLOCKED_UNOWNS_A_TO_K
;	setflag ENGINE_UNLOCKED_UNOWNS_L_TO_R
;	setflag ENGINE_UNLOCKED_UNOWNS_S_TO_W
;	setflag ENGINE_UNLOCKED_UNOWNS_X_TO_Z
;	; post-e4
;	setflag ENGINE_CREDITS_SKIP
	; good party
	givepoke SEADRA, 70, LEFTOVERS
	givepoke VENOMOTH, 70, LEFTOVERS
	givepoke VICTREEBEL, 70, LEFTOVERS
	givepoke WEEZING, 70, LEFTOVERS
	givepoke MAGMAR, 70, LEFTOVERS
	givepoke MAGNETON, 70, LEFTOVERS
	loadmem wPartyMon1Moves+0, AURORA_BEAM
	loadmem wPartyMon1Moves+1, DRAGONBREATH
	loadmem wPartyMon1Moves+2, BUBBLEBEAM
	loadmem wPartyMon1Moves+3, DRAGON_RAGE
	loadmem wPartyMon2Moves+0, PSYCHIC_M
	loadmem wPartyMon2Moves+1, GUST
	loadmem wPartyMon2Moves+2, SLEEP_POWDER
	loadmem wPartyMon2Moves+3, LEECH_LIFE
;	loadmem wPartyMon2DVs+0, $ea
;	loadmem wPartyMon2DVs+1, $aa
	loadmem wPartyMon3Moves+0, RAZOR_LEAF
	loadmem wPartyMon3Moves+1, ACID
	loadmem wPartyMon3Moves+2, WRAP
	loadmem wPartyMon3Moves+3, SLEEP_POWDER
;	loadmem wPartyMon3DVs+0, $ea
;	loadmem wPartyMon3DVs+1, $aa
	loadmem wPartyMon4Moves+0, SLUDGE_BOMB
	loadmem wPartyMon4Moves+1, SMOKESCREEN
	loadmem wPartyMon4Moves+2, FEINT_ATTACK
	loadmem wPartyMon4Moves+3, EXPLOSION
;	loadmem wPartyMon4DVs+0, $ea
;	loadmem wPartyMon4DVs+1, $aa
	loadmem wPartyMon5Moves+0, FLAMETHROWER
	loadmem wPartyMon5Moves+1, THUNDERPUNCH
	loadmem wPartyMon5Moves+2, FEINT_ATTACK
	loadmem wPartyMon5Moves+3, DIZZY_PUNCH
;	loadmem wPartyMon5DVs+0, $ea
;	loadmem wPartyMon5DVs+1, $aa
	loadmem wPartyMon6Moves+0, SPARK
	loadmem wPartyMon6Moves+1, SONICBOOM
	loadmem wPartyMon6Moves+2, DOUBLE_TEAM
	loadmem wPartyMon6Moves+3, THUNDER_WAVE
;	loadmem wPartyMon6DVs+0, $ea
;	loadmem wPartyMon6DVs+1, $aa
;	; Grant All Pokemon                     ;commented out Grant All Pokemon
;	for x, NUM_POKEMON
;	givepoke BULBASAUR + x, 50
;endr
	; intro events
	addcellnum PHONE_MOM
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
;	special StubbedTrainerRankings_Healings
;	special FadeOutPalettes
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 70
;	special FadeInPalettes
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext PlayersBedHealingText3
	waitbutton
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
	text "PROF.OAK'S #MON"
	line "TALK! Please tune"
	cont "in next time!"
	done

PlayersRadioText2:
	text "#MON CHANNEL!"
	done

PlayersRadioText3:
	text "This is DJ MARY,"
	line "your co-host!"
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
