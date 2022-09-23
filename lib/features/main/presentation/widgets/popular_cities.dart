import 'package:booking/core/componant.dart';
import 'package:booking/features/main/presentation/cubit/main_cubit.dart';
import 'package:flutter/material.dart';

class PopularCities extends StatelessWidget {
  const PopularCities({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  final MainCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(0, -165.0, 0),
      child: Column(
        children: [
          ExplorPageTitle(
            title: 'Popular Destination',
          ),
          Container(
            height: 166,
            padding: EdgeInsets.only(top: 16),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cubit.cities.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      const SizedBox(
                        width: 32,
                      ),
                      PopularCitiesCard(
                          imageURL: cubit.cities[index].image,
                          cityName: cubit.cities[index].title),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
