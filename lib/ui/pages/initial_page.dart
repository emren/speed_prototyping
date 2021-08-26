import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'initial_page_components.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainRow(),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'My Home',
            style: GoogleFonts.raleway(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        MenuList(),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Favorite Scenes',
            style: GoogleFonts.raleway(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        FavoriteScenesComponent(),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Favorite Accessories',
            style: GoogleFonts.raleway(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        FavoriteAccessoriesComponent(),
      ],
    );
  }
}
