import 'package:booking/core/color_manager.dart';
import 'package:booking/features/onboarding/presentation/widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/onboarding_cubit.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => OnboardingCubit(),
        child: BlocConsumer<OnboardingCubit, OnboardingState>(
            listener: (BuildContext context, OnboardingState state) {},
            builder: (BuildContext context, OnboardingState state) {
              OnboardingCubit cubit = OnboardingCubit.get(context);
              return Scaffold(
                backgroundColor: ColorManager.white,
                body: onboardingBody(cubit, context),
              );
            }));
  }
}
