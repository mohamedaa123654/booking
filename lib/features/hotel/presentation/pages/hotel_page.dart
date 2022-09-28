import 'package:booking/core/color_manager.dart';
import 'package:booking/core/componant.dart';
import 'package:booking/features/hotel/presentation/widgets/hotel_page_body.dart';
import 'package:booking/features/hotel/presentation/widgets/hotel_page_sliver_appbar.dart';
import 'package:booking/features/main/presentation/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => MainCubit(),
        child: BlocConsumer<MainCubit, MainState>(
            listener: (BuildContext context, MainState state) {},
            builder: (BuildContext context, MainState state) {
              MainCubit cubit = MainCubit.get(context);
              return Scaffold(
                  body: DefaultTabController(
                length: 2,
                child: NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return [
                      HotelPageSliverAppBar(
                        imageURL:
                            'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768s',
                        distance: '70 km to city',
                        hotelName: 'Queen Hotel',
                        location: 'Wembley, London',
                        price: '60',
                        rate: 4.5,
                        reviews: '90',
                        bookingNowButtonFun: () {},
                        moreDetailsButtonFun: () {},
                        addToFavoriteBottonFun: () {},
                      ),
                    ];
                  },
                  body: HotelPageBody(
                      cubit: cubit,
                      distance: '70 km to city',
                      hotelName: 'Queen Hotel',
                      location: 'Wembley, London',
                      price: '60',
                      rate: 4.5,
                      summry:
                          'Featuring a fitness center, Grand Royale Park Hote is located in Sweden, 4.7 km fromeNational Museum a fitness center, GrandRoyale Park Hote is located in Sweden, 4.7km frome National Museum a fitness center,Grand Royale Park Hote is located in‘Sweden, 4.7 km frome National Museumless.'),
                ),
              ));
            }));
  }
}
