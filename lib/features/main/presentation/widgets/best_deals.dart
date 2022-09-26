import 'package:booking/core/color_manager.dart';
import 'package:booking/core/componant.dart';
import 'package:booking/features/main/presentation/cubit/main_cubit.dart';
import 'package:flutter/material.dart';

class BestDeals extends StatelessWidget {
  const BestDeals({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  final MainCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(0, -170.0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExplorPageTitle(
                title: 'Best Deals',
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32.0),
                child: Row(
                  children: [
                    ExplorPageTitle(
                      title: 'View all',
                      textColor: ColorManager.primary,
                    ),
                    Icon(
                      Icons.arrow_right_alt_outlined,
                      color: ColorManager.primary,
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 700,
            transform: Matrix4.translationValues(0, -20.0, 0),
            width: double.infinity,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: cubit.cities.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      HotelCard(
                        imageURL:
                            'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768s',
                        distance: '70 km to city',
                        hotelName: 'Queen Hotel',
                        location: 'Wembley, London',
                        price: '60',
                        rate: 4.5,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
