//import 'package:hotelbooking/design_course/home_design_course.dart';
//import 'package:best_flutter_ui_templates/fitness_app/fitness_app_home_screen.dart';
import 'package:hotelbooking/hotel_booking/hotel_home_screen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget? navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      
      imagePath: 'assets/hotel_1.png',
     // navigateScreen: IntroductionAnimationScreen(),
    ),
    HomeList(
      imagePath: 'assets/hotel_booking.png',
      navigateScreen: const HotelHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/hotel_1.png',
      //navigateScreen: FitnessAppHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/hotel_1.png',
      //navigateScreen: DesignCourseHomeScreen(),
    ),
  ];
}
