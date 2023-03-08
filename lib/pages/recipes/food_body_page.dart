import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:foodiez/widgets/text/small_text.dart';
import 'package:foodiez/widgets/text/text.dart';

class MyfoodBodyPage extends StatefulWidget {
  const MyfoodBodyPage({super.key});

  @override
  State<MyfoodBodyPage> createState() => _MyfoodBodyPageState();
}

class _MyfoodBodyPageState extends State<MyfoodBodyPage> {
  PageController pageController = PageController(viewportFraction: 0.8);
  var _currentPageeValue = 0.0;
  double _scaleFactore = 0.8;
  @override
  void initState() {
    // this for the pic when we silde it left or right
    super.initState();

    pageController.addListener(() {
      setState(() {
        _currentPageeValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    // to save memorey
    pageController.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        //----- slider section -----
        Container(
          // color: Colors.yellow,
          height: 320,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),
        // ignore: unnecessary_new
        new DotsIndicator(
          dotsCount: 5,
          position: _currentPageeValue,
          decorator: DotsDecorator(
            activeColor: Colors.yellow,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        // --- trendy recipies----

        SizedBox(
          height: 45,
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText(text: "Trendy recipies"),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 2),
                    child: SmallText(
                      text: "The yummy to your tummy ",
                      size: 10,
                    ),
                  ),
                  //--- list of recipes ---
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                  child: Column(children: [Container(child: Text("hello"))])),
            )
          ],
        )
      ],
    );
  }
}

Widget _buildPageItem(int index) {
  return Stack(
    children:
        // we wrap it with stack becouse we want the container to take
        // the height of the parent container
        // and becouse we want to put two container on top of each other
        [
      Container(
        height: 220,
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
          // Dont forget the image should come from the Backend
          image: DecorationImage(
            fit: BoxFit.cover, // to make the pic fit the container
            image: AssetImage("assets/images/book2.jpg"),
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 120,
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0xFFe8e8e8),
                blurRadius: 5.0,
                offset: Offset(0, 5),
              ),
              BoxShadow(
                color: Color(0xFFe8e8e8),
              )
            ],
          ),
          child: Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // pass categores here
              children: [
                MyText(
                  text: "Chinese",
                  size: 14,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Wrap(
                      // to put children hozorintaly
                      children: List.generate(
                          5,
                          (index) => Icon(
                                Icons.favorite,
                                color: Colors.pink,
                                size: 15,
                              )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(
                      text: "Cheif : Manal Alajmi",
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      )
    ],
  );
}
