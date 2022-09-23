import 'package:flutter/material.dart';

import '../componets/components.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final List items = [
    ['36', true],
    ['37', false],
    ['40', false],
    ['35', false],
    ['39', false],
    ['38', false],
    ['37', false],
  ];

  void selectedSize(int index) {
    setState(() {
      for (int i = 0; i < items.length; i++) {
        items[i][1] = false;
      }
      items[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xff85C1E9).withOpacity(0.5),
                  // image: DecorationImage(
                  //   image: AssetImage("images/golf.png"),
                  // ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_back_outlined,
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.favorite,
                              size: 20,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: Image(
                        image: AssetImage("images/golf.png"),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Nike Air Running",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                "Best of all in one place. Find your prefect Product only here.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  // fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '4.9',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "(Avg , Rating)",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "\$139",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                "Select Size",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              // Kabaha Numberkoda
              Container(
                height: 55,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (_, index) {
                    return SizeShoes(
                      text: items[index][0],
                      isSelect: items[index][1],
                      onTap: () {
                        selectedSize(index);
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Amet minim moll-it non deserunt ullamaco est sit"
                "aliqua dolar do amet sint. Velit officia "
                "consequast dius enim velit mollit. Exercitation "
                "veniam consequat sunt nastrud amet.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  // fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Reviews",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 40,
          //width: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/salim.jpg"),
                      ),
                      shape: BoxShape.circle,
                      color: Colors.yellow,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/user.jpg"),
                        ),
                        shape: BoxShape.circle,
                        color: Colors.red,
                        border: Border.all(color: Colors.white, width: 2.5)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/user2.jpg"),
                        ),
                        shape: BoxShape.circle,
                        color: Colors.blue,
                        border: Border.all(color: Colors.white, width: 2.5)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 95),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/salim.jpg"),
                        ),
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        border: Border.all(color: Colors.white, width: 2.5)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 120),
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      border: Border.all(color: Colors.white, width: 2.5),
                    ),
                    child: Center(
                      child: Text(
                        "+73",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //SizedBox(width: 30),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xff85C1E9).withOpacity(0.6),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 14),
                    Icon(Icons.shopping_basket_rounded),
                    SizedBox(width: 16),
                    Text(
                      "Add",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
