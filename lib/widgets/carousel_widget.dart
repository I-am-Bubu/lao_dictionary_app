import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carouselWidget extends StatelessWidget {
  final List<String> images = [
    'https://firebasestorage.googleapis.com/v0/b/saengthong-clinic.appspot.com/o/Bubu__1_-removebg-preview.png?alt=media&token=ec01ba17-3efb-4a77-a553-c59b7a3b2dce&_gl=1*ybjvvk*_ga*NDczODAwMjc5LjE2NTg4NDYyNjk.*_ga_CW55HF8NVT*MTY4NTUwNjcxMS43LjEuMTY4NTUwNjc4MS4wLjAuMA..',
    'https://firebasestorage.googleapis.com/v0/b/saengthong-clinic.appspot.com/o/Bubu__1_-removebg-preview.png?alt=media&token=ec01ba17-3efb-4a77-a553-c59b7a3b2dce&_gl=1*ybjvvk*_ga*NDczODAwMjc5LjE2NTg4NDYyNjk.*_ga_CW55HF8NVT*MTY4NTUwNjcxMS43LjEuMTY4NTUwNjc4MS4wLjAuMA..',
    'https://firebasestorage.googleapis.com/v0/b/saengthong-clinic.appspot.com/o/Bubu__1_-removebg-preview.png?alt=media&token=ec01ba17-3efb-4a77-a553-c59b7a3b2dce&_gl=1*ybjvvk*_ga*NDczODAwMjc5LjE2NTg4NDYyNjk.*_ga_CW55HF8NVT*MTY4NTUwNjcxMS43LjEuMTY4NTUwNjc4MS4wLjAuMA..',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 140,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            // Do something when the page changes
          },
          scrollDirection: Axis.horizontal,
        ),
        items: images.map((url) {
          return Container(
            margin: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: CachedNetworkImage(
                imageUrl: url,
                fit: BoxFit.cover,
                width: 1000,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
