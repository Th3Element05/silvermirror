; Groups are defined in data/trainers/parties.asm.

TrainerGroups:
; entries correspond to trainer classes (see constants/trainer_constants.asm)
	table_width 3, TrainerGroups ; table_width 2, TrainerGroups
	dba FalknerGroup
	dba BugsyGroup
	dba WhitneyGroup
	dba MortyGroup
	dba ChuckGroup
	dba JasmineGroup
	dba PryceGroup
	dba ClairGroup
	dba PokemonProfGroup
	dba Rival1Group
	dba Rival2Group
	dba BrockGroup
	dba MistyGroup
	dba LtSurgeGroup
	dba ErikaGroup
	dba KogaGroup
	dba SabrinaGroup
	dba BlaineGroup
	dba GiovanniGroup
	dba RocketBossGroup
	dba LoreleiGroup
	dba BrunoGroup
	dba AgathaGroup
	dba LanceGroup
	dba ChampionGroup
	dba PKMNTrainerGroup
	dba JanineGroup
	dba GruntMGroup
	dba GruntFGroup
	dba ExecutiveMGroup
	dba ExecutiveFGroup
	dba ScientistGroup
	dba YoungsterGroup
	dba SchoolboyGroup
	dba BirdKeeperGroup
	dba LassGroup
	dba TeacherGroup
	dba CooltrainerMGroup
	dba CooltrainerFGroup
	dba BeautyGroup
	dba PokemaniacGroup
	dba GentlemanGroup
	dba SkierGroup
	dba BugCatcherGroup
	dba FisherGroup
	dba SwimmerMGroup
	dba SwimmerFGroup
	dba SailorGroup
	dba SuperNerdGroup
	dba GuitaristGroup
	dba HikerGroup
	dba BikerGroup
	dba BurglarGroup
	dba FirebreatherGroup
	dba JugglerGroup
	dba BlackbeltGroup
	dba PsychicGroup
	dba PicnickerGroup
	dba CamperGroup
	dba SageGroup
	dba MediumGroup
	dba BoarderGroup
	dba PokefanMGroup
	dba PokefanFGroup
	dba KimonoGirlGroup
	dba TwinsGroup
	dba OfficerGroup
	dba NinjaGroup ;MysticalmanGroup
	dba CoupleGroup
	dba CoolDuoGroup
	dba RedGroup
	dba GreenGroup
	assert_table_length NUM_TRAINER_CLASSES - 3 ; exclude AERODACTYLE_FOSSIL, KABUTOPS_FOSSIL, POKEMON_GHOST
