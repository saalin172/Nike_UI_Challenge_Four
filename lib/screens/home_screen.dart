import 'package:flutter/material.dart';
import 'package:nike_ui/modal.dart';

import '../componets/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, this.shos}) : super(key: key);

  final CardShoes? shos;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List items = [
    ['All', true],
    ['Jordan', false],
    ['Running', false],
    ['Golf', false],
    ['Casual', false],
    ['Football', false],
    ['Tines', false],
  ];

  void IsSeleted(int index) {
    setState(() {
      for (int i = 0; i < items.length; i++) {
        items[i][1] = false;
      }
      items[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: BottomNavigationBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image(
          image: AssetImage("images/m1.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/user.jpg"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nike Collection",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Every thing you need at just one place",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                //fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 15),
            SearchBar(),
            const SizedBox(height: 15),
            Container(
              height: 40,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (_, index) {
                    return ShoesType(
                      text: items[index][0],
                      isSelected: items[index][1],
                      onTap: () {
                        IsSeleted(index);
                      },
                    );
                  }),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Container(
                height: 180,
                child: ListView.builder(
                    itemCount: cardList.length,
                    itemBuilder: (_, index) {
                      return ShoesCard(
                        sho: cardList[index],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
