import 'package:flutter/material.dart';
import 'package:hotel_booking/presentation/welcome_screen/welcome_screen.dart';
import 'package:hotel_booking/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:hotel_booking/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:hotel_booking/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:hotel_booking/presentation/let_s_you_in_screen/let_s_you_in_screen.dart';
import 'package:hotel_booking/presentation/sign_up_blank_screen/sign_up_blank_screen.dart';
import 'package:hotel_booking/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:hotel_booking/presentation/fill_profile_screen/fill_profile_screen.dart';
import 'package:hotel_booking/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:hotel_booking/presentation/forgot_password_type_otp_screen/forgot_password_type_otp_screen.dart';
import 'package:hotel_booking/presentation/forgot_password_filled_type_screen/forgot_password_filled_type_screen.dart';
import 'package:hotel_booking/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:hotel_booking/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:hotel_booking/presentation/recently_booked_screen/recently_booked_screen.dart';
import 'package:hotel_booking/presentation/notifications_screen/notifications_screen.dart';
import 'package:hotel_booking/presentation/my_bookmarks_screen/my_bookmarks_screen.dart';
import 'package:hotel_booking/presentation/search_type_tab_container_screen/search_type_tab_container_screen.dart';
import 'package:hotel_booking/presentation/hotel_details_screen/hotel_details_screen.dart';
import 'package:hotel_booking/presentation/gallery_screen/gallery_screen.dart';
import 'package:hotel_booking/presentation/location_screen/location_screen.dart';
import 'package:hotel_booking/presentation/select_date_guest_screen/select_date_guest_screen.dart';
import 'package:hotel_booking/presentation/booking_name_tab_container_screen/booking_name_tab_container_screen.dart';
import 'package:hotel_booking/presentation/choose_payment_method_screen/choose_payment_method_screen.dart';
import 'package:hotel_booking/presentation/add_new_card_screen/add_new_card_screen.dart';
import 'package:hotel_booking/presentation/card_added_screen/card_added_screen.dart';
import 'package:hotel_booking/presentation/confirm_payment_screen/confirm_payment_screen.dart';
import 'package:hotel_booking/presentation/view_ticket_screen/view_ticket_screen.dart';
import 'package:hotel_booking/presentation/booking_ongoing_screen/booking_ongoing_screen.dart';
import 'package:hotel_booking/presentation/booking_cancelled_screen/booking_cancelled_screen.dart';
import 'package:hotel_booking/presentation/refund_method_screen/refund_method_screen.dart';
import 'package:hotel_booking/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:hotel_booking/presentation/notification_settings_screen/notification_settings_screen.dart';
import 'package:hotel_booking/presentation/security_screen/security_screen.dart';
import 'package:hotel_booking/presentation/review_tab_container_screen/review_tab_container_screen.dart';
import 'package:hotel_booking/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String bookingCompletedPage = '/booking_completed_page';

  static const String welcomeScreen = '/welcome_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String letSYouInScreen = '/let_s_you_in_screen';

  static const String signUpBlankScreen = '/sign_up_blank_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String fillProfileScreen = '/fill_profile_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String forgotPasswordTypeOtpScreen =
      '/forgot_password_type_otp_screen';

  static const String forgotPasswordFilledTypeScreen =
      '/forgot_password_filled_type_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenTabContainerPage =
      '/home_screen_tab_container_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String recentlyBookedScreen = '/recently_booked_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String myBookmarksScreen = '/my_bookmarks_screen';

  static const String searchPage = '/search_page';

  static const String searchPageTabContainerPage =
      '/search_page_tab_container_page';

  static const String searchTypePage = '/search_type_page';

  static const String searchTypeTabContainerScreen =
      '/search_type_tab_container_screen';

  static const String filterResultPage = '/filter_result_page';

  static const String hotelDetailsScreen = '/hotel_details_screen';

  static const String galleryScreen = '/gallery_screen';

  static const String locationScreen = '/location_screen';

  static const String selectDateGuestScreen = '/select_date_guest_screen';

  static const String bookingNamePage = '/booking_name_page';

  static const String bookingNameTabContainerScreen =
      '/booking_name_tab_container_screen';

  static const String choosePaymentMethodScreen =
      '/choose_payment_method_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String cardAddedScreen = '/card_added_screen';

  static const String confirmPaymentScreen = '/confirm_payment_screen';

  static const String viewTicketScreen = '/view_ticket_screen';

  static const String bookingOngoingScreen = '/booking_ongoing_screen';

  static const String bookingCancelledScreen = '/booking_cancelled_screen';

  static const String refundMethodScreen = '/refund_method_screen';

  static const String profileSettingsPage = '/profile_settings_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String securityScreen = '/security_screen';

  static const String reviewPage = '/review_page';

  static const String reviewTabContainerScreen = '/review_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => WelcomeScreen(),
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    letSYouInScreen: (context) => LetSYouInScreen(),
    signUpBlankScreen: (context) => SignUpBlankScreen(),
    signInScreen: (context) => SignInScreen(),
    fillProfileScreen: (context) => FillProfileScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    forgotPasswordTypeOtpScreen: (context) => ForgotPasswordTypeOtpScreen(),
    forgotPasswordFilledTypeScreen: (context) =>
        ForgotPasswordFilledTypeScreen(),
    createNewPasswordScreen: (context) => CreateNewPasswordScreen(),
    homeScreenContainerScreen: (context) => HomeScreenContainerScreen(),
    recentlyBookedScreen: (context) => RecentlyBookedScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    myBookmarksScreen: (context) => MyBookmarksScreen(),
    searchTypeTabContainerScreen: (context) => SearchTypeTabContainerScreen(),
    hotelDetailsScreen: (context) => HotelDetailsScreen(),
    galleryScreen: (context) => GalleryScreen(),
    locationScreen: (context) => LocationScreen(),
    selectDateGuestScreen: (context) => SelectDateGuestScreen(),
    bookingNameTabContainerScreen: (context) => BookingNameTabContainerScreen(),
    choosePaymentMethodScreen: (context) => ChoosePaymentMethodScreen(),
    addNewCardScreen: (context) => AddNewCardScreen(),
    cardAddedScreen: (context) => CardAddedScreen(),
    confirmPaymentScreen: (context) => ConfirmPaymentScreen(),
    viewTicketScreen: (context) => ViewTicketScreen(),
    bookingOngoingScreen: (context) => BookingOngoingScreen(),
    bookingCancelledScreen: (context) => BookingCancelledScreen(),
    refundMethodScreen: (context) => RefundMethodScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    notificationSettingsScreen: (context) => NotificationSettingsScreen(),
    securityScreen: (context) => SecurityScreen(),
    reviewTabContainerScreen: (context) => ReviewTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
