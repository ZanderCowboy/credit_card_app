import 'package:credit_card_app/constants/countries_list.dart';
import 'package:flutter/material.dart';

/// A DropdownButtonList for countries
class CountryDropdownButtonList extends StatelessWidget {
  /// Constructor
  const CountryDropdownButtonList({
    required String hintText,
    required void Function(String?) onChanged,
    super.key,
    Widget? icon,
    void Function()? onTap,
  })  : _hintText = hintText,
        _onChanged = onChanged,
        _icon = icon,
        _onTap = onTap;

  final String _hintText;
  final void Function(String?) _onChanged;
  final Widget? _icon;
  final void Function()? _onTap;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      hint: Text(_hintText),
      items: countryMap.entries.map((MapEntry<String, String> country) {
        return DropdownMenuItem<String>(
          value: country.key,
          child: Text('${country.key} \t - ${country.value}'),
        );
      }).toList(),
      onChanged: _onChanged,
      icon: _icon,
      onTap: _onTap,
    );
  }
}
