import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class NativeAdvertise extends StatefulWidget {
  const NativeAdvertise({super.key});

  @override
  State<NativeAdvertise> createState() => _NativeAdvertiseState();
}

// Problem: Native ad failed to load using test id
// Possible solution : Create account and use own unit id

class _NativeAdvertiseState extends State<NativeAdvertise> {
  NativeAd? _nativeAd;
  bool _nativeAdIsLoaded = false;
  late NativeAd _ad;

  // TODO: replace this test ad unit with your own ad unit.
  final String _adUnitId = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/2247696110'
      : 'ca-app-pub-3940256099942544/3986624511';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    void loadAd() {
      _nativeAd = NativeAd(
          adUnitId: _adUnitId,
          listener: NativeAdListener(
            onAdLoaded: (ad) {
              debugPrint('$NativeAd loaded.');
              setState(() {
                _nativeAdIsLoaded = true;
              });
            },
            onAdFailedToLoad: (ad, error) {
              // Dispose the ad here to free resources.
              debugPrint('$NativeAd failed to load: $error');
              ad.dispose();
            },
          ),
          request: const AdRequest(),
          // Styling
          nativeTemplateStyle: NativeTemplateStyle(
              // Required: Choose a template.
              templateType: TemplateType.medium,
              // Optional: Customize the ad's style.
              mainBackgroundColor: Colors.purple,
              cornerRadius: 10.0,
              callToActionTextStyle: NativeTemplateTextStyle(
                  textColor: Colors.cyan,
                  backgroundColor: Colors.red,
                  style: NativeTemplateFontStyle.monospace,
                  size: 16.0),
              primaryTextStyle: NativeTemplateTextStyle(
                  textColor: Colors.red,
                  backgroundColor: Colors.cyan,
                  style: NativeTemplateFontStyle.italic,
                  size: 16.0),
              secondaryTextStyle: NativeTemplateTextStyle(
                  textColor: Colors.green,
                  backgroundColor: Colors.black,
                  style: NativeTemplateFontStyle.bold,
                  size: 16.0),
              tertiaryTextStyle: NativeTemplateTextStyle(
                  textColor: Colors.brown,
                  backgroundColor: Colors.amber,
                  style: NativeTemplateFontStyle.normal,
                  size: 16.0)))
        ..load();
    }

    loadAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Center(
        //     child: SizedBox(
        //         height: MediaQuery.of(context).size.width,
        //         width: MediaQuery.of(context).size.width,
        //         child: AdWidget(ad: _nativeAd!))),
        );
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _nativeAd!.dispose();
  //   super.dispose();
  // }
}
