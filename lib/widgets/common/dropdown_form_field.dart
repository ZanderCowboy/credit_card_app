import 'package:credit_card_app/constants/countries_list.dart';
import 'package:flutter/material.dart';

/// A DropdownButtonList for countries
class CountryDropdownButtonList extends StatelessWidget {
  /// Constructor
  const CountryDropdownButtonList({
    required this.hintText,
    required this.onChanged,
    super.key,
    this.icon,
    this.onTap,
  });

  final String hintText;
  final void Function(String?) onChanged;
  final Widget? icon;
  final VoidCallback? onTap;

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
      onTap: onTap,
    );
  }
}
