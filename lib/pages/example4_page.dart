import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Example4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.amber,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          ),
        ),
        gradient: LinearGradient(
          colors: [Colors.indigo, Colors.pinkAccent],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Burger \nQueen",
                    style: GoogleFonts.fredokaOne(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 30.0,
                      height: 1.0,
                    ),
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Text(
                  "Burger Queen",
                  style: GoogleFonts.fredokaOne(
                    color: Colors.white,
                    fontSize: 36.0,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xffFF8D07).withOpacity(0.5),
                    decorationThickness: 2.5,
                  ),
                ),
                Text(
                  "Tasty Food *",
                  style: GoogleFonts.fredokaOne(
                    color: Colors.white,
                    fontSize: 36.0,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xffFF8D07).withOpacity(0.5),
                    decorationThickness: 2.5,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 54.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFF8D07),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                    child: const Text(
                      "Sign in",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Don´t have an account?  ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 2.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    //return  Scaffold(
    // Primera Opcion
    //body: Container(
    //   width: double.infinity,
    //   decoration: const BoxDecoration(
    //     color: Colors.amber,
    //     image: DecorationImage(
    //       fit: BoxFit.cover,
    //       image: NetworkImage(
    //         "https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    //       ),
    //     ),
    //   ),
    //   child: Column(
    //     children: const [
    //       Text("Burger"),
    //       TextField(),
    //     ],
    //   ),
    // ),

    ///Segunda opción
    // body: Stack(
    //   children: [
    //     Container(
    //       decoration: const BoxDecoration(
    //         image: DecorationImage(
    //           fit: BoxFit.cover,
    //           image: NetworkImage(
    //             "https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    //           ),
    //         ),
    //       ),
    //     ),
    //     Column(
    //       children: const [
    //         Text("Burger"),
    //         TextField(),
    //       ],
    //     )
    //   ],
    // ),
    //);
  }
}
