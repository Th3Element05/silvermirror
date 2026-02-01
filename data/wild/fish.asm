DEF time_group EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
;; chance, old rod, good rod, super rod
;	db \1
;	dw \2, \3, \4
; chance, old_rod, good_rod, super_rod, super_rod_2
	db \1
	dw \2, \3, \4, \5
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 80 percent, .Pond_Old,              .Pond_Good,              .Pond_Super,              .Pond_Super_2
	fishgroup 80 percent, .Remoraid_Old,          .Remoraid_Good,          .Remoraid_Super,          .Remoraid_Super_2
	fishgroup 80 percent, .Remoraid_Swarm_Old,    .Remoraid_Swarm_Good,    .Remoraid_Swarm_Super,    .Remoraid_Swarm_Super_2
	fishgroup 80 percent, .Lake_Old,              .Lake_Good,              .Lake_Super,              .Lake_Super_2
	fishgroup 80 percent, .Chinchou_Lake_Old,     .Chinchou_Lake_Good,     .Chinchou_Lake_Super,     .Chinchou_Lake_Super_2
;	fishgroup 80 percent, .Qwilfish_NoSwarm_Old,  .Qwilfish_NoSwarm_Good,  .Qwilfish_NoSwarm_Super,  .Qwilfish_NoSwarm_Super_2
	fishgroup 80 percent, .Qwilfish_Old,          .Qwilfish_Good,          .Qwilfish_Super,          .Qwilfish_Super_2
	fishgroup 80 percent, .Qwilfish_Swarm_Old,    .Qwilfish_Swarm_Good,    .Qwilfish_Swarm_Super,    .Qwilfish_Swarm_Super_2
	fishgroup 80 percent, .Shore_Old,             .Shore_Good,             .Shore_Super,             .Shore_Super_2
	fishgroup 80 percent, .Chinchou_No_Swarm_Old, .Chinchou_No_Swarm_Good, .Chinchou_No_Swarm_Super, .Chinchou_No_Swarm_Super_2
	fishgroup 80 percent, .Chinchou_Old,          .Chinchou_Good,          .Chinchou_Super,          .Chinchou_Super_2
	fishgroup 80 percent, .Staryu_Old,            .Staryu_Good,            .Staryu_Super,            .Staryu_Super_2
	fishgroup 80 percent, .Shellder_Old,          .Shellder_Good,          .Shellder_Super,          .Shellder_Super_2
	fishgroup 80 percent, .Staryu_Swarm_Old,      .Staryu_Swarm_Good,      .Staryu_Swarm_Super,      .Staryu_Swarm_Super_2
	fishgroup 80 percent, .Shellder_Swarm_Old,    .Shellder_Swarm_Good,    .Shellder_Swarm_Super,    .Shellder_Swarm_Super_2
	fishgroup 80 percent, .Corsola_Swarm_Old,     .Corsola_Swarm_Good,     .Corsola_Swarm_Super,     .Corsola_Swarm_Super_2
	fishgroup 80 percent, .Chinchou_Swarm_Old,    .Chinchou_Swarm_Good,    .Chinchou_Swarm_Super,    .Chinchou_Swarm_Super_2
	fishgroup 80 percent, .Ocean_Old,             .Ocean_Good,             .Ocean_Super,             .Ocean_Super_2
	fishgroup 80 percent, .Horsea_Old,            .Horsea_Good,            .Horsea_Super,            .Horsea_Super_2
	fishgroup 80 percent, .Horsea_Swarm_Old,      .Horsea_Swarm_Good,      .Horsea_Swarm_Super,      .Horsea_Swarm_Super_2
	fishgroup 80 percent, .Gyarados_Old,          .Gyarados_Good,          .Gyarados_Super,          .Gyarados_Super_2
	fishgroup 80 percent, .Dratini_No_Swarm_Old,  .Dratini_No_Swarm_Good,  .Dratini_No_Swarm_Super,  .Dratini_No_Swarm_Super_2
	fishgroup 80 percent, .Dratini_Old,           .Dratini_Good,           .Dratini_Super,           .Dratini_Super_2
	fishgroup 80 percent, .Dratini_Swarm_Old,     .Dratini_Swarm_Good,     .Dratini_Swarm_Super,     .Dratini_Swarm_Super_2
	fishgroup 80 percent, .WhirlIslands_Old,      .WhirlIslands_Good,      .WhirlIslands_Super,      .WhirlIslands_Super_2
	assert_table_length NUM_FISHGROUPS

; Pond
.Pond_Old:
.Remoraid_Old:
	db  50 percent, MAGIKARP,   5 ; 50%
	db  95 percent, MAGIKARP,   5 ; 45%
	db 100 percent, POLIWAG,    5 ;  5%
.Pond_Good:
.Remoraid_Good:
	db  50 percent, POLIWAG,    10 ; 50%
	db  80 percent, MAGIKARP,   10 ; 30%
	db  90 percent, POLIWAG,    10 ; 10%
	db 100 percent, POLIWAG,    10 ; 10%
.Pond_Super:
.Pond_Super_2:
	db  60 percent, POLIWAG,    20 ; 60%
	db  80 percent, MAGIKARP,   15 ; 20%
	db  90 percent, POLIWAG,    20 ; 10%
	db 100 percent, POLIWHIRL,  25 ; 10%

; Remoraid (shares Pond_Old and Pond_Good)
.Remoraid_Super:
.Remoraid_Super_2:
	db  60 percent, POLIWAG,    20 ; 60%
	db  80 percent, MAGIKARP,   15 ; 20%
	db  90 percent, POLIWHIRL,  25 ; 10%
	db 100 percent, REMORAID,   20 ; 10%

; Remoraid Swarm
.Remoraid_Swarm_Old:
	db  50 percent, MAGIKARP,    5 ; 50%
	db  90 percent, MAGIKARP,    5 ; 40%
	db 100 percent, REMORAID,    5 ; 10%
.Remoraid_Swarm_Good:
	db  40 percent, REMORAID,   10 ; 40%
	db  70 percent, POLIWAG,    10 ; 30%
	db  90 percent, MAGIKARP,   10 ; 20%
	db 100 percent, POLIWAG,    10 ; 10%
.Remoraid_Swarm_Super:
.Remoraid_Swarm_Super_2:
	db  70 percent, REMORAID,   20 ; 70%
	db  80 percent, POLIWAG,    20 ; 10%
	db  90 percent, POLIWAG,    20 ; 10%
	db 100 percent, POLIWHIRL,  25 ; 10%

; Lake / River
.Lake_Old:
.Chinchou_Lake_Old:
	db  50 percent, MAGIKARP,    5 ; 50%
	db  95 percent, MAGIKARP,    5 ; 45%
	db 100 percent, GOLDEEN,     5 ;  5%
.Lake_Good:
.Chinchou_Lake_Good:
	db  50 percent, GOLDEEN,    10 ; 50%
	db  80 percent, MAGIKARP,   10 ; 30%
	db  90 percent, GOLDEEN,    10 ; 10%
	db 100 percent, GOLDEEN,    10 ; 10%
.Lake_Super:
.Chinchou_Lake_Super:
.Lake_Super_2:
	db  60 percent, GOLDEEN,    20 ; 60%
	db  80 percent, MAGIKARP,   15 ; 20%
	db  90 percent, GOLDEEN,    20 ; 10%
	db 100 percent, SEAKING,    25 ; 10%

; Chinchou Lake (shares Lake_Old, Lake_Good, and Lake_Super)
.Chinchou_Lake_Super_2:
	db  60 percent, GOLDEEN,    20 ; 60%
	db  80 percent, CHINCHOU,   20 ; 20%
	db  90 percent, MAGIKARP,   15 ; 10%
	db 100 percent, SEAKING,    25 ; 10%

; Shore
.Shore_Old:
.Staryu_Old:
.Shellder_Old:
.Chinchou_Old:
.Chinchou_No_Swarm_Old:
	db  70 percent, MAGIKARP,    5 ; 70%
	db  85 percent, TENTACOOL,   5 ; 15%
	db 100 percent, TENTACOOL,   5 ; 15%
.Shore_Good:
.Staryu_Good:
.Shellder_Good:
	db  50 percent, KRABBY,     10 ; 50%
	db  80 percent, TENTACOOL,  10 ; 30%
	db  90 percent, MAGIKARP,   10 ; 10%
	db 100 percent, SHELLDER,   10 ; 10%
.Shore_Super:
.Staryu_Super:
.Shellder_Super:
	db  40 percent, KRABBY,     20 ; 40%
	db  70 percent, TENTACOOL,  20 ; 30%
	db  90 percent, SHELLDER,   20 ; 20%
	db 100 percent, STARYU,     20 ; 10%
.Shore_Super_2:
.Staryu_Super_2:
.Shellder_Super_2:
	db  40 percent, KRABBY,     20 ; 40%
	db  70 percent, TENTACOOL,  20 ; 30%
	db  90 percent, SHELLDER,   20 ; 20%
	db 100 percent, time_group 0   ; 10%

; Chinchou
.Chinchou_Good:
.Chinchou_No_Swarm_Good:
	db  50 percent, KRABBY,     10 ; 50%
	db  80 percent, TENTACOOL,  10 ; 30%
	db  90 percent, CHINCHOU,   10 ; 10%
	db 100 percent, SHELLDER,   10 ; 10%

.Chinchou_Super:
.Chinchou_No_Swarm_Super:
.Chinchou_Super_2:
.Chinchou_No_Swarm_Super_2:
	db  50 percent, KRABBY,     20 ; 50%
	db  70 percent, SHELLDER,   20 ; 20%
	db  90 percent, CHINCHOU,   20 ; 20%
	db 100 percent, time_group 0   ; 10%

; Staryu Swarm
.Staryu_Swarm_Old:
	db  50 percent, MAGIKARP,    5 ; 50%
	db  90 percent, TENTACOOL,   5 ; 40%
	db 100 percent, STARYU,      5 ; 10%
.Staryu_Swarm_Good:
	db  40 percent, STARYU,     10 ; 40%
	db  70 percent, KRABBY,     10 ; 30%
	db  90 percent, TENTACOOL,  10 ; 20%
	db 100 percent, SHELLDER,   10 ; 10%
.Staryu_Swarm_Super:
.Staryu_Swarm_Super_2:
	db  70 percent, STARYU,     20 ; 70%
	db  80 percent, TENTACOOL,  20 ; 10%
	db  90 percent, KRABBY,     20 ; 10%
	db 100 percent, SHELLDER,   20 ; 10%

; Shellder Swarm
.Shellder_Swarm_Old:
	db  50 percent, MAGIKARP,    5 ; 50%
	db  90 percent, TENTACOOL,   5 ; 40%
	db 100 percent, SHELLDER,    5 ; 10%
.Shellder_Swarm_Good:
	db  40 percent, SHELLDER,   10 ; 40%
	db  70 percent, TENTACOOL,  10 ; 30%
	db  90 percent, KRABBY,     10 ; 20%
	db 100 percent, KRABBY,     10 ; 10%
.Shellder_Swarm_Super:
	db  70 percent, SHELLDER,   20 ; 70%
	db  80 percent, TENTACOOL,  20 ; 10%
	db  90 percent, KRABBY,     20 ; 10%
	db 100 percent, STARYU,     20 ; 10%
.Shellder_Swarm_Super_2:
	db  70 percent, SHELLDER,   20 ; 70%
	db  80 percent, TENTACOOL,  20 ; 10%
	db  90 percent, KRABBY,     20 ; 10%
	db 100 percent, time_group 0   ; 10%

; Corsola Swarm
.Corsola_Swarm_Old:
	db  50 percent, MAGIKARP,    5 ; 50%
	db  90 percent, TENTACOOL,   5 ; 40%
	db 100 percent, CORSOLA,     5 ; 10%
.Corsola_Swarm_Good:
	db  40 percent, CORSOLA,    10 ; 40%
	db  70 percent, KRABBY,     10 ; 30%
	db  90 percent, TENTACOOL,  10 ; 20%
	db 100 percent, SHELLDER,   10 ; 10%
.Corsola_Swarm_Super:
.Corsola_Swarm_Super_2:
	db  70 percent, CORSOLA,    20 ; 70%
	db  80 percent, KRABBY,     20 ; 10%
	db  90 percent, TENTACOOL,  20 ; 10%
	db 100 percent, SHELLDER,   20 ; 10%

; Chinchou Swarm
.Chinchou_Swarm_Old:
	db  60 percent, MAGIKARP,    5 ; 60%
	db  90 percent, TENTACOOL,   5 ; 30%
	db 100 percent, CHINCHOU,    5 ; 10%
.Chinchou_Swarm_Good:
	db  40 percent, CHINCHOU,   10 ; 40%
	db  70 percent, KRABBY,     10 ; 30%
	db  90 percent, TENTACOOL,  10 ; 20%
	db 100 percent, SHELLDER,   10 ; 10%
.Chinchou_Swarm_Super:
.Chinchou_Swarm_Super_2:
	db  70 percent, CHINCHOU,   20 ; 70%
	db  80 percent, KRABBY,     20 ; 10%
	db  90 percent, SHELLDER,   20 ; 10%
	db 100 percent, time_group 0   ; 10%

; Ocean
.Ocean_Old:
.Horsea_Old:
	db  70 percent, MAGIKARP,    5 ; 70%
	db  85 percent, TENTACOOL,   5 ; 15%
	db 100 percent, TENTACOOL,   5 ; 15%
.Ocean_Good:
.Horsea_Good:
	db  50 percent, TENTACOOL,  10 ; 50%
	db  80 percent, MAGIKARP,   10 ; 30%
	db  90 percent, TENTACOOL,  10 ; 10%
	db 100 percent, HORSEA,     10 ; 10%
.Ocean_Super:
.Horsea_Super:
	db  50 percent, HORSEA,     20 ; 50%
	db  80 percent, TENTACOOL,  20 ; 30%
	db  90 percent, STARYU,     20 ; 10%
	db 100 percent, TENTACRUEL, 20 ; 10%
.Ocean_Super_2:
.Horsea_Super_2:
	db  50 percent, HORSEA,     20 ; 50%
	db  80 percent, TENTACOOL,  20 ; 30%
	db  90 percent, time_group 0   ; 10%
	db 100 percent, TENTACRUEL, 20 ; 10%

; Horsea Swarm
.Horsea_Swarm_Old:
	db  50 percent, MAGIKARP,    5 ; 50%
	db  90 percent, TENTACOOL,   5 ; 40%
	db 100 percent, HORSEA,      5 ; 10%
.Horsea_Swarm_Good:
	db  40 percent, HORSEA,     10 ; 40%
	db  70 percent, TENTACOOL,  10 ; 30%
	db  90 percent, MAGIKARP,   10 ; 20%
	db 100 percent, TENTACOOL,  10 ; 10%
.Horsea_Swarm_Super:
	db  70 percent, HORSEA,     20 ; 70%
	db  80 percent, TENTACOOL,  20 ; 10%
	db  90 percent, TENTACOOL,  20 ; 10%
	db 100 percent, STARYU,     20 ; 10%
.Horsea_Swarm_Super_2:
	db  70 percent, HORSEA,     20 ; 70%
	db  80 percent, TENTACOOL,  20 ; 10%
	db  90 percent, CHINCHOU,   20 ; 10%
	db 100 percent, time_group 0   ; 10%

; Gyarados
.Gyarados_Old:
	db  50 percent, MAGIKARP,    5 ; 50%
	db  95 percent, MAGIKARP,    5 ; 45%
	db 100 percent, MAGIKARP,    5 ;  5%
.Gyarados_Good:
	db  30 percent, MAGIKARP,   10 ; 30%
	db  60 percent, MAGIKARP,   10 ; 30%
	db  99 percent, MAGIKARP,   10 ; 39%
	db 100 percent, GYARADOS,   20 ;  1%
.Gyarados_Super:
.Gyarados_Super_2:
	db  30 percent, MAGIKARP,   15 ; 30%
	db  60 percent, MAGIKARP,   15 ; 30%
	db  90 percent, MAGIKARP,   15 ; 30%
	db 100 percent, GYARADOS,   25 ; 10%

; Dratini
.Dratini_Old:
.Dratini_No_Swarm_Old:
	db  50 percent, MAGIKARP,    5 ; 50%
	db  95 percent, MAGIKARP,    5 ; 45%
	db 100 percent, MAGIKARP,    5 ;  5%
.Dratini_Good:
.Dratini_No_Swarm_Good:
	db  40 percent, MAGIKARP,   10 ; 40%
	db  85 percent, MAGIKARP,   10 ; 45%
	db  95 percent, MAGIKARP,   10 ; 10%
	db 100 percent, DRATINI,    10 ;  5%
.Dratini_Super:
.Dratini_No_Swarm_Super:
.Dratini_Super_2:
.Dratini_No_Swarm_Super_2:
	db  40 percent, MAGIKARP,   15 ; 40%
	db  88 percent, MAGIKARP,   15 ; 48%
	db  98 percent, DRATINI,    20 ; 10%
	db 100 percent, DRAGONAIR,  25 ;  2%

; Dratini Swarm
.Dratini_Swarm_Old:
	db  70 percent, MAGIKARP,    5 ; 70%
	db  90 percent, MAGIKARP,    5 ; 20%
	db 100 percent, DRATINI,     5 ; 10%
.Dratini_Swarm_Good:
	db  40 percent, DRATINI,    10 ; 40%
	db  70 percent, MAGIKARP,   10 ; 30%
	db  90 percent, MAGIKARP,   10 ; 20%
	db 100 percent, MAGIKARP,   10 ; 10%
.Dratini_Swarm_Super:
.Dratini_Swarm_Super_2:
	db  70 percent, DRATINI,    20 ; 70%
	db  85 percent, DRATINI,    20 ; 15%
	db  95 percent, MAGIKARP,   15 ; 10%
	db 100 percent, DRAGONAIR,  25 ;  5%

; Qwilfish
.Qwilfish_Old:
;.Qwilfish_NoSwarm_Old:
	db  70 percent, MAGIKARP,    5 ; 70%
	db  90 percent, MAGIKARP,    5 ; 20%
	db 100 percent, SLOWPOKE,    5 ; 10%
.Qwilfish_Good:
;.Qwilfish_NoSwarm_Good:
	db  40 percent, MAGIKARP,   10 ; 40%
	db  70 percent, SLOWPOKE,   10 ; 30%
	db  90 percent, SLOWPOKE,   10 ; 20%
	db 100 percent, SHELLDER,   10 ; 10%
.Qwilfish_Super:
;.Qwilfish_NoSwarm_Super:
	db  40 percent, SLOWPOKE,   20 ; 40%
	db  60 percent, SLOWPOKE,   20 ; 30%
	db  80 percent, SHELLDER,   20 ; 20%
	db 100 percent, MAGIKARP,   15 ; 20%
.Qwilfish_Super_2:
;.Qwilfish_NoSwarm_Super_2:
	db  60 percent, SLOWPOKE,   20 ; 60%
	db  85 percent, SHELLDER,   20 ; 20%
	db  95 percent, MAGIKARP,   15 ; 10%
	db 100 percent, QWILFISH,   20 ; 10%

; Qwilfish Swarm
.Qwilfish_Swarm_Old:
	db  70 percent, MAGIKARP,    5 ; 70%
	db  90 percent, SLOWPOKE,    5 ; 20%
	db 100 percent, QWILFISH,    5 ; 10%
.Qwilfish_Swarm_Good:
	db  40 percent, QWILFISH,   10 ; 40%
	db  70 percent, SLOWPOKE,   10 ; 30%
	db  90 percent, SHELLDER,   10 ; 20%
	db 100 percent, MAGIKARP,   10 ; 10%
.Qwilfish_Swarm_Super:
.Qwilfish_Swarm_Super_2:
	db  70 percent, QWILFISH,   20 ; 70%
	db  80 percent, SLOWPOKE,   20 ; 10%
	db  90 percent, SHELLDER,   20 ; 10%
	db 100 percent, MAGIKARP,   15 ; 10%

; Whirl Islands
.WhirlIslands_Old:
	db  70 percent, MAGIKARP,   10 ; 70%
	db  85 percent, MAGIKARP,   10 ; 15%
	db 100 percent, KRABBY,     10 ; 15%
.WhirlIslands_Good:
	db  35 percent, MAGIKARP,   15 ; 35%
	db  70 percent, KRABBY,     20 ; 35%
	db  90 percent, KRABBY,     20 ; 20%
	db 100 percent, HORSEA,     20 ; 10%
.WhirlIslands_Super:
	db  40 percent, KRABBY,     40 ; 40%
	db  70 percent, HORSEA,     40 ; 30%
	db  90 percent, KINGLER,    40 ; 20%
	db 100 percent, SEADRA,     40 ; 10%
.WhirlIslands_Super_2:
	db  40 percent, KRABBY,     40 ; 40%
	db  70 percent, HORSEA,     40 ; 30%
	db  90 percent, KINGLER,    40 ; 20%
	db 100 percent, SEADRA,     40 ; 10%

TimeFishGroups:
	;  day              nite
	db CORSOLA,    20,  STARYU,     20 ; 0
;	db CORSOLA,    40,  STARYU,     40 ; 1
;	db SHELLDER,   20,  SHELLDER,   20 ; 2
;	db SHELLDER,   40,  SHELLDER,   40 ; 3
;	db GOLDEEN,    20,  GOLDEEN,    20 ; 4
;	db GOLDEEN,    40,  GOLDEEN,    40 ; 5
;	db POLIWAG,    20,  POLIWAG,    20 ; 6
;	db POLIWAG,    40,  POLIWAG,    40 ; 7
;	db DRATINI,    20,  DRATINI,    20 ; 8
;	db DRATINI,    40,  DRATINI,    40 ; 9
;	db QWILFISH,   20,  QWILFISH,   20 ; 10
;	db QWILFISH,   40,  QWILFISH,   40 ; 11
;	db REMORAID,   20,  REMORAID,   20 ; 12
;	db REMORAID,   40,  REMORAID,   40 ; 13
;	db GYARADOS,   20,  GYARADOS,   20 ; 14
;	db GYARADOS,   40,  GYARADOS,   40 ; 15
;	db DRATINI,    10,  DRATINI,    10 ; 16
;	db DRATINI,    10,  DRATINI,    10 ; 17
;	db HORSEA,     20,  HORSEA,     20 ; 18
;	db HORSEA,     40,  HORSEA,     40 ; 19
;	db TENTACOOL,  20,  TENTACOOL,  20 ; 20
;	db TENTACOOL,  40,  TENTACOOL,  40 ; 21


; OG - BAK
;
;.Staryu_Old:
;.Chinchou_Old:
;.Shore_Old:
;	db  70 percent + 1, MAGIKARP,   10 ; 70%
;	db  85 percent + 1, MAGIKARP,   10 ; 15%
;	db 100 percent,     KRABBY,     10 ; 15%
;.Staryu_Good:
;.Chinchou_Good:
;.Shore_Good:
;	db  35 percent,     MAGIKARP,   20 ; 35%
;	db  70 percent,     KRABBY,     20 ; 35%
;	db  90 percent + 1, KRABBY,     20 ; 20%
;	db 100 percent,     time_group 0   ; 10%
;.Staryu_Super:
;.Chinchou_Super:
;.Shore_Super:
;	db  40 percent,     KRABBY,     40 ; 40%
;	db  70 percent,     time_group 1   ; 30%
;	db  90 percent + 1, KRABBY,     40 ; 20%
;	db 100 percent,     KINGLER,    40 ; 10%
;.Staryu_Super_2:
;.Chinchou_Super_2:
;.Shore_Super_2:
;	db  40 percent,     KRABBY,     40 ; 40%
;	db  70 percent,     time_group 1   ; 30%
;	db  90 percent + 1, KRABBY,     40 ; 20%
;	db 100 percent,     KINGLER,    40 ; 10%

;.Shellder_Old:
;.Horsea_Old:
;.Ocean_Old:
;	db  70 percent + 1, MAGIKARP,   10
;	db  85 percent + 1, MAGIKARP,   10
;	db 100 percent,     TENTACOOL,  10
;.Shellder_Good:
;.Horsea_Good:
;.Ocean_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     TENTACOOL,  20
;	db  90 percent + 1, CHINCHOU,   20
;	db 100 percent,     time_group 2
;.Shellder_Super:
;.Horsea_Super:
;.Ocean_Super:
;	db  40 percent,     CHINCHOU,   40
;	db  70 percent,     time_group 3
;	db  90 percent + 1, TENTACRUEL, 40
;	db 100 percent,     LANTURN,    40
;.Shellder_Super_2:
;.Horsea_Super_2:
;.Ocean_Super_2:
;	db  40 percent,     CHINCHOU,   40
;	db  70 percent,     time_group 3
;	db  90 percent + 1, TENTACRUEL, 40
;	db 100 percent,     LANTURN,    40

;.Lake_Old:
;	db  70 percent + 1, MAGIKARP,   10
;	db  85 percent + 1, MAGIKARP,   10
;	db 100 percent,     GOLDEEN,    10
;.Lake_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     GOLDEEN,    20
;	db  90 percent + 1, GOLDEEN,    20
;	db 100 percent,     time_group 4
;.Lake_Super:
;	db  40 percent,     GOLDEEN,    40
;	db  70 percent,     time_group 5
;	db  90 percent + 1, MAGIKARP,   40
;	db 100 percent,     SEAKING,    40
;.Lake_Super_2:
;	db  40 percent,     GOLDEEN,    40
;	db  70 percent,     time_group 5
;	db  90 percent + 1, MAGIKARP,   40
;	db 100 percent,     SEAKING,    40

;.Pond_Old:
;	db  70 percent + 1, MAGIKARP,   10
;	db  85 percent + 1, MAGIKARP,   10
;	db 100 percent,     POLIWAG,    10
;.Pond_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     POLIWAG,    20
;	db  90 percent + 1, POLIWAG,    20
;	db 100 percent,     time_group 6
;.Pond_Super:
;	db  40 percent,     POLIWAG,    40
;	db  70 percent,     time_group 7
;	db  90 percent + 1, MAGIKARP,   40
;	db 100 percent,     POLIWAG,    40
;.Pond_Super_2:
;	db  40 percent,     POLIWAG,    40
;	db  70 percent,     time_group 7
;	db  90 percent + 1, MAGIKARP,   40
;	db 100 percent,     POLIWAG,    40
;
;.Dratini_Old:
;	db  70 percent + 1, MAGIKARP,   10
;	db  85 percent + 1, MAGIKARP,   10
;	db 100 percent,     MAGIKARP,   10
;.Dratini_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     MAGIKARP,   20
;	db  90 percent + 1, MAGIKARP,   20
;	db 100 percent,     time_group 8
;.Dratini_Super:
;	db  40 percent,     MAGIKARP,   40
;	db  70 percent,     time_group 9
;	db  90 percent + 1, MAGIKARP,   40
;	db 100 percent,     DRAGONAIR,  40
;.Dratini_Super_2:
;	db  40 percent,     MAGIKARP,   40
;	db  70 percent,     time_group 9
;	db  90 percent + 1, MAGIKARP,   40
;	db 100 percent,     DRAGONAIR,  40
;
;.Dratini_Swarm_Old:
;	db  70 percent + 1, MAGIKARP,   10
;	db  85 percent + 1, MAGIKARP,   10
;	db 100 percent,     DRATINI,    10
;.Dratini_Swarm_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     DRATINI,    20
;	db  90 percent + 1, DRATINI,    20
;	db 100 percent,     time_group 8
;.Dratini_Swarm_Super:
;	db  40 percent,     DRATINI,    40
;	db  70 percent,     time_group 9
;	db  90 percent + 1, DRATINI,    40
;	db 100 percent,     DRAGONAIR,  40
;.Dratini_Swarm_Super_2:
;	db  40 percent,     DRATINI,    40
;	db  70 percent,     time_group 9
;	db  90 percent + 1, DRATINI,    40
;	db 100 percent,     DRAGONAIR,  40
;
;.Qwilfish_Swarm_Old:
;	db  70 percent + 1, MAGIKARP,   5
;	db  85 percent + 1, MAGIKARP,   5
;	db 100 percent,     QWILFISH,   5
;.Qwilfish_Swarm_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     QWILFISH,   20
;	db  90 percent + 1, QWILFISH,   20
;	db 100 percent,     time_group 10
;.Qwilfish_Swarm_Super:
;	db  40 percent,     QWILFISH,   40
;	db  70 percent,     time_group 11
;	db  90 percent + 1, QWILFISH,   40
;	db 100 percent,     QWILFISH,   40
;.Qwilfish_Swarm_Super_2:
;	db  40 percent,     QWILFISH,   40
;	db  70 percent,     time_group 11
;	db  90 percent + 1, QWILFISH,   40
;	db 100 percent,     QWILFISH,   40
;
;.Remoraid_Swarm_Old:
;	db  70 percent + 1, MAGIKARP,   10
;	db  85 percent + 1, MAGIKARP,   10
;	db 100 percent,     REMORAID,   10
;.Remoraid_Swarm_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     REMORAID,   20
;	db  90 percent + 1, REMORAID,   20
;	db 100 percent,     time_group 12
;.Remoraid_Swarm_Super:
;	db  40 percent,     REMORAID,   40
;	db  70 percent,     time_group 13
;	db  90 percent + 1, REMORAID,   40
;	db 100 percent,     REMORAID,   40
;.Remoraid_Swarm_Super_2:
;	db  40 percent,     REMORAID,   40
;	db  70 percent,     time_group 13
;	db  90 percent + 1, REMORAID,   40
;	db 100 percent,     REMORAID,   40
;
;.Gyarados_Old:
;	db  70 percent + 1, MAGIKARP,   10
;	db  85 percent + 1, MAGIKARP,   10
;	db 100 percent,     MAGIKARP,   10
;.Gyarados_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     MAGIKARP,   20
;	db  90 percent + 1, MAGIKARP,   20
;	db 100 percent,     time_group 14
;.Gyarados_Super:
;	db  40 percent,     MAGIKARP,   40
;	db  70 percent,     time_group 15
;	db  90 percent + 1, MAGIKARP,   40
;	db 100 percent,     MAGIKARP,   40
;.Gyarados_Super_2:
;	db  40 percent,     MAGIKARP,   40
;	db  70 percent,     time_group 15
;	db  90 percent + 1, MAGIKARP,   40
;	db 100 percent,     MAGIKARP,   40
;
;.Dratini_No_Swarm_Old:
;	db  70 percent + 1, MAGIKARP,   10
;	db  85 percent + 1, MAGIKARP,   10
;	db 100 percent,     MAGIKARP,   10
;.Dratini_No_Swarm_Good:
;	db  35 percent,     MAGIKARP,   10
;	db  70 percent,     MAGIKARP,   10
;	db  90 percent + 1, MAGIKARP,   10
;	db 100 percent,     time_group 16
;.Dratini_No_Swarm_Super:
;	db  40 percent,     MAGIKARP,   10
;	db  70 percent,     time_group 17
;	db  90 percent + 1, MAGIKARP,   10
;	db 100 percent,     DRAGONAIR,  10
;.Dratini_No_Swarm_Super_2:
;	db  40 percent,     MAGIKARP,   10
;	db  70 percent,     time_group 17
;	db  90 percent + 1, MAGIKARP,   10
;	db 100 percent,     DRAGONAIR,  10
;
;.WhirlIslands_Old:
;	db  70 percent + 1, MAGIKARP,   10
;	db  85 percent + 1, MAGIKARP,   10
;	db 100 percent,     KRABBY,     10
;.WhirlIslands_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     KRABBY,     20
;	db  90 percent + 1, KRABBY,     20
;	db 100 percent,     time_group 18
;	db 100 percent,     HORSEA,     20
;.WhirlIslands_Super:
;	db  40 percent,     KRABBY,     40
;	db  70 percent,     time_group 19
;	db  70 percent,     HORSEA,     40
;	db  90 percent + 1, KINGLER,    40
;	db 100 percent,     SEADRA,     40
;.WhirlIslands_Super_2:
;	db  40 percent,     KRABBY,     40
;	db  70 percent,     time_group 19
;	db  70 percent,     HORSEA,     40
;	db  90 percent + 1, KINGLER,    40
;	db 100 percent,     SEADRA,     40
;
;.Qwilfish_NoSwarm_Old:
;.Qwilfish_Old:
;	db  70 percent + 1, MAGIKARP,   10
;	db  85 percent + 1, MAGIKARP,   10
;	db 100 percent,     TENTACOOL,  10
;.Qwilfish_NoSwarm_Good:
;.Qwilfish_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     TENTACOOL,  20
;	db  90 percent + 1, TENTACOOL,  20
;	db 100 percent,     QWILFISH,   20
;.Qwilfish_NoSwarm_Super:
;.Qwilfish_Super:
;	db  40 percent,     TENTACOOL,  40
;	db  70 percent,     time_group 21
;	db  90 percent + 1, MAGIKARP,   40
;	db 100 percent,     QWILFISH,   40
;.Qwilfish_NoSwarm_Super_2:
;.Qwilfish_Super_2:
;	db  40 percent,     TENTACOOL,  40
;	db  70 percent,     time_group 21
;	db  90 percent + 1, MAGIKARP,   40
;	db 100 percent,     QWILFISH,   40
;
;.Remoraid_Old:
;	db  70 percent + 1, MAGIKARP,   10
;	db  85 percent + 1, MAGIKARP,   10
;	db 100 percent,     POLIWAG,    10
;.Remoraid_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     POLIWAG,    20
;	db  90 percent + 1, POLIWAG,    20
;	db 100 percent,     REMORAID,   20
;.Remoraid_Super:
;	db  40 percent,     POLIWAG,    40
;	db  70 percent,     time_group 7
;	db  90 percent + 1, MAGIKARP,   40
;	db 100 percent,     REMORAID,   40
;.Remoraid_Super_2:
;	db  40 percent,     POLIWAG,    40
;	db  70 percent,     time_group 7
;	db  90 percent + 1, MAGIKARP,   40
;	db 100 percent,     REMORAID,   40
;
;.Chinchou_Swarm_Old:
;	db  70 percent + 1, MAGIKARP,   5
;	db  85 percent + 1, MAGIKARP,   5
;	db 100 percent,     CHINCHOU,   5
;.Chinchou_Swarm_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     CHINCHOU,   20
;	db  90 percent + 1, CHINCHOU,   20
;	db 100 percent,     KRABBY,     20
;.Chinchou_Swarm_Super:
;	db  40 percent,     CHINCHOU,   40
;	db  70 percent,     CHINCHOU,   40
;	db  90 percent + 1, CHINCHOU,   40
;	db 100 percent,     KINGLER,    40
;.Chinchou_Swarm_Super_2:
;	db  40 percent,     CHINCHOU,   40
;	db  70 percent,     CHINCHOU,   40
;	db  90 percent + 1, CHINCHOU,   40
;	db 100 percent,     KINGLER,    40
;
;.Corsola_Swarm_Old:
;	db  70 percent + 1, MAGIKARP,   5
;	db  85 percent + 1, MAGIKARP,   5
;	db 100 percent,     CORSOLA,    5
;.Corsola_Swarm_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     CORSOLA,    20
;	db  90 percent + 1, CORSOLA,    20
;	db 100 percent,     KRABBY,     20
;.Corsola_Swarm_Super:
;	db  40 percent,     CORSOLA,    40
;	db  70 percent,     CORSOLA,    40
;	db  90 percent + 1, CORSOLA,    40
;	db 100 percent,     KINGLER,    40
;.Corsola_Swarm_Super_2:
;	db  40 percent,     CORSOLA,    40
;	db  70 percent,     CORSOLA,    40
;	db  90 percent + 1, CORSOLA,    40
;	db 100 percent,     KINGLER,    40
;
;.Horsea_Swarm_Old:
;	db  70 percent + 1, MAGIKARP,   10
;	db  85 percent + 1, MAGIKARP,   10
;	db 100 percent,     HORSEA,     10
;.Horsea_Swarm_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     HORSEA,     20
;	db  90 percent + 1, HORSEA,     20
;	db 100 percent,     time_group 2
;.Horsea_Swarm_Super:
;	db  40 percent,     HORSEA,     40
;	db  70 percent,     HORSEA,     40
;	db  90 percent + 1, HORSEA,     40
;	db 100 percent,     LANTURN,    40
;.Horsea_Swarm_Super_2:
;	db  40 percent,     HORSEA,     40
;	db  70 percent,     HORSEA,     40
;	db  90 percent + 1, HORSEA,     40
;	db 100 percent,     LANTURN,    40
;
;.Mantine_Swarm_Old:
;	db  70 percent + 1, MAGIKARP,   10
;	db  85 percent + 1, MAGIKARP,   10
;	db 100 percent,     MANTINE,    10
;.Mantine_Swarm_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     MANTINE,    20
;	db  90 percent + 1, MANTINE,    20
;	db 100 percent,     time_group 2
;.Mantine_Swarm_Super:
;	db  40 percent,     MANTINE,    40
;	db  70 percent,     MANTINE,    40
;	db  90 percent + 1, MANTINE,    40
;	db 100 percent,     LANTURN,    40
;.Mantine_Swarm_Super_2:
;	db  40 percent,     MANTINE,    40
;	db  70 percent,     MANTINE,    40
;	db  90 percent + 1, MANTINE,    40
;	db 100 percent,     LANTURN,    40
;
;.Staryu_Swarm_Old:
;	db  70 percent + 1, MAGIKARP,   5
;	db  85 percent + 1, MAGIKARP,   5
;	db 100 percent,     STARYU,     5
;.Staryu_Swarm_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     STARYU,     20
;	db  90 percent + 1, STARYU,     20
;	db 100 percent,     KRABBY,     20
;.Staryu_Swarm_Super:
;	db  40 percent,     STARYU,     40
;	db  70 percent,     STARYU,     40
;	db  90 percent + 1, STARYU,     40
;	db 100 percent,     KINGLER,    40
;.Staryu_Swarm_Super_2:
;	db  40 percent,     STARYU,     40
;	db  70 percent,     STARYU,     40
;	db  90 percent + 1, STARYU,     40
;	db 100 percent,     KINGLER,    40
;
;.Shellder_Swarm_Old:
;	db  70 percent + 1, MAGIKARP,   10
;	db  85 percent + 1, MAGIKARP,   10
;	db 100 percent,     SHELLDER,   10
;.Shellder_Swarm_Good:
;	db  35 percent,     MAGIKARP,   20
;	db  70 percent,     SHELLDER,   20
;	db  90 percent + 1, SHELLDER,   20
;	db 100 percent,     time_group 2
;.Shellder_Swarm_Super:
;	db  40 percent,     SHELLDER,   40
;	db  70 percent,     SHELLDER,   40
;	db  90 percent + 1, SHELLDER,   40
;	db 100 percent,     LANTURN,    40
;.Shellder_Swarm_Super_2:
;	db  40 percent,     SHELLDER,   40
;	db  70 percent,     SHELLDER,   40
;	db  90 percent + 1, SHELLDER,   40
;	db 100 percent,     LANTURN,    40

