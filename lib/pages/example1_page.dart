import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Example1Page extends StatelessWidget {
  const Example1Page({super.key});

  @override
  Widget build(BuildContext context) {
    // se utilizar para darle una altura y ancho según el tamaño de nuestro dispositivo
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);

    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff0A4B4F),
                  Color(0xff05172A),
                ],
              ),
            ),

            //height: MediaQuery.of(context).size.height * 0.30,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Parkirin",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "24°c",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Image.asset(
                            'assets/images/nube1.png',
                            height: 32.0,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: width * 0.6,
                    ),
                    child: Text(
                      "Let's  find a place for you",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 34.0,
                        fontWeight: FontWeight.w600,
                        height: 1.15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Find parking place",
                            hintStyle: GoogleFonts.poppins(
                              color: const Color(
                                0xff90969B,
                              ),
                              fontSize: 14,
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 26,
                              color: Color(
                                0xff90969B,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: const Color(0xffFDC304),
                            borderRadius: BorderRadius.circular(12.0)),
                        child: const Icon(
                          Icons.filter_alt_rounded,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Parking near your",
                      style: GoogleFonts.poppins(
                        fontSize: 19.0,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff00162D),
                      ),
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.baseline,
                      // textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "View More",
                          style: GoogleFonts.poppins(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.amber,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.amber,
                          size: 16.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
