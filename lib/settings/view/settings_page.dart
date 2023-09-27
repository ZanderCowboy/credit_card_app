// This page will contain an entry 'Banned Countries', where the admin can select any countries that are banned.
// Default will be no countries.

import 'dart:developer';

import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/domain/banned_countries/banned_countries_repository.dart';
import 'package:credit_card_app/domain/banned_countries/models/banned_countries.dart';
import 'package:credit_card_app/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
    required this.bannedCountriesRepository,
  });

  final BannedCountriesRepository bannedCountriesRepository;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    final bannedCountriesRepository = widget.bannedCountriesRepository;

    List<BannedCountries> bannedCountries =
        bannedCountriesRepository.readCountries();
    bannedCountries.sort((a, b) => a.bannedCountry.compareTo(b.bannedCountry));

    Map<String, String> countryMap = {
      "AF": "Afghanistan",
      "AX": "Åland Islands",
      "AL": "Albania",
      "DZ": "Algeria",
      "AS": "American Samoa",
      "AD": "Andorra",
      "AO": "Angola",
      "AI": "Anguilla",
      "AQ": "Antarctica",
      "AG": "Antigua and Barbuda",
      "AR": "Argentina",
      "AM": "Armenia",
      "AW": "Aruba",
      "AU": "Australia",
      "AT": "Austria",
      "AZ": "Azerbaijan",
      "BS": "Bahamas",
      "BH": "Bahrain",
      "BD": "Bangladesh",
      "BB": "Barbados",
      "BY": "Belarus",
      "BE": "Belgium",
      "BZ": "Belize",
      "BJ": "Benin",
      "BM": "Bermuda",
      "BT": "Bhutan",
      "BO": "Bolivia",
      "BA": "Bosnia and Herzegovina",
      "BW": "Botswana",
      "BV": "Bouvet Island",
      "BR": "Brazil",
      "IO": "British Indian Ocean Territory",
      "BN": "Brunei Darussalam",
      "BG": "Bulgaria",
      "BF": "Burkina Faso",
      "BI": "Burundi",
      "KH": "Cambodia",
      "CM": "Cameroon",
      "CA": "Canada",
      "CV": "Cape Verde",
      "KY": "Cayman Islands",
      "CF": "Central African Republic",
      "TD": "Chad",
      "CL": "Chile",
      "CN": "China",
      "CX": "Christmas Island",
      "CC": "Cocos (Keeling) Islands",
      "CO": "Colombia",
      "KM": "Comoros",
      "CG": "Congo",
      "CD": "Congo, Democratic Republic of the",
      "CK": "Cook Islands",
      "CR": "Costa Rica",
      "CI": "Cote d'Ivoire",
      "HR": "Croatia",
      "CU": "Cuba",
      "CY": "Cyprus",
      "CZ": "Czech Republic",
      "DK": "Denmark",
      "DJ": "Djibouti",
      "DM": "Dominica",
      "DO": "Dominican Republic",
      "EC": "Ecuador",
      "EG": "Egypt",
      "SV": "El Salvador",
      "GQ": "Equatorial Guinea",
      "ER": "Eritrea",
      "EE": "Estonia",
      "ET": "Ethiopia",
      "FK": "Falkland Islands (Malvinas)",
      "FO": "Faroe Islands",
      "FJ": "Fiji",
      "FI": "Finland",
      "FR": "France",
      "GF": "French Guiana",
      "PF": "French Polynesia",
      "TF": "French Southern Territories",
      "GA": "Gabon",
      "GM": "Gambia",
      "GE": "Georgia",
      "DE": "Germany",
      "GH": "Ghana",
      "GI": "Gibraltar",
      "GR": "Greece",
      "GL": "Greenland",
      "GD": "Grenada",
      "GP": "Guadeloupe",
      "GU": "Guam",
      "GT": "Guatemala",
      "GG": "Guernsey",
      "GN": "Guinea",
      "GW": "Guinea-Bissau",
      "GY": "Guyana",
      "HT": "Haiti",
      "HM": "Heard Island and McDonald Islands",
      "VA": "Holy See (Vatican City State)",
      "HN": "Honduras",
      "HK": "Hong Kong",
      "HU": "Hungary",
      "IS": "Iceland",
      "IN": "India",
      "ID": "Indonesia",
      "IR": "Iran, Islamic Republic of",
      "IQ": "Iraq",
      "IE": "Ireland",
      "IM": "Isle of Man",
      "IL": "Israel",
      "IT": "Italy",
      "JM": "Jamaica",
      "JP": "Japan",
      "JE": "Jersey",
      "JO": "Jordan",
      "KZ": "Kazakhstan",
      "KE": "Kenya",
      "KI": "Kiribati",
      "KP": "Korea, Democratic People's Republic of",
      "KR": "Korea, Republic of",
      "KW": "Kuwait",
      "KG": "Kyrgyzstan",
      "LA": "Lao People's Democratic Republic",
      "LV": "Latvia",
      "LB": "Lebanon",
      "LS": "Lesotho",
      "LR": "Liberia",
      "LY": "Libyan Arab Jamahiriya",
      "LI": "Liechtenstein",
      "LT": "Lithuania",
      "LU": "Luxembourg",
      "MO": "Macao",
      "MK": "Macedonia, the former Yugoslav Republic of",
      "MG": "Madagascar",
      "MW": "Malawi",
      "MY": "Malaysia",
      "MV": "Maldives",
      "ML": "Mali",
      "MT": "Malta",
      "MH": "Marshall Islands",
      "MQ": "Martinique",
      "MR": "Mauritania",
      "MU": "Mauritius",
      "YT": "Mayotte",
      "MX": "Mexico",
      "FM": "Micronesia, Federated States of",
      "MD": "Moldova, Republic of",
      "MC": "Monaco",
      "MN": "Mongolia",
      "ME": "Montenegro",
      "MS": "Montserrat",
      "MA": "Morocco",
      "MZ": "Mozambique",
      "MM": "Myanmar",
      "NA": "Namibia",
      "NR": "Nauru",
      "NP": "Nepal",
      "NL": "Netherlands",
      "AN": "Netherlands Antilles",
      "NC": "New Caledonia",
      "NZ": "New Zealand",
      "NI": "Nicaragua",
      "NE": "Niger",
      "NG": "Nigeria",
      "NU": "Niue",
      "NF": "Norfolk Island",
      "MP": "Northern Mariana Islands",
      "NO": "Norway",
      "OM": "Oman",
      "PK": "Pakistan",
      "PW": "Palau",
      "PS": "Palestinian Territory, Occupied",
      "PA": "Panama",
      "PG": "Papua New Guinea",
      "PY": "Paraguay",
      "PE": "Peru",
      "PH": "Philippines",
      "PN": "Pitcairn",
      "PL": "Poland",
      "PT": "Portugal",
      "PR": "Puerto Rico",
      "QA": "Qatar",
      "RE": "Reunion",
      "RO": "Romania",
      "RU": "Russian Federation",
      "RW": "Rwanda",
      "SH": "Saint Helena",
      "KN": "Saint Kitts and Nevis",
      "LC": "Saint Lucia",
      "PM": "Saint Pierre and Miquelon",
      "VC": "Saint Vincent and the Grenadines",
      "WS": "Samoa",
      "SM": "San Marino",
      "ST": "Sao Tome and Principe",
      "SA": "Saudi Arabia",
      "SN": "Senegal",
      "RS": "Serbia",
      "SC": "Seychelles",
      "SL": "Sierra Leone",
      "SG": "Singapore",
      "SK": "Slovakia",
      "SI": "Slovenia",
      "SB": "Solomon Islands",
      "SO": "Somalia",
      "ZA": "South Africa",
      "GS": "South Georgia and the South Sandwich Islands",
      "ES": "Spain",
      "LK": "Sri Lanka",
      "SD": "Sudan",
      "SR": "Suriname",
      "SJ": "Svalbard and Jan Mayen",
      "SZ": "Swaziland",
      "SE": "Sweden",
      "CH": "Switzerland",
      "SY": "Syrian Arab Republic",
      "TW": "Taiwan, Province of China",
      "TJ": "Tajikistan",
      "TZ": "Tanzania, United Republic of",
      "TH": "Thailand",
      "TL": "Timor-Leste",
      "TG": "Togo",
      "TK": "Tokelau",
      "TO": "Tonga",
      "TT": "Trinidad and Tobago",
      "TN": "Tunisia",
      "TR": "Turkey",
      "TM": "Turkmenistan",
      "TC": "Turks and Caicos Islands",
      "TV": "Tuvalu",
      "UG": "Uganda",
      "UA": "Ukraine",
      "AE": "United Arab Emirates",
      "GB": "United Kingdom",
      "US": "United States",
      "UM": "United States Minor Outlying Islands",
      "UY": "Uruguay",
      "UZ": "Uzbekistan",
      "VU": "Vanuatu",
      "VE": "Venezuela",
      "VN": "Viet Nam",
      "VG": "Virgin Islands, British",
      "VI": "Virgin Islands, U.S.",
      "WF": "Wallis and Futuna",
      "EH": "Western Sahara",
      "YE": "Yemen",
      "ZM": "Zambia",
      "ZW": "Zimbabwe",
    };
    List<String> countries = countryMap.keys.toList();
    countries.sort();

    // FIXME: Possibly move the Provider to the Home Page
    return Scaffold(
      appBar: AppBar(
        title: const Text(settingsAppBarTitle),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: BlocProvider(
        create: (_) => SettingsBloc()..add(SettingsInitial()),
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 20.0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.75,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.builder(
                                  itemCount: bannedCountries.length,
                                  itemBuilder: (context, index) {
                                    // bool checkbox = true;
                                    bool checkbox =
                                        bannedCountries[index].isBanned;

                                    String bannedCountryCode =
                                        bannedCountries[index].bannedCountry;
                                    String? bannedCountryName =
                                        countryMap[bannedCountryCode];

                                    return CheckboxListTile(
                                      title: Text(
                                          '$bannedCountryCode \t - $bannedCountryName'),
                                      value: checkbox,
                                      onChanged: (bool? value) {
                                        setState(
                                          () {
                                            log('$value \t $bannedCountryCode');
                                            // checkbox = value!;
                                            // bannedCountriesRepository
                                            //     .updateCountryChecked(
                                            //         bannedCountryCode, value);
                                            context
                                                .read<
                                                    BannedCountriesRepository>()
                                                .updateCountryChecked(
                                                    bannedCountryCode, value);
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: _addBannedCountryDialog(countries),
    );
  }

  FloatingActionButton _addBannedCountryDialog(List<String> countries) {
    String? selectedCountry = 'ZA';

    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text(addBannedCountryDialogTitle),
              content: DropdownButtonFormField<String>(
                value: selectedCountry,
                items: countries.map((country) {
                  // print(_countries);
                  return DropdownMenuItem<String>(
                    value: country,
                    child: Text(country),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(
                    () {
                      selectedCountry = value;
                    },
                  );
                },
                icon: const Icon(Icons.flag),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(cancelBannedCountryDialogButton),
                ),
                ElevatedButton(
                  onPressed: () async {
                    // if (selectedCountry == null) {
                    //   return; // No country selected, don't proceed
                    // }
                    final repository =
                        context.read<BannedCountriesRepository>();

                    if (repository.hasCountry(selectedCountry!)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(duplicateCountryErrorMessage),
                        ),
                      );
                    } else {
                      // repository.addCountry(selectedCountry!);
                      // Navigator.of(context).pop();
                      setState(
                        () {
                          context
                              .read<BannedCountriesRepository>()
                              .addCountry(selectedCountry!);
                        },
                      );
                    }

                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(
                    //     content: Text(duplicateCountryErrorMessage),
                    //   ),
                    // );
                    Navigator.of(context).pop();
                  },
                  child: const Text(enterSubmitButtonTitle),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
