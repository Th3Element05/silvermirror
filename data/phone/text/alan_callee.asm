AlanAnswerPhoneText:
	text "Yup, it's @"
	text_ram wStringBuffer3
	text "!"

	para "Good morning,"
	line "<PLAYER>!"
	done

AlanAnswerPhoneDayText:
	text "Yup, it's @"
	text_ram wStringBuffer3
	text "!"

	para "How are you,"
	line "<PLAYER>?"
	done

AlanAnswerPhoneNiteText:
	text "Yup, it's @"
	text_ram wStringBuffer3
	text "!"

	para "Good evening,"
	line "<PLAYER>!"
	done

AlanGreetText:
AlanGreetDayText:
AlanGreetNiteText:
	text "Hello! It's me,"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

;AlanGreetDayText:
;	text "Hello! It's me,"
;	line "@"
;	text_ram wStringBuffer3
;	text "!"
;	done

;AlanGreetNiteText:
;	text "Hello! It's me,"
;	line "@"
;	text_ram wStringBuffer3
;	text "!"
;	done

AlanGenericText:
	text "<PLAYER>, are you"
	line "treating your"
	cont "#MON properly?"

	para "I read in a book"
	line "that you should"
	cont "raise you #MON"
	roll "with care."
	done
