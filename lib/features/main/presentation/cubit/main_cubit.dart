import 'package:bloc/bloc.dart';
import 'package:booking/core/assets_manager.dart';
import 'package:booking/core/strings_manager.dart';
import 'package:booking/features/main/data/models/banner_model.dart';
import 'package:booking/features/main/data/models/cities.dart';
import 'package:booking/features/main/presentation/pages/explore.dart';
import 'package:booking/features/main/presentation/pages/profile.dart';
import 'package:booking/features/main/presentation/pages/trips.dart';
import 'package:booking/features/main/presentation/widgets/tabs_tabs/favorite.dart';
import 'package:booking/features/main/presentation/widgets/tabs_tabs/finished.dart';
import 'package:booking/features/main/presentation/widgets/tabs_tabs/upcoming.dart';
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

  List<String> rooms = [
    'https://insights.ehotelier.com/wp-content/uploads/sites/6/2020/01/hotel-room-300x300.jpg',
    'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg',
    'https://thedeepblueseamovie.com/wp-content/uploads/2020/04/Your-Hotel-Suite.jpg',
    'https://cdn.loewshotels.com/loewshotels.com-2466770763/cms/cache/v2/5f5a6e0d12749.jpg/1920x1080/fit/80/86e685af18659ee9ecca35c465603812.jpg',
    'https://www.bedroomchecker.com/wp-content/uploads/2013/12/Family-Room.png',
    'https://www.rd.com/wp-content/uploads/2021/03/GettyImages-1207490255-e1615485559611.jpg?fit=696,463',
    'https://image-tc.galaxy.tf/wijpeg-1ep2143ci3dsvirm90ud0wv8l/rockymountainphotoco-16-opt_standard.jpg?crop=107%2C0%2C1707%2C1280'
  ];

  int indexIndecator = 0;
  onChangeAnimatedSmoothIndicator(int index) {
    emit(MainLoadingAnimatedSmoothIndicatorState());

    indexIndecator = index;
    emit(MainChangeAnimatedSmoothIndicatorState());
  }

  List<Widget> screens = const [Upcoming(), Finished(), Favorite()];

  //Tabs Title
  List<Widget> tabTitles = const [
    Tab(
      text: 'Upcoming',
    ),
    Tab(
      text: 'Finished',
    ),
    Tab(
      text: 'Favorite',
    ),
  ];
}
