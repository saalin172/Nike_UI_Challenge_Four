import 'dart:ui';

class CardShoes {
  final String? shoesName;
  final String? desc;
  final String? img;
  final Color? clor;

  CardShoes({
    this.shoesName,
    this.desc,
    this.img,
    this.clor,
  });
}

var cardList = [
  CardShoes(
      shoesName: "Nike Air Running",
      desc:
          "Best of all in one place.\n Find your prefect\n Product only here.",
      img: "images/golf.png",
      clor: Color(0xff85C1E9).withOpacity(0.3)),
  CardShoes(
    shoesName: "Nike Air Running",
    desc: "Best of all in one place.\n Find your prefect\n Product only here.",
    img: "images/gol.png",
    clor: Color(0xffF6E0E3),
  ),
  CardShoes(
    shoesName: "Nike Air Running",
    desc: "Best of all in one place.\n Find your prefect\n Product only here.",
    img: "images/gol.png",
    clor: Color(0xffF0FFCA),
  ),
];
