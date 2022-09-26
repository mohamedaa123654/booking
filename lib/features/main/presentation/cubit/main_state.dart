part of 'main_cubit.dart';

abstract class MainState extends Equatable {
  const MainState();

  @override
  List<Object> get props => [];
}

class MainInitial extends MainState {}

class MainChangeBottomNavigationBarState extends MainState {}

class MainLoadingBottomNavigationBarState extends MainState {}

class MainChangeAnimatedSmoothIndicatorState extends MainState {}

class MainLoadingAnimatedSmoothIndicatorState extends MainState {}

class TripChangeTabBarState extends MainState {}
