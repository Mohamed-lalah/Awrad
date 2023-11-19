import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/utilities/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../../../utilities/app_colors.dart';

class Settings extends StatefulWidget {

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  late  prefsHelper provider;

  @override
  Widget build(BuildContext context) {
    provider= Provider.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(AppLocalizations.of(context)!.settings,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.start,),
        ),
        SizedBox(height: 10,),

        buildSettingTab("العربيه", provider.arSwitch, (newValue) {

          provider.arSwitch= newValue;

          if(provider.arSwitch){
            provider.setCurrentLocale("ar");

          }
          else {
            provider.setCurrentLocale("en");

          }
        }
        ),


        buildSettingTab(AppLocalizations.of(context)!.darkMode, provider.darkModeSwitch, (newValue)  {
          provider.darkModeSwitch=newValue;
          if (provider.darkModeSwitch){
            provider.setCurrentMode(ThemeMode.dark);
          }
          else
            provider.setCurrentMode(ThemeMode.light);

        })
      ],
    );
  }

  Widget buildSettingTab (String tilte , bool switchValue , Function (bool)onChanged){
    return Row(
      children: [
        SizedBox(width: 18,),
        Text(tilte,style: Theme.of(context).textTheme.bodySmall,),
        Spacer(),
        Switch(value: switchValue, onChanged: onChanged,activeColor: AppColors.accentDark,)

      ],
    );

  }
}
