import 'package:flutter/material.dart';
import 'package:hero_loacion_example/widget/hero_widget.dart';
import 'package:hero_loacion_example/widget/stars_widget.dart';

import '../data/hero_tag.dart';
import '../model/location.dart';

class DetailedInfoWidget extends StatelessWidget {
  final Location location;

  const DetailedInfoWidget({
    required this.location,});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroWidget(
              tag: HeroTag.addressLine1(location),
              child: Text(location.addressLine1!),
            ),
            SizedBox(height: 8),
            HeroWidget(
              tag: HeroTag.addressLine2(location),
              child: Text(location.addressLine2!),
            ),
            SizedBox(height: 8),
            HeroWidget(
              tag: HeroTag.stars(location),
              child: StarsWidget(stars: location.starRating!),
            ),
          ],
        ),
      );
}
