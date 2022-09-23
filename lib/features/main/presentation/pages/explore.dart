import 'package:booking/core/color_manager.dart';
import 'package:booking/core/componant.dart';
import 'package:booking/features/main/presentation/cubit/main_cubit.dart';
import 'package:booking/features/main/presentation/widgets/banner.dart';
import 'package:booking/features/main/presentation/widgets/best_deals.dart';
import 'package:booking/features/main/presentation/widgets/popular_cities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
        listener: (BuildContext context, MainState state) {},
        builder: (BuildContext context, MainState state) {
          MainCubit cubit = MainCubit.get(context);
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
            ),
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    HomeBanner(cubit: cubit),
                    PopularCities(cubit: cubit),
                    BestDeals(cubit: cubit)
                  ],
                ),
              ),
            ),
          );
        });
  }
}
