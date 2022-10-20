import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/ui/category_list.dart';
import 'package:food_app/ui/colors.dart';
import 'package:food_app/ui/home/home_page_item.dart';
import 'package:food_app/ui/widgets/big_text.dart';
import 'package:food_app/ui/widgets/icon_and_text.dart';
import 'package:food_app/ui/widgets/small_text.dart';

class HomeBodyPage extends StatefulWidget {
  const HomeBodyPage({super.key});

  @override
  State<HomeBodyPage> createState() => _HomeBodyPageState();
}

class _HomeBodyPageState extends State<HomeBodyPage> {
  PageController pageController = PageController(viewportFraction: 0.85);

  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220;

  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomePageItem(),
        SizedBox(
          height: 10,
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              activeColor: AppColors.mainColor),
        ),
        //popular text

        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: CategoryList(),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Món ăn yêu thích',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
            Icon(
              Icons.chevron_right,
              color: AppColors.mainColor,
            )

            // Container(child: SmallText(text: "Thực phẩm sạch")),
          ]),
        ),

        Container(
          height: 1000,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return (Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 20),
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/images/banner/banner3.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 230,
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFe8e8e8),
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(
                            text: "Salad rau củ cá hồi áp chảo ngon",
                            size: 15,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          SmallText(text: 'Gạo lứt, rau củ, cá hồi'),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Wrap(
                                children: List.generate(
                                    5,
                                    (index) => Icon(
                                          Icons.star,
                                          color: AppColors.mainColor,
                                          size: 12,
                                        )),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SmallText(text: "4.5"),
                              SizedBox(
                                width: 10,
                              ),
                              SmallText(text: "127"),
                              SizedBox(
                                width: 10,
                              ),
                              SmallText(text: "Comments")
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              IconAndText(
                                  icon: Icons.access_time_rounded,
                                  size: 15,
                                  text: "27 days",
                                  iconColor: AppColors.iconColor2)
                            ],
                          )
                        ]),
                  )
                ],
              ));
            },
          ),
        )
      ],
    );
  }
}
