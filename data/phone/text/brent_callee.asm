BrentAnswerPhoneText:
BrentAnswerPhoneDayText:
BrentAnswerPhoneNiteText:
	text "Yes? @"
	text_ram wStringBuffer3
	text " here…"

	para "Ah, <PLAYER>. What"
	line "can I do for you?"
	done

;BrentAnswerPhoneDayText:
;	text "Yes? @"
;	text_ram wStringBuffer3
;	text " here…"
;
;	para "Ah, <PLAYER>. What"
;	line "can I do for you?"
;	done

;BrentAnswerPhoneNiteText:
;	text "Yes? @"
;	text_ram wStringBuffer3
;	text " here…"
;
;	para "Ah, <PLAYER>. What"
;	line "can I do for you?"
;	done

BrentGreetText:
BrentGreetDayText:
BrentGreetNiteText:
	text "Hiya, <PLAYER>. How"
	line "are you doing?"

	para "Hey! It's me,"
	line "@"
	text_ram wStringBuffer3
	text "."
	done

;BrentGreetDayText:
;	text "Hiya, <PLAYER>, how"
;	line "are you doing?"
;
;	para "Hey, it's me,"
;	line "@"
;	text_ram wStringBuffer3
;	text "."
;	done

;BrentGreetNiteText:
;	text "Hiya, <PLAYER>, how"
;	line "are you doing?"
;
;	para "Hey, it's me,"
;	line "@"
;	text_ram wStringBuffer3
;	text "."
;	done

BrentGenericText:
	text "Oh yeah, I saw you"
	line "coming out of a"
	cont "#MON CENTER the"
	roll "other day."

	para "You heal your"
	line "#MON regularly,"
	cont "don't you?"
	roll "I'm impressed."

	para "Heh, my LICKITUNG"
	line "is so tough, it"
	cont "doesn't need to go"
	roll "to #MON CENTERs"
	cont "often. Heheh!"
	done

;	para "Heh, my @"
;	text_ram wStringBuffer4
;	text_start
;	line "is so tough, it"
;	cont "doesn't need to go"
;	roll "to #MON CENTERs"
;	cont "often. Heheh!"
;	done
