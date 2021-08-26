import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:speed_prototyping/core/providers/navigation_provider.dart';


class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var navigationProvider = Provider.of<NavigationProvider>(context);
    return Column(
      children: [
        // MainRow( page: navigationProvider.currentIndex,),
        // MenuList(),
      ],
    );
  }
}