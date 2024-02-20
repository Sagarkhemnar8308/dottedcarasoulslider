import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class DottedCarasoulSlidermultipleImages extends StatefulWidget {
  final List<String>? imgUrls;
  final Duration? duration;
  final double? height;
  final double? width;
  final bool addDots;
  final bool? autoplay;
  CarouselController? controller;
  final bool? reverse;
  final Color? dotActiveColor;
  final Color? dotInActiveColor;
  final double? aspectRatio;

  DottedCarasoulSlidermultipleImages(
      {Key? key,
      required this.imgUrls,
      this.duration,
      this.controller,
      this.autoplay,
      this.reverse,
      this.aspectRatio,
      this.dotActiveColor,
      this.dotInActiveColor,
      required this.height,
      required this.width,
      required this.addDots})
      : super(key: key);

  @override
  State<DottedCarasoulSlidermultipleImages> createState() =>
      _DottedCarasoulslidermultipleImagesState();
}

class _DottedCarasoulslidermultipleImagesState
    extends State<DottedCarasoulSlidermultipleImages> {
  int _currentSlide = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: widget.imgUrls?.length ?? 0,
          carouselController: widget.controller,
          itemBuilder: (context, index, realIndex) {
            return SizedBox(
              height: widget.height,
              width: widget.width,
              child: Image.network(widget.imgUrls!.elementAt(index)),
            );
          },
          options: CarouselOptions(
            aspectRatio: widget.aspectRatio ?? 16 / 9,
            reverse: widget.reverse ?? false,
            autoPlay: widget.autoplay ?? false,
            autoPlayInterval: widget.duration ?? const Duration(seconds: 0),
            onPageChanged: (index, _) {
              setState(() {
                _currentSlide = index;
              });
            },
          ),
        ),
        widget.addDots
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  widget.imgUrls?.length ?? 0,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentSlide = index;
                      });
                    },
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentSlide == index
                            ? widget.dotActiveColor ?? Colors.blue
                            : widget.dotInActiveColor ?? Colors.grey,
                      ),
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
