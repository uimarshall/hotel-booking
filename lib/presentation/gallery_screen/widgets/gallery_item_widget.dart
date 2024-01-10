import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_export.dart';

// ignore: must_be_immutable
class GalleryItemWidget extends StatelessWidget {
  const GalleryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle10,
      height: 140.v,
      width: 182.h,
      radius: BorderRadius.circular(
        12.h,
      ),
    );
  }
}
