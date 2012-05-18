package xCAT::TZUtils;
my %posixtowintimezonemap = (
	"Etc/GMT+12" => "Dateline Standard Time",
	"Etc/GMT+12" => "Dateline Standard Time",
	"Etc/GMT+11" => "UTC-11",
	"Pacific/Pago_Pago" => "UTC-11",
	"Pacific/Niue" => "UTC-11",
	"Pacific/Midway" => "UTC-11",
	"Etc/GMT+11" => "UTC-11",
	"Pacific/Honolulu" => "Hawaiian Standard Time",
	"Pacific/Rarotonga" => "Hawaiian Standard Time",
	"Pacific/Tahiti" => "Hawaiian Standard Time",
	"Pacific/Johnston" => "Hawaiian Standard Time",
	"Pacific/Honolulu" => "Hawaiian Standard Time",
	"Etc/GMT+10" => "Hawaiian Standard Time",
	"America/Anchorage" => "Alaskan Standard Time",
	"America/Anchorage" => "Alaskan Standard Time",
	"America/Juneau" => "Alaskan Standard Time",
	"America/Nome" => "Alaskan Standard Time",
	"America/Sitka" => "Alaskan Standard Time",
	"America/Yakutat" => "Alaskan Standard Time",
	"America/Santa_Isabel" => "Pacific Standard Time (Mexico)",
	"America/Santa_Isabel" => "Pacific Standard Time (Mexico)",
	"America/Los_Angeles" => "Pacific Standard Time",
	"America/Vancouver" => "Pacific Standard Time",
	"America/Dawson" => "Pacific Standard Time",
	"America/Whitehorse" => "Pacific Standard Time",
	"America/Tijuana" => "Pacific Standard Time",
	"America/Los_Angeles" => "Pacific Standard Time",
	"PST8PDT" => "Pacific Standard Time",
	"America/Phoenix" => "US Mountain Standard Time",
	"America/Dawson_Creek" => "US Mountain Standard Time",
	"America/Creston" => "US Mountain Standard Time",
	"America/Hermosillo" => "US Mountain Standard Time",
	"America/Phoenix" => "US Mountain Standard Time",
	"Etc/GMT+7" => "US Mountain Standard Time",
	"America/Chihuahua" => "Mountain Standard Time (Mexico)",
	"America/Chihuahua" => "Mountain Standard Time (Mexico)",
	"America/Mazatlan" => "Mountain Standard Time (Mexico)",
	"America/Denver" => "Mountain Standard Time",
	"America/Edmonton" => "Mountain Standard Time",
	"America/Cambridge_Bay" => "Mountain Standard Time",
	"America/Inuvik" => "Mountain Standard Time",
	"America/Yellowknife" => "Mountain Standard Time",
	"America/Ojinaga" => "Mountain Standard Time",
	"America/Denver" => "Mountain Standard Time",
	"America/Boise" => "Mountain Standard Time",
	"America/Shiprock" => "Mountain Standard Time",
	"MST7MDT" => "Mountain Standard Time",
	"America/Guatemala" => "Central America Standard Time",
	"America/Belize" => "Central America Standard Time",
	"America/Costa_Rica" => "Central America Standard Time",
	"Pacific/Galapagos" => "Central America Standard Time",
	"America/Guatemala" => "Central America Standard Time",
	"America/Tegucigalpa" => "Central America Standard Time",
	"America/Managua" => "Central America Standard Time",
	"America/El_Salvador" => "Central America Standard Time",
	"Etc/GMT+6" => "Central America Standard Time",
	"America/Chicago" => "Central Standard Time",
	"America/Winnipeg" => "Central Standard Time",
	"America/Rainy_River" => "Central Standard Time",
	"America/Rankin_Inlet" => "Central Standard Time",
	"America/Resolute" => "Central Standard Time",
	"America/Matamoros" => "Central Standard Time",
	"America/Chicago" => "Central Standard Time",
	"America/Indiana/Knox" => "Central Standard Time",
	"America/Indiana/Tell_City" => "Central Standard Time",
	"America/Menominee" => "Central Standard Time",
	"America/North_Dakota/Beulah" => "Central Standard Time",
	"America/North_Dakota/Center" => "Central Standard Time",
	"America/North_Dakota/New_Salem" => "Central Standard Time",
	"CST6CDT" => "Central Standard Time",
	"America/Mexico_City" => "Central Standard Time (Mexico)",
	"America/Mexico_City" => "Central Standard Time (Mexico)",
	"America/Bahia_Banderas" => "Central Standard Time (Mexico)",
	"America/Cancun" => "Central Standard Time (Mexico)",
	"America/Merida" => "Central Standard Time (Mexico)",
	"America/Monterrey" => "Central Standard Time (Mexico)",
	"America/Regina" => "Canada Central Standard Time",
	"America/Regina" => "Canada Central Standard Time",
	"America/Swift_Current" => "Canada Central Standard Time",
	"America/Bogota" => "SA Pacific Standard Time",
	"America/Coral_Harbour" => "SA Pacific Standard Time",
	"America/Bogota" => "SA Pacific Standard Time",
	"America/Guayaquil" => "SA Pacific Standard Time",
	"America/Port-au-Prince" => "SA Pacific Standard Time",
	"America/Jamaica" => "SA Pacific Standard Time",
	"America/Cayman" => "SA Pacific Standard Time",
	"America/Panama" => "SA Pacific Standard Time",
	"America/Lima" => "SA Pacific Standard Time",
	"Etc/GMT+5" => "SA Pacific Standard Time",
	"America/New_York" => "Eastern Standard Time",
	"America/Nassau" => "Eastern Standard Time",
	"America/Toronto" => "Eastern Standard Time",
	"America/Iqaluit" => "Eastern Standard Time",
	"America/Montreal" => "Eastern Standard Time",
	"America/Nipigon" => "Eastern Standard Time",
	"America/Pangnirtung" => "Eastern Standard Time",
	"America/Thunder_Bay" => "Eastern Standard Time",
	"America/Grand_Turk" => "Eastern Standard Time",
	"America/New_York" => "Eastern Standard Time",
	"America/Detroit" => "Eastern Standard Time",
	"America/Indiana/Petersburg" => "Eastern Standard Time",
	"America/Indiana/Vincennes" => "Eastern Standard Time",
	"America/Indiana/Winamac" => "Eastern Standard Time",
	"America/Kentucky/Monticello" => "Eastern Standard Time",
	"America/Louisville" => "Eastern Standard Time",
	"EST5EDT" => "Eastern Standard Time",
	"America/Indianapolis" => "US Eastern Standard Time",
	"America/Indianapolis" => "US Eastern Standard Time",
	"America/Indiana/Marengo" => "US Eastern Standard Time",
	"America/Indiana/Vevay" => "US Eastern Standard Time",
	"America/Caracas" => "Venezuela Standard Time",
	"America/Caracas" => "Venezuela Standard Time",
	"America/Asuncion" => "Paraguay Standard Time",
	"America/Asuncion" => "Paraguay Standard Time",
	"America/Halifax" => "Atlantic Standard Time",
	"Atlantic/Bermuda" => "Atlantic Standard Time",
	"America/Halifax" => "Atlantic Standard Time",
	"America/Glace_Bay" => "Atlantic Standard Time",
	"America/Goose_Bay" => "Atlantic Standard Time",
	"America/Moncton" => "Atlantic Standard Time",
	"America/Thule" => "Atlantic Standard Time",
	"America/Cuiaba" => "Central Brazilian Standard Time",
	"America/Cuiaba" => "Central Brazilian Standard Time",
	"America/Campo_Grande" => "Central Brazilian Standard Time",
	"America/La_Paz" => "SA Western Standard Time",
	"America/Antigua" => "SA Western Standard Time",
	"America/Anguilla" => "SA Western Standard Time",
	"America/Aruba" => "SA Western Standard Time",
	"America/Barbados" => "SA Western Standard Time",
	"America/St_Barthelemy" => "SA Western Standard Time",
	"America/La_Paz" => "SA Western Standard Time",
	"America/Kralendijk" => "SA Western Standard Time",
	"America/Manaus" => "SA Western Standard Time",
	"America/Boa_Vista" => "SA Western Standard Time",
	"America/Eirunepe" => "SA Western Standard Time",
	"America/Porto_Velho" => "SA Western Standard Time",
	"America/Rio_Branco" => "SA Western Standard Time",
	"America/Blanc-Sablon" => "SA Western Standard Time",
	"America/Curacao" => "SA Western Standard Time",
	"America/Dominica" => "SA Western Standard Time",
	"America/Santo_Domingo" => "SA Western Standard Time",
	"America/Grenada" => "SA Western Standard Time",
	"America/Guadeloupe" => "SA Western Standard Time",
	"America/Guyana" => "SA Western Standard Time",
	"America/St_Kitts" => "SA Western Standard Time",
	"America/St_Lucia" => "SA Western Standard Time",
	"America/Marigot" => "SA Western Standard Time",
	"America/Martinique" => "SA Western Standard Time",
	"America/Montserrat" => "SA Western Standard Time",
	"America/Puerto_Rico" => "SA Western Standard Time",
	"America/Lower_Princes" => "SA Western Standard Time",
	"America/Port_of_Spain" => "SA Western Standard Time",
	"America/St_Vincent" => "SA Western Standard Time",
	"America/Tortola" => "SA Western Standard Time",
	"America/St_Thomas" => "SA Western Standard Time",
	"Etc/GMT+4" => "SA Western Standard Time",
	"America/Santiago" => "Pacific SA Standard Time",
	"Antarctica/Palmer" => "Pacific SA Standard Time",
	"America/Santiago" => "Pacific SA Standard Time",
	"America/St_Johns" => "Newfoundland Standard Time",
	"America/St_Johns" => "Newfoundland Standard Time",
	"America/Sao_Paulo" => "E. South America Standard Time",
	"America/Sao_Paulo" => "E. South America Standard Time",
	"America/Buenos_Aires" => "Argentina Standard Time",
	"America/Buenos_Aires" => "Argentina Standard Time",
	"America/Argentina/La_Rioja" => "Argentina Standard Time",
	"America/Argentina/Rio_Gallegos" => "Argentina Standard Time",
	"America/Argentina/Salta" => "Argentina Standard Time",
	"America/Argentina/San_Juan" => "Argentina Standard Time",
	"America/Argentina/San_Luis" => "Argentina Standard Time",
	"America/Argentina/Tucuman" => "Argentina Standard Time",
	"America/Argentina/Ushuaia" => "Argentina Standard Time",
	"America/Catamarca" => "Argentina Standard Time",
	"America/Cordoba" => "Argentina Standard Time",
	"America/Jujuy" => "Argentina Standard Time",
	"America/Mendoza" => "Argentina Standard Time",
	"America/Cayenne" => "SA Eastern Standard Time",
	"Antarctica/Rothera" => "SA Eastern Standard Time",
	"America/Fortaleza" => "SA Eastern Standard Time",
	"America/Araguaina" => "SA Eastern Standard Time",
	"America/Belem" => "SA Eastern Standard Time",
	"America/Maceio" => "SA Eastern Standard Time",
	"America/Recife" => "SA Eastern Standard Time",
	"America/Santarem" => "SA Eastern Standard Time",
	"Atlantic/Stanley" => "SA Eastern Standard Time",
	"America/Cayenne" => "SA Eastern Standard Time",
	"America/Paramaribo" => "SA Eastern Standard Time",
	"Etc/GMT+3" => "SA Eastern Standard Time",
	"America/Godthab" => "Greenland Standard Time",
	"America/Godthab" => "Greenland Standard Time",
	"America/Montevideo" => "Montevideo Standard Time",
	"America/Montevideo" => "Montevideo Standard Time",
	"America/Bahia" => "Bahia Standard Time",
	"America/Bahia" => "Bahia Standard Time",
	"Etc/GMT+2" => "UTC-02",
	"America/Noronha" => "UTC-02",
	"Atlantic/South_Georgia" => "UTC-02",
	"Etc/GMT+2" => "UTC-02",
	"Atlantic/Azores" => "Azores Standard Time",
	"America/Scoresbysund" => "Azores Standard Time",
	"Atlantic/Azores" => "Azores Standard Time",
	"Atlantic/Cape_Verde" => "Cape Verde Standard Time",
	"Atlantic/Cape_Verde" => "Cape Verde Standard Time",
	"Etc/GMT+1" => "Cape Verde Standard Time",
	"Africa/Casablanca" => "Morocco Standard Time",
	"Africa/Casablanca" => "Morocco Standard Time",
	"Etc/GMT" => "UTC",
	"America/Danmarkshavn" => "UTC",
	"Etc/GMT" => "UTC",
	"Europe/London" => "GMT Standard Time",
	"Atlantic/Canary" => "GMT Standard Time",
	"Atlantic/Faeroe" => "GMT Standard Time",
	"Europe/London" => "GMT Standard Time",
	"Europe/Guernsey" => "GMT Standard Time",
	"Europe/Dublin" => "GMT Standard Time",
	"Europe/Isle_of_Man" => "GMT Standard Time",
	"Europe/Jersey" => "GMT Standard Time",
	"Europe/Lisbon" => "GMT Standard Time",
	"Atlantic/Madeira" => "GMT Standard Time",
	"Atlantic/Reykjavik" => "Greenwich Standard Time",
	"Africa/Ouagadougou" => "Greenwich Standard Time",
	"Africa/Abidjan" => "Greenwich Standard Time",
	"Africa/El_Aaiun" => "Greenwich Standard Time",
	"Africa/Accra" => "Greenwich Standard Time",
	"Africa/Banjul" => "Greenwich Standard Time",
	"Africa/Conakry" => "Greenwich Standard Time",
	"Africa/Bissau" => "Greenwich Standard Time",
	"Atlantic/Reykjavik" => "Greenwich Standard Time",
	"Africa/Monrovia" => "Greenwich Standard Time",
	"Africa/Bamako" => "Greenwich Standard Time",
	"Africa/Nouakchott" => "Greenwich Standard Time",
	"Atlantic/St_Helena" => "Greenwich Standard Time",
	"Africa/Freetown" => "Greenwich Standard Time",
	"Africa/Dakar" => "Greenwich Standard Time",
	"Africa/Sao_Tome" => "Greenwich Standard Time",
	"Africa/Lome" => "Greenwich Standard Time",
	"Europe/Berlin" => "W. Europe Standard Time",
	"Europe/Andorra" => "W. Europe Standard Time",
	"Europe/Vienna" => "W. Europe Standard Time",
	"Europe/Zurich" => "W. Europe Standard Time",
	"Europe/Berlin" => "W. Europe Standard Time",
	"Europe/Gibraltar" => "W. Europe Standard Time",
	"Europe/Rome" => "W. Europe Standard Time",
	"Europe/Vaduz" => "W. Europe Standard Time",
	"Europe/Luxembourg" => "W. Europe Standard Time",
	"Europe/Monaco" => "W. Europe Standard Time",
	"Europe/Malta" => "W. Europe Standard Time",
	"Europe/Amsterdam" => "W. Europe Standard Time",
	"Europe/Oslo" => "W. Europe Standard Time",
	"Europe/Stockholm" => "W. Europe Standard Time",
	"Arctic/Longyearbyen" => "W. Europe Standard Time",
	"Europe/San_Marino" => "W. Europe Standard Time",
	"Europe/Vatican" => "W. Europe Standard Time",
	"Europe/Budapest" => "Central Europe Standard Time",
	"Europe/Tirane" => "Central Europe Standard Time",
	"Europe/Prague" => "Central Europe Standard Time",
	"Europe/Budapest" => "Central Europe Standard Time",
	"Europe/Podgorica" => "Central Europe Standard Time",
	"Europe/Belgrade" => "Central Europe Standard Time",
	"Europe/Ljubljana" => "Central Europe Standard Time",
	"Europe/Bratislava" => "Central Europe Standard Time",
	"Europe/Paris" => "Romance Standard Time",
	"Europe/Brussels" => "Romance Standard Time",
	"Europe/Copenhagen" => "Romance Standard Time",
	"Europe/Madrid" => "Romance Standard Time",
	"Africa/Ceuta" => "Romance Standard Time",
	"Europe/Paris" => "Romance Standard Time",
	"Europe/Warsaw" => "Central European Standard Time",
	"Europe/Sarajevo" => "Central European Standard Time",
	"Europe/Zagreb" => "Central European Standard Time",
	"Europe/Skopje" => "Central European Standard Time",
	"Europe/Warsaw" => "Central European Standard Time",
	"Africa/Lagos" => "W. Central Africa Standard Time",
	"Africa/Luanda" => "W. Central Africa Standard Time",
	"Africa/Porto-Novo" => "W. Central Africa Standard Time",
	"Africa/Kinshasa" => "W. Central Africa Standard Time",
	"Africa/Bangui" => "W. Central Africa Standard Time",
	"Africa/Brazzaville" => "W. Central Africa Standard Time",
	"Africa/Douala" => "W. Central Africa Standard Time",
	"Africa/Algiers" => "W. Central Africa Standard Time",
	"Africa/Libreville" => "W. Central Africa Standard Time",
	"Africa/Malabo" => "W. Central Africa Standard Time",
	"Africa/Niamey" => "W. Central Africa Standard Time",
	"Africa/Lagos" => "W. Central Africa Standard Time",
	"Africa/Ndjamena" => "W. Central Africa Standard Time",
	"Africa/Tunis" => "W. Central Africa Standard Time",
	"Etc/GMT-1" => "W. Central Africa Standard Time",
	"Africa/Windhoek" => "Namibia Standard Time",
	"Africa/Windhoek" => "Namibia Standard Time",
	"Asia/Amman" => "Jordan Standard Time",
	"Asia/Amman" => "Jordan Standard Time",
	"Europe/Bucharest" => "GTB Standard Time",
	"Europe/Athens" => "GTB Standard Time",
	"Europe/Chisinau" => "GTB Standard Time",
	"Europe/Bucharest" => "GTB Standard Time",
	"Asia/Beirut" => "Middle East Standard Time",
	"Asia/Beirut" => "Middle East Standard Time",
	"Africa/Cairo" => "Egypt Standard Time",
	"Africa/Cairo" => "Egypt Standard Time",
	"Asia/Gaza" => "Egypt Standard Time",
	"Asia/Hebron" => "Egypt Standard Time",
	"Asia/Damascus" => "Syria Standard Time",
	"Asia/Damascus" => "Syria Standard Time",
	"Africa/Johannesburg" => "South Africa Standard Time",
	"Africa/Bujumbura" => "South Africa Standard Time",
	"Africa/Gaborone" => "South Africa Standard Time",
	"Africa/Lubumbashi" => "South Africa Standard Time",
	"Africa/Maseru" => "South Africa Standard Time",
	"Africa/Tripoli" => "South Africa Standard Time",
	"Africa/Blantyre" => "South Africa Standard Time",
	"Africa/Maputo" => "South Africa Standard Time",
	"Africa/Kigali" => "South Africa Standard Time",
	"Africa/Mbabane" => "South Africa Standard Time",
	"Africa/Johannesburg" => "South Africa Standard Time",
	"Africa/Lusaka" => "South Africa Standard Time",
	"Africa/Harare" => "South Africa Standard Time",
	"Etc/GMT-2" => "South Africa Standard Time",
	"Europe/Kiev" => "FLE Standard Time",
	"Europe/Mariehamn" => "FLE Standard Time",
	"Europe/Sofia" => "FLE Standard Time",
	"Europe/Tallinn" => "FLE Standard Time",
	"Europe/Helsinki" => "FLE Standard Time",
	"Europe/Vilnius" => "FLE Standard Time",
	"Europe/Riga" => "FLE Standard Time",
	"Europe/Kiev" => "FLE Standard Time",
	"Europe/Simferopol" => "FLE Standard Time",
	"Europe/Uzhgorod" => "FLE Standard Time",
	"Europe/Zaporozhye" => "FLE Standard Time",
	"Europe/Istanbul" => "Turkey Standard Time",
	"Europe/Istanbul" => "Turkey Standard Time",
	"Asia/Jerusalem" => "Israel Standard Time",
	"Asia/Jerusalem" => "Israel Standard Time",
	"Asia/Nicosia" => "E. Europe Standard Time",
	"Asia/Nicosia" => "E. Europe Standard Time",
	"Asia/Baghdad" => "Arabic Standard Time",
	"Asia/Baghdad" => "Arabic Standard Time",
	"Europe/Kaliningrad" => "Kaliningrad Standard Time",
	"Europe/Minsk" => "Kaliningrad Standard Time",
	"Europe/Kaliningrad" => "Kaliningrad Standard Time",
	"Asia/Riyadh" => "Arab Standard Time",
	"Asia/Bahrain" => "Arab Standard Time",
	"Asia/Kuwait" => "Arab Standard Time",
	"Asia/Qatar" => "Arab Standard Time",
	"Asia/Riyadh" => "Arab Standard Time",
	"Asia/Aden" => "Arab Standard Time",
	"Africa/Nairobi" => "E. Africa Standard Time",
	"Antarctica/Syowa" => "E. Africa Standard Time",
	"Africa/Djibouti" => "E. Africa Standard Time",
	"Africa/Asmera" => "E. Africa Standard Time",
	"Africa/Addis_Ababa" => "E. Africa Standard Time",
	"Africa/Nairobi" => "E. Africa Standard Time",
	"Indian/Comoro" => "E. Africa Standard Time",
	"Indian/Antananarivo" => "E. Africa Standard Time",
	"Africa/Khartoum" => "E. Africa Standard Time",
	"Africa/Mogadishu" => "E. Africa Standard Time",
	"Africa/Juba" => "E. Africa Standard Time",
	"Africa/Dar_es_Salaam" => "E. Africa Standard Time",
	"Africa/Kampala" => "E. Africa Standard Time",
	"Indian/Mayotte" => "E. Africa Standard Time",
	"Etc/GMT-3" => "E. Africa Standard Time",
	"Asia/Tehran" => "Iran Standard Time",
	"Asia/Tehran" => "Iran Standard Time",
	"Asia/Dubai" => "Arabian Standard Time",
	"Asia/Dubai" => "Arabian Standard Time",
	"Asia/Muscat" => "Arabian Standard Time",
	"Etc/GMT-4" => "Arabian Standard Time",
	"Asia/Baku" => "Azerbaijan Standard Time",
	"Asia/Baku" => "Azerbaijan Standard Time",
	"Europe/Moscow" => "Russian Standard Time",
	"Europe/Moscow" => "Russian Standard Time",
	"Europe/Samara" => "Russian Standard Time",
	"Europe/Volgograd" => "Russian Standard Time",
	"Indian/Mauritius" => "Mauritius Standard Time",
	"Indian/Mauritius" => "Mauritius Standard Time",
	"Indian/Reunion" => "Mauritius Standard Time",
	"Indian/Mahe" => "Mauritius Standard Time",
	"Asia/Tbilisi" => "Georgian Standard Time",
	"Asia/Tbilisi" => "Georgian Standard Time",
	"Asia/Yerevan" => "Caucasus Standard Time",
	"Asia/Yerevan" => "Caucasus Standard Time",
	"Asia/Kabul" => "Afghanistan Standard Time",
	"Asia/Kabul" => "Afghanistan Standard Time",
	"Asia/Karachi" => "Pakistan Standard Time",
	"Asia/Karachi" => "Pakistan Standard Time",
	"Asia/Tashkent" => "West Asia Standard Time",
	"Antarctica/Mawson" => "West Asia Standard Time",
	"Asia/Oral" => "West Asia Standard Time",
	"Asia/Aqtau" => "West Asia Standard Time",
	"Asia/Aqtobe" => "West Asia Standard Time",
	"Indian/Maldives" => "West Asia Standard Time",
	"Indian/Kerguelen" => "West Asia Standard Time",
	"Asia/Dushanbe" => "West Asia Standard Time",
	"Asia/Ashgabat" => "West Asia Standard Time",
	"Asia/Tashkent" => "West Asia Standard Time",
	"Asia/Samarkand" => "West Asia Standard Time",
	"Etc/GMT-5" => "West Asia Standard Time",
	"Asia/Calcutta" => "India Standard Time",
	"Asia/Calcutta" => "India Standard Time",
	"Asia/Colombo" => "Sri Lanka Standard Time",
	"Asia/Colombo" => "Sri Lanka Standard Time",
	"Asia/Katmandu" => "Nepal Standard Time",
	"Asia/Katmandu" => "Nepal Standard Time",
	"Asia/Almaty" => "Central Asia Standard Time",
	"Antarctica/Vostok" => "Central Asia Standard Time",
	"Indian/Chagos" => "Central Asia Standard Time",
	"Asia/Bishkek" => "Central Asia Standard Time",
	"Asia/Almaty" => "Central Asia Standard Time",
	"Asia/Qyzylorda" => "Central Asia Standard Time",
	"Etc/GMT-6" => "Central Asia Standard Time",
	"Asia/Dhaka" => "Bangladesh Standard Time",
	"Asia/Dhaka" => "Bangladesh Standard Time",
	"Asia/Thimphu" => "Bangladesh Standard Time",
	"Asia/Yekaterinburg" => "Ekaterinburg Standard Time",
	"Asia/Yekaterinburg" => "Ekaterinburg Standard Time",
	"Asia/Rangoon" => "Myanmar Standard Time",
	"Indian/Cocos" => "Myanmar Standard Time",
	"Asia/Rangoon" => "Myanmar Standard Time",
	"Asia/Bangkok" => "SE Asia Standard Time",
	"Antarctica/Davis" => "SE Asia Standard Time",
	"Indian/Christmas" => "SE Asia Standard Time",
	"Asia/Jakarta" => "SE Asia Standard Time",
	"Asia/Pontianak" => "SE Asia Standard Time",
	"Asia/Phnom_Penh" => "SE Asia Standard Time",
	"Asia/Vientiane" => "SE Asia Standard Time",
	"Asia/Hovd" => "SE Asia Standard Time",
	"Asia/Bangkok" => "SE Asia Standard Time",
	"Asia/Saigon" => "SE Asia Standard Time",
	"Etc/GMT-7" => "SE Asia Standard Time",
	"Asia/Novosibirsk" => "N. Central Asia Standard Time",
	"Asia/Novosibirsk" => "N. Central Asia Standard Time",
	"Asia/Novokuznetsk" => "N. Central Asia Standard Time",
	"Asia/Omsk" => "N. Central Asia Standard Time",
	"Asia/Shanghai" => "China Standard Time",
	"Asia/Shanghai" => "China Standard Time",
	"Asia/Chongqing" => "China Standard Time",
	"Asia/Harbin" => "China Standard Time",
	"Asia/Kashgar" => "China Standard Time",
	"Asia/Urumqi" => "China Standard Time",
	"Asia/Hong_Kong" => "China Standard Time",
	"Asia/Macau" => "China Standard Time",
	"Asia/Krasnoyarsk" => "North Asia Standard Time",
	"Asia/Krasnoyarsk" => "North Asia Standard Time",
	"Asia/Singapore" => "Singapore Standard Time",
	"Asia/Brunei" => "Singapore Standard Time",
	"Asia/Makassar" => "Singapore Standard Time",
	"Asia/Kuala_Lumpur" => "Singapore Standard Time",
	"Asia/Kuching" => "Singapore Standard Time",
	"Asia/Manila" => "Singapore Standard Time",
	"Asia/Singapore" => "Singapore Standard Time",
	"Etc/GMT-8" => "Singapore Standard Time",
	"Australia/Perth" => "W. Australia Standard Time",
	"Antarctica/Casey" => "W. Australia Standard Time",
	"Australia/Perth" => "W. Australia Standard Time",
	"Asia/Taipei" => "Taipei Standard Time",
	"Asia/Taipei" => "Taipei Standard Time",
	"Asia/Ulaanbaatar" => "Ulaanbaatar Standard Time",
	"Asia/Ulaanbaatar" => "Ulaanbaatar Standard Time",
	"Asia/Choibalsan" => "Ulaanbaatar Standard Time",
	"Asia/Irkutsk" => "North Asia East Standard Time",
	"Asia/Irkutsk" => "North Asia East Standard Time",
	"Asia/Tokyo" => "Tokyo Standard Time",
	"Asia/Jayapura" => "Tokyo Standard Time",
	"Asia/Tokyo" => "Tokyo Standard Time",
	"Pacific/Palau" => "Tokyo Standard Time",
	"Asia/Dili" => "Tokyo Standard Time",
	"Etc/GMT-9" => "Tokyo Standard Time",
	"Asia/Seoul" => "Korea Standard Time",
	"Asia/Pyongyang" => "Korea Standard Time",
	"Asia/Seoul" => "Korea Standard Time",
	"Australia/Adelaide" => "Cen. Australia Standard Time",
	"Australia/Adelaide" => "Cen. Australia Standard Time",
	"Australia/Broken_Hill" => "Cen. Australia Standard Time",
	"Australia/Darwin" => "AUS Central Standard Time",
	"Australia/Darwin" => "AUS Central Standard Time",
	"Australia/Brisbane" => "E. Australia Standard Time",
	"Australia/Brisbane" => "E. Australia Standard Time",
	"Australia/Lindeman" => "E. Australia Standard Time",
	"Australia/Sydney" => "AUS Eastern Standard Time",
	"Australia/Sydney" => "AUS Eastern Standard Time",
	"Australia/Melbourne" => "AUS Eastern Standard Time",
	"Pacific/Port_Moresby" => "West Pacific Standard Time",
	"Antarctica/DumontDUrville" => "West Pacific Standard Time",
	"Pacific/Truk" => "West Pacific Standard Time",
	"Pacific/Guam" => "West Pacific Standard Time",
	"Pacific/Saipan" => "West Pacific Standard Time",
	"Pacific/Port_Moresby" => "West Pacific Standard Time",
	"Etc/GMT-10" => "West Pacific Standard Time",
	"Australia/Hobart" => "Tasmania Standard Time",
	"Australia/Hobart" => "Tasmania Standard Time",
	"Australia/Currie" => "Tasmania Standard Time",
	"Asia/Yakutsk" => "Yakutsk Standard Time",
	"Asia/Yakutsk" => "Yakutsk Standard Time",
	"Pacific/Guadalcanal" => "Central Pacific Standard Time",
	"Antarctica/Macquarie" => "Central Pacific Standard Time",
	"Pacific/Ponape" => "Central Pacific Standard Time",
	"Pacific/Kosrae" => "Central Pacific Standard Time",
	"Pacific/Noumea" => "Central Pacific Standard Time",
	"Pacific/Guadalcanal" => "Central Pacific Standard Time",
	"Pacific/Efate" => "Central Pacific Standard Time",
	"Etc/GMT-11" => "Central Pacific Standard Time",
	"Asia/Vladivostok" => "Vladivostok Standard Time",
	"Asia/Vladivostok" => "Vladivostok Standard Time",
	"Asia/Sakhalin" => "Vladivostok Standard Time",
	"Pacific/Auckland" => "New Zealand Standard Time",
	"Antarctica/South_Pole" => "New Zealand Standard Time",
	"Antarctica/McMurdo" => "New Zealand Standard Time",
	"Pacific/Auckland" => "New Zealand Standard Time",
	"Etc/GMT-12" => "UTC+12",
	"Pacific/Tarawa" => "UTC+12",
	"Pacific/Majuro" => "UTC+12",
	"Pacific/Kwajalein" => "UTC+12",
	"Pacific/Nauru" => "UTC+12",
	"Pacific/Funafuti" => "UTC+12",
	"Pacific/Wake" => "UTC+12",
	"Pacific/Wallis" => "UTC+12",
	"Etc/GMT-12" => "UTC+12",
	"Pacific/Fiji" => "Fiji Standard Time",
	"Pacific/Fiji" => "Fiji Standard Time",
	"Asia/Magadan" => "Magadan Standard Time",
	"Asia/Magadan" => "Magadan Standard Time",
	"Asia/Anadyr" => "Magadan Standard Time",
	"Asia/Kamchatka" => "Magadan Standard Time",
	"Pacific/Tongatapu" => "Tonga Standard Time",
	"Pacific/Enderbury" => "Tonga Standard Time",
	"Pacific/Tongatapu" => "Tonga Standard Time",
	"Etc/GMT-13" => "Tonga Standard Time",
	"Pacific/Apia" => "Samoa Standard Time",
	"Pacific/Apia" => "Samoa Standard Time",
);
	
my %wintimezonenummap = (#despite certain elements *requiring* this number, this mapping is actually hard to find as MS themselves seem to not use it anymore even
	"Dateline Standard Time" => 0,
	"(GMT-12:00) International Date Line West" => 0,
	"Samoa Standard Time" => 1,
	"(GMT-11:00) Midway Island, Samoa" => 1,
	"Hawaiian Standard Time" => 2,
	"(GMT-10:00) Hawaii" => 2,
	"Alaskan Standard Time" => 3,
	"(GMT-09:00) Alaska" => 3,
	"Pacific Standard Time" => 4,
	"(GMT-08:00) Pacific Time (US and Canada); Tijuana" => 4,
	"Mountain Standard Time" => 10,
	"(GMT-07:00) Mountain Time (US and Canada)" => 10,
	"Mexico Standard Time 2" => 13,
	"(GMT-07:00) Chihuahua, La Paz, Mazatlan" => 13,
	"U.S. Mountain Standard Time" => 15,
	"(GMT-07:00) Arizona" => 15,
	"Central Standard Time" => 20,
	"(GMT-06:00) Central Time (US and Canada)" => 20,
	"Canada Central Standard Time" => 25,
	"(GMT-06:00) Saskatchewan" => 25,
	"Mexico Standard Time" => 30,
	"(GMT-06:00) Guadalajara, Mexico City, Monterrey" => 30,
	"Central America Standard Time" => 33,
	"(GMT-06:00) Central America" => 33,
	"Eastern Standard Time" => 35,
	"(GMT-05:00) Eastern Time (US and Canada)" => 35,
	"U.S. Eastern Standard Time" => 40,
	"(GMT-05:00) Indiana (East)" => 40,
    "S.A. Pacific Standard Time" => 45,
	"(GMT-05:00) Bogota, Lima, Quito" => 45,
	"Atlantic Standard Time" => 50,
	"(GMT-04:00) Atlantic Time (Canada)" => 50,
	"S.A. Western Standard Time" => 55,
	"(GMT-04:00) Caracas, La Paz" => 55,
	"Pacific S.A. Standard Time" => 56,
	"(GMT-04:00) Santiago" => 56,
	"Newfoundland and Labrador Standard Time" => 60,
	"(GMT-03:30) Newfoundland and Labrador" => 60,
	"E. South America Standard Time" => 65,
	"(GMT-03:00) Brasilia" => 65,
	"S.A. Eastern Standard Time" => 70,
	"(GMT-03:00) Buenos Aires, Georgetown" => 70,
	"Greenland Standard Time" => 73,
	"(GMT-03:00) Greenland" => 73,
	"Mid-Atlantic Standard Time" => 75,
	"(GMT-02:00) Mid-Atlantic" => 75,
	"Azores Standard Time" => 80,
	"(GMT-01:00) Azores" => 80,
	"Cape Verde Standard Time" => 83,
	"(GMT-01:00) Cape Verde Islands" => 83,
	"GMT Standard Time" => 85,
	"(GMT) Greenwich Mean Time : Dublin, Edinburgh, Lisbon, London" => 85,
	"Greenwich Standard Time" => 90,
	"(GMT) Casablanca, Monrovia" => 90,
	"Central Europe Standard Time" => 95,
	"(GMT+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague" => 95,
	"Central European Standard Time" => 100,
	"(GMT+01:00) Sarajevo, Skopje, Warsaw, Zagreb" => 100,
	"Romance Standard Time" => 105,
	"(GMT+01:00) Brussels, Copenhagen, Madrid, Paris" => 105,
	"W. Europe Standard Time" => 110,
	"(GMT+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna" => 110,
	"W. Central Africa Standard Time" => 113,
	"(GMT+01:00) West Central Africa" => 113,
	"E. Europe Standard Time" => 115,
	"(GMT+02:00) Bucharest" => 115,
	"Egypt Standard Time" => 120,
	"(GMT+02:00) Cairo" => 120,
	"FLE Standard Time" => 125,
	"(GMT+02:00) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius" => 125,
	"GTB Standard Time" => 130,
	"(GMT+02:00) Athens, Istanbul, Minsk" => 130,
	"Israel Standard Time" => 135,
	"(GMT+02:00) Jerusalem" => 135,
	"South Africa Standard Time" => 140,
	"(GMT+02:00) Harare, Pretoria" => 140,
	"Russian Standard Time" => 145,
	"(GMT+03:00) Moscow, St. Petersburg, Volgograd" => 145,
	"Arab Standard Time"  => 150,
	"(GMT+03:00) Kuwait, Riyadh" => 150,
	"E. Africa Standard Time" => 155,
	"(GMT+03:00) Nairobi" => 155,
	"Arabic Standard Time" => 158,
	"(GMT+03:00) Baghdad" => 158,
	"Iran Standard Time" => 160,
	"(GMT+03:30) Tehran" => 160,
	"Arabian Standard Time" => 165,
	"(GMT+04:00) Abu Dhabi, Muscat" => 165,
	"Caucasus Standard Time" => 170,
	"(GMT+04:00) Baku, Tbilisi, Yerevan" =>  170,
	"Transitional Islamic State of Afghanistan Std." => 175,
	"(GMT+04:30) Kabul" => 175,
	"Ekaterinburg Standard Time" => 180,
	"(GMT+05:00) Ekaterinburg" => 180,
	"West Asia Standard Time" => 185,
	"(GMT+05:00) Islamabad, Karachi, Tashkent" => 185,
	"India Standard Time" => 190,
	"(GMT+05:30) Chennai, Kolkata, Mumbai, New Delhi" => 190,
	"Nepal Standard Time" => 193,
	"(GMT+05:45) Kathmandu" => 193,
	"Central Asia Standard Time" => 195,
	"(GMT+06:00) Astana, Dhaka" => 195,
	"Sri Lanka Standard Time" => 200,
	"(GMT+06:00) Sri Jayawardenepura" => 200,
	"N. Central Asia Standard Time" => 201,
	"(GMT+06:00) Almaty, Novosibirsk" => 201,
	"Myanmar Standard Time" => 203,
	"(GMT+06:30) Yangon (Rangoon)" => 203,
	"S.E. Asia Standard Time" => 205,
	"(GMT+07:00) Bangkok, Hanoi, Jakarta" => 205,
	"North Asia Standard Time" => 207,
	"(GMT+07:00) Krasnoyarsk" => 207,
	"China Standard Time" => 210,
	"(GMT+08:00) Beijing, Chongqing, Hong Kong SAR, Urumqi" => 210,
	"Singapore Standard Time" => 215,
	"(GMT+08:00) Kuala Lumpur, Singapore" => 215,
	"Taipei Standard Time" => 220,
	"(GMT+08:00) Taipei" => 220,
	"W. Australia Standard Time" => 225,
	"(GMT+08:00) Perth" => 225,
	"North Asia East Standard Time" => 227,
	"(GMT+08:00) Irkutsk, Ulaan Bataar" => 227,
	"Korea Standard Time" => 230,
	"(GMT+09:00) Seoul" => 230,
	"Tokyo Standard Time" => 235,
	"(GMT+09:00) Osaka, Sapporo, Tokyo" => 235,
	"Yakutsk Standard Time" => 240,
	"(GMT+09:00) Yakutsk" => 240,
	"A.U.S. Central Standard Time" => 245,
	"(GMT+09:30) Darwin" => 245,
	"Cen. Australia Standard Time" => 250,
	"(GMT+09:30) Adelaide" => 250,
	"A.U.S. Eastern Standard Time" => 255,
	"(GMT+10:00) Canberra, Melbourne, Sydney" => 255,
	"E. Australia Standard Time" => 260,
	"(GMT+10:00) Brisbane" => 260,
	"Tasmania Standard Time" => 265,
	"(GMT+10:00) Hobart" => 265,
	"Vladivostok Standard Time" => 270,
	"(GMT+10:00) Vladivostok" => 270,
	"West Pacific Standard Time" => 275,
	"(GMT+10:00) Guam, Port Moresby" => 275,
	"Central Pacific Standard Time" => 280,
	"(GMT+11:00) Magadan, Solomon Islands, New Caledonia" => 280,
	"Fiji Islands Standard Time" => 285,
	"(GMT+12:00) Fiji Islands, Kamchatka, Marshall Islands" => 285,
	"New Zealand Standard Time" => 290,
	"(GMT+12:00) Auckland, Wellington" => 290,
	"Tonga Standard Time" => 300,
	"(GMT+13:00) Nuku'alofa" => 300,
);
sub get_wintimezone {
	if ($::XCATSITEVALS{'wintimezone'}) {
		return $::XCATSITEVALS{'wintimezone'};
	} elsif ($::XCATSITEVALS{'timezone'}) {
		return $posixtowintimezonemap{::XCATSITEVALS{'timezone'}};
	}
}

sub get_wintimezonenum {
	my $wintimezone = get_wintimezone();
	return $wintimezonenummap{$wintimezone};
};
	
	
1;
