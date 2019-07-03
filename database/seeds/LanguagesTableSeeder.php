<?php

use Illuminate\Database\Seeder;

class LanguagesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('languages')->delete();
		 $languages = array(
            array(
                "name" => "Afrikans",
                "name_1" => "Afrikanns",
                "code" => "AF"),
            array(
                "name" => "Albanés",
                "name_1" => "Albanian",
                "code" => "SQ"),
            array(
                "name" => "Árabe",
                "name_1" => "Arabic",
                "code" => "AR"),
            array(
                "name" => "Armenio",
                "name_1" => "Armenian",
                "code" => "HY"),
            array(
                "name" => "Vasco",
                "name_1" => "Basque",
                "code" => "EU"),
            array(
                "name" => "Bengalí",
                "name_1" => "Bengali",
                "code" => "BN"),
            array(
                "name" => "Búlgaro",
                "name_1" => "Bulgarian",
                "code" => "BG"),
            array(
                "name" => "Catalán",
                "name_1" => "Catalan",
                "code" => "CA"),
            array(
                "name" => "Camboyano",
                "name_1" => "Cambodian",
                "code" => "KM"),
            array(
                "name" => "Chino (Mandarín)",
                "name_1" => "Chinese (Mandarin)",
                "code" => "ZH"),
            array(
                "name" => "Croata",
                "name_1" => "Croation",
                "code" => "HR"),
            array(
                "name" => "Checo",
                "name_1" => "Czech",
                "code" => "CS"),
            array(
                "name" => "Danés",
                "name_1" => "Danish",
                "code" => "DA"),
            array(
                "name" => "Holandés",
                "name_1" => "Dutch",
                "code" => "NL"),
            array(
                "name" => "Inglés",
                "name_1" => "English",
                "code" => "EN"),
            array(
                "name" => "Estonio",
                "name_1" => "Estonian",
                "code" => "ET"),
            array(
                "name" => "Fiji",
                "name_1" => "Fiji",
                "code" => "FJ"),
            array(
                "name" => "Finlandés",
                "name_1" => "Finnish",
                "code" => "FI"),
            array(
                "name" => "Francés",
                "name_1" => "French",
                "code" => "FR"),
            array(
                "name" => "Georgiano",
                "name_1" => "Georgian",
                "code" => "KA"),
            array(
                "name" => "Alemán",
                "name_1" => "German",
                "code" => "DE"),
            array(
                "name" => "Griego",
                "name_1" => "Greek",
                "code" => "EL"),
            array(
                "name" => "Gujarati",
                "name_1" => "Gujarati",
                "code" => "GU"),
            array(
                "name" => "Hebreo",
                "name_1" => "Hebrew",
                "code" => "HE"),
            array(
                "name" => "Hindi",
                "name_1" => "Hindi",
                "code" => "HI"),
            array(
                "name" => "Húngaro",
                "name_1" => "Hungarian",
                "code" => "HU"),
            array(
                "name" => "Islandés",
                "name_1" => "Icelandic",
                "code" => "IS"),
            array(
                "name" => "Indonesio",
                "name_1" => "Indonesian",
                "code" => "ID"),
            array(
                "name" => "Irlandés",
                "name_1" => "Irish",
                "code" => "GA"),
            array(
                "name" => "Italiano",
                "name_1" => "Italian",
                "code" => "IT"),
            array(
                "name" => "Japonés",
                "name_1" => "Japanese",
                "code" => "JA"),
            array(
                "name" => "Javanés",
                "name_1" => "Javanese",
                "code" => "JW"),
            array(
                "name" => "Coreano",
                "name_1" => "Korean",
                "code" => "KO"),
            array(
                "name" => "Latino",
                "name_1" => "Latin",
                "code" => "LA"),
            array(
                "name" => "Letón",
                "name_1" => "Latvian",
                "code" => "LV"),
            array(
                "name" => "Lituano",
                "name_1" => "Lithuanian",
                "code" => "LT"),
            array(
                "name" => "Macedonio",
                "name_1" => "Macedonian",
                "code" => "MK"),
            array(
                "name" => "Malayo",
                "name_1" => "Malay",
                "code" => "MS"),
            array(
                "name" => "Malayalam",
                "name_1" => "Malayalam",
                "code" => "ML"),
            array(
                "name" => "Maltés",
                "name_1" => "Maltese",
                "code" => "MT"),
            array(
                "name" => "Maorí",
                "name_1" => "Maori",
                "code" => "MI"),
            array(
                "name" => "Marathi",
                "name_1" => "Marathi",
                "code" => "MR"),
            array(
                "name" => "Mongol",
                "name_1" => "Mongolian",
                "code" => "MN"),
            array(
                "name" => "Nepalí",
                "name_1" => "Nepali",
                "code" => "NE"),
            array(
                "name" => "Noruego",
                "name_1" => "Norwegian",
                "code" => "NO"),
            array(
                "name" => "Persa",
                "name_1" => "Persian",
                "code" => "FA"),
            array(
                "name" => "Polaco",
                "name_1" => "Polish",
                "code" => "PL"),
            array(
                "name" => "Portugués",
                "name_1" => "Portuguese",
                "code" => "PT"),
            array(
                "name" => "Punjabi",
                "name_1" => "Punjabi",
                "code" => "PA"),
            array(
                "name" => "Quechua",
                "name_1" => "Quechua",
                "code" => "QU"),
            array(
                "name" => "Romanian",
                "name_1" => "Rumano",
                "code" => "RO"),
            array(
                "name" => "Ruso",
                "name_1" => "Russian",
                "code" => "RU"),
            array(
                "name" => "Samoano",
                "name_1" => "Samoan",
                "code" => "SM"),
            array(
                "name" => "Serbio",
                "name_1" => "Serbian",
                "code" => "SR"),
            array(
                "name" => "Eslovaco",
                "name_1" => "Slovak",
                "code" => "SK"),
            array(
                "name" => "Esloveno",
                "name_1" => "Slovenian",
                "code" => "SL"),
            array(
                "name" => "Español",
                "name_1" => "Spanish",
                "code" => "ES"),
            array(
                "name" => "Swahili",
                "name_1" => "Swahili",
                "code" => "SW"),
            array(
                "name" => "Sueco ",
                "name_1" => "Swedish ",
                "code" => "SV"),
            array(
                "name" => "Tamil",
                "name_1" => "Tamil",
                "code" => "TA"),
            array(
                "name" => "Tártaro",
                "name_1" => "Tatar",
                "code" => "TT"),
            array(
                "name" => "Telugu",
                "name_1" => "Telugu",
                "code" => "TE"),
            array(
                "name" => "Tailandés",
                "name_1" => "Thai",
                "code" => "TH"),
            array(
                "name" => "Tibetano",
                "name_1" => "Tibetan",
                "code" => "BO"),
            array(
                "name" => "Tonga",
                "name_1" => "Tonga",
                "code" => "TO"),
            array(
                "name" => "Turco",
                "name_1" => "Turkish",
                "code" => "TR"),
            array(
                "name" => "Ucraniano",
                "name_1" => "Ukranian",
                "code" => "UK"),
            array(
                "name" => "Urdu",
                "name_1" => "Urdu",
                "code" => "UR"),
            array(
                "name" => "Uzbek",
                "name_1" => "Uzbek",
                "code" => "UZ"),
            array(
                "name" => "Vietnamita",
                "name_1" => "Vietnamese",
                "code" => "VI"),
            array(
                "name" => "Galés",
                "name_1" => "Welsh",
                "code" => "CY"),
            array(
                "name" => "Xhosa",
                "name_1" => "Xhosa",
                "code" => "XH"),

        );
		DB::table('all_languages')->insert($languages);
    }
}
