import 'package:bloc/bloc.dart';
import 'package:booking/core/assets_manager.dart';
import 'package:booking/core/strings_manager.dart';
import 'package:booking/features/main/data/models/banner_model.dart';
import 'package:booking/features/main/data/models/cities.dart';
import 'package:booking/features/main/presentation/pages/explore.dart';
import 'package:booking/features/main/presentation/pages/profile.dart';
import 'package:booking/features/main/presentation/pages/trips.dart';
import 'package:booking/features/onboarding/data/models/onboarding.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());
  static MainCubit get(context) => BlocProvider.of(context);

  List<Widget> pages = [
    ExplorePage(),
    TripsPage(),
    ProfilePage(),
  ];
  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
          size: 32,
        ),
        label: AppStrings.explore),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite_border,
          size: 32,
        ),
        label: AppStrings.trips),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.person_outline,
          size: 32,
        ),
        label: AppStrings.profile),
  ];

  var currentIndex = 0;
  onTap(int index) {
    emit(MainLoadingBottomNavigationBarState());

    currentIndex = index;
    emit(MainChangeBottomNavigationBarState());
  }

//ExplorePage
  var bannerController = PageController();

  List<BannerModel> banners = [
    BannerModel(
      image:
          'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768s',
      title: AppStrings.onBoardingTitle1,
      body: AppStrings.onBoardingSubTitle1,
    ),
    BannerModel(
      image:
          'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768s',
      title: AppStrings.onBoardingTitle2,
      body: AppStrings.onBoardingSubTitle2,
    ),
    BannerModel(
      image:
          'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768s',
      title: AppStrings.onBoardingTitle3,
      body: AppStrings.onBoardingSubTitle3,
    ),
  ];

  List<CitiesModel> cities = [
    CitiesModel(
      image:
          'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768s',
      title: 'Cairo',
    ),
    CitiesModel(
      image:
          'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768s',
      title: 'Paris',
    ),
    CitiesModel(
      image:
          'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768s',
      title: 'London',
    ),
  ];

  int indexIndecator = 0;
  onChangeAnimatedSmoothIndicator(int index) {
    emit(MainLoadingAnimatedSmoothIndicatorState());

    indexIndecator = index;
    emit(MainChangeAnimatedSmoothIndicatorState());
  }
}
