BattleText:: ; used only for BANK(BattleText)

BattleText_PlayerPickedUpPayDayMoney:
	text "<PLAYER> picked up"
	line "¥@"
	text_decimal wPayDayMoney, 3, 6
	text "!"
	prompt

WildPokemonAppearedText:
WildCelebiAppearedText:
	text "Wild @"
	text_ram wEnemyMonNickname
	text_start
	line "appeared!"
	prompt

HookedPokemonAttackedText:
	text "The hooked"
	line "@"
	text_ram wEnemyMonNickname
	text_start
	scroll "attacked!"
	prompt

;	text "The hooked"
;	line "@"
;	text_ram wEnemyMonNickname
;	text_start
;	cont "attacked!"
;	prompt

PokemonFellFromTreeText:
	text_ram wEnemyMonNickname
	text " fell"
	line "out of the tree!"
	prompt

WantsToBattleText::
	text "<ENEMY>"
	line "wants to battle!"
	prompt

WantToBattlePluralText::
	text "<ENEMY>"
	line "want to battle!"
	prompt

BattleText_WildFled:
	text "Wild @"
	text_ram wEnemyMonNickname
	text_start
	line "fled!"
	prompt

BattleText_EnemyFled:
	text "Enemy @"
	text_ram wEnemyMonNickname
	text_start
	line "fled!"
	prompt

HurtByPoisonText:
	text "<USER>'s"
	line "hurt by poison!"
	prompt

HurtByBurnText:
	text "<USER>'s"
	line "hurt by its burn!"
	prompt

LeechSeedSapsText:
	text "LEECH SEED"
	line "sapped HP from"
	scroll "<USER>!" ;"<USER>!"
	prompt

;	text "LEECH SEED"
;	line "saps HP from"
;	cont "<USER>!" ;"<USER>!"
;	prompt

HasANightmareText:
	text "<USER>"
	line "has a NIGHTMARE!"
	prompt

HurtByCurseText:
	text "<USER>'s"
	line "hurt by the CURSE!"
	prompt

SandstormHitsText:
	text "The SANDSTORM hits"
	line "<USER>!"
	prompt

PerishCountText:
	text "<USER>'s"
	line "PERISH count is @"
	text_decimal wTextDecimalByte, 1, 1
	text "!"
	prompt

BattleText_TargetRecoveredWithItem:
	text "<TARGET>"
	line "recovered with"
	scroll "@"
	text_ram wStringBuffer1
	text "."
	prompt

;	text "<TARGET>"
;	line "recovered with"
;	cont "@"
;	text_ram wStringBuffer1
;	text "."
;	prompt

BattleText_UserRecoveredPPUsing:
	text "<USER>"
	line "restored PP using"
	scroll "@"
	text_ram wStringBuffer1
	text "."
	prompt

;	text "<USER>"
;	line "recovered PP using"
;	cont "@"
;	text_ram wStringBuffer1
;	text "."
;	prompt

BattleText_TargetWasHitByFutureSight:
	text "<TARGET>"
	line "was hit by"
	scroll "FUTURE SIGHT!"
	autodone

;	text "<TARGET>"
;	line "was hit by"
;	cont "FUTURE SIGHT!"
;	prompt

BattleText_SafeguardFaded:
	text "<USER>'s"
	line "SAFEGUARD faded!"
	prompt

BattleText_MonsLightScreenFell:
	text_ram wStringBuffer1 ;"Your" or "Enemy"
	text " #MON's"
	line "LIGHT SCREEN fell!"
	prompt

BattleText_MonsReflectFaded:
	text_ram wStringBuffer1 ;"Your" or "Enemy"
	text " #MON's"
	line "REFLECT faded!"
	prompt

BattleText_RainContinuesToFall:
	text "Rain continues to"
	line "fall."
	autodone

;	text "Rain continues to"
;	line "fall."
;	done

BattleText_TheSunlightIsStrong:
	text "The sunlight is"
	line "strong."
	autodone

;	text "The sunlight is"
;	line "strong."
;	done

BattleText_TheSandstormRages:
	text "The SANDSTORM"
	line "rages."
	autodone

;	text "The SANDSTORM"
;	line "rages."
;	done

BattleText_TheRainStopped:
	text "The rain stopped."
	autodone

;	text "The rain stopped."
;	prompt

BattleText_TheSunlightFaded:
	text "The sunlight"
	line "faded."
	autodone

;	text "The sunlight"
;	line "faded."
;	prompt

BattleText_TheSandstormSubsided:
	text "The SANDSTORM"
	line "subsided."
	autodone

;	text "The SANDSTORM"
;	line "subsided."
;	prompt

BattleText_EnemyMonFainted:
	text "Enemy @"
	text_ram wEnemyMonNickname
	text_start
	line "fainted!"
	prompt

GotMoneyForWinningText:
	text "<PLAYER> got ¥@"
	text_decimal wBattleReward, 3, 6
	text_start
	line "for winning!"
	prompt

BattleText_EnemyWasDefeated:
	text "<ENEMY>"
	line "was defeated!"
	prompt

BattleText_PluralEnemyWereDefeated:
	text "<ENEMY>"
	line "were defeated!"
	prompt

TiedAgainstText:
	text "The battle ended"
	line "in a draw!"
	prompt

;	text "Tied against"
;	line "<ENEMY>!"
;	prompt

SentSomeToMomText:
	text "<PLAYER> got ¥@"
	text_decimal wBattleReward, 3, 6
	text_start
	line "for winning!"
	cont "Sent some to MOM!"
	prompt

SentHalfToMomText:
	text "Sent half to MOM!"
	prompt

SentAllToMomText:
	text "Sent all to MOM!"
	prompt

;UnusedRivalLossText: ; unreferenced
;	text "<RIVAL>: Huh? I"
;	line "should've chosen"
;	cont "your #MON!"
;	prompt

BattleText_MonFainted:
	text_ram wBattleMonNickname
	text_start
	line "fainted!"
	prompt

BattleText_UseNextMon:
	text "Use next #MON?"
	done

;UnusedRivalWinText: ; unreferenced
;	text "<RIVAL>: Yes!"
;	line "I guess I chose a"
;	cont "good #MON!"
;	prompt

LostAgainstText:
	text "Lost against"
	line "<ENEMY>!"
	prompt

BattleText_EnemyIsAboutToUseWillPlayerChangeMon:
	text "<ENEMY>"
	line "is about to use"
	scroll "@"
	text_ram wEnemyMonNickname
	text "."

	para "Will <PLAYER>"
	line "change #MON?"
	done

;	text "<ENEMY>"
;	line "is about to use"
;	cont "@"
;	text_ram wEnemyMonNickname
;	text "."
;
;	para "Will <PLAYER>"
;	line "change #MON?"
;	done

BattleText_PluralEnemyAreAboutToUseWillPlayerChangeMon:
	text "<ENEMY>"
	line "are about to use"
	scroll "@"
	text_ram wEnemyMonNickname
	text "."

	para "Will <PLAYER>"
	line "change #MON?"
	done

;	text "<ENEMY>"
;	line "are about to use"
;	cont "@"
;	text_ram wEnemyMonNickname
;	text "."
;
;	para "Will <PLAYER>"
;	line "change #MON?"
;	done

BattleText_EnemySentOut:
	text "<ENEMY>"
	line "sent out"
	scroll "@"
	text_ram wEnemyMonNickname
	text "!"
	autodone

;	text "<ENEMY>"
;	line "sends @"
;	text_ram wEnemyMonNickname
;	text "!"
;	done

;	text "<ENEMY>"
;	line "sent out"
;	cont "@"
;	text_ram wEnemyMonNickname
;	text "!"
;	done


BattleText_TheresNoWillToBattle:
	text "There's no will to"
	line "battle!"
	prompt

BattleText_AnEGGCantBattle:
	text "An EGG can't"
	line "battle!"
	prompt

BattleText_CantEscape2:
	text "Can't escape!"
	prompt

BattleText_TheresNoEscapeFromTrainerBattle:
	text "You can't run from"
	line "a trainer battle!"
	prompt

;	text "No! There's no"
;	line "running from a"
;	cont "trainer battle!"
;	prompt

BattleText_GotAwaySafely:
	text "Got away safely!"
	prompt

BattleText_UserFledUsingAStringBuffer1:
	text "<USER>"
	line "fled using a"
	scroll "@"
	text_ram wStringBuffer1
	text "!"
	prompt

;	text "<USER>"
;	line "fled using a"
;	cont "@"
;	text_ram wStringBuffer1
;	text "!"
;	prompt

BattleText_CantEscape:
	text "Can't escape!"
	prompt

BattleText_UserHurtBySpikes:
	text "<USER>'s"
	line "hurt by SPIKES!"
	prompt

RecoveredUsingText:
	text "<TARGET>"
	line "recovered HP with"
	scroll "@"
	text_ram wStringBuffer1
	text "!"
	prompt

;	text "<TARGET>"
;	line "recovered HP with"
;	cont "@"
;	text_ram wStringBuffer1
;	text "!"
;	prompt

BattleText_UsersStringBuffer1Activated:
	text "<USER>'s"
	line "@"
	text_ram wStringBuffer1
	text_start
	scroll "activated!"
	prompt

;	text "<USER>'s"
;	line "@"
;	text_ram wStringBuffer1
;	text_start
;	cont "activated!"
;	prompt

BattleText_ItemsCantBeUsedHere:
	text "Items can't be"
	line "used here."
	prompt

BattleText_MonIsAlreadyOut:
	text_ram wBattleMonNickname
	text_start
	line "is already out."
	prompt

BattleText_MonCantBeRecalled:
	text_ram wBattleMonNickname
	text_start
	line "can't be recalled!"
	prompt

BattleText_TheresNoPPLeftForThisMove:
	text "There's no PP left"
	line "for this move!"
	prompt

BattleText_TheMoveIsDisabled:
	text "The move is"
	line "DISABLED!"
	prompt

BattleText_MonHasNoMovesLeft:
;	text_ram wBattleMonNickname
;	text_start
;	line "has no moves left!"
;	autodone
	text_ram wBattleMonNickname
	text_start
	line "has no moves left!"
	done

BattleText_TargetsEncoreEnded:
	text "<TARGET>'s"
	line "ENCORE ended!"
	prompt

BattleText_StringBuffer1GrewToLevel:
	text_ram wStringBuffer1
	text " grew to"
	line "level @"
	text_decimal wCurPartyLevel, 1, 3
	text "!@"
	sound_dex_fanfare_50_79
	text_end

BattleText_WildMonIsWatching:
	text "Wild @"
	text_ram wEnemyMonNickname
	text_start
	line "is being cautious."
	prompt

BattleText_WildMonIsEating:
	text "Wild @"
	text_ram wEnemyMonNickname
	text_start
	line "is eating!"
	prompt

BattleText_WildMonIsAngry:
	text "Wild @"
	text_ram wEnemyMonNickname
	text_start
	line "is angry!"
	prompt

BattleText_ThrewRock:
	text "<PLAYER> threw a"
	line "rock."
	autodone

;	text "<PLAYER> threw a"
;	line "rock."
;	done

BattleText_ThrewBait:
	text "<PLAYER> threw"
	line "some bait."
	autodone

;	text "<PLAYER> threw"
;	line "some bait."
;	done

FastAsleepText:
	text "<USER>"
	line "is fast asleep!"
	prompt

WokeUpText:
	text "<USER>"
	line "woke up!"
	autodone ;prompt

FrozenSolidText:
	text "<USER>"
	line "is frozen solid!"
	prompt

FlinchedText:
	text "<USER>"
	line "flinched!"
	prompt

MustRechargeText:
	text "<USER>"
	line "must recharge!"
	prompt

DisabledNoMoreText:
	text "<USER>'s"
	line "DISABLED no more!"
	prompt

IsConfusedText:
	text "<USER>"
	line "is confused!"
	autodone ;prompt

HurtItselfText:
	text "It hurt itself in"
	line "its confusion!"
	autodone

;	text "It hurt itself in"
;	line "its confusion!"
;	prompt

ConfusedNoMoreText:
	text "<USER>'s"
	line "confused no more!"
	autodone ;prompt

BecameConfusedText:
	text "<TARGET>"
	line "became confused!"
	prompt

BattleText_ItemHealedConfusion:
	text "A @"
	text_ram wStringBuffer1
	text " rid"
	line "<TARGET>"
	scroll "of its confusion."
	prompt

;	text "A @"
;	text_ram wStringBuffer1
;	text " rid"
;	line "<TARGET>"
;	cont "of its confusion."
;	prompt

AlreadyConfusedText:
	text "<TARGET>'s"
	line "already confused!"
	prompt

BattleText_UsersHurtByStringBuffer1:
	text "<USER>'s"
	line "hurt by"
	scroll "@"
	text_ram wStringBuffer1
	text "!"
	prompt

;	text "<USER>'s"
;	line "hurt by"
;	cont "@"
;	text_ram wStringBuffer1
;	text "!"
;	prompt

BattleText_UserWasReleasedFromStringBuffer1:
	text "<USER>"
	line "was released from"
	scroll "@"
	text_ram wStringBuffer1
	text "!"
	prompt

;	text "<USER>"
;	line "was released from"
;	cont "@"
;	text_ram wStringBuffer1
;	text "!"
;	prompt

UsedBindText:
	text "<USER>"
	line "used BIND on"
	scroll "<TARGET>!"
	prompt

;	text "<USER>"
;	line "used BIND on"
;	cont "<TARGET>!"
;	prompt

WhirlpoolTrapText:
FireSpinTrapText:
	text "<TARGET>"
	line "was trapped!"
	prompt

WrappedByText:
	text "<TARGET>"
	line "was WRAPPED by"
	scroll "<USER>!"
	prompt

;	text "<TARGET>"
;	line "was WRAPPED by"
;	cont "<USER>!"
;	prompt

ClampedByText:
	text "<TARGET>"
	line "was CLAMPED by"
	scroll "<USER>!"
	prompt

;	text "<TARGET>"
;	line "was CLAMPED by"
;	cont "<USER>!"
;	prompt

StoringEnergyText:
	text "<USER>"
	line "is storing energy!"
	prompt

UnleashedEnergyText:
	text "<USER>"
	line "unleashed energy!"
	prompt

HungOnText:
	text "<TARGET>"
	line "hung on with"
	scroll "@"
	text_ram wStringBuffer1
	text "!"
	prompt

;	text "<TARGET>"
;	line "hung on with"
;	cont "@"
;	text_ram wStringBuffer1
;	text "!"
;	prompt

EnduredText:
	text "<TARGET>"
	line "ENDURED the hit!"
	prompt

InLoveWithText:
	text "<USER>"
	line "is in love with"
	scroll "<TARGET>!"
	autodone ;prompt

;	text "<USER>"
;	line "is in love with"
;	cont "<TARGET>!"
;	prompt

InfatuationText:
	text "<USER>'s"
	line "infatuation kept"
	scroll "it from attacking!"
	prompt

;	text "<USER>'s"
;	line "infatuation kept"
;	cont "it from attacking!"
;	prompt

DisabledMoveText:
	text "<USER>'s"
	line "@"
	text_ram wStringBuffer1
	text " is"
	scroll "DISABLED!"
	prompt

;	text "<USER>'s"
;	line "@"
;	text_ram wStringBuffer1
;	text " is"
;	cont "DISABLED!"
;	prompt

LoafingAroundText:
	text_ram wBattleMonNickname
	text " is"
	line "loafing around."
	prompt

BeganToNapText:
	text_ram wBattleMonNickname
	text " began"
	line "to nap!"
	prompt

WontObeyText:
	text_ram wBattleMonNickname
	text " won't"
	line "obey!"
	prompt

TurnedAwayText:
	text_ram wBattleMonNickname
	text " turned"
	line "away!"
	prompt

IgnoredOrdersText:
	text_ram wBattleMonNickname
	text " ignored"
	line "orders!"
	prompt

IgnoredSleepingText:
	text_ram wBattleMonNickname
	text " ignored"
	line "orders… sleeping!"
	prompt

NoPPLeftText:
	text "But no PP is left"
	line "for the move!"
	prompt

HasNoPPLeftText:
	text "<USER>"
	line "has no PP left for"
	scroll "@"
	text_ram wStringBuffer2
	text "!"
	prompt

;	text "<USER>"
;	line "has no PP left for"
;	cont "@"
;	text_ram wStringBuffer2
;	text "!"
;	prompt

WentToSleepText:
	text "<USER>"
	line "went to sleep!"
	autodone

;	text "<USER>"
;	line "went to sleep!"
;	done

RestedText:
	text "<USER>"
	line "fell asleep and"
	scroll "became healthy!"
	autodone

;	text "<USER>"
;	line "fell asleep and"
;	cont "became healthy!"
;	done

RegainedHealthText:
	text "<USER>"
	line "regained health!"
	prompt

AttackMissedText:
AttackMissed2Text:
	text "<USER>'s"
	line "attack missed!"
	prompt

CrashedText:
	text "<USER>"
	line "kept going and"
	scroll "crashed!"
	prompt

;	text "<USER>"
;	line "kept going and"
;	cont "crashed!"
;	prompt

UnaffectedText:
	text "<TARGET>"
	line "was not affected!"
	prompt

UnaffectedProtectText:
	text "<TARGET>"
	line "was unaffected!"
	prompt

DoesntAffectText:
	text "It doesn't affect"
	line "<TARGET>!"
	prompt

CriticalHitText:
	text "A critical hit!"
	autodone

;	text "A critical hit!"
;	prompt

OneHitKOText:
	text "It's a one-hit KO!"
	prompt

SuperEffectiveText:
	text "Super-effective!"
	autodone

;	text "It's super-"
;	line "effective!"
;	prompt

NotVeryEffectiveText:
	text "It's not very"
	line "effective…"
	autodone

;	text "It's not very"
;	line "effective…"
;	prompt

TookDownWithItText:
	text "<TARGET>"
	line "took its opponent"
	scroll "down with it!"
	prompt

;	text "<TARGET>"
;	line "took down with it,"
;	cont "<USER>!"
;	prompt

RageBuildingText:
	text "<USER>'s"
	line "RAGE is building!"
	prompt

GotAnEncoreText:
	text "<TARGET>"
	line "got an ENCORE!"
	prompt

SharedPainText:
	text "The battlers"
	line "shared pain!"
	prompt

TookAimText:
	text "<USER>"
	line "took aim!"
	prompt

SketchedText:
	text "<USER>"
	line "SKETCHED"
	scroll "@"
	text_ram wStringBuffer1
	text "!"
	prompt

;	text "<USER>"
;	line "SKETCHED"
;	cont "@"
;	text_ram wStringBuffer1
;	text "!"
;	prompt

DestinyBondEffectText:
	text "<USER>'s"
	line "trying to take its"
	scroll "opponent with it!"
	prompt

;	text "<USER>'s"
;	line "trying to take its"
;	cont "opponent with it!"
;	prompt

SpiteEffectText:
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer1
	text " was"
	scroll "reduced by @"
	text_decimal wTextDecimalByte, 1, 1
	text "!"
	prompt

;	text "<TARGET>'s"
;	line "@"
;	text_ram wStringBuffer1
;	text " was"
;	cont "reduced by @"
;	text_decimal wTextDecimalByte, 1, 1
;	text "!"
;	prompt

BellChimedText:
	text "A bell chimed!"
	line ""
	prompt

FellAsleepText:
	text "<TARGET>"
	line "fell asleep!"
	prompt

AlreadyAsleepText:
	text "<TARGET>'s"
	line "already asleep!"
	prompt

WasPoisonedText:
	text "<TARGET>"
	line "was poisoned!"
	prompt

BadlyPoisonedText:
	text "<TARGET>"
	line "is badly poisoned!"
	prompt

AlreadyPoisonedText:
	text "<TARGET>'s"
	line "already poisoned!"
	prompt

SuckedHealthText:
	text "Drained HP from"
	line "<TARGET>!"
	prompt

DreamEatenText:
	text "<TARGET>'s"
	line "dream was eaten!"
	prompt

WasBurnedText:
	text "<TARGET>"
	line "was burned!"
	prompt

DefrostedOpponentText:
	text "<TARGET>"
	line "was defrosted!"
	prompt

WasFrozenText:
	text "<TARGET>"
	line "was frozen solid!"
	prompt

WontRiseAnymoreText:
	text "<USER>'s"
	line "@"
	text_ram wStringBuffer2
	text " won't"
	scroll "go any higher!"
	prompt

;	text "<USER>'s"
;	line "@"
;	text_ram wStringBuffer2
;	text " won't"
;	cont "rise anymore!"
;	prompt

WontDropAnymoreText:
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer2
	text " won't"
	scroll "go any lower!"
	prompt

;	text "<TARGET>'s"
;	line "@"
;	text_ram wStringBuffer2
;	text " won't"
;	cont "drop anymore!"
;	prompt

FledFromBattleText::
	text "<USER>"
	line "fled from battle!"
	prompt

FledInFearText:
	text "<TARGET>"
	line "fled in fear!"
	prompt

BlownAwayText:
	text "<TARGET>"
	line "was blown away!"
	prompt

PlayerHitTimesText:
	text "Hit @"
	text_decimal wPlayerDamageTaken, 1, 1
	text " times!"
	prompt

EnemyHitTimesText:
	text "Hit @"
	text_decimal wEnemyDamageTaken, 1, 1
	text " times!"
	prompt

SingularPluralHitTimesText:
	dec a
	ld hl, .singular
	ret z
	ld hl, .plural
	ret

.singular
	text " time!"
	prompt
.plural
	text " times!"
	prompt

MistText:
	text "<USER>'s"
	line "shrouded in MIST!"
	prompt

ProtectedByMistText:
	text "<TARGET>'s"
	line "protected by MIST."
	prompt

GettingPumpedText:
	text_pause
	text "<USER>'s"
	line "much more likely"
	scroll "to critical hit!"

;	text_pause
;	text "<USER>'s"
;	line "getting pumped!"
;	prompt


RecoilText:
	text "<USER>'s"
	line "hurt by recoil!"
	prompt

MadeSubstituteText:
	text "<USER>"
	line "made a SUBSTITUTE!"
	prompt

HasSubstituteText:
	text "<USER>"
	line "has a SUBSTITUTE!"
	prompt

TooWeakSubText:
	text "Too weak to make"
	line "a SUBSTITUTE!"
	prompt

SubTookDamageText:
	text "The SUBSTITUTE"
	line "took damage for"
	scroll "<TARGET>!"
	prompt

;	text "The SUBSTITUTE"
;	line "took damage for"
;	cont "<TARGET>!"
;	prompt

SubFadedText:
	text "<TARGET>'s"
	line "SUBSTITUTE faded!"
	prompt

MimicLearnedMoveText:
	text "<USER>"
	line "learned"
	scroll "@"
	text_ram wStringBuffer1
	text "!"
	prompt

;	text "<USER>"
;	line "learned"
;	cont "@"
;	text_ram wStringBuffer1
;	text "!"
;	prompt

WasSeededText:
	text "<TARGET>"
	line "was seeded!"
	prompt

EvadedText:
	text "<TARGET>"
	line "evaded the attack!"
	prompt

WasDisabledText:
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer1
	text " was"
	scroll "DISABLED!"
	prompt

;	text "<TARGET>'s"
;	line "@"
;	text_ram wStringBuffer1
;	text " was"
;	cont "DISABLED!"
;	prompt

CoinsScatteredText:
	text "Coins scattered"
	line "everywhere!"
	prompt

TransformedTypeText:
	text "<USER>"
	line "transformed into"
	scroll "the @"
	text_ram wStringBuffer1
	text "-type!"
	prompt

;	text "<USER>"
;	line "transformed into"
;	cont "the @"
;	text_ram wStringBuffer1
;	text "-type!"
;	prompt

EliminatedStatsText:
	text "All stat changes"
	line "were eliminated!"
	prompt

TransformedText:
	text "<USER>"
	line "TRANSFORMED into"
	scroll "@"
	text_ram wStringBuffer1
	text "!"
	prompt

;	text "<USER>"
;	line "TRANSFORMED into"
;	cont "@"
;	text_ram wStringBuffer1
;	text "!"
;	prompt

LightScreenEffectText:
	text "<USER>'s"
	line "SP.DEF rose!"
	prompt

ReflectEffectText:
	text "<USER>'s"
	line "DEFENSE rose!"
	prompt

NothingHappenedText:
	text "But nothing"
	line "happened."
	prompt

ButItFailedText:
	text "But it failed!"
	prompt

ItFailedText:
	text "It failed!"
	prompt

DidntAffect1Text:
DidntAffect2Text:
	text "It didn't affect"
	line "<TARGET>!"
	prompt

HPIsFullText:
	text "<USER>'s"
	line "HP is full!"
	prompt

DraggedOutText:
	text "<USER>"
	line "was dragged out!"
	prompt

ParalyzedText:
	text "<TARGET>'s"
	line "paralyzed! Maybe"
	scroll "it can't attack!"
	prompt

;	text "<TARGET>'s"
;	line "paralyzed! Maybe"
;	cont "it can't attack!"
;	prompt

FullyParalyzedText:
	text "<USER>'s"
	line "fully paralyzed!"
	prompt

AlreadyParalyzedText:
	text "<TARGET>'s"
	line "already paralyzed!"
	prompt

AlreadyBurnedText:
	text "<TARGET>'s"
	line "already burned!"
	prompt

AlreadyFrozenText:
	text "<TARGET>'s"
	line "already frozen!"
	prompt

ProtectedByText:
	text "<TARGET>'s"
	line "protected by"
	scroll "@"
	text_ram wStringBuffer1
	text "!"
	prompt

;	text "<TARGET>'s"
;	line "protected by"
;	cont "@"
;	text_ram wStringBuffer1
;	text "!"
;	prompt

MirrorMoveFailedText:
	text "The MIRROR MOVE"
	next "failed!"
	prompt

StoleText:
	text "<USER>"
	line "stole @"
	text_ram wStringBuffer1
	text_start
	scroll "from its foe!"
	prompt

;	text "<USER>"
;	line "stole @"
;	text_ram wStringBuffer1
;	text_start
;	cont "from its foe!"
;	prompt

CantEscapeNowText:
	text "<TARGET>"
	line "can't escape now!"
	prompt

StartedNightmareText:
	text "<TARGET>"
	line "started to have a"
	scroll "NIGHTMARE!"
	prompt

;	text "<TARGET>"
;	line "started to have a"
;	cont "NIGHTMARE!"
;	prompt

WasDefrostedText:
	text "<USER>"
	line "was defrosted!"
	prompt

PutACurseText:
	text "<USER>"
	line "cut its own HP to"
	scroll "put a CURSE on"
	roll "<TARGET>!"
	prompt

;	text "<USER>"
;	line "cut its own HP and"
;
;	para "put a CURSE on"
;	line "<TARGET>!"
;	prompt

ProtectedItselfText:
	text "<USER>"
	line "PROTECTED itself!"
	prompt

ProtectingItselfText:
	text "<TARGET>'s"
	line "PROTECT blocked"
	scroll "the attack!"
	autodone

;	text "PROTECT blocked"
;	line "the attack!"
;	autodone

;	text "<TARGET>'s"
;	line "PROTECTING itself!"
;	done

SpikesText:
	text "SPIKES were"
	line "scattered around"
	scroll "<TARGET>!"
	prompt

;	text "SPIKES were"
;	line "scattered around"
;	cont "<TARGET>!"
;	prompt

IdentifiedText:
	text "<USER>"
	line "identified"
	scroll "<TARGET>!"
	prompt

;	text "<USER>"
;	line "identified"
;	cont "<TARGET>!"
;	prompt

StartPerishText:
	text "Both #MON will"
	line "faint in 3 turns!"
	prompt

SandstormBrewedText:
	text "A SANDSTORM"
	line "brewed!"
	prompt

BracedItselfText:
	text "<USER>"
	line "braced itself!"
	prompt

FellInLoveText:
	text "<TARGET>"
	line "fell in love!"
	prompt

CoveredByVeilText:
	text "<USER>'s"
	line "covered by a veil!"
	prompt

SafeguardProtectText:
	text "<TARGET>"
	line "is protected by"
	scroll "SAFEGUARD!"
	prompt

;	text "<TARGET>"
;	line "is protected by"
;	cont "SAFEGUARD!"
;	prompt

MagnitudeText:
	text "Magnitude @"
	text_decimal wTextDecimalByte, 1, 1
	text "!"
	prompt

ReleasedByText:
	text "<USER>"
	line "was released by"
	scroll "<TARGET>!"
	prompt

;	text "<USER>"
;	line "was released by"
;	cont "<TARGET>!"
;	prompt

ShedLeechSeedText:
	text "<USER>"
	line "shook off the"
	scroll "LEECH SEED!"
	prompt

;	text "<USER>"
;	line "shook off the"
;	cont "LEECH SEED!"
;	prompt

BlewSpikesText:
	text "<USER>"
	line "blew away the"
	scroll "SPIKES!"
	prompt

;	text "<USER>"
;	line "blew away the"
;	cont "SPIKES!"
;	prompt

StartedToRainText:
	text "It started to"
	line "rain!"
	prompt

SunTurnedHarshText:
	text "The sunlight"
	line "turned harsh!"
	prompt

BellyDrumText:
	text "<USER>"
	line "cut its HP and"
	scroll "maximized ATTACK!"
	prompt

;	text "<USER>"
;	line "cut its HP and"
;	cont "maximized ATTACK!"
;	prompt

CopiedStatsText:
	text "<USER>"
	line "copied the"
	scroll "stat changes of"
	roll "<TARGET>!"
	prompt

;	text "<USER>"
;	line "copied the stat"
;
;	para "changes of"
;	line "<TARGET>!"
;	prompt

ForesawAttackText:
	text "<USER>"
	line "foresaw an attack!"
	prompt

BeatUpAttackText:
	text_ram wStringBuffer1
	text "'s"
	line "attack!"
	autodone

;	text_ram wStringBuffer1
;	text "'s"
;	line "attack!"
;	done

PresentFailedText:
	text "<TARGET>"
	line "refused the gift!"
	prompt

IgnoredOrders2Text:
	text "<USER>"
	line "ignored orders!"
	prompt

BattleText_LinkErrorBattleCanceled:
	text "Link error…"

	para "The battle has"
	line "been canceled…"
	prompt

WokeUpOpponentText:
	text "<TARGET>"
	line "was woken up!"
	prompt

;BattleText_NoTimeLeftToday: ; unreferenced
;	text "There is no time"
;	line "left today!"
;	done
