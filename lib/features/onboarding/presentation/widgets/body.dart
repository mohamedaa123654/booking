import 'package:booking/core/color_manager.dart';
import 'package:booking/core/componant.dart';
import 'package:booking/core/strings_manager.dart';
import 'package:booking/features/main/presentation/pages/main.dart';
import 'package:booking/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:booking/features/onboarding/presentation/widgets/build_boarding_item.dart';
import 'package:booking/home.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Padding onboardingBody(OnboardingCubit cubit, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: PageView.builder(
            physics: BouncingScrollPhysics(),
            controller: cubit.boardController,
            onPageChanged: (int index) {
              if (index == cubit.boarding.length - 1) {
                cubit.isLastOnboardingScreen();
              } else {
                cubit.isNotLastOnboardingScreen();
              }
            },
            itemBuilder: (context, index) =>
                BuildBoardingItem(model: cubit.boarding[index]),
            itemCount: cubit.boarding.length,
          ),
        ),
        SizedBox(
          height: 80.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SmoothPageIndicator(
              controller: cubit.boardController,
              effect: const WormEffect(
                dotColor: Colors.grey,
                activeDotColor: ColorManager.primary,
                dotHeight: 9,
                dotWidth: 9,
                spacing: 3.0,
              ),
              count: cubit.boarding.length,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: DefaultButton(
            onPressed: () {
              navigateAndFinish(context, MainView());
            },
            text: AppStrings.login,
            isUpperCase: true,
            radius: 8,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: DefaultButton(
            onPressed: () {
              navigateAndFinish(context, Container());
            },
            text: AppStrings.createAccount,
            isUpperCase: true,
            radius: 8,
            buttonColor: ColorManager.white,
            textColor: ColorManager.black,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}
