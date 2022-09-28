import 'package:booking/core/color_manager.dart';
import 'package:booking/core/componant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HotelPageSliverAppBar extends StatelessWidget {
  String imageURL;
  String hotelName;
  String location;
  String distance;
  String price;
  String reviews;
  double rate;
  Color? backgrowndColor;
  void Function()? bookingNowButtonFun;
  void Function()? moreDetailsButtonFun;
  void Function()? addToFavoriteBottonFun;

  HotelPageSliverAppBar(
      {required this.imageURL,
      required this.hotelName,
      required this.location,
      required this.distance,
      required this.price,
      required this.rate,
      required this.reviews,
      this.bookingNowButtonFun,
      this.moreDetailsButtonFun,
      this.addToFavoriteBottonFun,
      this.backgrowndColor = Colors.white70});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height,
      floating: true,
      pinned: true,
      snap: true,
      toolbarHeight: 145,
      actionsIconTheme: IconThemeData(opacity: 0.0),
      flexibleSpace: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Image.network(
              imageURL,
              fit: BoxFit.cover,
            ),
          ),
          FlexibleSpaceBar(
              background: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.67,
                bottom: MediaQuery.of(context).size.height * 0.1,
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),

                        spreadRadius: 3,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hotelName,
                              style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: ColorManager.white),
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
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: location,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: ColorManager.white,
                                      ),
                                    ),
                                    const WidgetSpan(
                                      child: Icon(
                                        Icons.location_pin,
                                        size: 16,
                                        color: ColorManager.primary,
                                      ),
                                    ),
                                    TextSpan(
                                      text: distance,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: ColorManager.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              '\$$price',
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                fontSize: 24,
                                color: ColorManager.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            RatingBarIndicator(
                              direction: Axis.horizontal,
                              rating: rate,
                              itemSize: 18,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.only(right: 2.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: ColorManager.primary,
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                '$reviews reviews',
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: ColorManager.white,
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                '/per night',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: ColorManager.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DefaultButton(
                          onPressed: bookingNowButtonFun,
                          text: 'Booking Now',
                          radius: 30,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.27),
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),

                          spreadRadius: 3,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: GestureDetector(
                      onTap: moreDetailsButtonFun,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'More Details ',
                              style: TextStyle(
                                fontSize: 16,
                                color: ColorManager.white,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: ColorManager.white,
                            )
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 70, left: 8),
          child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.black.withOpacity(0.5),
              child: const Icon(
                Icons.arrow_back,
                color: ColorManager.white,
              )),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: addToFavoriteBottonFun,
          child: Padding(
            padding: EdgeInsets.only(bottom: 70, right: 8),
            child: CircleAvatar(
                radius: 24,
                backgroundColor: ColorManager.white,
                child: Icon(
                  Icons.favorite_border,
                  color: ColorManager.primary,
                )),
          ),
        ),
      ],
    );
  }
}
