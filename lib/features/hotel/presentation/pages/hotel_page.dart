import 'package:booking/core/color_manager.dart';
import 'package:booking/core/componant.dart';
import 'package:booking/features/main/presentation/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  body: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    width: double.infinity,
                    height: 145,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16)),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768s'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(children: [
                        Positioned(
                          top: 32,
                          right: 2,
                          child: CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.grey[900],
                              child: const Icon(
                                Icons.favorite_border,
                                color: ColorManager.primary,
                              )),
                        ),
                        Positioned(
                          top: 32,
                          left: 2,
                          child: CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.white38,
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.grey[900],
                              )),
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Queen Hotel',
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '\$150',
                                  textAlign: TextAlign.end,
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(width: 32),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: RichText(
                                    overflow: TextOverflow.ellipsis,
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Wembley, London',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.location_pin,
                                            size: 16,
                                            color: ColorManager.primary,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '70 km to city',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  flex: 2,
                                  child: Text(
                                    '/per night',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: ColorManager.grey,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Summry ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Text(
                          'Featuring a fitness center, Grand Royale Park Hote is located in Sweden, 4.7 km fromeNational Museum a fitness center, GrandRoyale Park Hote is located in Sweden, 4.7km frome National Museum a fitness center,Grand Royale Park Hote is located in‘Sweden, 4.7 km frome National Museumless.',
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 7,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 145,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),

                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      child: Text(
                                        '8.8',
                                        style: const TextStyle(
                                            color: ColorManager.primary,
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Text(
                                      'Overall rating',
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                        width: 70, child: Text('Room')),
                                    Container(
                                      width: 230,
                                      height: 4,
                                      decoration: BoxDecoration(
                                        color: ColorManager.primary,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                        width: 70, child: Text('Services')),
                                    Container(
                                      width: 200,
                                      height: 4,
                                      decoration: BoxDecoration(
                                        color: ColorManager.primary,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                        width: 70, child: Text('Location')),
                                    Container(
                                      width: 180,
                                      height: 4,
                                      decoration: BoxDecoration(
                                        color: ColorManager.primary,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                        width: 70, child: Text('Price')),
                                    Container(
                                      width: 210,
                                      height: 4,
                                      decoration: BoxDecoration(
                                        color: ColorManager.primary,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Photo',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 2,
                              ),
                            ),
                            Row(
                              children: [
                                ViewAllText(
                                  title: 'View all',
                                  textColor: ColorManager.primary,
                                ),
                                Icon(
                                  Icons.arrow_right_alt_outlined,
                                  color: ColorManager.primary,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 14),
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cubit.rooms.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(16)),
                                child: Image.network(
                                  cubit.rooms[index],
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Reviews',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 2,
                              ),
                            ),
                            Row(
                              children: [
                                ViewAllText(
                                  title: 'View all',
                                  textColor: ColorManager.primary,
                                ),
                                Icon(
                                  Icons.arrow_right_alt_outlined,
                                  color: ColorManager.primary,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(16)),
                                  child: Image.network(
                                    'https://pub-static.fotor.com/assets/projects/pages/4110e8dbb24443989bd63f44e574fffd/fotor-38227ef773464b5a85ec848dba36aac4.jpg',
                                    fit: BoxFit.cover,
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ahmed Ali',
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Last Update 21 May, 2022',
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      '(8.0)',
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'This is located in a geat spot close to shops',
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(16)),
                                  child: Image.network(
                                    'https://pub-static.fotor.com/assets/projects/pages/4110e8dbb24443989bd63f44e574fffd/fotor-38227ef773464b5a85ec848dba36aac4.jpg',
                                    fit: BoxFit.cover,
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ahmed Ali',
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Last Update 21 May, 2022',
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      '(8.0)',
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'This is located in a geat spot close to shops',
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ]),
              ));
            }));
  }
}
