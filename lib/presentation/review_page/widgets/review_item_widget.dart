import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_export.dart';
import 'package:hotel_booking/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ReviewItemWidget extends StatelessWidget {
  const ReviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse1,
                height: 48.adaptSize,
                width: 48.adaptSize,
                radius: BorderRadius.circular(
                  24.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 7.v,
                  bottom: 4.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jenny Wilson",
                      style: CustomTextStyles.titleMedium16,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "Dec 10, 2024",
                      style: CustomTextStyles.labelLargeGray40001,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                height: 32.v,
                width: 60.h,
                text: "5",
                margin: EdgeInsets.symmetric(vertical: 8.v),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillPrimaryTL16,
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Container(
            width: 284.h,
            margin: EdgeInsets.only(right: 48.h),
            child: Text(
              "Very nice and comfortable hotel, thank you for accompanying my vacation!",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumWhiteA700.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
