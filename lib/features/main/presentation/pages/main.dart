import 'package:booking/core/color_manager.dart';
import 'package:booking/core/strings_manager.dart';
import 'package:booking/core/values_manager.dart';
import 'package:booking/features/main/presentation/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => MainCubit(),
        child: BlocConsumer<MainCubit, MainState>(
            listener: (BuildContext context, MainState state) {},
            builder: (BuildContext context, MainState state) {
              MainCubit cubit = MainCubit.get(context);
              return Scaffold(
                body: cubit.pages[cubit.currentIndex],
                bottomNavigationBar: BottomNavigationBar(
                    elevation: 0,
                    selectedItemColor: ColorManager.primary,
                    unselectedItemColor: ColorManager.grey,
                    currentIndex: cubit.currentIndex,
                    onTap: cubit.onTap,
                    items: cubit.items),
              );
            }));
  }
}
