import 'package:flutter/material.dart';
import 'package:my_designs/core/routes.dart';

class CustomContainer extends StatefulWidget {
  final int index;
  const CustomContainer({
    super.key,
    required this.index,
  });

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => myroutes.push('/${widget.index}'),
        child: Image.asset(
          'assets/images/${widget.index}.jpg',
          
        ));
  }
}

List<int> list = [1, 2, 3, 4, 5, 6, 7, 8 ,9,10];

