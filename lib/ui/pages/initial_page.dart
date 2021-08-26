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
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        MenuList(),
        FavoriteScenesComponent(),
      ],
    );
  }
}
