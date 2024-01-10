import '../booking_cancelled_screen/widgets/tickets2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_export.dart';
import 'package:hotel_booking/presentation/home_screen_tab_container_page/home_screen_tab_container_page.dart';
import 'package:hotel_booking/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:hotel_booking/presentation/search_page_tab_container_page/search_page_tab_container_page.dart';
import 'package:hotel_booking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:hotel_booking/widgets/app_bar/appbar_title.dart';
import 'package:hotel_booking/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hotel_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:hotel_booking/widgets/custom_bottom_bar.dart';

class BookingCancelledScreen extends StatelessWidget {
  BookingCancelledScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 29.v,
          ),
          child: Column(
            children: [
              _buildMyBookings(context),
              SizedBox(height: 30.v),
              _buildTickets(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 50.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgFloatingIconWhiteA700,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      title: AppbarTitle(
        text: "My Bookings",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 11.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMyBookings(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "Ongoing",
              style: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "Completed",
              style: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
            child: Text(
              "Cancelled",
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTickets(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0.v),
          child: SizedBox(
            width: 340.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.gray700,
            ),
          ),
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return Tickets2ItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenTabContainerPage;
      case BottomBarEnum.Search:
        return AppRoutes.searchPageTabContainerPage;
      case BottomBarEnum.Booking:
        return "/";
      case BottomBarEnum.Profile:
        return AppRoutes.profileSettingsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenTabContainerPage:
        return HomeScreenTabContainerPage();
      case AppRoutes.searchPageTabContainerPage:
        return SearchPageTabContainerPage();
      case AppRoutes.profileSettingsPage:
        return ProfileSettingsPage();
      default:
        return DefaultWidget();
    }
  }
}
