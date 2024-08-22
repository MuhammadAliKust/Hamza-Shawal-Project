import 'package:demo_project/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  PageController controller = PageController();

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
        image: 'assets/images/copy.png',
        title: 'First Page',
        description: 'First Description'),
    OnBoardingModel(
        image: 'assets/images/header.png',
        title: 'Second Page',
        description: 'Second Description'),
    OnBoardingModel(
        image: 'assets/images/thumb.png',
        title: 'Third Page',
        description: 'Third Description'),
    OnBoardingModel(
        image: 'assets/images/user.png',
        title: 'Fourth Page',
        description: 'Fourth Description'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View Builder"),
      ),
      body: Column(
        children: [
          Expanded(

            child: PageView.builder(
                controller: controller,
                itemCount: onBoardingList.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Image.asset(onBoardingList[i].image.toString()),
                      Text(onBoardingList[i].title.toString()),
                      Text(onBoardingList[i].description.toString())
                    ],
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: onBoardingList.length,
              effect: ExpandingDotsEffect(
                dotWidth: 20,
                dotHeight: 20,
                radius: 30,
                dotColor: Colors.black,
                activeDotColor:Colors.yellow
              ), // your preferred effect
              onDotClicked: (index) {}),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}
