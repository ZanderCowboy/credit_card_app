import 'package:credit_card_app/constants/countries_list.dart';
import 'package:flutter/material.dart';

class CountryDropdownButtonList extends StatelessWidget {
  const CountryDropdownButtonList({
    super.key,
    required this.hintText,
    required this.onChanged,
    this.icon,
  });

  final String hintText;
  final void Function(String?) onChanged;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      hint: Text(hintText),
      items: countryMap.entries.map((MapEntry<String, String> country) {
        return DropdownMenuItem<String>(
          value: country.key,
          child: Text('${country.key} \t - ${country.value}'),
        );
      }).toList(),
      onChanged: onChanged,
      icon: icon,
    );
  }
}
