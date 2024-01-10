import '../choose_payment_method_screen/widgets/choosepaymentmethod_item_widget.dart';import 'package:flutter/material.dart';import 'package:hotel_booking/core/app_export.dart';import 'package:hotel_booking/widgets/app_bar/appbar_title.dart';import 'package:hotel_booking/widgets/app_bar/custom_app_bar.dart';import 'package:hotel_booking/widgets/custom_elevated_button.dart';class ChoosePaymentMethodScreen extends StatelessWidget {const ChoosePaymentMethodScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v), child: Column(children: [_buildAddNewCard(context), SizedBox(height: 24.v), _buildChoosePaymentMethod(context)])), bottomNavigationBar: _buildContinue(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 56.v, leadingWidth: 52.h, leading: Container(height: 28.adaptSize, width: 28.adaptSize, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 17.v), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 28.adaptSize, width: 28.adaptSize, alignment: Alignment.center, onTap: () {onTapImgArrowDown(context);}), CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 28.adaptSize, width: 28.adaptSize, alignment: Alignment.center)])), title: Container(height: 29.v, width: 96.h, margin: EdgeInsets.only(left: 16.h), child: Stack(alignment: Alignment.center, children: [AppbarTitle(text: "Payment"), AppbarTitle(text: "Payment")])), actions: [Container(height: 28.adaptSize, width: 28.adaptSize, margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 17.v), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgTelevision, height: 28.adaptSize, width: 28.adaptSize, alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgTelevision, height: 28.adaptSize, width: 28.adaptSize, alignment: Alignment.center)]))]); } 
/// Section Widget
Widget _buildAddNewCard(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Payment Methods", style: theme.textTheme.titleMedium), GestureDetector(onTap: () {onTapTxtAddNewCard(context);}, child: Padding(padding: EdgeInsets.only(bottom: 2.v), child: Text("Add New Card", style: CustomTextStyles.titleMediumPrimary)))]); } 
/// Section Widget
Widget _buildChoosePaymentMethod(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 28.v);}, itemCount: 3, itemBuilder: (context, index) {return ChoosepaymentmethodItemWidget();}); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "Continue", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v), onPressed: () {onTapContinue(context);}); } 

/// Navigates back to the previous screen.
onTapImgArrowDown(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the addNewCardScreen when the action is triggered.
onTapTxtAddNewCard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addNewCardScreen); } 
/// Navigates to the confirmPaymentScreen when the action is triggered.
onTapContinue(BuildContext context) { Navigator.pushNamed(context, AppRoutes.confirmPaymentScreen); } 
 }
