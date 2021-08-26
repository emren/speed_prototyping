import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainRow extends StatelessWidget {
  const MainRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
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

List<CircleAvatar> menuList = [
  CircleAvatar(
    backgroundColor: Colors.blueAccent,
    radius: 60,
    child: FaIcon(
      FontAwesomeIcons.solidHeart,
      color: Colors.white,
      size: 50,
    ),
  ),
  CircleAvatar(
    backgroundColor: Colors.blueAccent,
    radius: 60,
    child: FaIcon(
      FontAwesomeIcons.solidHeart,
      color: Colors.white,
      size: 50,
    ),
  ),
  CircleAvatar(
    backgroundColor: Colors.blueAccent,
    radius: 60,
    child: FaIcon(
      FontAwesomeIcons.solidHeart,
      color: Colors.white,
      size: 50,
    ),
  ),
  CircleAvatar(
    backgroundColor: Colors.blueAccent,
    radius: 60,
    child: FaIcon(
      FontAwesomeIcons.solidHeart,
      color: Colors.white,
      size: 50,
    ),
  ),
  CircleAvatar(
    backgroundColor: Colors.blueAccent,
    radius: 60,
    child: FaIcon(
      FontAwesomeIcons.solidHeart,
      color: Colors.white,
      size: 50,
    ),
  ),
  CircleAvatar(
    backgroundColor: Colors.blueAccent,
    radius: 60,
    child: FaIcon(
      FontAwesomeIcons.solidHeart,
      color: Colors.white,
      size: 50,
    ),
  ),
];

class MenuList extends StatelessWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: menuList.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(30),
              child: menuList[index],
            );
          }),
    );
  }
}

List<FavoriteScenesCard> favoriteScenes = [
  FavoriteScenesCard(
    icon: FaIcon(
      FontAwesomeIcons.cat,
      color: Colors.black,
      size: 50,
    ),
    text: 'cat',
  ),
  FavoriteScenesCard(
    icon: FaIcon(
      FontAwesomeIcons.cat,
      color: Colors.black,
      size: 50,
    ),
    text: 'cat',
  ),
  FavoriteScenesCard(
    icon: FaIcon(
      FontAwesomeIcons.cat,
      color: Colors.black,
      size: 50,
    ),
    text: 'cat',
  ),
  FavoriteScenesCard(
    icon: FaIcon(
      FontAwesomeIcons.cat,
      color: Colors.black,
      size: 50,
    ),
    text: 'cat',
  ),
  FavoriteScenesCard(
    icon: FaIcon(
      FontAwesomeIcons.cat,
      color: Colors.black,
      size: 50,
    ),
    text: 'cat',
  ),
  FavoriteScenesCard(
    icon: FaIcon(
      FontAwesomeIcons.cat,
      color: Colors.black,
      size: 50,
    ),
    text: 'cat',
  ),
  FavoriteScenesCard(
    icon: FaIcon(
      FontAwesomeIcons.cat,
      color: Colors.black,
      size: 50,
    ),
    text: 'cat',
  ),
  FavoriteScenesCard(
    icon: FaIcon(
      FontAwesomeIcons.cat,
      color: Colors.black,
      size: 50,
    ),
    text: 'cat',
  ),
  FavoriteScenesCard(
    icon: FaIcon(
      FontAwesomeIcons.cat,
      color: Colors.black,
      size: 50,
    ),
    text: 'cat',
  ),
  FavoriteScenesCard(
    icon: FaIcon(
      FontAwesomeIcons.cat,
      color: Colors.black,
      size: 50,
    ),
    text: 'cat',
  ),
];

class FavoriteScenesCard extends StatelessWidget {
  final String text;
  final FaIcon icon;
  const FavoriteScenesCard({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Container(height: 50, width: 50, child: icon),
          Text(text),
        ],
      ),
    );
  }
}

class FavoriteScenesComponent extends StatelessWidget {
  const FavoriteScenesComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: GridView.builder(
        itemCount: favoriteScenes.length,
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          //childAspectRatio: (2 / 1),
          crossAxisSpacing: 20,

        ),
        itemBuilder: (
          context,
          index,
        ) {
          return favoriteScenes[index];
        },
      ),
    );
  }
}
