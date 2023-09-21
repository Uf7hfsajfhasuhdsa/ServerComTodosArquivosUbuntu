<?php
	if (!defined('ZNOTE_OS')) {
		$isWindows = (strtoupper(substr(PHP_OS, 0, 3)) === 'WIN');
		define('ZNOTE_OS', ($isWindows) ? 'WINDOWS' : 'LINUX');
	}
	
	// Se você quiser usar items.php (ainda não 100%, eu acho)
	// Testado com o TFS items.xml master (1.3)
	$config['items'] = true;
	$config['monsters'] = true;
	
	// Available options: TFS_02, TFS_03, OTHIRE
	// OTHire = OTHIRE
	// TFS 0.2 = TFS_02
	// TFS 0.3 = TFS_03 (If ur using 0.3.6, set $config['salt'] to false)!
	// TFS 0.4 = TFS_03
	// TFS 1.0 = TFS_10 (Under developement)
	$config['ServerEngine'] = 'TFS_03';
	// As far as I know, OTX is based on TFS_03, so make sure TFS version is configured TFS_03
	$config['CustomVersion'] = false;

	$config['site_title'] = 'Nto Battle - Novo Mundo Shinobi.';
	$config['site_title_context'] = 'Nto Battle - Novo Mundo Shinobi.';
	$config['site_url'] = "";
	$config['site_url_img'] = "/layout";
	
	$config['images']  = array(
	'itemsInfo' => $config['site_url_img'].'/img/items',
	'outfits' => $config['site_url_img'].'/img/outfits',
	'skins' => $config['site_url_img'].'/img/skins',
	'selectDonateForm' => $config['site_url_img'].'/img/donate',
	'selectVocation' => $config['site_url_img'].'/img/vocations/mini',
	'vocationG' => $config['site_url_img'].'/img/vocations/grande',
	'graduation' => $config['site_url_img'].'/img/gradu',
	);
	
	
	
	
	

	// Caminho para a pasta do servidor sem / Example: C:\Users\Alvaro\Documents\GitHub\forgottenserver
	// $config['server_path'] = '\root\media\server'; 

	// ------------------------ \\
	// MYSQL CONNECTION DETAILS \\
	// ------------------------ \\

	// phpmyadmin username for OT server: (DONT USE "root" if ur hosting to public.).
	$config['sqlUser'] = 'root';

	// phpmyadmin password for OT server:
	$config['sqlPassword'] = 'test';

	// The database name to connect to. (This is usually same as username).
	$config['sqlDatabase'] = 'ndbo';

	// Hostname is usually localhost or 127.0.0.1.
	$config['sqlHost'] = '127.0.0.1';

	// QR code authenticator Only works with TFS 1.2+
	$config['twoFactorAuthenticator'] = false;
	// You can use the mobile phone app "authy" with this.

	
	/* CLOCK FUNCTION
		- getClock() = returns current time in numbers.
		- getClock(time(), true) = returns current time in formatted date
		- getClock(false, true) = same as above
		- getClock(false, true, false) = get current time, don't adjust timezone 
		- echo getClock($profile_data['lastlogin'], true); = from characterprofile,
		explains when user was last logged in. */
	function getClock($time = false, $format = false, $adjust = true) {
		if ($time === false) $time = time();
		// Date string representation
		$date = "d F Y (H:i)"; // 15 July 2013 (13:50)
		if ($adjust) $adjust = -(4 * 3600); // Adjust to fit your timezone.
		else $adjust = 0;
		if ($format) return date($date, $time+$adjust);
		else return $time+$adjust;
	}

	// ------------------- \\
	// CUSTOM SERVER STUFF \\
	// ------------------- \\
	// Enable / disable Questlog function (true / false) 
	$config['EnableQuests'] = true;
	
	// array para preencher o questlog (Questid, storage completada eu não, nome, exibir no ques log 1 ou 0, recompensa iten id)
	$config['quests'] = array(
		array(9000,"Sasuke",1),
		array(9003,"Kinkaku",1),
		array(9004,"Anbu",1,0),
		array(9005,"Itachi",1),
		array(9041,"Madara(Armor)",1),
		array(9042,"Madara(Pants)",1),
		array(9043,"Madara(Boots)",1),
		array(9044,"Hashirama(Hat)",1),
		array(9045,"Hashirama(Armor)",1),
		array(9046,"Hashirama(Pants)",1),
		array(9047,"Hashirama(Boots)",1),
		array(9008,"Jinpachi",1),
		array(9009,"Kisame",1),
		array(9010,"Infernal",1),
		array(9011,"Storm",1),
		array(9012,"Imortal",1),
		array(9013,"Puppet",1),
		// array(9014,"Santuario",1),
		array(9015,"Demon Ice",1),
		array(9016,"Shinobi",1),
		array(9017,"Specialist",1),
		array(9018,"Renegado",1),
		array(9021,"Dragon",1),
		array(9022,"Myoboku Sage",1),
		array(9023,"Assassin(Glover)",1),
		array(9023,"Assassin(Kote)",1),
		array(9024,"Nidaime(Set)",1),
		array(9025,"Selo",1),
		array(9026,"Masked Men",1),
		array(9028,"Chakra Blade",1),
		array(9048,"Yondaime(Tunic)",1),
		array(9049,"Yondaime(Pants)",1),
		array(9050,"Yondaime(Boots)",1),
		array(9032,"Scarf Of Asuma",1),
		// array(9033,"Permission Parchament",1),
		array(9040,"Shield",1),
		array(9053,"50 Jp Ienes",1),
		array(9054,"Nomura",1),
		array(9056,"Chest 1",1),
		array(9057,"Chest 2",1),
		array(9058,"Chest 3",1),
		array(9059,"Chest 4",1),
		array(9060,"Chest 5",1),
		array(9061,"Chest 6",1),
		array(9062,"Chest 7",1),
		array(9063,"Chest 8",1),
		array(9064,"Chest 9",1),
		array(9065,"Chest 10",1),
		array(9066,"Chest 11",1),
		array(9067,"Chest 12",1),
		array(9068,"Chest 13",1),
		array(9069,"Chest 14",1),
		array(9071,"BlackMystery Box",1),
		array(9070,"Infernus (Parte 1)",1),
		array(9072,"Reino de Kaguya (Parte 1)",1),
		array(9081,"Reino de Kaguya (Parte 2)",1),
		array(9082,"Reino de Kaguya (Parte 3)",1),
		array(9083,"Reino de Kaguya (Final)",1),
		array(9073,"Kurama(Hat)",1),
		array(9074,"Kurama(Tunic)",1),
		array(9075,"Kurama(Pants)",1),
		array(9076,"Kurama(Boots)",1),
		array(9077,"Tobi War(Mask)",1),
		array(9078,"Tobi War(Tunic)",1),
		array(9079,"Tobi War(Pants)",1),
		array(9080,"Tobi War(Boots)",1),
		array(9086,"Expertise",1),
		array(9087,"Kurama",1),
		array(9088,"Laboratory",1),
		array(9089,"Susanoo(Mask)",1),
		array(9090,"Susanoo(Tunic)",1),
		array(9091,"Susanoo(Pants)",1),
		array(9092,"Susanoo(Boots)",1),
		array(9093,"Uchiha Element",1),
	);

	// Conquistas baseadas em "https://github.com/PrinterLUA/FORGOTTENSERVER-ORTS/blob/master/data/lib/achievements_lib.lua" (TFS 1.0)
	$config['Ach'] = false;
	$config['achievements'] = array(
		35000 => array(
			'First Dragon', //name
			'Rumours say that you will never forget your first Dragon', //comment
			'points' => '1', //points
			'img' => 'http://www.tibia-wiki.net/images/Dragon.gif', //img link or folder (example)> 'images/dragon.png'
		),
		35001 => array(
			'Uniwheel',
			'You\'re probably one of the very few people with this classic and unique ride, hope it doesn\'t break anytime soon.', //comment
			'points' => '1', //points
			'img' => 'http://img1.wikia.nocookie.net/__cb20140214234600/tibia/en/images/e/e5/Uniwheel.gif', //img link or folder (example)> 'images/dragon.png'
			'secret' => true
		),
		30001 => array(
			'Allow Cookies?', 
			'With a perfectly harmless smile you fooled all of those wicecrackers into eating your exploding cookies. Consider a boy or girl scout outfit next time to make the trick even better.', 
			'points' => '10', // 1-3 points (1star), 4-6 points(2 stars), 7-9 points(3 stars), 10 points => (4 stars)
			'secret' => true // show "secret" image
		),
		30002 => array(
			'Backpack Tourist',
			'If someone lost a random thing in a random place, you\'re probably a good person to ask and go find it, even if you don\'t know what and where.',
			'points' => '7'
		),
		30003 => array(
			'Bearhugger',
			'Warm, furry and cuddly - though that same bear you just hugged would probably rip you into pieces if he had been conscious, he reminded you of that old teddy bear which always slept in your bed when you were still small.', 
			'points' => '4'
		),
		30004 => array(
			'Bone Brother',
			'You\'ve joined the undead bone brothers - making death your enemy and your weapon as well. Devouring what\'s weak and leaving space for what\'s strong is your primary goal.',
			'points' => '1'
		),
		30005 => array(
			'Chorister',
			'Lalalala... you now know the cult\'s hymn sung in Liberty Bay by heart. Not that hard, considering that it mainly consists of two notes and repetitive lyrics.', 
			'points' => '1'
		),
		30006 => array(
			'Fountain of Life',
			'You found and took a sip from the Fountain of Life. Thought it didn\'t grant you eternal life, you feel changed and somehow at peace.', 
			'points' => '1',
			'secret' => true
		),
		30007 => array(
			'Here, Fishy Fishy!',
			'Ah, the smell of the sea! Standing at the shore and casting a line is one of your favourite activities. For you, fishing is relaxing - and at the same time, providing easy food. Perfect!', 
			'points' => '1'
		),
		30008 => array(
			'Honorary Barbarian',
			'You\'ve hugged bears, pushed mammoths and proved your drinking skills. And even though you have a slight hangover, a partially fractured rib and some greasy hair on your tongue, you\'re quite proud to call yourself a honorary barbarian from now on.', 
			'points' => '1'
		),
		30009 => array(
			'Huntsman',
			'You\'re familiar with hunting tasks and have carried out quite a few already. A bright career as hunter for the Paw & Fur society lies ahead!',
			'points' => '2'
		),
		300010 => array(
			'Just in Time',
			'You\'re a fast runner and are good at delivering wares which are bound to decay just in the nick of time, even if you can\'t use any means of transportation or if your hands get cold or smelly in the process.', 
			'points' => '1'
		),
		30011 => array(
			'Matchmaker',
			'You don\'t believe in romance to be a coincidence or in love at first sight. In fact - love potions, bouquets of flowers and cheesy poems do the trick much better than ever could. Keep those hormones flowing!', 
			'points' => '1',
			'secret' => true
		),
		30012 => array(
			'Nightmare Knight',
			'You follow the path of dreams and that of responsibility without self-centered power. Free from greed and selfishness, you help others without expecting a reward.',
			'points' => '1',
			'secret' => true
		),
		30013 => array(
			'Party Animal',
			'Oh my god, it\'s a paaaaaaaaaaaarty! You\'re always in for fun, friends and booze and love being the center of attention. There\'s endless reasons to celebrate! Woohoo!',
			'points' => '1',
			'secret' => true
		),
		30014 => array(
			'Secret Agent',
			'Pack your spy gear and get ready for some dangerous missions in service of a secret agency. You\'ve shown you want to - but can you really do it? Time will tell.', 
			'points' => '1',
			'secret' => true
		),
		30015 => array(
			'Talented Dancer',
			'You\'re a lord or lady of the dance - and not afraid to use your skills to impress tribal gods. One step to the left, one jump to the right, twist and shout!',
			'points' => '1'
		),
		30016 => array(
			'Territorial',
			'Your map is your friend - always in your back pocket and covered with countless marks of interesting and useful locations. One could say that you might be lost without it - but luckily there\'s no way to take it from you.',
			'points' => '1'
		),
		30017 => array(
			'Worm Whacker',
			'Weehee! Whack those worms! You sure know how to handle a big hammer.', 
			'points' => '1',
			'secret' => true
		),
		30018 => array(
			'Allowance Collector',
			'You certainly have your ways when it comes to acquiring money. Many of them are pink and paved with broken fragments of porcelain.',
			'points' => '1'
		),
		30019 => array(
			'Amateur Actor',
			'You helped bringing Princess Buttercup, Doctor Dumbness and Lucky the Wonder Dog to life - and will probably dream of them tonight, since you memorised your lines perfectly. What a .. special piece of.. screenplay.', 
			'points' => '2'
		),
		30020 => array(
			'Animal Activist',
			'Phasellus lacinia odio dolor, in elementum mauris dapibus a. Vivamus nec gravida libero, ac pretium eros. Nam in dictum ealesuada sodales. Nullam eget ex sit amet urna fringilla molestie. Aliquam lobortis urna eros, vel elementum metus accumsan eu. Nulla porttitor in lacus vel ullamcorper.',
			'points' => '2',
			'secret' => true
		),
	);

	// PowerGamers TFS 1.0 e os principais online
	// Antes de ativar os powergamers, certifique-se de adicionar arquivos LUA e possíveis cloums ao seu servidor.
	// arquivos podem ser encontrados na pasta Lua.
	
	$config['powergamers'] = array(
		'enabled' => true, // Ativar ou desativar a página
		'limit' => 20, // Número de jogadores que será exibido.
	);

	$config['toponline'] = array(
		'enabled' => true, // Ativar ou desativar a página
		'limit' => 20, // Número de jogadores que será exibido.
	);

	// IDs de vocação, nomes e qual ID de vocação eles foram promovidos
	$config['vocations'] = array(
		// 0 => array( 
			// 'name' => 'No vocation',
			// 'fromVoc' => false
		// ),
		1 => array( 
			'name' => 'Uzumaki Naruto',
			'fromVoc' => false
		),
		10 => array( 
			'name' => 'Uchiha Sasuke',
			'fromVoc' => false
		),
		20 => array( 
			'name' => 'Rock Lee',
			'fromVoc' => false
		),
		30 => array( 
			'name' => 'Sakura Haruno',
			'fromVoc' => false
		),
		40 => array( 
			'name' => 'Gaara',
			'fromVoc' => false
		),
		50 => array( 
			'name' => 'Neji Hyuga',
			'fromVoc' => false
		),
		60 => array( 
			'name' => 'Kiba',
			'fromVoc' => false
		),
		70 => array( 
			'name' => 'Shikamaru Nara',
			'fromVoc' => false
		),
		80 => array( 
			'name' => 'Hinata Hyuga',
			'fromVoc' => false
		),
		90 => array( 
			'name' => 'Mitsashi Tenten',
			'fromVoc' => false
		),
		100 => array( 
			'name' => 'Uchiha Itachi',
			'fromVoc' => false
		),
		110 => array( 
			'name' => 'Killer Bee',
			'fromVoc' => false
		),
		120 => array( 
			'name' => 'Hatake Kakashi',
			'fromVoc' => false
		),
		130 => array( 
			'name' => 'Uchiha Obito',
			'fromVoc' => false
		),
		
		132 => array( 
			'name' => 'Rikudou Obito',
			'fromVoc' => false
		),
		140 => array( 
			'name' => 'Uchiha Madara',
			'fromVoc' => false
		),		
		142 => array( 
			'name' => 'Rikudou Madara',
			'fromVoc' => false
		),
		150 => array( 
			'name' => 'Uzumaki Nagato',
			'fromVoc' => false
		),
		160 => array( 
			'name' => 'Kisame',
			'fromVoc' => false
		),
		170 => array( 
			'name' => 'Kankuro',
			'fromVoc' => false
		),
		180 => array( 
			'name' => 'Namikaze Minato',
			'fromVoc' => false
		),
		190 => array( 
			'name' => 'Jiraya',
			'fromVoc' => false
		),
		200 => array( 
			'name' => 'Raikage A',
			'fromVoc' => false
		),
		210 => array( 
			'name' => 'Orochimaru',
			'fromVoc' => false
		),
		220 => array( 
			'name' => 'Temari',
			'fromVoc' => false
		),
		230 => array( 
			'name' => 'Yamato',
			'fromVoc' => false
		),
		240 => array( 
			'name' => 'Deidara',
			'fromVoc' => false
		),
		250 => array( 
			'name' => 'Senju Tobirama',
			'fromVoc' => false
		),
		260 => array( 
			'name' => 'Uchiha Shisui',
			'fromVoc' => false
		),
		270 => array( 
			'name' => 'Sai',
			'fromVoc' => false
		),
		280 => array( 
			'name' => 'Senju Hashirama',
			'fromVoc' => false
		),
		290 => array( 
			'name' => 'Koori Haku',
			'fromVoc' => false
		),
		300 => array( 
			'name' => 'Guren',
			'fromVoc' => false
		),
		310 => array( 
			'name' => 'Otsutsuki Kaguya',
			'fromVoc' => false
		),
		320 => array( 
			'name' => 'Akasuna Sasori',
			'fromVoc' => false
		),
		330 => array( 
			'name' => 'Senju Tsunade',
			'fromVoc' => false
		),
		340 => array( 
			'name' => 'Ino Yamanaka',
			'fromVoc' => false
		),
		350 => array( 
			'name' => 'Suigetsu Hozuki',
			'fromVoc' => false
		),
		360 => array( 
			'name' => 'Hidan',
			'fromVoc' => false
		),
		370 => array( 
			'name' => 'Danzou Shimura',
			'fromVoc' => false
		),
		380 => array( 
			'name' => 'Might Guy',
			'fromVoc' => false
		),
		390 => array( 
			'name' => 'Onoki',
			'fromVoc' => false
		),
		400 => array( 
			'name' => 'Kurenai Yuhi',
			'fromVoc' => false
		),
		410 => array( 
			'name' => 'Tsuchikage Mu',
			'fromVoc' => false
		),
		420 => array( 
			'name' => 'Hiruzen Sarutobi',
			'fromVoc' => false
		),
		430 => array( 
			'name' => 'Kakuzu',
			'fromVoc' => false
		),
		440 => array( 
			'name' => 'Konan',
			'fromVoc' => false
		),
		450 => array( 
			'name' => 'Mifune',
			'fromVoc' => false
		),
		460 => array( 
			'name' => 'Nagato',
			'fromVoc' => false
		),
		470 => array( 
			'name' => 'Kabuto',
			'fromVoc' => false
		),
	);
	/*Config Look Types*/
    $config['vocation_looktypes'] = array(
		1 => 266,
		10 => 389,
		20 => 1759,
		30 => 1104,
		40 => 1452,
		50 => 2248,
		60 => 120,
		70 => 1541,
		80 => 107,
		90 => 1576,
		100 => 129,
		110 => 1244,
		120 => 162,
		130 => 283,
		140 => 221,
		150 => 120,
		160 => 120,
		170 => 181,
		180 => 239,
		190 => 145,
		200 => 326,
		210 => 310,
		220 => 120,
		230 => 120,
		240 => 27,
		250 => 468,
		260 => 427,
		270 => 337,
		280 => 84,
		290 => 73,
		300 => 49,
		310 => 1646,
		320 => 376,
		330 => 476,
		340 => 1797,
		350 => 439,
		360 => 1002,
		370 => 15,
		380 => 56,
		390 => 300,
		400 => 120,
		410 => 120,
		420 => 120,
		430 => 173,
		440 => 207,
		460 => 2435,
    );

	/* Ganhos de status de vocação por nível
	- Ordenado por ID da vocação
	- Atualmente usado para a página admin_skills
	- Desabilitado. */
	$config['vocations_gain'] = array(
		0 => array(
			'hp' => 0,
			'mp' => 0,
			'cap' => 0
		),
	);
	// IDs e nomes das cidades: (no editor de mapa RME, abra o mapa, clique em CTRL + T para visualizar as cidades, seus nomes e seus IDs.
	// townID => 'townName' etc: ['3' => 'Thais']
	$config['towns'] = array(
		1 => 'Konoha'
	);

	// - SOMENTE TFS 1.0 - SISTEMA DE LEILÃO DE CASAS!
	$config['houseConfig'] = array(
		'HouseListDefaultTown' => 1, // ID da cidade padrão a ser exibido ao visitar a página da página da lista de empresas.
		'minimumBidSQM' => 200, // custo mínimo de lance no leilão (por SQM)
		'auctionPeriod' => 24 * 60 * 60, // 24 horas de leilão.
		'housesPerPlayer' => 1,
		'requirePremium' => false,
		'levelToBuyHouse' => 8,
		// Compra instantânea com pontos de loja
		'shopPoints' => array(
			'enabled' => true,
			// SQM => custo de pontos
			'cost' => array(
				1 => 10,
				25 => 15,
				60 => 25,
				100 => 30,
				200 => 40,
				300 => 50,
			),
		),
	);

	// Deixe no quadrado preto no mapa e o jogador deve ser teleportado para a cidade selecionada.
	// Se os chars ficarem com bugs, defina esta posição para um local para iniciantes para forçar os jogadores lá.
	$config['default_pos'] = array(
		'x' => 1614,
		'y' => 3900,
		'z' => 5,
	);

	$config['war_status'] = array(
		0 => 'Pendente',
		1 => 'Aceitado',
		2 => 'Rejeitado',
		3 => 'Cancelado',
		4 => 'Encerrado por limite de mortes',
		5 => 'Encerrado',
	);

	/* - SUB PÁGINAS -
	Alguns layouts / modelos personalizados têm páginas personalizadas, eles podem usar
	essa funcionalidade de subpágina para isso.
	*/
	$config['allowSubPages'] = true;

	// ---------------- \\
	// Create Character \\
	// ---------------- \\

	// Máximo de caracteres em cada conta:
	$config['max_characters'] = 30;

	// Os usuários de vocação de personagem disponíveis podem criar.
	$config['available_vocations'] = array(1 ,10 ,20 ,40 ,50 ,70 ,80 ,110 ,120 ,170, 190, 210, 270, 290, 340, 350, 390, 90, 30, 360, 430, 440, 460);
	$config['info_vocations'] = array(1 ,10 ,20 ,40 ,50 ,70 ,80 , 100, 110 ,120, 130, 140 ,170, 180, 190, 200, 210, 250, 260, 270, 280, 290, 300,  310, 320, 330, 340, 350, 360, 370, 380, 390, 90, 30, 430, 420, 240, 440, 450, 460 ,470);
  // Cidades disponíveis (especifique os IDs da cidade, etc: (1, 2, 3); para exibir 3 opções de cidade (IDs da cidade 1, 2 e 3).
	$config['available_towns'] = array(1);

	$config['player'] = array(
		'base' => array(
			'health' => 250,
			'mana' => 250,
			'cap' => 440,
			'soul' => 0
		),
		// saúde, limite de mana etc. são calculados com os valores $ config ['vocations_gain'] e 'base' de $config['player']
		'create' => array(
			'level' => 1,
			'skills' => array( // Veja $config['vocations'] para nomes de vocação adequados desses IDs
				// Nenhuma vocação
				0 => array(
					'magic' => 10,
					'fist' => 10,
					'club' => 10,
					'axe' => 10,
					'sword' => 10,
					'dist' => 10,
					'shield' => 10,
					'fishing' => 10,
				),
			),
		)
	);

	// Letras mínimas permitidas para o nome do caractere. Etc 4 letras: "Kåre".
	$config['minL'] = 3;
	// Máximo de letras do nome do caractere permitido. Etc 20 letras: "Bobkåreolesofiesberg"
	$config['maxL'] = 20;

	// Máximo de palavras do nome do caractere permitido. Etc 2 palavras = "Bob Kåre", 3 palavras: "Bob Arne Kåre" como máx.
	$config['maxW'] = 3;

	// -------------- \\
	// WEBSITE STUFF  \\
	// -------------- \\

	// Notícias a serem exibidas por página
	$config['news_per_page'] = 5;

	// Ativa ou desativa o ticker do registro de alterações na página de notícias.
	$config['UseChangelogTicker'] = true;

	// Configuração de recordes
	$config['highscore'] = array(
		'rows' => 100,
		'rowsPerPage' => 20,
		'ignoreGroupId' => 2,6, // Ignore this and higher group ids (staff)
	);

	// SOMENTE PARA TFS 0.2 (os usuários TFS 0.3 / 4 não precisam se preocupar com isso, pois estão totalmente carregados a partir do db)
	$config['house'] = array(
		'house_file' => 'C:\test\Mystic Spirit_0.2.5\data\world\forgotten-house.xml',
		'price_sqm' => '50', // preço por m2 de casa
	);

	$config['delete_character_interval'] = '5 DAY'; // Atraso após o pedido de exclusão de caracteres do usuário ser executado, por exemplo. 1 DIA, 2 HORAS, 3 MESES etc.

	$config['validate_IP'] = false;
	$config['salt'] = false;

	// Nomes restritos
	$config['invalidNames'] = array("guren", "demon", "destroyer", "diabolic imp", "fire devil", "fury", "hand of cursed fate", "juggernaut", "nightmare", "plaguesmith", 
		"blue djinn", "efreet", "admin", "green djinn", "marid", "frost dragon", "wyrm", "sea serpent", "dragon lord", "dragon", "hydra", "dragon hatchling", 
		"dragon lord hatchling", "frost dragon hatchling", "dwarf geomancer", "dwarf guard", "dwarf soldier", "dwarf", "dworc fleshhunter", "dworc venomsniper",
		"dworc voodoomaster", "elephant", "mammoth", "elf arcanist", "elf scout", "elf", "charged energy elemental", "energy elemental", "massive energy elemental", 
		"overcharged energy elemental", "energy overlord", "cat", "lion", "tiger", "azure frog", "coral frog", "crimson frog", "green frog", "orchid frog", "toad",
		"jagged earth elemental", "muddy earth elemental", "earth elemental", "massive earth elemental", "earth overlord", "gargoyle", "stone golem", "ghost",
		"phantasm", "phantasm", "pirate ghost", "spectre", "cyclops smith", "cyclops drone", "behemoth", "cyclops", "slick water elemental", "roaring water elemental",
		"ice overlord", "water elemental", "massive water elemental", "ancient scarab", "butterfly", "bug", "centipede", "exp bug", "larva", "scarab", "wasp", 
		"lizard sentinel", "lizard snakecharmer", "lizard templar", "minotaur archer", "minotaur guard", "minotaur mage", "minotaur", "squirrel", "goblin demon", 
		"badger", "bat", "deer", "the halloween hare", "hyaena", "pig", "rabbit", "silver rabbit", "skunk", "wisp", "dark monk", "monk", "tha exp carrier", 
		"necromancer", "priestess", "orc berserker", "orc leader", "orc rider", "orc shaman", "orc spearman", "orc warlord", "orc warrior", "orc", "goblin leader",
		"goblin scavenger", "goblin", "goblin assassin", "assasin", "bandit", "black knight", "hero", "hunter", "nomad", "smuggler", "stalker", "poacher",
		"wild warrior", "ashmunrah", "dipthrah", "mahrdis", "morguthis", "omruc", "rahemos", "thalas", "vashresamun", "pirate buccaneer", "pirate corsair", 
		"pirate cutthroat", "pirate marauder", "carniphila", "spit nettle", "fire overlord", "massive fire elemental", "blistering fire elemental", 
		"blazing fire elemental", "fire elemental", "hellfire fighter", "quara constrictor scout", "quara hydromancer scout", "quara mantassin scout",
		"quara pincher scout", "quara predator scout", "quara constrictor", "quara hydromancer", "quara mantassin", "quara pincher", "quara predator", 
		"cave rat", "rat", "cobra", "crocodile", "serpent spawn", "snake", "wyvern", "black sheep", "sheep", "mimic", "betrayed wraith", "bonebeast",
		"demon skeleton", "lost soul", "pirate skeleton", "skeleton", "skeleton warrior", "undead dragon", "defiler", "slime2", "slime", "bog raider", 
		"ice witch", "warlock", "witch", "bones", "fluffy", "grynch clan goblin", "matatabi", "saiken", "son goku", "cursed tayuya", "sheele", "fuyuki", "black wolf", 
		"boxer", "bandit sword", "samurai", "farmer", "fire shinobi", "tiger", "bear", "sanshuuo", "karasu", "kuroari", "master shinobi", 
		"human mutated", "sword farmer", "zombie cidada", "hebi", "ningen hebi", "huntsman", "anbu", "fish", "water snake", "shukaku", "choumei", "gyuki", "isobu", 
		"kokuou", "kaishan", "human icy", "sword killer", "dashou kaishan", "sand bug", "sand cros", "sand storm", "assassin sword", "akai", "desert shaolin", 
		"jounin renegade", "corrupted", "posion karasu", "mitsuri", "sword man", "black shinobi", "salamander", "bisuke", "bull", "konchu", "hayato", "ibuse", "dragon lord",
		"shurata", "sirius", "prider", "devil skeleton", "renegade", "bunny", "d-bunny", "gedou dog", "sound shinobi", "dosu", "bandit", "traveller", "dark snake",
		"nukenin", "shinobi getsugakure", "giant fear", "shinobi skys", "kabutomushi", "skeleton", "advanced nukenin", "venom snake", "giant furie", "bat", "tayuya",
		"kimimaro", "jiroubou", "sakon", "devil", "gerotora", "vampire mutated", "kyodaijya", "gamakichi", "baby dragon", "elite jounin", "spectro", "spy akatsuki", 
		"gedou skeleton", "scorpion", "dino", "wyda", "zetsu negro", "aracnideo", "serious anbu", "hebi shiro", "unknow", "shiro kyodaijya", "orochi howaito", "yoth",
		"yoth furie", "warrior wolf", "ice renegade", "demi", "ice worm", "frost dragon", "ryu dragon", "shinobi", "tutor", "especialist huntsman", "master samurai", 
		"strong anbu", "shinobi spy", "quimera", "okami", "drasilla", "purple kyodaijya", "corruped", "diablo", "kiba boss", "demon", "kioji", "madara", "kyuubi", 
		"kurama", "pussy", "dick", "rape", "cm", "gm", "amazon", "valkyrie", "carrion worm", "rotworm", "rotworm queen", "cockroach", "kongra", "merlkin", "sibang",
		"crystal spider", "giant spider", "poison spider", "scorpion", "spider", "tarantula", "achad", "axeitus headbanger", "bloodpaw", "bovinus",
		"colerian the barbarian", "cursed gladiator", "frostfur", "orcus the cruel", "rocky", "the hairy one", "avalanche", "drasilla", "grimgor guteater",
		"kreebosh the exile", "slim", "spirit of earth", "spirit of fire", "spirit of water", "the dark dancer", "the hag", "darakan the executioner",
		"deathbringer", "fallen mooh'tah master ghar", "gnorre chyllson", "norgle glacierbeard", "svoren the mad", "the masked marauder", "the obliverator", 
		"the pit lord", "webster", "barbarian bloodwalker", "barbarian brutetamer", "barbarian headsplitter", "barbarian skullhunter", "bear", "panda", "polar bear",
		"braindeath", "beholder", "elder beholder", "gazer", "chicken", "dire penguin", "flamingo", "parrot", "penguin", "seagull", "terror bird", "bazir", "infernatil",
		"thul", "munster", "son of verminor", "xenia", "zoralurk", "big boss trolliver", "foreman kneebiter", "mad technomancer", "man in the cave", 
		"lord of the elements", "the count", "the plasmother", "dracola", "the abomination", "the handmaiden", "mr. punish", "the countess sorrow", "the imperor", 
		"massacre", "apocalypse", "brutus bloodbeard", "deadeye devious", "demodras", "dharalion", "fernfang", "ferumbras", "general murius", "ghazbaran", "grorlam", 
		"lethal lissy", "morgaroth", "necropharus", "orshabaal", "ron the ripper", "the evil eye", "the horned fox", "the old widow", "tiquandas revenge", 
		"apprentice sheng", "dog", "hellhound", "war wolf", "winter wolf", "wolf", "chakoya toolshaper", "chakoya tribewarden", "chakoya windcaller", "blood crab", 
		"crab", "frost giant", "frost giantess", "ice golem", "yeti", "acolyte of the cult", "adept of the cult", "enlightened of the cult", "novice of the cult", 
		"ungreez", "dark torturer", "hacker", "minishabaal", "primitive", "tibia bug", "undead minion", "annihilon", 
		"hellgorak", "latrivan", "madareth", "zugurosh", "ushuriel", "golgordan", "thornback tortoise", "tortoise", "eye of the seven", "deathslicer", "flamethrower", 
		"magicthrower", "plaguethrower", "poisonthrower", "shredderthrower", "troll champion", "frost troll", "island troll", "swamp troll", "troll", "banshee",
		"blightwalker", "crypt shambler", "ghoul", "lich", "mummy", "vampire", "grim reaper", "frost dragon", "mercenary", "zathroth", "goshnar", "durin", 
		"demora", "orc champion", "dracula", "alezzo", "prince almirith", "elf warlord", "magebomb", "nightmare scion");
		
	$config['invalidNameTags'] = array("owner", "gamemaster", "hoster", "admin", "staff", "tibia", "account", "god", "anal", "ass", "fuck", "sex", "hitler");

	// Use o sistema de logo da guilda
	$config['use_guild_logos'] = true;
	
	// Usar bandeiras do país
	$config['country_flags'] = array(
		'enabled' => true,
		'highscores' => true,
		'onlinelist' => true,
		'characterprofile' => true,
		'server' => 'layout/img/flags/'
	);

	// Show outfits
	$config['show_outfits'] = array(
		'shop' => true,
		'highscores' => true,
		'characterprofile' => true,
		'onlinelist' => true,
	// O servidor de imagem pode não ser confiável e apenas para teste,
	// hospede-se: https://otland.net/threads/item-images-10-92.242492/
		'imageServer' => $config['site_url_img'].'/img/vocations/mini',
		'imageServer2' => $config['site_url_img'].'/img/vocations/grande',
		'imageGradServer' => $config['site_url_img'].'/img/gradu'
	);

    $config['show_skins'] = array(
		'shop' => true,
		'imageType' => 'gif',
	// O servidor de imagem pode não ser confiável e apenas para teste,
	// hospede-se: https://otland.net/threads/item-images-10-92.242492/
		'imageServer' => $config['site_url_img'].'/img/outfits'
	);

	// Requerimento de nível para criar guilda? (Apenas defina como 1 para permitir todos os níveis).
	$config['create_guild_level'] = 200;

	// Alterar gênero pode ser comprado na loja, ou talvez você queira permitir que todos mudem de gênero gratuitamente?
	$config['free_sex_change'] = false;

	// Você precisa ter uma conta premium para criar uma guilda?
	$config['guild_require_premium'] = false;

	$config['guildwar_enabled'] = true;

	// Usar htaccess reescrever? (basicamente, isso faz o site.com/username funcionar em vez de website.com/characterprofile.php?name=username
	// Os usuários do Linux precisam ativar a extensão mod_rewrite php para fazê-lo funcionar corretamente, então defina-o como false se você estiver perdendo e usando o Linux.
	$config['htwrite'] = true;

	// Qual versão do cliente e porta do servidor você está usando neste OT?
	// Usado para a página de downloads.
	$config['client'] = 860; // 954 = client 9.54

	// Download do link para o cliente.
	$config['client_download'] = 'http://clients.halfaway.net/windows.php?tibia='. $config['client'] .'';
	$config['client_download_linux'] = 'http://clients.halfaway.net/linux.php?tibia='. $config['client'] .'';

	$config['port'] = 7171; // Número da porta para conectar ao seu OT.
	
	$config['status'] = array(
		'status_check' => true, // ativar ou desativar o verificador de status
		'status_ip' => '150.230.86.97',
		'status_port' => "7171",
	);

	// As informações do servidor de jogos são usadas para o cliente 11+ loginWebService
	$config['gameserver'] = array(
		'ip' => '150.230.86.97',
		'port' => 7172,
		'name' => 'NtoBattle' // Must be identical to config.lua (OT config file) server name.
	);

	// Com que frequência você deseja atualizar os recordes?
	$config['cache_lifespan'] = 5;//60 * 15; // 15 minutes.

	// AVISO! Os nomes de conta escritos aqui terão acesso de administrador à página da web!
	$config['page_admin_access'] = array(
		'souadm',
		'souadm',
	);

	// FORUM incorporado
	// Habilita o fórum, habilita guildboards, level para criar threads / postar neles
	// Quanto tempo eles precisam esperar para criar um tópico ou postar?
	// Como projetar / exibir tópicos ocultos / fechados / pegajosos.
	$config['forum'] = array(
		'enabled' => false,
		'outfit_avatars' => true, // Mostrar roupa do personagem como avatar do fórum?
		'player_position' => true, // Tutor, gerente de comunidade, Deus etc.?
		'guildboard' => true,
		'level' => 5,
		'cooldownPost' => 1,//60,
		'cooldownCreate' => 1,//180,
		'newPostsBumpThreads' => true,
		'hidden' => '<font color="orange">[H]</font>',
		'closed' => '<font color="red">[C]</font>',
		'sticky' => '<font color="green">[S]</font>',
	);

	// Guildas e páginas de guerra de guildas farão muitas consultas em bancos de dados maiores.
	// Portanto, é recomendável exigir login para visualizá-los, mas você pode desativar este
	// Se você não tiver problemas com o carregamento.
	$config['require_login'] = array(
		'guilds' => false,
		'guildwars' => false,
	);

	// IMPORTANTE! Escreva um nome de personagem (que exista) que represente as proibições de sites!
	// Ou lembre-se de criar o personagem "Deus Website".
	// Se você não fizer isso, o bann do painel de administração não funcionará corretamente.
	$config['website_char'] = 'Deus Website';

	//----------------\\
	// ADVANCED STUFF \\
	//----------------\\
	// Api config
	$config['api'] = array(
		'debug' => false,
	);

	// Configurações do servidor de email (SMTP)
	/* Por favor, considere usar uma versão estável lançada do PHPMailer ou você pode ter problemas.
		Faça o download do PHPMailer: https://github.com/PHPMailer/PHPMailer/releases
		Extrair para o diretório AAC do Znote (onde este arquivo config.php está localizado)
		Renomeie a pasta para "PHPMailer". Em seguida, defina isso com as configurações de email SMTP do seu provedor de email.
	*/
	$config['mailserver'] = array(
		'register' => false, // Enviar email de ativação
		'accountRecovery' => true, // Recupera nome de usuário ou senha pelo correio
		'host' => "smtp.gmail.com", // Host do servidor de email de saída.
		'securityType' => 'tls', // ssl ou tls
		'port' => 587, // Número da porta SMTP - provavelmente 465 (ssl) ou 587 (tls)
		'email' => 'wonsr2020@gmail.com', 
		'username' => 'wonsr2020@gmail.com', // Provavelmente o mesmo que email
		'password' => '', // A senha
		'debug' => false, // Habilite a depuração se você tiver problemas e está procurando erros.
		'fromName' => $config['site_title'],
	);
	
	
	// Não toque nisso, a menos que você saiba o que está fazendo. (modificar isso (valor da chave) também requer modificações nos arquivos OT /XML/commands.xml).
	$config['ingame_positions'] = array(
		1 => 'Player',
		2 => 'Tutor',
		3 => 'Senior Tutor',
		4 => 'Gamemaster',
		5 => 'Diretor',
		6 => 'ADM',
	);

	// Habilitar retratos avançados do SO? false = não, true = yes
	$config['os_enabled'] = false;

	// Em que tipo de computador você está hospedando este site?
	// Opções disponíveis: LINUX ou WINDOWS
	$config['os'] = ZNOTE_OS;

	// Measure how much players are lagging in-game. (Not completed). 
	$config['ping'] = false;

	// BAN STUFF - Não toque nisso, a menos que você saiba o que está fazendo.
	// Você pode solicitar as linhas da maneira que desejar, de cima para baixo, em que ordem
	// deseja que eles sejam exibidos no painel de administração. Apenas certifique-se de que a tecla [#] represente sua descrição.
	$config['ban_type'] = array(
		4 => 'NOTATION_ACCOUNT',
		2 => 'NAMELOCK_PLAYER',
		3 => 'BAN_ACCOUNT',
		5 => 'DELETE_ACCOUNT',
		1 => 'BAN_IPADDRESS',
	);

	// BAN STUFF - Não toque nisso, a menos que você saiba o que está fazendo.
	// Você pode solicitar as linhas da maneira que desejar, de cima para baixo, em que ordem
	// deseja que eles sejam exibidos no painel de administração. Apenas certifique-se de que a tecla [#] represente sua descrição.
	$config['ban_action'] = array(
		0 => 'Notation',
		1 => 'Name Report',
		2 => 'Banishment',
		3 => 'Name Report + Banishment',
		4 => 'Banishment + Final Warning',
		5 => 'NR + Ban + FW',
		6 => 'Statement Report',
	);

	// Razões de proibição, para alterações além dos valores padrão para trabalhar com o cliente
	// você também precisa editar fontes (tools.cpp linha 1096)
	$config['ban_reason'] = array(
		0 => 'Offensive Name',
		1 => 'Invalid Name Format',
		2 => 'Unsuitable Name',
		3 => 'Name Inciting Rule Violation',
		4 => 'Offensive Statement',
		5 => 'Spamming',
		6 => 'Illegal Advertising',
		7 => 'Off-Topic Public Statement',
		8 => 'Non-English Public Statement',
		9 => 'Inciting Rule Violation',
		10 => 'Bug Abuse',
		11 => 'Game Weakness Abuse',
		12 => 'Using Unofficial Software to Play',
		13 => 'Hacking',
		14 => 'Multi-Clienting',
		15 => 'Account Trading or Sharing',
		16 => 'Threatening Gamemaster',
		17 => 'Pretending to Have Influence on Rule Enforcement',
		18 => 'False Report to Gamemaster',
		19 => 'Destructive Behaviour',
		20 => 'Excessive Unjustified Player Killing',
		21 => 'Spoiling Auction',
	);

	// MATERIAL DE PROIBIÇÃO
	// Proibir seleção de duração do tempo no painel de administração
	// segundos => descrição
	$config['ban_time'] = array(
		3600 => '1 hour',
		21600 => '6 hours',
		43200 => '12 hours',
		86400 => '1 day',
		259200 => '3 days',
		604800 => '1 week',
		1209600 => '2 weeks',
		2592000 => '1 month',
	);

		// --------------- \\
		// SECURITY STUFF  \\
		// --------------- \\
	$config['use_token'] = false;
	// Configure chaves captcha em https://www.google.com/recaptcha/
	$config['use_captcha'] = false;
	$config['captcha_site_key'] = "6LfXpeMZAAAAAC0k7MuODQPSZqBNDaNRf8siV8ld";
	$config['captcha_secret_key'] = "6LfXpeMZAAAAAJkL1w-c3jRkY2c1FyXiXbTlmige";
	$config['captcha_use_curl'] = false; // Defina como false se você não tiver o cURL instalado, caso contrário, defina-o como true

	// Prefixo da sessão, se você estiver hospedando vários sites, torne o nome da sessão diferente para evitar conflitos.
	$config['session_prefix'] = 'znote_';

	/* 	Armazenar dados do visitante
		Armazene os dados do visitante no banco de dados, registrando todos os sites de visita IP,
		e quantas vezes eles visitaram o site. E as vezes o que
		eles fazem no site.

		Isso ajuda a impedir o POST SPAM (como registrar 1000 contas em alguns segundos)
		e outras coisas que podem estressar e desacelerar o servidor.

		A única desvantagem é que o banco de dados pode ficar farto de muitos dados IP
		se a mesa nunca for liberada de vez em quando. Então eu recomendo você
		para configurar flush_ip_logs se os IPs estiverem registrados.
	*/
	$config['log_ip'] = true;

	// Liberar logs de IP a cada segundo configurado, 60 * 15 = 15 minutos.
	// Defina como false para desativar completamente o ip log flush.
	// É importante liberar para obter o desempenho ideal.
	$config['flush_ip_logs'] = 59 * 27;

	/* IP SECURTY REQUIRE: $ config ['log_ip'] = true;
	Configure o quão apertada essa segurança deve ser.
	Etc: você pode clicar no máximo em qualquer coisa / atualizar a página
	[atividade máxima] 15 vezes, dentro do período 10
	segundos. Durante time_period, você também pode apenas
	registrar 1 conta e 1 caractere.
	*/
	$config['ip_security'] = array(
		'time_period' => 10, // In seconds
		'max_activity' => 10, // page clicks/visits
		'max_post' => 6, // register, create, highscore, character search such actions
		'max_account' => 1, // register
		'max_character' => 1, // create char
		'max_forum_post' => 1, // Create threads and post in forum
	);

	//////////////
	/// PAYPAL ///
	//////////////

	// Escreva aqui o seu endereço paypal e em que moeda você deseja receber dinheiro.
	$config['paypal'] = array(
		'enabled' => false,
		'email' => 'edit@me.com', // Example: paypal@mail.com
		'currency' => 'EUR',
		'points_per_currency' => 10, // 1 moeda =? pontos? [SOMENTE usado para calcular bônus]
		'success' => "http://".$_SERVER['HTTP_HOST']."/success.php",
		'failed' => "http://".$_SERVER['HTTP_HOST']."/failed.php",
		'ipn' => "http://".$_SERVER['HTTP_HOST']."/ipn.php",
		'showBonus' => true,
	);

	// Configure os preços dos botões "compre agora", primeiro escreva o preço e depois quantos pontos você ganha.
	// Dar alguns pontos de bônus por doações mais altas tentará os usuários a doar mais.
	$config['paypal_prices'] = array(
	// preço => pontos,
		1 => 45, // -10% bonus
		10 => 100, // 0% bonus
		15 => 165, // +10% bonus
		20 => 240, // +20% bonus
		25 => 325, // +30% bonus
		30 => 420, // +40% bonus
	);

	/////////////////
	/// PAGSEGURO ///
	/////////////////
	// Escreva aqui o seu endereço pagseguro e em que moeda você deseja receber dinheiro.
	$config['pagseguro'] = array(
		'enabled' => true,
		'sandbox' => false,
		'email' => '', // Example: pagseguro@mail.com
		'token' => '',
		'currency' => 'BRL',
		'product_name' => 'Premium Points',
		'price' => 50, // 1 real
		'ipn' => "https://ntobattle.com.br/pagseguro_ipn.php",
		'urls' => array(
			'www' => 'pagseguro.uol.com.br',
			'ws'  => 'ws.pagseguro.uol.com.br',
			'stc' => 'stc.pagseguro.uol.com.br'
		)
	);
	
	

	
	//////////////////
	/// PagSeguro ///
	//////////////////
	//Diretorio pasta 'config' -> arquivo 'config.php'.
	
	
	
	
	//////////////////
	/// PAYGOL SMS ///
	//////////////////
	// !!! A Paygol recebe 60% do dinheiro e envia aproximadamente 40% ao seu paypal.
	// Você pode configurar o paygol para enviar todos os meses, e eles enviarão dinheiro
	// para você 1 mês depois de receber mais de 50 euros.
	$config['paygol'] = array(
		'enabled' => false,
		'serviceID' => 86648, // ID do serviço de paygol.com
		'secretKey' => 'xxxx-xxxx-xxxx-xxxx', // Chave secreta do paygol.com. Nunca compartilhe sua chave secreta
		'currency' => 'SEK',
		'price' => 20,
		'points' => 20,
		'name' => '20 points',
		'returnURL' => "http://".$_SERVER['HTTP_HOST']."/success.php",
		'cancelURL' => "http://".$_SERVER['HTTP_HOST']."/failed.php"
	);

	////////////
	/// SHOP ///
	////////////
	// Se useDB estiver definido como true, o jogador também poderá comprar no jogo usando o plug-in do sistema de compras do Znote LUA.
	$config['shop'] = array(
		'enabled' => true,
		'loginToView' => true, // O usuário precisa fazer login para ver as ofertas da loja?
		'enableShopConfirmation' => true,	// Verifique se o usuário deseja comprar com o pop-up
		'useDB' => false, // Buscar ofertas do banco de dados ou a matriz de configuração abaixo
		'showImage' => true,
		'imageServer' => $config['site_url_img'].'/img/items',
		'imageType' => 'gif',
	);

	//////////
	/// Deixe os jogadores venderem, comprarem e licitarem personagens.
	/// Cria uma economia de loja mais profunda, incentiva os jogadores a gastar mais dinheiro na compra de pontos.
	/// Pagar para ganhar / progredir mecânico, mas também permite que pessoas que mal podem pagar pontos para ganhá-lo
	/// nivelando os personagens para vender. Também pode desencorajar uma conta de terceiros ilegal / arriscada
	/// Serviços. Como os jogadores podem comprar oficialmente e dar suporte ao servidor, os concorrentes desonestos precisam vender por mais barato.
	/// Sem interferência do administrador, isso é orgânico para cada inflação da economia comunitária individual.
	/////////
	$config['shop_auction'] = array(
		'characterAuction' => true, // Ativar / desativar este sistema
		'needconfirmation' => true, // Ativar / desativar este sistema
		// ID da conta que armazena jogadores no leilão.
		// Verifique se a conta de armazenamento tem uma senha muito segura!
		'storage_account_id' => 500000, // Separe o ID da conta segura, não o seu GM.
		'step' => 5, // Valor mínimo que alguém pode aumentar um lance até
		'step_duration' => 1 * 60 * 60, // Ao fazer lances para outra pessoa, aumente o período do lance em 1 hora.
		'lowestLevel' => 20, // Nível mínimo de caractere vendido
		'lowestPrice' => 10, // Os pontos de doação mais baixos pelos quais um char pode ser vendido.
		'biddingDuration' => 1 * 24 * 60 * 60, // = 1 dia, 0 para desativar o lance
		'deposit' => 10 // O vendedor precisa adicionar um depósito de 10 = 10% ao leilão, o qual volta mais tarde.
	);

	/*
		tipo 1 = itens
		tipo 2 = dias premium
		tipo 3 = Alterar o sexo do caractere
		type 4 = Alterar nome do caractere
		type 5 = Buy outfit (coloque o ID do item como itemid),
		(coloque o ID do addon como count [0 = nada, 1 = primeiro addon, 2 = segundo addon, 3 = ambos addons])
		type 6 = Buy mount (coloque o ID da montagem como itemid)
		tipo 7 = comprar casa (codificado no sistema da casa, tipo usado para log de dados)
		tipo 8+ = material codificado personalizado
	*/
    include 'shopitems.php';

	//////////////////////////
	/// OTServers.eu voting
	//
	// Comece criando uma conta em OTServers.eu e adicione seu servidor.
	// Você pode encontrar seu token secreto fazendo login no OTServers.eu e vá para 'MEU SERVIDOR' e depois 'Incentivar os jogadores a votar'.
	$config['otservers_eu_voting'] = [
		'enabled' => false,
		'simpleVoteUrl' => '',// Este URL é usado se o player não estiver logado.
		'voteUrl' => 'https://api.otservers.eu/vote_link.php',
		'voteCheckUrl' => 'https://api.otservers.eu/vote_check.php',
		'secretToken' => '', // Digite seu token secreto. Não compartilhe com ninguém!
		'landingPage' => '/voting.php?action=reward', // O usuário será redirecionado para esta página após a votação
		'points' => '1' // Quantidade de pontos a serem dados como recompensa
	];
