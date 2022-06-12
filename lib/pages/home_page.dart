import 'package:flutter/material.dart';
import 'package:newquist_dev/sections/bottom_tablet.dart';
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
        case 'products':
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
            return SizedBox(
              height: 600,
            );
          case 1:
            return SizedBox(
              height: 600,
            );
          case 2:
            return SizedBox(
              height: 600,
            );
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
