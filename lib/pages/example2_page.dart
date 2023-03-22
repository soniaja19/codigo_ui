import 'package:flutter/material.dart';

import '../widget/item_category_widget.dart';

class Example2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffF9FBFC),
      body: SafeArea(
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
                              color: const Color(0x0f349dfd).withOpacity(0.4),
                            ),
                            const SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xff2B333F).withOpacity(0.5),
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
                "Recomendation",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                color: Colors.amber,
                constraints: BoxConstraints(
                  maxWidth: width * 0.5,
                ),
                child: Column(
                  children: [
                    //Imagen Principal
                    Container(
                      width: width * 0.5,
                      height: height * 0.20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                          ),
                        ),
                      ),
                    ),

                    //Titulo y Puntación
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Minimalist House"),
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                            ),
                            Text(
                              "4.5",
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
