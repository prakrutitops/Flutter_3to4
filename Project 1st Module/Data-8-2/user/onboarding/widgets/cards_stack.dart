
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CardsStack extends StatelessWidget {
  final int pageNumber;
  final Widget lightCardChild;
  final Widget darkCardChild;

  const CardsStack({
    required this.pageNumber,
    required this.lightCardChild,
    required this.darkCardChild,
  });

  bool get isOddPageNumber => pageNumber % 2 == 1;

  @override
  Widget build(BuildContext context) {
    final darkCardWidth = MediaQuery.of(context).size.width - 2 * kPaddingL;
    final darkCardHeight = MediaQuery.of(context).size.height / 3;

    return Padding(
      padding: EdgeInsets.only(top: isOddPageNumber ? 25.0 : 50.0),
      child: Stack(
        alignment: AlignmentDirectional.center,
        clipBehavior: Clip.none,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            color: kTerracotta,
            child: Container(
              width: darkCardWidth,
              height: darkCardHeight,
              padding: EdgeInsets.only(
                top: !isOddPageNumber ? 100.0 : 0.0,
                bottom: isOddPageNumber ? 100.0 : 0.0,
              ),
              child: Center(child: darkCardChild),
            ),
          ),
          Positioned(
            top: !isOddPageNumber ? -25.0 : null,
            bottom: isOddPageNumber ? -25.0 : null,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              color: kDarkBrown,
              child: Container(
                width: darkCardWidth * 0.8,
                height: darkCardHeight * 0.5,
                padding: const EdgeInsets.symmetric(horizontal: kPaddingM),
                child: Center(child: lightCardChild),
              ),
            ),
          ),
        ],
      ),
    );
  }
}