import 'package:flutter/material.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/models/not_model.dart';
import 'package:nots_app/widgets/color_list_view.dart';

class EditNotColorsListView extends StatefulWidget {
  const EditNotColorsListView({super.key, required this.note});
  final NotModel note;
  @override
  State<EditNotColorsListView> createState() => _EditNotColorsListViewState();
}

class _EditNotColorsListViewState extends State<EditNotColorsListView> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = Kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Kcolors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = Kcolors[index].value;

                setState(() {});
              },
              child: ColorItem(
                color: Kcolors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
