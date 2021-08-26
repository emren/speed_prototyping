import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainRow extends StatelessWidget {
  const MainRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20),
            child: FaIcon(
              FontAwesomeIcons.home,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: FaIcon(
              FontAwesomeIcons.plus,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
