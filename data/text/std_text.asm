NurseMornText:
;	ntag "NURSE:"
	text "Good morning!"
	line "Welcome to our"
	cont "#MON CENTER."
	done

NurseDayText:
;	ntag "NURSE:"
	text "Hello!"
	line "Welcome to our"
	cont "#MON CENTER."
	done

NurseEveText:
;	ntag "NURSE:"
	text "Good evening!"
	line "Welcome to our"
	cont "#MON CENTER."
	done

NurseNiteText:
;	ntag "NURSE:"
	text "Good evening!"
	line "You're out late."

	para "Welcome to our"
	line "#MON CENTER."
	done

;PokeComNurseMornText:
;	text "Good morning!"
;
;	para "This is the #-"
;	line "MON COMMUNICATION"
;
;	para "CENTER--or the"
;	line "#COM CENTER."
;	done
;
;PokeComNurseDayText:
;	text "Hello!"
;
;	para "This is the #-"
;	line "MON COMMUNICATION"
;
;	para "CENTER--or the"
;	line "#COM CENTER."
;	done
;
;PokeComNurseEveText:
;	text "Good evening."
;
;	para "This is the #-"
;	line "MON COMMUNICATION"
;
;	para "CENTER--or the"
;	line "#COM CENTER."
;	done
;
;PokeComNurseNiteText:
;	text "Good to see you"
;	line "working so late."
;
;	para "This is the #-"
;	line "MON COMMUNICATION"
;
;	para "CENTER--or the"
;	line "#COM CENTER."
;	done

NurseAskHealText:
;	ntag "NURSE:"
	text "We can heal your"
	line "#MON to perfect"
	cont "health."

	para "Shall we heal your"
	line "#MON?"
	done

NurseTakePokemonText:
;	ntag "NURSE:"
	text "OK, may I see your"
	line "#MON?"
	done

NurseReturnPokemonText:
;	ntag "NURSE:"
	text "Thank you for"
	line "waiting."

	para "Your #MON are"
	line "fully healed."
	done

NurseGoodbyeText:
;	ntag "NURSE:"
	text "We hope to see you"
	line "again."
	done

;; not used
;	text "We hope to see you"
;	line "again."
;	done

NursePokerusText:
;	ntag "NURSE:"
	text "Your #MON seems"
	line "to be infected by"
	cont "tiny life forms."

	para "Your #MON are"
	line "healthy and seem"
	cont "to be fine."

;	para "But we can't tell"
;	line "you anything more"
;	cont "at a #MON### CENTER."
;	roll "CENTER."
;	done

;	para "But we can't tell"
;	line "you much more at"
;	cont "a #MON CENTER."
;	done

	para "But we can't tell"
	line "what other effects"
	cont "there may be."

	para "A #MON PROF."
	line "might be able to"
	cont "tell you more."
	done

;PokeComNursePokerusText:
;	text "Your #MON"
;	line "appear to be"
;
;	para "infected by tiny"
;	line "life forms."
;
;	para "Your #MON are"
;	line "healthy and seem"
;	cont "to be fine."
;
;	para "But we can't tell"
;	line "you anything more."
;	done

DifficultBookshelfText:
	text "It's full of"
	line "difficult books."
	done

PictureBookshelfText:
	text "A whole collection"
	line "of #MON picture"
	cont "books!"
	done

MagazineBookshelfText:
	text "#MON magazines…"
	line "#MON PAL,"
	cont "#MON HANDBOOK,"
	roll "#MON GRAPH…"
	done

TeamRocketOathText:
	text "TEAM ROCKET OATH"

	para "Steal #MON for"
	line "profit!"

	para "Exploit #MON"
	line "for profit!"

	para "All #MON exist"
	line "for the glory of"
	cont "TEAM ROCKET!"
	done

IncenseBurnerText:
	text "What is this?"

	para "Oh, it's an"
	line "incense burner!"
	done

MerchandiseShelfText:
	text "Lots of #MON"
	line "merchandise!"
	done

LookTownMapText:
	text "It's the TOWN MAP."
	done

WindowText:
	text "Your reflection!"
	line "Lookin' good!"
	done

TVText:
	text "It's a TV."
	done

HomepageText:
	text "#MON JOURNAL"
	line "HOME PAGE…"

	para "It hasn't been"
	line "updated…"
	done

;; not used
;	text "#MON RADIO!"
;
;	para "Call in with your"
;	line "requests now!"
;	done

TrashCanText:
	text "There's nothing in"
	line "here…"
	done

;; not used
;	text "A #MON may be"
;	line "able to move this."
;	done

;; not used
;	text "Maybe a #MON"
;	line "can break this."
;	done

PokecenterSignText:
	text "#MON CENTER"
;	line "Heal Your #MON!"
	done

MartSignText:
	text "#MART"
;	line "For All Your"
;	cont "#MON Needs"
	done

ContestResults_ReadyToJudgeText:
	text "We will now judge"
	line "the #MON you've"
	cont "caught."

	para "<……>"
	line "<……>"

	para "We have chosen the"
	line "winners!"

	para "Are you ready for"
	line "this?"
	done

ContestResults_PlayerWonAPrizeText:
	text "<PLAYER>, the No.@"
	text_ram wStringBuffer3
	text_start
	line "finisher, wins"
	cont "@"
	text_ram wStringBuffer4
	text "!"
	done

ReceivedItemText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer4
	text "."
	done

ContestResults_JoinUsNextTimeText:
	text "Please join us for"
	line "the next Contest!"
	done

ContestResults_ConsolationPrizeText:
	text "Everyone else gets"
	line "a SITRUS BERRY for"
	cont "participating!"
	done
;
;	text "Everyone else gets"
;	line "an ORAN BERRY as a"
;	cont "consolation prize!"
;	done

ContestResults_DidNotWinText:
	text "We hope you do"
	line "better next time."
	done

ContestResults_ReturnPartyText:
	text "We'll return the"
	line "#MON we were"
	cont "holding for you."
	roll "Here you go!"
	done

ContestResults_PartyFullText:
	text "Your party's full,"
	line "so the #MON was"
	cont "sent to your BOX"
	roll "in BILL's PC."
	done

GymStatue_CityGymText:
	text_ram wStringBuffer3
	text_start
	line "#MON GYM"
	
	para "LEADER: @"
	text_ram wStringBuffer4
	text_start
	done

GymStatue_WinningTrainers1Text:
;	text "LEADER: @"
;	text_ram wStringBuffer4
;	text_start
;	line "WINNING TRAINERS:"
;	line "<RIVAL>, <PLAYER>"
;	done
	text "WINNING TRAINERS:"
	line "<RIVAL>"
	done

GymStatue_WinningTrainers2Text:
;	text "LEADER: @"
;	text_ram wStringBuffer4
;	text_start
;	line "WINNING TRAINERS:"
;	line "<RIVAL>, <PLAYER>"
;	done
	text "WINNING TRAINERS:"
	line "<RIVAL>, <PLAYER>"
	done

CoinVendor_WelcomeText:
	text "Welcome to the"
	line "GAME CORNER."
	done

CoinVendor_NoCoinCaseText:
	text "Do you need game"
	line "coins?"

	para "Oh, you don't have"
	line "a COIN CASE for"
	cont "your coins."
	done

CoinVendor_IntroText:
	text "Do you need some"
	line "game coins?"

	para "It costs ¥1000 for"
	line "50 coins. Do you"
	cont "want some?"
	done

CoinVendor_Buy50CoinsText:
	text "Thank you!"
	line "Here are 50 coins."
	done

CoinVendor_Buy500CoinsText:
	text "Thank you! Here"
	line "are 500 coins."
	done

CoinVendor_NotEnoughMoneyText:
	text "You don't have"
	line "enough money."
	done

CoinVendor_CoinCaseFullText:
	text "Whoops! Your COIN"
	line "CASE is full."
	done

CoinVendor_CancelText:
	text "No coins for you?"
	line "Come again!"
	done

BugContestPrizeNoRoomText:
	text "Oh? Your PACK is"
	line "full."

	para "We'll keep this"
	line "for you today, so"
	cont "come back when you"
	roll "make room for it."
	done

;HappinessText3:
;	text "Wow! You and your"
;	line "#MON are really"
;	cont "close!"
;	done

;HappinessText2:
;	text "#MON get more"
;	line "friendly if you"
;	cont "spend time with"
;	roll "them."
;	done

;HappinessText1:
;	text "You haven't tamed"
;	line "your #MON."
;
;;	para "If you aren't"
;;	line "nice, it'll pout."
;;	done
;
;	para "You need to earn"
;	line "its respect."
;	done

HappinessRaterIntroText:
	text "If you treat your"
	line "#MON nicely,"
	cont "they will love you"
	roll "in return."

	para "Oh? Let me see"
	line "your @"
	text_ram wStringBuffer3
	text "…"
	done

HappinessRatingText_LooksMean:
	text "It doesn't seem to"
	line "like you at all."
	cont "It looks mean."
	done

HappinessRatingText_NotUsedToYou:
;	text "You should treat"
;	line "it better. It's"
;	cont "not used to you."
;	done
	text "It's not used to"
	line "you yet. You still"
	cont "need to earn its"
	roll "respect."
	done

HappinessRatingText_QuiteCute:
	text "It's quite cute."
	done

HappinessRatingText_SortOfHappy:
	text "It's friendly to-"
	line "ward you. It looks"
	cont "sort of happy."
	done

HappinessRatingText_ReallyTrustsYou:
	text "I get the feeling"
	line "that it really"
	cont "trusts you."
	done

HappinessRatingText_LovesYouALot:
	text "It looks really"
	line "happy! It must"
	cont "love you a lot."
	done

RegisteredNumber1Text:
	text "<PLAYER> registered"
	line "@"
	text_ram wStringBuffer3
	text "'s number."
	done

RegisteredNumber2Text:
	text "<PLAYER> registered"
	line "@"
	text_ram wStringBuffer3
	text "'s number."
	done

PokecenterReceptionistText: ;silvermirror+
	text "You can use the"
	line "PC in the corner"
	cont "to access the"
	roll "#MON or ITEM"
	cont "Storage Systems!"
	done

SilphCo_NoCardKeyText: ;silvermirror+
	text "Darn! It needs"
	line "a CARD KEY!"
	done

SilphCo_BingoText: ;silvermirror+
	text "Bingo!"

	para "The CARD KEY"
	line "opened the door!"
	done

SaffronGateClosedText: ;silvermirror+
	text "TEAM ROCKET is"
	line "causing trouble"
	cont "in SAFFRON CITY."

	para "I'm on guard duty."
	line "You can't go"
	cont "through."

	para "Gee, I'm thirsty,"
	line "though!"
	done

SaffronGateCanHaveDrinkText: ;silvermirror+
	text "<……>"

	para "Huh? I can have"
	line "this drink?"

	para "Gee, thanks!"
	done

SaffronGateGiveDrinkText: ;silvermirror+
	text "<PLAYER> gave"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

SaffronGateOpenText: ;silvermirror+
	text "…"
	line "Glug glug…"
	cont "…"
	cont "Gulp…" ;cont on purpose, not roll

	para "If you want to go"
	line "to SAFFRON CITY…"

	para "You can go on"
	line "through. I'll"
	cont "share this with"
	roll "the other guards!"
	
	para "Just be careful"
	line "with TEAM ROCKET"
	cont "around!"
	done
