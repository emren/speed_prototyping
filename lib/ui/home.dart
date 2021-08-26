import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:speed_prototyping/core/providers/navigation_provider.dart';
import 'package:speed_prototyping/ui/pages/initial_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _children = [
    InitialPage(),
    InitialPage(),
    InitialPage(),
  ];

  @override
  Widget build(BuildContext context) {
    var navigationProvider = Provider.of<NavigationProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                const Color(0xFF3366FF),
                const Color(0xFF00CCFF),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: SafeArea(
          child: _children[navigationProvider.currentIndex],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavigationBar(
          backgroundColor: Colors.white10,
          onTap: (index) => navigationProvider.currentIndex = index,
          currentIndex: navigationProvider.currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: navigationProvider.currentIndex == 0
                    ? FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: Colors.red,
                      )
                    : FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: Colors.black,
                      ),
                onPressed: () {
                  navigationProvider.currentIndex = 0;
                },
              ),
              title:
                  Text('Aşk', style: GoogleFonts.raleway(color: Colors.black)),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: navigationProvider.currentIndex == 1
                    ? FaIcon(
                        FontAwesomeIcons.cat,
                        color: Colors.red,
                      )
                    : FaIcon(
                        FontAwesomeIcons.cat,
                        color: Colors.black,
                      ),
                onPressed: () {
                  navigationProvider.currentIndex = 1;
                },
              ),
              title: Text('Sahiplendirme',
                  style: GoogleFonts.raleway(color: Colors.black)),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: navigationProvider.currentIndex == 2
                    ? FaIcon(
                        FontAwesomeIcons.dog,
                        color: Colors.red,
                      )
                    : FaIcon(
                        FontAwesomeIcons.dog,
                        color: Colors.black,
                      ),
                onPressed: () {
                  navigationProvider.currentIndex = 2;
                },
              ),
              title: Text('Ücretli',
                  style: GoogleFonts.raleway(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
