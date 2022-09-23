import 'package:booking/core/assets_manager.dart';
import 'package:booking/core/strings_manager.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/onboarding.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());
  static OnboardingCubit get(context) => BlocProvider.of(context);

  var boardController = PageController();
  List<BoardingModel> boarding = [
    BoardingModel(
      image: ImageAssets.onboardingLogo1,
      title: AppStrings.onBoardingTitle1,
      body: AppStrings.onBoardingSubTitle1,
    ),
    BoardingModel(
      image: ImageAssets.onboardingLogo2,
      title: AppStrings.onBoardingTitle2,
      body: AppStrings.onBoardingSubTitle2,
    ),
    BoardingModel(
      image: ImageAssets.onboardingLogo3,
      title: AppStrings.onBoardingTitle3,
      body: AppStrings.onBoardingSubTitle3,
    ),
  ];

  bool isLast = false;

  isLastOnboardingScreen() {
    isLast = true;
    emit(IsLastOnboardingScreenState());
  }

  isNotLastOnboardingScreen() {
    isLast = false;
    emit(IsNotLastOnboardingScreenState());
  }
}
