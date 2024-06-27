import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/ui/styles/styles.dart';

class Support extends StatelessWidget {
  Support({super.key});
  final emailController = TextEditingController();
  final facebookController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    emailController.text = 'zubaer.ahmed7690@gmail.com';
    facebookController.text = 'zubaer.ahmed7690@gmail.com';
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Support',
            style: AppStyles.textStyleB20400,
          ),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'If you have any problems, please contact us. We are at your service all the time',
                style: AppStyles.textStyleB20300,
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.blue))),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Phone',
                style: AppStyles.textStyleB20300,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '01740117690',
                style: AppStyles.textStyleB20300,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'E-mail',
                style: AppStyles.textStyleB20300,
              ),
              TextFormField(
                controller: emailController,
                readOnly: true,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Facebook',
                style: AppStyles.textStyleB20300,
              ),
              TextFormField(
                controller: facebookController,
                readOnly: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
