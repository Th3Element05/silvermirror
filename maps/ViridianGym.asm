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
	setevent EVENT_BEAT_POKEMANIAC_TYSON
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
	ntag "BLACKBELT:"
	text "I'm the KARATE"
	line "KING! Your fate"
	cont "rests with me!"
	done

BlackbeltWaiBeatenText:
	ntag "WAI:"
	text "Ayah!"
	done

BlackbeltWaiAfterBattleText:
	ntag "BLACKBELT:"
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
	ntag "COOLTRAINER:"
	text "VIRIDIAN GYM was"
	line "closed for a long"
	cont "time, but now our"
	roll "LEADER is back!"
	done

CooltrainerMPaulBeatenText:
	ntag "PAUL:"
	text "I was beaten?"
	done

CooltrainerMPaulAfterBattleText:
	ntag "COOLTRAINER:"
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
	ntag "COOLTRAINER:"
	text "The truly talented"
	line "win with style!"
	done

CooltrainerMNickBeatenText:
	ntag "NICK:"
	text "I lost my grip!"
	done

CooltrainerMNickAfterBattleText:
	ntag "COOLTRAINER:"
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
	ntag "BLACKBELT:"
	text "Karate is the"
	line "ultimate form of"
	cont "martial arts!"
	done

BlackbeltTyBeatenText:
	ntag "TY:"
	text "Atcho!"
	done

BlackbeltTyAfterBattleText:
	ntag "BLACKBELT:"
	text "If my #MON"
	line "were as good at"
	cont "karate as I am…"
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
	ntag "#MANIAC:"
	text "#MON and I, we"
	line "make wonderful"
	cont "music together!"
	done

PokemaniacEthanBeatenText:
	ntag "ETHAN:"
	text "You are in"
	line "perfect harmony!"
	done

PokemaniacEthanAfterBattleText:
	ntag "#MANIAC:"
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
	ntag "COOLTRAINER:"
	text "Heh! You must be"
	line "running out of"
	cont "steam by now!"
	done

CooltrainerMAaronBeatenText:
	ntag "AARON:"
	text "I ran out of gas!"
	done

CooltrainerMAaronAfterBattleText:
	ntag "COOLTRAINER:"
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
	ntag "BLACKBELT:"
	text "Rrrroar! I'm"
	line "working myself"
	cont "into a rage!"
	done

BlackbeltChoBeatenText:
	ntag "CHO:"
	text "Wargh!"
	done

BlackbeltChoAfterBattleText:
	ntag "BLACKBELT:"
	text "I'm still not"
	line "worthy!"
	done

TrainerPokemaniacTyson:
	trainer POKEMANIAC, TYSON, EVENT_BEAT_POKEMANIAC_TYSON, PokemaniacTysonSeenText, PokemaniacTysonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacTysonAfterBattleText
	waitbutton
	closetext
	end

PokemaniacTysonSeenText:
	ntag "#MANIAC:"
	text "Your #MON will"
	line "cower before"
	cont "my #MON!"
	done

PokemaniacTysonBeatenText:
	ntag "TYSON:"
	text "Yowch!"
	done

PokemaniacTysonAfterBattleText:
	ntag "#MANIAC:"
	text "Wait! I was just"
	line "careless!"
	done

ViridianGymGuideScript:
	checkevent EVENT_VIRIDIAN_GYM_BLUE
	iffalse .ViridianGymGuideBlueScript
	checkevent EVENT_BEAT_GIOVANNI
	iftrue .ViridianGymGuideWinScript
	jumptextfaceplayer ViridianGymGuideText

.ViridianGymGuideWinScript:
	jumptextfaceplayer ViridianGymGuideWinText

.ViridianGymGuideBlueScript:
	checkevent EVENT_BEAT_LEADER_BLUE
	iftrue .ViridianGymGuideBeatBlueScript
	jumptextfaceplayer ViridianGymGuideBlueText

.ViridianGymGuideBeatBlueScript:
	jumptextfaceplayer ViridianGymGuideBeatBlueText

ViridianGymGuideText:
	ntag "GUIDE:"
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
	ntag "GUIDE:"
	text "Blow me away!"
	line "GIOVANNI was the"
	cont "GYM LEADER here?"
	done

ViridianGymGuideBlueText:
	ntag "GUIDE:"
	text "VIRIDIAN GYM got"
	line "a new LEADER!"

	para "They were actually"
	line "a #MON LEAGUE"
	cont "CHAMPION once, if"
	roll "only briefly."

	para "But you know all"
	line "about that, don't"
	cont "you, CHAMP?"
	done

ViridianGymGuideBeatBlueText:
	ntag "GUIDE:"
	text "That's another win"
	line "under your belt,"
	cont "huh, CHAMP?"

	para "It feels like"
	line "nothing can stand"
	cont "in your way."

	para "I've seen you win"
	line "so many times."
	cont "It makes me wonder"
	roll "if you ever needed"
	cont "my advice?"

	para "<……>"
	
	para "Haha, don't tell"
	line "me!"

	para "Whether or not you"
	line "needed my advice,"
	cont "I'm happy to keep"
	roll "helping anyone who"
	cont "might need it!"
	done

ViridianGymStatue:
	checkevent EVENT_VIRIDIAN_GYM_BLUE
	iffalse .BlueIsLeader
;	gettrainername STRING_BUFFER_4, GIOVANNI, GIOVANNI1
	checkflag ENGINE_EARTHBADGE
	iftrue .Beaten
;	jumpstd GymStatue1Script
	jumptext ViridianGymStatue1Text

.Beaten:
;	jumpstd GymStatue2Script
	jumptext ViridianGymStatue2Text

.BlueIsLeader:
	gettrainername STRING_BUFFER_4, BLUE, BLUE1
	jumpstd GymStatue3Script

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


ViridianGymRematchesCompleteCheck::
	checkevent EVENT_BEAT_LEADER_BLUE
	iftrue .end
	checkevent EVENT_BEAT_BROCK_2
	iffalse .end
	checkevent EVENT_BEAT_MISTY_2
	iffalse .end
	checkevent EVENT_BEAT_LTSURGE_2
	iffalse .end
	checkevent EVENT_BEAT_ERIKA_2
	iffalse .end
	checkevent EVENT_BEAT_KOGA_2
	iffalse .end
	checkevent EVENT_BEAT_SABRINA_2
	iffalse .end
	checkevent EVENT_BEAT_BLAINE_2
	iffalse .end
	clearevent EVENT_VIRIDIAN_GYM_BLUE
	specialphonecall SPECIALCALL_VIRIDIANGYM2
.end
	end


ViridianGymBlueScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LEADER_BLUE
	iftrue .skipintro
	writetext BlueRematchIntroText
	waitbutton
	sjump .startbattle

.skipintro
	writetext BlueAskRematchText
	yesorno
	iffalse .norematch
.startbattle
	closetext
	winlosstext BlueRematchWinLossText, 0
	loadtrainer BLUE, BLUE1
	startbattle
	reloadmapafterbattle
	opentext
	checkevent EVENT_BEAT_LEADER_BLUE
	iffalse .firsttime
.norematch
	writetext BlueRematchAfterBattleText
	waitbutton
	closetext
	end

.firsttime
	setevent EVENT_BEAT_LEADER_BLUE
	writetext BlueAfterFirstRematchText
	waitbutton
	closetext
	end
	

BlueRematchIntroText:
	ntag "<RIVAL>:"
	text "<PLAYER>! Welcome"
	line "to my GYM!"

	para "Haha, it feels"
	line "odd to say that."
	cont "I've been to so"
	roll "many GYMs myself,"
	cont "I never imagined"
	roll "I would be on the"
	cont "other side of"
	roll "those battles!"

	para "I haven't had many"
	line "challengers yet,"
	cont "I'm not sure people"
	roll "have realized this"
	cont "GYM's open again."

	para "So, <PLAYER>, will"
	line "you help me break"
	cont "in my new GYM?"

	para "Not that I've ever"
	line "held anything back"
	cont "in our battles,"
	roll "but this time I'm"
	cont "still going to do"
	roll "my best to win!"
	done

BlueAskRematchText:
	ntag "<RIVAL>:"
	text "Do you have time"
	line "for a battle with"
	cont "an old rival?"
	done

BlueRematchWinLossText:
	ntag "<RIVAL>:"
	text "You're always just"
	line "a step above me!"
	done

BlueRematchAfterBattleText:
	ntag "<RIVAL>:"
	text "We can battle any"
	line "time you want."
	done

BlueAfterFirstRematchText:
	ntag "<RIVAL>:"
	text "You definitely"
	line "deserve to be the"
	cont "LEAGUE CHAMPION."

	para "I'm not sure if I"
	line "ever had a chance"
	cont "against you."

	para "No hard feelings,"
	line "though! I've got"
	cont "my own GYM now, so"
	roll "I've done alright!"

	para "I'll try not to"
	line "let it go to my"
	cont "head!"
	done


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
	object_event  2, 16, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacTyson, -1
	object_event 16, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianGymGuideScript, -1
	object_event 16,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianGymRevive, EVENT_VIRIDIAN_GYM_REVIVE
;
	object_event  2,  1, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianGymBlueScript, EVENT_VIRIDIAN_GYM_BLUE
