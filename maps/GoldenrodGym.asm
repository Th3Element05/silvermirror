	object_const_def
	const GOLDENRODGYM_WHITNEY
	const GOLDENRODGYM_LASS

GoldenrodGym_MapScripts:
	def_scene_scripts
	scene_script GoldenrodGymNoop1Scene, SCENE_GOLDENRODGYM_NOOP
	scene_script GoldenrodGymNoop2Scene, SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING

	def_callbacks

GoldenrodGymNoop1Scene:
GoldenrodGymNoop2Scene:
	end

GoldenrodGymWhitneyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_WHITNEY
	iftrue .FightDone
	writetext WhitneyIntroText
	waitbutton
	closetext
	winlosstext WhitneyShouldntBeSoSeriousText, 0
	loadtrainer WHITNEY, WHITNEY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_MADE_WHITNEY_CRY
	setscene SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING
	setevent EVENT_BEAT_BEAUTY_CYBIL
	setevent EVENT_BEAT_BEAUTY_SAMANTHA
	setevent EVENT_BEAT_LASS_KELLY
	setevent EVENT_BEAT_LASS_RUBY
.FightDone:
	checkevent EVENT_MADE_WHITNEY_CRY
	iffalse .StoppedCrying
	writetext WhitneyYouMeanieText
	turnobject GOLDENRODGYM_WHITNEY, UP
	waitbutton
	closetext
	end

.StoppedCrying:
	checkevent EVENT_GOT_TM45_ATTRACT
	iftrue .GotAttract
	checkflag ENGINE_PLAINBADGE
	iftrue .GotPlainBadge
	writetext WhitneyWhatDoYouWantText
	promptbutton
	waitsfx
	writetext PlayerReceivedPlainBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PLAINBADGE
;	readvar VAR_BADGES
;	scall GoldenrodGymActivateRockets
.GotPlainBadge:
	writetext WhitneyPlainBadgeText
	promptbutton
	verbosegiveitem TM_ATTRACT
	iffalse .NoRoomForAttract
	setevent EVENT_GOT_TM45_ATTRACT
	writetext WhitneyAttractText
	waitbutton
	closetext
	end

.GotAttract:
	writetext WhitneyGoodCryText
	waitbutton
.NoRoomForAttract:
	closetext
	end

;GoldenrodGymActivateRockets:
;	ifequal 7, .RadioTowerRockets
;	ifequal 6, .GoldenrodRockets
;	end
;
;.GoldenrodRockets:
;	jumpstd GoldenrodRocketsScript
;
;.RadioTowerRockets:
;	jumpstd RadioTowerRocketsScript

WhitneyIntroText:
	text "Hi! I'm WHITNEY!"

	para "Everyone was into"
	line "#MON, so I got"
	cont "into it too!"

	para "My #MON are"
	line "super-cute!"

	para "You want to bat-"
	line "tle? I'm warning"
	cont "you--I'm good!"
	done

WhitneyShouldntBeSoSeriousText:
	text "Sob…"

	para "…Waaaaaaah!"
	line "You're mean!"

	para "You shouldn't be"
	line "so serious!"
	done

WhitneyYouMeanieText:
	text "Waaaaah!"

	para "Waaaaah!"

	para "…Snivel, hic…"
	line "…You meanie!"
	done

WhitneyWhatDoYouWantText:
	text "…Sniff…"

	para "What? What do you"
	line "want? A BADGE?"

	para "Oh, right."
	line "I forgot. Here's"
	cont "the PLAINBADGE."
	done

PlayerReceivedPlainBadgeText:
	text "<PLAYER> received"
	line "the PLAINBADGE."
	done

WhitneyPlainBadgeText:
	text "Sorry for calling"
	line "you a meanie…"

	para "I want you to"
	line "have this, too!"
	done

WhitneyAttractText:
	text "It's ATTRACT!"
	line "It makes full use"
	cont "of a #MON's"
	cont "charm."

	para "Isn't it perfect"
	line "for a cutie like"
	cont "me?"
	done

WhitneyGoodCryText:
	text "Ah, that was a"
	line "good cry!"

	para "Come for a visit"
	line "again! Bye-bye!"
	done

WhitneyCriesScript:
	showemote EMOTE_SHOCK, GOLDENRODGYM_LASS, 15
	applymovement GOLDENRODGYM_LASS, LassWalksUpMovement
;	turnobject PLAYER, DOWN
	opentext
	writetext LassWhitneyCriesText
	waitbutton
	closetext
	applymovement GOLDENRODGYM_LASS, LassWalksAwayMovement
	setscene SCENE_GOLDENRODGYM_NOOP
	clearevent EVENT_MADE_WHITNEY_CRY
	end

LassWhitneyCriesText:
	text "Oh, no. You made"
	line "WHITNEY cry."

	para "It's OK. She'll"
	line "stop soon. She"
	cont "always cries when"
	cont "she loses."
	done

LassWalksUpMovement:
	step LEFT
	turn_head UP
	step_end

LassWalksAwayMovement:
	step RIGHT
	turn_head LEFT
	step_end


TrainerLassRuby:
	trainer LASS, RUBY, EVENT_BEAT_LASS_RUBY, LassRubySeenText, LassRubyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassRubyAfterBattleText
	waitbutton
	closetext
	end

LassRubySeenText:
	text "I like cute #-"
	line "MON better than"
	cont "strong #MON."

	para "But I have strong"
	line "and cute #MON!"
	done

LassRubyBeatenText:
	text "Oh, no, no, no!"
	done

LassRubyAfterBattleText:
	text "I'm trying to beat"
	line "WHITNEY, but…"
	cont "It's depressing."

	para "I'm okay! If I"
	line "lose, I'll just"
	cont "try harder next"
	cont "time!"
	done

TrainerBeautyCybil:
	trainer BEAUTY, CYBIL, EVENT_BEAT_BEAUTY_CYBIL, BeautyCybilSeenText, BeautyCybilBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BeautyCybilAfterBattleText
	waitbutton
	closetext
	end

BeautyCybilSeenText:
	text "Oh, you are a cute"
	line "little trainer! "

	para "I like you, but I"
	line "won't hold back!"
	done

BeautyCybilBeatenText:
	text "Let's see… Oops,"
	line "it's over?"
	done

BeautyCybilAfterBattleText:
	text "Wow, you must be"
	line "good to beat me!"
	cont "Keep it up!"
	done

TrainerBeautySamantha:
	trainer BEAUTY, SAMANTHA, EVENT_BEAT_BEAUTY_SAMANTHA, BeautySamanthaSeenText, BeautySamanthaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BeautySamanthaAfterBattleText
	waitbutton
	closetext
	end

BeautySamanthaSeenText:
	text "Give it your best"
	line "shot, or I'll take"
	cont "you down!"
	done

BeautySamanthaBeatenText:
	text "Oh! TEDDIURSA,"
	line "I'm so sorry!"
	done

BeautySamanthaAfterBattleText:
	text "I hate seeing my"
	line "TEDDIURSA lose…"
	done

TrainerLassKelly:
	trainer LASS, KELLY, EVENT_BEAT_LASS_KELLY, LassKellySeenText, LassKellyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassKellyAfterBattleText
	waitbutton
	closetext
	end

LassKellySeenText:
	text "Don't let my"
	line "#MON's cute"
	cont "looks fool you."

	para "They can whip you!"
	done

LassKellyBeatenText:
	text "Darn… I thought"
	line "you were weak…"
	done

LassKellyAfterBattleText:
	text "Do my #MON"
	line "think I'm cute?"
	done

GoldenrodGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .GoldenrodGymGuideWinScript
	opentext
	writetext GoldenrodGymGuideText
	waitbutton
	closetext
	end

.GoldenrodGymGuideWinScript:
	opentext
	writetext GoldenrodGymGuideWinText
	waitbutton
	closetext
	end

GoldenrodGymGuideText:
	text "Yo! CHAMP!"

	para "This GYM is home"
	line "to normal-type"
	cont "#MON trainers."

	para "I recommend you"
	line "use fighting-type"
	cont "#MON."
	done

GoldenrodGymGuideWinText:
	text "You won? Great! I"
	line "was busy admiring"
	cont "the ladies here."
	done

GoldenrodGymStatue:
	gettrainername STRING_BUFFER_4, WHITNEY, WHITNEY1
	jumpstd GymStatue3Script

GoldenrodGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, GOLDENROD_CITY, 4
	warp_event  3, 17, GOLDENROD_CITY, 4

	def_coord_events
	coord_event  8,  5, SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING, WhitneyCriesScript

	def_bg_events
	bg_event  1, 15, BGEVENT_READ, GoldenrodGymStatue
	bg_event  4, 15, BGEVENT_READ, GoldenrodGymStatue

	def_object_events
	object_event  8,  3, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGymWhitneyScript, -1
	object_event  9,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassRuby, -1 ;bridget
	object_event  0,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBeautyCybil, -1 ;victoria
	object_event 19,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautySamantha, -1 ;samantha
	object_event  9, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassKelly, -1 ;carrie
	object_event  5, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGymGuideScript, -1
