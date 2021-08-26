import 'package:flutter/material.dart';



import 'initial_page_components.dart';


class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        MainRow(),
        // MenuList(),
      ],
    );
  }
}