<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('roles')->insert(['name' => 'super admin',]);
        DB::table('roles')->insert(['name' => 'admin',]);
        DB::table('roles')->insert(['name' => 'manager',]);
        DB::table('roles')->insert(['name' => 'user',]);

        DB::table('departments')->insert(['name' => 'Power',]);
        DB::table('departments')->insert(['name' => 'Water',]);
        DB::table('departments')->insert(['name' => 'Finance',]);

        DB::table('marital_status')->insert(['name' => 'Single',]);
        DB::table('marital_status')->insert(['name' => 'Married',]);
        DB::table('marital_status')->insert(['name' => 'Divorced',]);
        DB::table('marital_status')->insert(['name' => 'Widowed',]);

        DB::table('blood_group')->insert(['name' => 'A+',]);
        DB::table('blood_group')->insert(['name' => 'O+',]);
        DB::table('blood_group')->insert(['name' => 'B+',]);
        DB::table('blood_group')->insert(['name' => 'AB+',]);
        DB::table('blood_group')->insert(['name' => 'A-',]);
        DB::table('blood_group')->insert(['name' => 'O-',]);
        DB::table('blood_group')->insert(['name' => 'B-',]);
        DB::table('blood_group')->insert(['name' => 'AB-',]);
        
       


        DB::table('employees')->insert([
            'first_name' => 'Sohail',
            'last_name' => 'Afzal',
            'father_name' => 'Muhammad Afzal',
            'department_id' => 1,
            'cnic' => '3520246897303',
            'cnic_expiry' => '2020-04-02',
           
        ]);

        DB::table('users')->insert([
            'role_id'=>1,
            'employee_id'=>1,
            'email' => 'sohail.afzal@barqaab.com',
            'password' => bcrypt('Great@786'),
        ]);

        DB::table('educations')->insert([
            'employee_id'=>1,
            'degree_name' => 'BS-IT',
            'institute'=>'Virtual University of Pakistan',
            'level'=>'14',
            'completion'=>'2019',
            'from'=>'2015-01-01',
            'to'=>'2019-01-01',
            'total_marks'=>4.0,
            'marks_obtain'=>3.8,
            'country'=>'Pakistan',
            'grade'=>'A',
        ]);

                 
         $projects = array(
            array('name' => '500kV Gatti Grid Station Project',
            'type'=>'Time Based',
            'client'=>'NTDC',
            'commencement'=>'2019-01-14',
            'contractual_completion'=>'2015-01-01',
            'status'=>'In Progres',
            'role'=>'Independent',
            'share'=>'100'),

            array('name' => '500kV Neelum-Jhelum Transmission Line Project',
            'type'=>'Time Based',
            'client'=>'NTDC',
            'commencement'=>'2017-01-01',
            'contractual_completion'=>'2019-11-30',
            'status'=>'In Progres',
            'role'=>'JV Partner',
            'share'=>'35'),
            );
            
        DB::table('projects')->insert($projects);



        $countries = array(
            
            array('code' => 'PK', 'name' => 'Pakistan'),
            array('code' => 'AF', 'name' => 'Afghanistan'),
            array('code' => 'AL', 'name' => 'Albania'),
            array('code' => 'DZ', 'name' => 'Algeria'),
            array('code' => 'AS', 'name' => 'American Samoa'),
            array('code' => 'AD', 'name' => 'Andorra'),
            array('code' => 'AO', 'name' => 'Angola'),
            array('code' => 'AI', 'name' => 'Anguilla'),
            array('code' => 'AQ', 'name' => 'Antarctica'),
            array('code' => 'AG', 'name' => 'Antigua and/or Barbuda'),
            array('code' => 'AR', 'name' => 'Argentina'),
            array('code' => 'AM', 'name' => 'Armenia'),
            array('code' => 'AW', 'name' => 'Aruba'),
            array('code' => 'AU', 'name' => 'Australia'),
            array('code' => 'AT', 'name' => 'Austria'),
            array('code' => 'AZ', 'name' => 'Azerbaijan'),
            array('code' => 'BS', 'name' => 'Bahamas'),
            array('code' => 'BH', 'name' => 'Bahrain'),
            array('code' => 'BD', 'name' => 'Bangladesh'),
            array('code' => 'BB', 'name' => 'Barbados'),
            array('code' => 'BY', 'name' => 'Belarus'),
            array('code' => 'BE', 'name' => 'Belgium'),
            array('code' => 'BZ', 'name' => 'Belize'),
            array('code' => 'BJ', 'name' => 'Benin'),
            array('code' => 'BM', 'name' => 'Bermuda'),
            array('code' => 'BT', 'name' => 'Bhutan'),
            array('code' => 'BO', 'name' => 'Bolivia'),
            array('code' => 'BA', 'name' => 'Bosnia and Herzegovina'),
            array('code' => 'BW', 'name' => 'Botswana'),
            array('code' => 'BV', 'name' => 'Bouvet Island'),
            array('code' => 'BR', 'name' => 'Brazil'),
            array('code' => 'IO', 'name' => 'British lndian Ocean Territory'),
            array('code' => 'BN', 'name' => 'Brunei Darussalam'),
            array('code' => 'BG', 'name' => 'Bulgaria'),
            array('code' => 'BF', 'name' => 'Burkina Faso'),
            array('code' => 'BI', 'name' => 'Burundi'),
            array('code' => 'CA', 'name' => 'Canada'),
            array('code' => 'KH', 'name' => 'Cambodia'),
            array('code' => 'CM', 'name' => 'Cameroon'),
            array('code' => 'CV', 'name' => 'Cape Verde'),
            array('code' => 'KY', 'name' => 'Cayman Islands'),
            array('code' => 'CF', 'name' => 'Central African Republic'),
            array('code' => 'TD', 'name' => 'Chad'),
            array('code' => 'CL', 'name' => 'Chile'),
            array('code' => 'CN', 'name' => 'China'),
            array('code' => 'CX', 'name' => 'Christmas Island'),
            array('code' => 'CC', 'name' => 'Cocos (Keeling) Islands'),
            array('code' => 'CO', 'name' => 'Colombia'),
            array('code' => 'KM', 'name' => 'Comoros'),
            array('code' => 'CG', 'name' => 'Congo'),
            array('code' => 'CK', 'name' => 'Cook Islands'),
            array('code' => 'CR', 'name' => 'Costa Rica'),
            array('code' => 'HR', 'name' => 'Croatia (Hrvatska)'),
            array('code' => 'CU', 'name' => 'Cuba'),
            array('code' => 'CY', 'name' => 'Cyprus'),
            array('code' => 'CZ', 'name' => 'Czech Republic'),
            array('code' => 'CD', 'name' => 'Democratic Republic of Congo'),
            array('code' => 'DK', 'name' => 'Denmark'),
            array('code' => 'DJ', 'name' => 'Djibouti'),
            array('code' => 'DM', 'name' => 'Dominica'),
            array('code' => 'DO', 'name' => 'Dominican Republic'),
            array('code' => 'TP', 'name' => 'East Timor'),
            array('code' => 'EC', 'name' => 'Ecudaor'),
            array('code' => 'EG', 'name' => 'Egypt'),
            array('code' => 'SV', 'name' => 'El Salvador'),
            array('code' => 'GQ', 'name' => 'Equatorial Guinea'),
            array('code' => 'ER', 'name' => 'Eritrea'),
            array('code' => 'EE', 'name' => 'Estonia'),
            array('code' => 'ET', 'name' => 'Ethiopia'),
            array('code' => 'FK', 'name' => 'Falkland Islands (Malvinas)'),
            array('code' => 'FO', 'name' => 'Faroe Islands'),
            array('code' => 'FJ', 'name' => 'Fiji'),
            array('code' => 'FI', 'name' => 'Finland'),
            array('code' => 'FR', 'name' => 'France'),
            array('code' => 'FX', 'name' => 'France, Metropolitan'),
            array('code' => 'GF', 'name' => 'French Guiana'),
            array('code' => 'PF', 'name' => 'French Polynesia'),
            array('code' => 'TF', 'name' => 'French Southern Territories'),
            array('code' => 'GA', 'name' => 'Gabon'),
            array('code' => 'GM', 'name' => 'Gambia'),
            array('code' => 'GE', 'name' => 'Georgia'),
            array('code' => 'DE', 'name' => 'Germany'),
            array('code' => 'GH', 'name' => 'Ghana'),
            array('code' => 'GI', 'name' => 'Gibraltar'),
            array('code' => 'GR', 'name' => 'Greece'),
            array('code' => 'GL', 'name' => 'Greenland'),
            array('code' => 'GD', 'name' => 'Grenada'),
            array('code' => 'GP', 'name' => 'Guadeloupe'),
            array('code' => 'GU', 'name' => 'Guam'),
            array('code' => 'GT', 'name' => 'Guatemala'),
            array('code' => 'GN', 'name' => 'Guinea'),
            array('code' => 'GW', 'name' => 'Guinea-Bissau'),
            array('code' => 'GY', 'name' => 'Guyana'),
            array('code' => 'HT', 'name' => 'Haiti'),
            array('code' => 'HM', 'name' => 'Heard and Mc Donald Islands'),
            array('code' => 'HN', 'name' => 'Honduras'),
            array('code' => 'HK', 'name' => 'Hong Kong'),
            array('code' => 'HU', 'name' => 'Hungary'),
            array('code' => 'IS', 'name' => 'Iceland'),
            array('code' => 'IN', 'name' => 'India'),
            array('code' => 'ID', 'name' => 'Indonesia'),
            array('code' => 'IR', 'name' => 'Iran (Islamic Republic of)'),
            array('code' => 'IQ', 'name' => 'Iraq'),
            array('code' => 'IE', 'name' => 'Ireland'),
            array('code' => 'IL', 'name' => 'Israel'),
            array('code' => 'IT', 'name' => 'Italy'),
            array('code' => 'CI', 'name' => 'Ivory Coast'),
            array('code' => 'JM', 'name' => 'Jamaica'),
            array('code' => 'JP', 'name' => 'Japan'),
            array('code' => 'JO', 'name' => 'Jordan'),
            array('code' => 'KZ', 'name' => 'Kazakhstan'),
            array('code' => 'KE', 'name' => 'Kenya'),
            array('code' => 'KI', 'name' => 'Kiribati'),
            array('code' => 'KP', 'name' => 'Korea, Democratic People\'s Republic of'),
            array('code' => 'KR', 'name' => 'Korea, Republic of'),
            array('code' => 'KW', 'name' => 'Kuwait'),
            array('code' => 'KG', 'name' => 'Kyrgyzstan'),
            array('code' => 'LA', 'name' => 'Lao People\'s Democratic Republic'),
            array('code' => 'LV', 'name' => 'Latvia'),
            array('code' => 'LB', 'name' => 'Lebanon'),
            array('code' => 'LS', 'name' => 'Lesotho'),
            array('code' => 'LR', 'name' => 'Liberia'),
            array('code' => 'LY', 'name' => 'Libyan Arab Jamahiriya'),
            array('code' => 'LI', 'name' => 'Liechtenstein'),
            array('code' => 'LT', 'name' => 'Lithuania'),
            array('code' => 'LU', 'name' => 'Luxembourg'),
            array('code' => 'MO', 'name' => 'Macau'),
            array('code' => 'MK', 'name' => 'Macedonia'),
            array('code' => 'MG', 'name' => 'Madagascar'),
            array('code' => 'MW', 'name' => 'Malawi'),
            array('code' => 'MY', 'name' => 'Malaysia'),
            array('code' => 'MV', 'name' => 'Maldives'),
            array('code' => 'ML', 'name' => 'Mali'),
            array('code' => 'MT', 'name' => 'Malta'),
            array('code' => 'MH', 'name' => 'Marshall Islands'),
            array('code' => 'MQ', 'name' => 'Martinique'),
            array('code' => 'MR', 'name' => 'Mauritania'),
            array('code' => 'MU', 'name' => 'Mauritius'),
            array('code' => 'TY', 'name' => 'Mayotte'),
            array('code' => 'MX', 'name' => 'Mexico'),
            array('code' => 'FM', 'name' => 'Micronesia, Federated States of'),
            array('code' => 'MD', 'name' => 'Moldova, Republic of'),
            array('code' => 'MC', 'name' => 'Monaco'),
            array('code' => 'MN', 'name' => 'Mongolia'),
            array('code' => 'MS', 'name' => 'Montserrat'),
            array('code' => 'MA', 'name' => 'Morocco'),
            array('code' => 'MZ', 'name' => 'Mozambique'),
            array('code' => 'MM', 'name' => 'Myanmar'),
            array('code' => 'NA', 'name' => 'Namibia'),
            array('code' => 'NR', 'name' => 'Nauru'),
            array('code' => 'NP', 'name' => 'Nepal'),
            array('code' => 'NL', 'name' => 'Netherlands'),
            array('code' => 'AN', 'name' => 'Netherlands Antilles'),
            array('code' => 'NC', 'name' => 'New Caledonia'),
            array('code' => 'NZ', 'name' => 'New Zealand'),
            array('code' => 'NI', 'name' => 'Nicaragua'),
            array('code' => 'NE', 'name' => 'Niger'),
            array('code' => 'NG', 'name' => 'Nigeria'),
            array('code' => 'NU', 'name' => 'Niue'),
            array('code' => 'NF', 'name' => 'Norfork Island'),
            array('code' => 'MP', 'name' => 'Northern Mariana Islands'),
            array('code' => 'NO', 'name' => 'Norway'),
            array('code' => 'OM', 'name' => 'Oman'),
            
            array('code' => 'PW', 'name' => 'Palau'),
            array('code' => 'PA', 'name' => 'Panama'),
            array('code' => 'PG', 'name' => 'Papua New Guinea'),
            array('code' => 'PY', 'name' => 'Paraguay'),
            array('code' => 'PE', 'name' => 'Peru'),
            array('code' => 'PH', 'name' => 'Philippines'),
            array('code' => 'PN', 'name' => 'Pitcairn'),
            array('code' => 'PL', 'name' => 'Poland'),
            array('code' => 'PT', 'name' => 'Portugal'),
            array('code' => 'PR', 'name' => 'Puerto Rico'),
            array('code' => 'QA', 'name' => 'Qatar'),
            array('code' => 'SS', 'name' => 'Republic of South Sudan'),
            array('code' => 'RE', 'name' => 'Reunion'),
            array('code' => 'RO', 'name' => 'Romania'),
            array('code' => 'RU', 'name' => 'Russian Federation'),
            array('code' => 'RW', 'name' => 'Rwanda'),
            array('code' => 'KN', 'name' => 'Saint Kitts and Nevis'),
            array('code' => 'LC', 'name' => 'Saint Lucia'),
            array('code' => 'VC', 'name' => 'Saint Vincent and the Grenadines'),
            array('code' => 'WS', 'name' => 'Samoa'),
            array('code' => 'SM', 'name' => 'San Marino'),
            array('code' => 'ST', 'name' => 'Sao Tome and Principe'),
            array('code' => 'SA', 'name' => 'Saudi Arabia'),
            array('code' => 'SN', 'name' => 'Senegal'),
            array('code' => 'RS', 'name' => 'Serbia'),
            array('code' => 'SC', 'name' => 'Seychelles'),
            array('code' => 'SL', 'name' => 'Sierra Leone'),
            array('code' => 'SG', 'name' => 'Singapore'),
            array('code' => 'SK', 'name' => 'Slovakia'),
            array('code' => 'SI', 'name' => 'Slovenia'),
            array('code' => 'SB', 'name' => 'Solomon Islands'),
            array('code' => 'SO', 'name' => 'Somalia'),
            array('code' => 'ZA', 'name' => 'South Africa'),
            array('code' => 'GS', 'name' => 'South Georgia South Sandwich Islands'),
            array('code' => 'ES', 'name' => 'Spain'),
            array('code' => 'LK', 'name' => 'Sri Lanka'),
            array('code' => 'SH', 'name' => 'St. Helena'),
            array('code' => 'PM', 'name' => 'St. Pierre and Miquelon'),
            array('code' => 'SD', 'name' => 'Sudan'),
            array('code' => 'SR', 'name' => 'Suriname'),
            array('code' => 'SJ', 'name' => 'Svalbarn and Jan Mayen Islands'),
            array('code' => 'SZ', 'name' => 'Swaziland'),
            array('code' => 'SE', 'name' => 'Sweden'),
            array('code' => 'CH', 'name' => 'Switzerland'),
            array('code' => 'SY', 'name' => 'Syrian Arab Republic'),
            array('code' => 'TW', 'name' => 'Taiwan'),
            array('code' => 'TJ', 'name' => 'Tajikistan'),
            array('code' => 'TZ', 'name' => 'Tanzania, United Republic of'),
            array('code' => 'TH', 'name' => 'Thailand'),
            array('code' => 'TG', 'name' => 'Togo'),
            array('code' => 'TK', 'name' => 'Tokelau'),
            array('code' => 'TO', 'name' => 'Tonga'),
            array('code' => 'TT', 'name' => 'Trinidad and Tobago'),
            array('code' => 'TN', 'name' => 'Tunisia'),
            array('code' => 'TR', 'name' => 'Turkey'),
            array('code' => 'TM', 'name' => 'Turkmenistan'),
            array('code' => 'TC', 'name' => 'Turks and Caicos Islands'),
            array('code' => 'TV', 'name' => 'Tuvalu'),
            array('code' => 'UG', 'name' => 'Uganda'),
            array('code' => 'UA', 'name' => 'Ukraine'),
            array('code' => 'AE', 'name' => 'United Arab Emirates'),
            array('code' => 'GB', 'name' => 'United Kingdom'),
            array('code' => 'US', 'name' => 'United States'),
            array('code' => 'UM', 'name' => 'United States minor outlying islands'),
            array('code' => 'UY', 'name' => 'Uruguay'),
            array('code' => 'UZ', 'name' => 'Uzbekistan'),
            array('code' => 'VU', 'name' => 'Vanuatu'),
            array('code' => 'VA', 'name' => 'Vatican City State'),
            array('code' => 'VE', 'name' => 'Venezuela'),
            array('code' => 'VN', 'name' => 'Vietnam'),
            array('code' => 'VG', 'name' => 'Virgin Islands (British)'),
            array('code' => 'VI', 'name' => 'Virgin Islands (U.S.)'),
            array('code' => 'WF', 'name' => 'Wallis and Futuna Islands'),
            array('code' => 'EH', 'name' => 'Western Sahara'),
            array('code' => 'YE', 'name' => 'Yemen'),
            array('code' => 'YU', 'name' => 'Yugoslavia'),
            array('code' => 'ZR', 'name' => 'Zaire'),
            array('code' => 'ZM', 'name' => 'Zambia'),
            array('code' => 'ZW', 'name' => 'Zimbabwe'),
        );
        DB::table('countries')->insert($countries);
      

        $languages = array(
                
                array(
                    "name" => "Urdu",
                    "name_1" => "Urdu",
                    "code" => "UR"),
                array(
                    "name" => "Inglés",
                    "name_1" => "English",
                    "code" => "EN"),
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
