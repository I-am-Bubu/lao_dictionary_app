import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carouselWidget extends StatelessWidget {
  final List<String> images = [
    'https://img.freepik.com/free-vector/large-school-building-scene_1308-32058.jpg?w=1800&t=st=1687158616~exp=1687159216~hmac=7dbd5562e3d8bdcb348f840a34d2acd38d2ceec67575dc4aac0793b4be076893',
    'https://img.freepik.com/free-vector/hand-drawn-back-school-background_23-2149056178.jpg?w=2000&t=st=1687158663~exp=1687159263~hmac=4df099fae33174678f9963dba9a2846d2f68a8c1d207f088199346ed4b4e7355',
    'https://img.freepik.com/free-vector/empty-classroom-interior-school-college-class_107791-631.jpg?w=1800&t=st=1687159197~exp=1687159797~hmac=18f95eed6fa99db72f8d280e90e445c5af7b9eb5afb48ee3644e695691317563'
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
          onPageChanged: (index, reason) {},
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
