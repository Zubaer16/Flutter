import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class InterstitialAdvertise extends StatefulWidget {
  const InterstitialAdvertise({super.key});

  @override
  State<InterstitialAdvertise> createState() => _InterstitialAdvertiseState();
}

class _InterstitialAdvertiseState extends State<InterstitialAdvertise> {
  InterstitialAd? _interstitialAd;

  final adUnitId = Platform.isAndroid
      ? 'ca-app-pub-3073079532047702/5129301119'
      : 'ca-app-pub-3940256099942544/4411468910';

  void loadAd() {
    InterstitialAd.load(
        adUnitId: adUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          // Called when an ad is successfully received.
          onAdLoaded: (ad) {
            ad.fullScreenContentCallback = FullScreenContentCallback(
                // Called when the ad showed the full screen content.
                onAdShowedFullScreenContent: (ad) {
              print('Fullscreen content showed');
            },
                // Called when an impression occurs on the ad.
                onAdImpression: (ad) {
              print('Impression occured');
            },
                // Called when the ad failed to show full screen content.
                onAdFailedToShowFullScreenContent: (ad, err) {
              // Dispose the ad here to free resources.
              ad.dispose();
            },
                // Called when the ad dismissed full screen content.
                onAdDismissedFullScreenContent: (ad) {
              // Dispose the ad here to free resources.
              ad.dispose();
              print('Interstitial ad closed');
            },
                // Called when a click is recorded for an ad.
                onAdClicked: (ad) {
              print('clicked on ad');
            });

            debugPrint('$ad loaded.');
            // Keep a reference to the ad so you can show it later.
            _interstitialAd = ad;
          },
          // Called when an ad request failed.
          onAdFailedToLoad: (LoadAdError error) {
            debugPrint('InterstitialAd failed to load: $error');
          },
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadAd();
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _interstitialAd?.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              loadAd();
              _interstitialAd?.show();
            },
            child: Text('Click here to show interstitial ad')),
      ),
    );
  }
}
