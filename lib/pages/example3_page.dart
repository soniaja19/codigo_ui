import 'package:codigo_ui/widget/circle_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExamplePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          //Fondo
          Stack(
            //Fondo Circular
            children: [
              Positioned(
                top: -height * 0.3,
                left: -height * 0.05,
                child: CircleWidget(
                  color: const Color(0xff35969D),
                  radius: height * 0.2,
                ),
              ),
              Positioned(
                top: -height * 0.30,
                right: -height * 0.27,
                child: CircleWidget(
                  color: const Color(0xff8AEC9E),
                  radius: height * 0.30,
                ),
              ),
            ],
          ),

          //Formulario
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "reisup",
                    style: GoogleFonts.montserrat(
                      color: const Color(0xff3EA2A8),
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    "You have goals",
                    style: TextStyle(
                      color: Color(0xff2E303E),
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.9,
                    ),
                  ),
                  const Text(
                    "Invest to archive them",
                    style: TextStyle(
                      color: Color(0xff2E303E),
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.9,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email*",
                      hintStyle: GoogleFonts.montserrat(color: Colors.black38),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color(0xff3EA2A8).withOpacity(0.50),
                          width: 2.5,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color(0xff3EA2A8).withOpacity(0.50),
                          width: 2.5,
                        ),
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password*",
                      hintStyle: GoogleFonts.montserrat(color: Colors.black38),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color(0xff3EA2A8).withOpacity(0.50),
                          width: 2.5,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color(0xff3EA2A8).withOpacity(0.50),
                          width: 2.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff2E303E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                      child: const Text("Log in"),
                    ),
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff2E303E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                      child: const Text(
                        "Sign app",
                      ),
                    ),
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
