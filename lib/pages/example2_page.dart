import 'package:codigo_ui/widget/item_recommendation2_widget.dart';
import 'package:codigo_ui/widget/item_recommendation_widget.dart';
import 'package:flutter/material.dart';

import '../widget/item_category_widget.dart';

class Example2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FBFC),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 15,
                                    color: const Color(0x0f349dfd)
                                        .withOpacity(0.4),
                                  ),
                                  const SizedBox(
                                    height: 3.0,
                                  ),
                                  Text(
                                    "Location",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: const Color(0xff2B333F)
                                          .withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "Purbalingga, Jawa Tengah",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff2B333F),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Stack(
                            children: [
                              const Icon(
                                Icons.notifications,
                                color: Color(0xffC6C6C6),
                                size: 24,
                              ),
                              Positioned(
                                top: 3,
                                right: 3,
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1.7,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          blurRadius: 12,
                          offset: const Offset(4, 4),
                        ),
                      ]),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Search",
                          suffixIcon: const Icon(
                            Icons.search,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 16,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const Text(
                      "Category",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ItemCategoryWidget(
                            icons: "home",
                            text: "House",
                            isSelect: false,
                          ),
                          ItemCategoryWidget(
                            icons: "house",
                            text: "Hotel",
                            isSelect: false,
                          ),
                          ItemCategoryWidget(
                            icons: "city",
                            text: "Apartment",
                            isSelect: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const Text(
                      "Recommendation",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          ItemRecommedationWidget(),
                          ItemRecommedationWidget(),
                          ItemRecommedationWidget(),
                        ],
                      ),
                    ),
                    const Text(
                      "Recommendation",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    ItemRecommendation2Widget(),
                    ItemRecommendation2Widget(),
                    ItemRecommendation2Widget(),
                    ItemRecommendation2Widget(),
                    ItemRecommendation2Widget(),
                    ItemRecommendation2Widget(),
                    ItemRecommendation2Widget(),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/1390403/pexels-photo-1390403.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.06),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "Descubre miles de oportunidades de empleo en el buscador Google",
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text("Information"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 300.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 60.0,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.home,
                  ),
                  Icon(
                    Icons.home,
                  ),
                  Icon(
                    Icons.home,
                  ),
                  Icon(
                    Icons.home,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
