import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  final double screenWidth;

  const NavBar({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    double paddingHorizontal = screenWidth > 1200
        ? screenWidth * 0.033
        : screenWidth > 800
            ? screenWidth * 0.025
            : screenWidth * 0.0125;

    double fontSize =
        screenWidth > 800 ? screenWidth * .018 : screenWidth * 0.04;

    bool showNavItems = screenWidth > 800;
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(
              vertical: screenWidth * .015,
              horizontal: paddingHorizontal,
            ),
            //row1
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "<HARIOM/>",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth > 800
                          ? screenWidth * .025
                          : screenWidth * .05),
                ),
                //row2
                if (showNavItems)
                  Row(
                    children: [
                      _navItem("About me", fontSize),
                      _navItem("Skills", fontSize),
                      _navItem("Projects", fontSize),
                      _navItem("Contact me", fontSize),
                    ],
                  ),
              ],
            )),
        Divider(
          height: 1,
          color: Colors.black,
          thickness: 5,
        )
      ],
    );
  }

  Widget _navItem(String text, double fontSize) {
    return InkWell(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            text,
            style: GoogleFonts.poppins(
                fontSize: fontSize, fontWeight: FontWeight.bold),
          )),
    );
  }
}
