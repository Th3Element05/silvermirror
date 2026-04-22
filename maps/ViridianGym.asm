	object_const_def
	const VIRIDIANGYM_GIOVANNI

ViridianGym_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianGymGiovanniScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GIOVANNI
	iftrue .FightDone
	writetext GiovanniIntroText
	waitbutton
	closetext
	winlosstext GiovanniWinLossText, 0
	loadtrainer GIOVANNI, GIOVANNI1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GIOVANNI
	setevent EVENT_BEAT_BLACKBELT_WAI
	setevent EVENT_BEAT_COOLTRAINERM_PAUL
	setevent EVENT_BEAT_COOLTRAINERM_NICK
	setevent EVENT_BEAT_BLACKBELT_TY
	setevent EVENT_BEAT_POKEMANIAC_ETHAN
	setevent EVENT_BEAT_COOLTRAINERM_AARON
	setevent EVENT_BEAT_BLACKBELT_CHO
	setevent EVENT_BEAT_POKEMANIAC_DONALD
	opentext
	writetext ReceivedEarthbadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_EARTHBADGE
	promptbutton
	writetext GiovanniEarthbadgeText
	promptbutton
	setmapscene ROUTE_22, SCENE_ROUTE22_RIVAL
	; fallthrough
.FightDone:
	checkevent EVENT_GOT_TM27_FISSURE
	iftrue .GotFissure
	verbosegiveitem TM_FISSURE
	setevent EVENT_GOT_TM27_FISSURE
	writetext GiovanniExplainTMText
	promptbutton
.GotFissure:
	writetext GiovanniAfterBattleText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear VIRIDIANGYM_GIOVANNI
	pause 30
	special FadeInQuickly
	end

GiovanniIntroText:
	ntag "GIOVANNI:"
	text "Fwahahaha! This is"
	line "my hideout!"

	para "I planned to"
	line "resurrect TEAM"
	cont "ROCKET here!"

	para "But, you have"
	line "caught me again!"
	cont "So be it! This"
	roll "time, I'm not"
	cont "holding back!"

	para "Once more, you"
	line "shall face"
	cont "GIOVANNI, the"
	roll "greatest trainer!"
	done

GiovanniWinLossText:
	ntag "GIOVANNI:"
	text "Ha!"
	line "That was a truly"
	cont "intense fight!"
	roll "You have won!"
	cont "As proof, here is"
	roll "the EARTHBADGE!"
	done

ReceivedEarthbadgeText:
	text "<PLAYER> received"
	line "the EARTHBADGE."
	done

GiovanniEarthbadgeText:
	ntag "GIOVANNI:"
	text "The EARTHBADGE"
	line "makes #MON of"
	cont "any level obey!"

	para "It is evidence of"
	line "your mastery as a"
	cont "#MON trainer!"

	para "With 8 badges you"
	line "can now enter the"
	cont "#MON LEAGUE!"

	para "It is my gift for"
	line "your #MON"
	cont "LEAGUE challenge!"
	done

GiovanniExplainTMText:
	ntag "GIOVANNI:"
	text "TM27 is FISSURE!"
	line "It will take out"
	cont "#MON with just"
	roll "one hit!"

	para "I made it when I"
	line "ran the GYM here,"
	cont "too long ago…"
	done

GiovanniAfterBattleText:
	ntag "GIOVANNI:"
	text "Having lost, I"
	line "cannot face my"
	cont "underlings!"
	roll "TEAM ROCKET is"
	cont "finished!"

	para "I will dedicate my"
	line "life to the study"
	cont "of #MON!"

	para "Let us meet again"
	line "some day!"
	cont "Farewell!"
	done

TrainerBlackbeltWai:
	trainer BLACKBELT_T, WAI, EVENT_BEAT_BLACKBELT_WAI, BlackbeltWaiSeenText, BlackbeltWaiBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BlackbeltWaiAfterBattleText
	waitbutton
	closetext
	end

BlackbeltWaiSeenText:
	text "I'm the KARATE"
	line "KING! Your fate"
	cont "rests with me!"
	done

BlackbeltWaiBeatenText:
	text "Ayah!"
	done

BlackbeltWaiAfterBattleText:
	text "#MON LEAGUE?"
	line "You? Don't get"
	cont "cocky!"
	done

TrainerCooltrainerMPaul:
	trainer COOLTRAINERM, PAUL, EVENT_BEAT_COOLTRAINERM_PAUL, CooltrainerMPaulSeenText, CooltrainerMPaulBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMPaulAfterBattleText
	waitbutton
	closetext
	end

CooltrainerMPaulSeenText:
	text "VIRIDIAN GYM was"
	line "closed for a long"
	cont "time, but now our"
	roll "LEADER is back!"
	done

CooltrainerMPaulBeatenText:
	text "I was beaten?"
	done

CooltrainerMPaulAfterBattleText:
	text "You can go onto"
	line "#MON LEAGUE"
	cont "only by defeating"
	roll "our GYM LEADER!"
	done

TrainerCooltrainerMNick:
	trainer COOLTRAINERM, NICK, EVENT_BEAT_COOLTRAINERM_NICK, CooltrainerMNickSeenText, CooltrainerMNickBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMNickAfterBattleText
	waitbutton
	closetext
	end

CooltrainerMNickSeenText:
	text "The truly talented"
	line "win with style!"
	done

CooltrainerMNickBeatenText:
	text "I lost my grip!"
	done

CooltrainerMNickAfterBattleText:
	text "The LEADER will"
	line "scold me!"
	done

TrainerBlackbeltTy:
	trainer BLACKBELT_T, TY, EVENT_BEAT_BLACKBELT_TY, BlackbeltTySeenText, BlackbeltTyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BlackbeltTyAfterBattleText
	waitbutton
	closetext
	end

BlackbeltTySeenText:
	text "Karate is the"
	line "ultimate form of"
	cont "martial arts!"
	done

BlackbeltTyBeatenText:
	text "Atcho!"
	done

BlackbeltTyAfterBattleText:
	text "If my #MON"
	line "were as good at"
	cont "Karate as I…"
	done

TrainerPokemaniacEthan:
	trainer POKEMANIAC, ETHAN, EVENT_BEAT_POKEMANIAC_ETHAN, PokemaniacEthanSeenText, PokemaniacEthanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacEthanAfterBattleText
	waitbutton
	closetext
	end

PokemaniacEthanSeenText:
	text "#MON and I, we"
	line "make wonderful"
	cont "music together!"
	done

PokemaniacEthanBeatenText:
	text "You are in"
	line "perfect harmony!"
	done

PokemaniacEthanAfterBattleText:
	text "Do you know the"
	line "identity of our"
	cont "GYM LEADER?"
	done

TrainerCooltrainerMAaron:
	trainer COOLTRAINERM, AARON, EVENT_BEAT_COOLTRAINERM_AARON, CooltrainerMAaronSeenText, CooltrainerMAaronBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMAaronAfterBattleText
	waitbutton
	closetext
	end

CooltrainerMAaronSeenText:
	text "Heh! You must be"
	line "running out of"
	cont "steam by now!"
	done

CooltrainerMAaronBeatenText:
	text "I ran out of gas!"
	done

CooltrainerMAaronAfterBattleText:
	text "You need power to"
	line "keep up with our"
	cont "GYM LEADER!"
	done

TrainerBlackbeltCho:
	trainer BLACKBELT_T, CHO, EVENT_BEAT_BLACKBELT_CHO, BlackbeltChoSeenText, BlackbeltChoBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BlackbeltChoAfterBattleText
	waitbutton
	closetext
	end

BlackbeltChoSeenText:
	text "Rrrroar! I'm"
	line "working myself"
	cont "into a rage!"
	done

BlackbeltChoBeatenText:
	text "Wargh!"
	done

BlackbeltChoAfterBattleText:
	text "I'm still not"
	line "worthy!"
	done

TrainerPokemaniacDonald:
	trainer POKEMANIAC, DONALD, EVENT_BEAT_POKEMANIAC_DONALD, PokemaniacDonaldSeenText, PokemaniacDonaldBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacDonaldAfterBattleText
	waitbutton
	closetext
	end

PokemaniacDonaldSeenText:
	text "Your #MON will"
	line "cower before"
	cont "my #MON!"
	done

PokemaniacDonaldBeatenText:
	text "Yowch!"
	done

PokemaniacDonaldAfterBattleText:
	text "Wait! I was just"
	line "careless!"
	done

ViridianGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GIOVANNI
	iftrue .ViridianGymGuideWinScript
	writetext ViridianGymGuideText
	waitbutton
	closetext
	end

.ViridianGymGuideWinScript:
	writetext ViridianGymGuideWinText
	waitbutton
	closetext
	end

ViridianGymGuideText:
	text "Yo! CHAMP in the"
	line "making!"

	para "Even I don't know"
	line "VIRIDIAN LEADER's"
	cont "identity!"

	para "This will be the"
	line "toughest of all"
	cont "the GYM LEADERs!"

	para "I heard that the"
	line "trainers here"
	cont "like ground-type"
	roll "#MON!"
	done

ViridianGymGuideWinText:
	text "Blow me away!"
	line "GIOVANNI was the"
	cont "GYM LEADER here?"
	done

ViridianGymStatue:
;	gettrainername STRING_BUFFER_4, GIOVANNI, GIOVANNI1
	checkflag ENGINE_EARTHBADGE
	iftrue .Beaten
;	jumpstd GymStatue1Script
	jumptext ViridianGymStatue1Text

.Beaten:
;	jumpstd GymStatue2Script
	jumptext ViridianGymStatue2Text

ViridianGymStatue1Text:
	text "VIRIDIAN CITY"
	line "#MON GYM"

	para "WINNING TRAINERS:"
	line "<RIVAL>"
	done

ViridianGymStatue2Text:
	text "VIRIDIAN CITY"
	line "#MON GYM"

	para "WINNING TRAINERS:"
	line "<RIVAL>"
	cont "<PLAYER>"
	done

ViridianGymRevive:
	itemball REVIVE

ViridianGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16, 17, VIRIDIAN_CITY, 1
	warp_event 17, 17, VIRIDIAN_CITY, 1

	def_coord_events

	def_bg_events
	bg_event 15, 15, BGEVENT_READ, ViridianGymStatue
	bg_event 18, 15, BGEVENT_READ, ViridianGymStatue

	def_object_events
	object_event  2,  1, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianGymGiovanniScript, EVENT_BEAT_GIOVANNI
	object_event 10,  1, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltWai, -1
	object_event  6,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerMPaul, -1
	object_event 13,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerMNick, -1
	object_event  3,  7, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltTy, -1
	object_event 10,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacEthan, -1
	object_event 12,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerMAaron, -1
	object_event 11, 11, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 4, TrainerBlackbeltCho, -1
	object_event  2, 16, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacDonald, -1
	object_event 16, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianGymGuideScript, -1
	object_event 16,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianGymRevive, EVENT_VIRIDIAN_GYM_REVIVE
