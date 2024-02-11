import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shelter/get_state/button_loading_state.dart';
import 'package:shelter/ui/routes/route.dart';
import 'package:shelter/ui/widgets/violet_button.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PrivacyPolicy extends StatelessWidget {
  PrivacyPolicy({super.key});
  // final PdfViewerController? _pdfViewerController;
  final RxBool _loaded = false.obs;
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SafeArea(
          child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 10).r,
          child: Column(
            children: [
              Expanded(
                child: SfPdfViewer.network(
                    'https://firebasestorage.googleapis.com/v0/b/shelter-105fe.appspot.com/o/privacy%20policy%2Fprivacy-policy.pdf?alt=media&token=e5aa11eb-9c7c-476c-8315-4e974b849f73',
                    onDocumentLoaded: (PdfDocumentLoadedDetails details) {
                  _loaded.value = true;
                }),
              ),
              Obx(() => _loaded.value
                  ? VioletButton(
                      title: 'Agree',
                      value: ButtonLoadingState.privacyPolicyValue,
                      onAction: () {
                        box.write('introPage', 4);
                        Get.toNamed(bottomNavController);
                      })
                  : const Text('Still loading'))
            ], //
          ),
        ),
      )),
    );
  }
}
