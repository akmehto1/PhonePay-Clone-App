import 'package:flutter/material.dart';

class Ads extends StatefulWidget {
  const Ads({super.key});

  @override
  State<Ads> createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  List<String>images=["assets/images/ad1.jpeg","assets/images/ad1.jpeg","assets/images/ad1.jpeg","assets/images/ad3.jpeg"];
  late PageController _pageController;
  int activePage = 1;

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(viewportFraction: 0.8);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Stack(
        children: [
          Container(
              height:250,
          margin:EdgeInsets.symmetric(vertical:10.0),
          child:PageView.builder(
              itemCount:images.length,
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (context, pagePosition) {
                return makeItem();
              })
      ),

          Positioned(
              bottom:10,
              left:170,
              child: Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:indicators(images.length,activePage)
          )
          )



        ],
      ),
    );
  }



  List<Widget> indicators(imagesLength,currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.white : Colors.white24,
            shape: BoxShape.circle),
      );
    });
  }


  Widget makeItem() {
  return AspectRatio(aspectRatio:1/.88,
  child:Container(
    width:1000,
    margin:EdgeInsets.only(left:10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      image: const DecorationImage(
        fit:BoxFit.cover,
        image: AssetImage('assets/images/ad1.jpeg'),
      ),
    ),
  ),
  );
}



}




// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/cupertino.dart';
//
// class Ads extends StatelessWidget {
//   const Ads({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     List<String>Images=["assets/images/ad1.jpeg","assets/images/ad2.jpeg","assets/images/ad2.jpeg","assets/images/ad2.jpeg"];
//     return Container(
//       height:200,
//       child: ListView(
//         scrollDirection:Axis.horizontal,
//         children: [
//           CarouselSlider(
//             items: [
//               makeItem()
//             ],options:CarouselOptions(
//             enlargeCenterPage: true,
//             autoPlay: true,
//             aspectRatio: 30 / 15,
//             autoPlayCurve: Curves.fastOutSlowIn,
//             enableInfiniteScroll: true,
//             autoPlayAnimationDuration: Duration(milliseconds: 800),
//             viewportFraction: 0.9,
//           ),
//           ),
//
//
//         ],
//       ),
//     );
//   }
//
//
// }
// Widget makeItem() {
//   return Container(
//     margin: const EdgeInsets.all(0),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(45),
//       image: DecorationImage(
//         image: AssetImage('assets/images/ad1.jpeg'),
//         fit:BoxFit.cover,
//       ),
//     ),
//   );
// }
