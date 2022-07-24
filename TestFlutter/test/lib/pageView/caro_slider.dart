import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CaroSlider extends StatefulWidget {
  const CaroSlider({Key? key}) : super(key: key);

  @override
  State<CaroSlider> createState() => _CaroSliderState();
}

final slider = [const firstSlider(), const secondSlider(), const thirdSlider()];

class _CaroSliderState extends State<CaroSlider> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(),
          itemCount: 3,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
            child: slider[itemIndex],
          ),
        ),
        Text('hi')
      ],
    )));
  }
}

class firstSlider extends StatelessWidget {
  const firstSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.amber,
    );
  }
}

class secondSlider extends StatelessWidget {
  const secondSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.black,
    );
  }
}

class thirdSlider extends StatelessWidget {
  const thirdSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 15K0,
      color: Colors.pink,
    );
  }
}
