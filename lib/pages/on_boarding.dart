import 'package:empathia/pages/create_acc.dart';
import 'package:empathia/pages/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController? _controller;
  int currentIndex = 0;
  double percentage = 0.25;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent, // Make the background transparent
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF0097A7), // Start color
                Color(0xFFADD0E1), // End color
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: contentsList.length,
                  onPageChanged: (int index) {
                    if (index >= currentIndex) {
                      setState(() {
                        currentIndex = index;
                        percentage += 0.25;
                      });
                    } else {
                      setState(() {
                        currentIndex = index;
                        percentage -= 0.25;
                      });
                    }
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: currentIndex == 0 || currentIndex == 3
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                contentsList[index].title,
                                style: const TextStyle(
                                  fontFamily: "Rubik Medium",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 28.0,
                                  letterSpacing: 0.24,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                contentsList[index].description,
                                style: const TextStyle(
                                  fontFamily: "Rubik Regular",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.0,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.5,
                            alignment: Alignment.center,
                            child: Image.asset(contentsList[index].image)),
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: List.generate(
                              contentsList.length,
                              (index) => buildDot(index, context),
                            ),
                          ),
                          // const SizedBox(height: 10),
                          CupertinoButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const CreateAccount(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    const begin = 0.0;
                                    const end = 1.0;
                                    var tween = Tween(begin: begin, end: end);
                                    var opacityAnimation =
                                        tween.animate(animation);
                                    return FadeTransition(
                                      opacity: opacityAnimation,
                                      child: child,
                                    );
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              "Skip",
                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                          )
                        ],
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          if (currentIndex == contentsList.length - 1) {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        const CreateAccount(),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  const begin = 0.0;
                                  const end = 1.0;
                                  var tween = Tween(begin: begin, end: end);
                                  var opacityAnimation =
                                      tween.animate(animation);
                                  return FadeTransition(
                                    opacity: opacityAnimation,
                                    child: child,
                                  );
                                },
                              ),
                            );
                          } else {
                            _controller!.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: 55,
                              width: 55,
                              child: CircularProgressIndicator(
                                value: percentage,
                                backgroundColor: Colors.white38,
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                  Colors.white,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color:
                                    contentsList[currentIndex].backgroundColor,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index, BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      height: 8,
      width: currentIndex == index ? 24 : 8,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.white : Colors.white38,
      ),
    );
  }
}
