import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/get_state/button_loading_state.dart';
import 'package:shelter/ui/routes/route.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/widgets/custom_text_field.dart';
import 'package:shelter/ui/widgets/violet_button.dart';

class NavAdd extends StatelessWidget {
  const NavAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20).r,
          child: SingleChildScrollView(
            child: Column(children: [
              Text(
                'If you have any problems, please contact us. We are at your service all the time.',
                style: AppStyles.textStyleB24400,
              ),
              SizedBox(
                height: 20.h,
              ),
              customTextField('Owner Name', null),
              customTextField('Description', null),
              customTextField('Cost', null),
              customTextField('Facilities', null, maxLines: 4),
              customTextField('Destination', null),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 50.h,
                child: VioletButton(
                    title: 'Next',
                    onAction: () {
                      ButtonLoadingState.addNextValue.value = true;
                      Get.toNamed(uploadScreen);
                    },
                    value: ButtonLoadingState.addNextValue),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
