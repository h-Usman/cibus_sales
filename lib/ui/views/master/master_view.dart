import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/show_side_dialogue.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/top_header.widget.dart';
import 'package:flutter_application_1/ui/widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './master_view_model.dart';

class MasterView extends StatelessWidget {
  const MasterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MasterViewModel>.reactive(
      viewModelBuilder: () => MasterViewModel(),
      onModelReady: (MasterViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        MasterViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Row(
            children: [
              SizedBox(
                width: 51.sp,
                height: 100.h,
                child: MainNavigationMenuWidgetView(),
              ),
              SizedBox(
                width: 100.w - 52.sp,
                height: 100.h,
                child: Stack(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: TopHeaderWidget(),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () => showSideDialogue(
                          context: context,
                          title: "Dialog Menu",
                          cancelButtonText: "Cancel",
                          saveButtonText: "Save",
                          saveButtonPressed: (dynamic val) {
                            print("hello i am clicked with $val");
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Text("Hello World"),
                          ),
                        ),
                        child: Text("Hello"),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FooterWidget(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
