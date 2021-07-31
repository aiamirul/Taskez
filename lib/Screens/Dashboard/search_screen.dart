import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/Buttons/primary_tab_buttons.dart';
import 'package:taskez/widgets/Buttons/text_button.dart';
import 'package:taskez/widgets/Forms/search_box.dart';
import 'package:taskez/widgets/Search/task_card.dart';
import 'package:taskez/widgets/Shapes/app_settings_icon.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  ValueNotifier<int> _settingsButtonTrigger = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 60,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: SearchBox(
                    placeholder: 'Search Dashboard',
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 60,
                    child: Text("Cancel",
                        textAlign: TextAlign.right,
                        style: GoogleFonts.lato(
                            color: HexColor.fromHex("616575"),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  )),
            ],
          ),
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //tab indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PrimaryTabButton(
                    buttonText: "Task",
                    itemIndex: 0,
                    notifier: _settingsButtonTrigger),
                PrimaryTabButton(
                    buttonText: "Mention",
                    itemIndex: 1,
                    notifier: _settingsButtonTrigger),
                PrimaryTabButton(
                    buttonText: "Files",
                    itemIndex: 2,
                    notifier: _settingsButtonTrigger)
              ],
            ),
            Container(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    // _showDashboardSettings(context);
                  },
                  child: AppSettingsIcon(
                      // callback: _showDashboardSettings(context),
                      ),
                ))
          ]),
          SizedBox(height: 20),
          SearchTaskCard()
        ]));
  }
}
