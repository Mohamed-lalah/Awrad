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
  bool arSwitch= false ;
  bool modeSwitch= false ;
  late  SettingProvider provider;

  @override
  Widget build(BuildContext context) {

    provider= Provider.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(AppLocalizations.of(context)!.settings,style: AppTheme.settingTabTitle,textAlign: TextAlign.start,),
        ),
        SizedBox(height: 10,),

        buildSettingTab("العربيه", arSwitch, (newValue) {
          arSwitch= newValue;
          if(arSwitch){
            provider.setCurrentLocale("ar");
          }
          else {
            provider.setCurrentLocale("en");
          }



        }
        ),
        buildSettingTab(AppLocalizations.of(context)!.darkMode, modeSwitch, (newValue)  {
          modeSwitch=newValue;
          setState(() {

          });
        })
      ],
    );
  }

  Widget buildSettingTab (String tilte , bool switchValue , Function (bool)onChanged){
    return Row(
      children: [
        SizedBox(width: 18,),
        Text(tilte,style: AppTheme.settingOptionTitle,),
        Spacer(),
        Switch(value: switchValue, onChanged: onChanged,activeColor: AppColors.primiary,)

      ],
    );

  }
}
