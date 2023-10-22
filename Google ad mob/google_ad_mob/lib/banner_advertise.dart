import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerAdvertise extends StatefulWidget {
  const BannerAdvertise({super.key});

  @override
  State<BannerAdvertise> createState() => _BannerAdvertiseState();
}

class _BannerAdvertiseState extends State<BannerAdvertise> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;

  final adUnitId = "ca-app-pub-3073079532047702/6641693330";

  void loadAd() {
    _bannerAd = BannerAd(
      adUnitId: adUnitId,
      request: const AdRequest(),
      size: AdSize(width: 300, height: 50),
      listener: BannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) {
          debugPrint('$ad loaded.');
          setState(() {
            _isLoaded = true;
          });
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (ad, err) {
          debugPrint('BannerAd failed to load: $err');
          // Dispose the ad here to free resources.
          ad.dispose();
        },
        onAdOpened: (Ad ad) {
          print('Ad is opened');
        },
        // Called when an ad removes an overlay that covers the screen.
        onAdClosed: (Ad ad) {
          print('Ad is closed');
        },
        // Called when an impression occurs on the ad.
        onAdImpression: (Ad ad) {
          print('Ad impressioned');
        },
      ),
    )..load();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // clipBehavior: Clip.none,
        children: [
          Center(child: AdWidget(ad: _bannerAd!)),
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
