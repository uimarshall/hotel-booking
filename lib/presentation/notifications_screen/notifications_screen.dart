import '../notifications_screen/widgets/notifications_item_widget.dart';import 'package:flutter/material.dart';import 'package:hotel_booking/core/app_export.dart';import 'package:hotel_booking/widgets/app_bar/appbar_leading_image.dart';import 'package:hotel_booking/widgets/app_bar/appbar_title.dart';import 'package:hotel_booking/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:hotel_booking/widgets/app_bar/custom_app_bar.dart';class NotificationsScreen extends StatelessWidget {const NotificationsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 31.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Today", style: CustomTextStyles.titleMediumSemiBold_1)), SizedBox(height: 18.v), _buildAutoLayoutHorizontal(context), SizedBox(height: 24.v), _buildAutoLayoutHorizontal1(context), SizedBox(height: 25.v), Align(alignment: Alignment.centerLeft, child: Text("Yesterday", style: theme.textTheme.titleMedium)), SizedBox(height: 22.v), _buildNotifications(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Notifications", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsWhiteA700, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 13.v))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Container(padding: EdgeInsets.symmetric(vertical: 16.v), decoration: AppDecoration.outlineBlackC.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [CustomImageView(imagePath: ImageConstant.imgCheckmarkPrimary80x83, height: 80.v, width: 83.h), Padding(padding: EdgeInsets.only(top: 18.v, bottom: 16.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Payment Successful!", style: theme.textTheme.titleMedium), SizedBox(height: 6.v), Text("Laluna Hotel booking was successful!", style: CustomTextStyles.titleSmallGray40001)]))])); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal1(BuildContext context) { return Container(padding: EdgeInsets.symmetric(vertical: 16.v), decoration: AppDecoration.outlineBlackC.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [CustomImageView(imagePath: ImageConstant.imgFloatingIconCyan500, height: 80.v, width: 83.h), Padding(padding: EdgeInsets.symmetric(vertical: 17.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("E-Wallet Connected", style: theme.textTheme.titleMedium), SizedBox(height: 6.v), Text("E-Wallet has been connected to Helia", style: CustomTextStyles.titleSmallGray40001)]))])); } 
/// Section Widget
Widget _buildNotifications(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: 2, itemBuilder: (context, index) {return NotificationsItemWidget();}); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
 }
