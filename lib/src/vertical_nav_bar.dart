import 'dart:math';
import 'package:flutter/material.dart';

class VerticalNavBar extends StatelessWidget {
  final int selectedIndex;
  final double height, width;
  final Color backgroundColor;
  final double borderRadius;
  final List<VerticalNavBarItem> items;
  final ValueChanged<int> onItemSelected;
  const VerticalNavBar({
    Key? key,
    this.height = 100,
    this.width = 200,
    this.borderRadius = 0.0,
    this.backgroundColor = Colors.black,
    required this.selectedIndex,
    required this.items,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: items.map((item) {
          var index = items.indexOf(item);
          return GestureDetector(
            onTap: () {
              onItemSelected(index);
            },
            child: _myItem(
              item: item,
              isSelected: index == selectedIndex,
            ),
          );
        }).toList(),
      ),
    );
  }
}

// ignore: camel_case_types
class _myItem extends StatelessWidget {
  final VerticalNavBarItem item;
  final bool isSelected;

  const _myItem({
    Key? key,
    required this.item,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 2,
      child: Column(
        children: [
          Text(
            item.title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: 3,
            width: 35,
            decoration: BoxDecoration(
              color: isSelected ? Colors.white : Colors.black,
              borderRadius: BorderRadius.circular(15.0),
            ),
          )
        ],
      ),
    );
  }
}

class VerticalNavBarItem {
  final String title;

  const VerticalNavBarItem({
    Key? key,
    required this.title,
  });
}
