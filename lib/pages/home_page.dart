import 'package:flutter/material.dart';
import 'package:newquist_dev/sections/about_section.dart';
import 'package:newquist_dev/sections/bottom_tablet.dart';
import 'package:newquist_dev/sections/product_section.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({this.section, Key? key}) : super(key: key);
  final String? section;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ItemScrollController _itemScrollController;
  @override
  void initState() {
    _itemScrollController = ItemScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      var index = 0;
      switch (widget.section) {
        case 'about':
          index = 1;
          break;
        case 'applications':
          index = 2;
          break;
      }
      _itemScrollController.scrollTo(
          index: index, duration: const Duration(milliseconds: 200));
    });
    return ScrollablePositionedList.builder(
      physics: const ClampingScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return const SizedBox(
            );
          case 1:
            return const AboutSection();
          case 2:
            return const ProductSection();
          case 3:
            return const BottomTableSection();
          default:
            return const SizedBox();
        }
      },
      itemScrollController: _itemScrollController,
    );
  }
}
