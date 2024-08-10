import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_designs/core/item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> recent = list.sublist(list.length - 4);
  List<int> others = list.sublist(0, list.length - 4);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 1, 4, 43),
        body: SafeArea(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 300,
                      alignment: Alignment.center,
                      child: const Text(
                        'Design Collection',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      child: CarouselSlider(
                          items: recent.reversed
                              .map((item) => CustomContainer(index: item))
                              .toList(),
                          options: CarouselOptions(
                              height: 500,
                              autoPlayInterval: const Duration(seconds: 3),
                              enableInfiniteScroll: true,
                              autoPlay: true,
                              viewportFraction: 0.60,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.2,
                              autoPlayCurve: Curves.fastOutSlowIn)),
                    )
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 250 / 500,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: others.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CustomContainer(index: index + 1),
                ),
              )
            ],
          ),
        )));
  }
}
