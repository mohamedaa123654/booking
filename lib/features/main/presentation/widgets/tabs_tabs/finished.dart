import 'package:booking/core/color_manager.dart';
import 'package:booking/core/componant.dart';
import 'package:booking/features/main/presentation/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Finished extends StatelessWidget {
  const Finished({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
        listener: (BuildContext context, MainState state) {},
        builder: (BuildContext context, MainState state) {
          MainCubit cubit = MainCubit.get(context);
          return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 7,
              itemBuilder: (context, index) {
                return index % 2 == 0
                    ? Column(
                        children: [
                          FinishedCardLeft(
                            imageURL:
                                'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768s',
                            distance: '70 km to city',
                            hotelName: 'Queen Hotel',
                            location: 'Wembley, London',
                            price: '60',
                            rate: 4.5,
                            date: '01 sep - 05 Sep, 1 Room 2 People',
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          FinishedCardRight(
                            imageURL:
                                'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768s',
                            distance: '70 km to city',
                            hotelName: 'Queen Hotel',
                            location: 'Wembley, London',
                            price: '60',
                            rate: 4.5,
                            date: '01 sep - 05 Sep, 1 Room 2 People',
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      );
              });
        });
  }
}
