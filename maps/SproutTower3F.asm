	object_const_def

SproutTower3F_MapScripts:
	def_scene_scripts

	def_callbacks

SageLiScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM10_HIDDEN_POWER
	iftrue .GotHiddenPower
	writetext SageLiSeenText
	waitbutton
	closetext
	winlosstext SageLiBeatenText, 0
	loadtrainer SAGE, LI
	startbattle
	reloadmapafterbattle
	opentext
	writetext SageLiGiftText
	promptbutton
	setevent EVENT_BEAT_SAGE_LI
	verbosegiveitem TM_HIDDEN_POWER
	iffalse .NoRoomForHiddenPower
	setevent EVENT_GOT_TM10_HIDDEN_POWER
	writetext SageLiHiddenPowerText
	waitbutton
	closetext
	end

.GotHiddenPower:
	writetext SageLiAfterBattleText
	waitbutton
.NoRoomForHiddenPower:
	closetext
	end

SageLiSeenText:
	text "So good of you to"
	line "come here!"

	para "SPROUT TOWER is a"
	line "place of training."

	para "People and #MON"
	line "test their bonds"
	cont "to build a bright"
	roll "future together."

	para "I am the final"
	line "test."

	para "Allow me to test"
	line "the bond between"
	cont "you and your"
	roll "#MON!"
	done

SageLiBeatenText:
	text "Ah, excellent!"
	done

SageLiGiftText:
	text "The trust between"
	line "you and your #-"
	cont "MON is strong."

	para "You deserve this,"
	line "please take it."
	done

SageLiHiddenPowerText:
	text "That TM teaches"
	line "HIDDEN POWER."

	para "It draws upon the"
	line "user's innermost"
	cont "strengths."

	para "Its strength and"
	line "effect varies for"
	cont "every individual"
	roll "#MON."
	done

SageLiAfterBattleText:
	text "I hope you learn"
	line "and grow from your"
	cont "journey."
	done

TrainerSageJin:
	trainer SAGE, JIN, EVENT_BEAT_SAGE_JIN, SageJinSeenText, SageJinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SageJinAfterBattleText
	waitbutton
	closetext
	end

SageJinSeenText:
	text "I train to find"
	line "enlightenment in"
	cont "#MON!"
	done

SageJinBeatenText:
	text "My training is"
	line "incomplete…"
	done

SageJinAfterBattleText:
	text "As #MON grow"
	line "stronger, so does"
	cont "the trainer."

	para "No, wait. As the"
	line "trainer grows"
	cont "stronger, so do"
	roll "the #MON."
	done

TrainerSageKyro:
	trainer SAGE, KYRO, EVENT_BEAT_SAGE_KYRO, SageKyroSeenText, SageKyroBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SageKyroAfterBattleText
	waitbutton
	closetext
	end

SageKyroSeenText:
	text "Let me see how"
	line "much you trust"
	cont "your #MON."
	done

SageKyroBeatenText:
	text "Yes, your trust is"
	line "real!"
	done

SageKyroAfterBattleText:
	text "It is not far to"
	line "the ELDER."
	done

;TrainerSageNeal:
;	trainer SAGE, NEAL, EVENT_BEAT_SAGE_NEAL, SageNealSeenText, SageNealBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext SageNealAfterBattleText
;	waitbutton
;	closetext
;	end

;SageNealSeenText:
;	text "The ELDER's HM"
;	line "lights even pitch-"
;	cont "black darkness."
;	done

;SageNealBeatenText:
;	text "It is my head that"
;	line "is bright!"
;	done

;SageNealAfterBattleText:
;	text "Let there be light"
;	line "on your journey."
;	done

SproutTower3FPainting:
	jumptext SproutTower3FPaintingText
SproutTower3FPaintingText:
	text "It's a powerful"
	line "painting of a"
	cont "BELLSPROUT."
	done

SproutTower3FStatue:
	jumptext SproutTower1FStatueText
;SproutTower3FStatueText:
;	text "A #MON statue…"
;
;	para "It looks very"
;	line "distinguished."
;	done

SproutTower3FPotion:
	itemball POTION

SproutTower3FEscapeRope:
	itemball ESCAPE_ROPE

SproutTower3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 14, SPROUT_TOWER_2F, 4

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, SproutTower3FStatue
	bg_event  9,  1, BGEVENT_READ, SproutTower3FStatue
	bg_event  7,  0, BGEVENT_READ, SproutTower3FPainting
	bg_event  8,  0, BGEVENT_READ, SproutTower3FPainting
	bg_event  3, 15, BGEVENT_READ, SproutTower3FStatue
	bg_event 12, 15, BGEVENT_READ, SproutTower3FStatue

	def_object_events
	object_event  8,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SageLiScript, -1
	object_event  6, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageJin, -1 ;jin
	object_event  6,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 2, TrainerSageKyro, -1 ;troy
;	object_event 11, 11, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageNeal, -1 ;neal
	object_event  4, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower3FPotion, EVENT_SPROUT_TOWER_3F_POTION
	object_event 12,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower3FEscapeRope, EVENT_SPROUT_TOWER_3F_ESCAPE_ROPE
