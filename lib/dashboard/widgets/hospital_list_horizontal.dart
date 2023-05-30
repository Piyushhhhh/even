import 'package:even/dashboard/widgets/hospital_list_item_horizontal.dart';
import 'package:even/data/data.dart';
import 'package:flutter/material.dart';

class HostpitalListHorizontal extends StatelessWidget {
  const HostpitalListHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return HostpitalListItem(
            hospitalName: hospitalsNearBy[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 16,
          );
        },
        itemCount: hospitalsNearBy.length);
  }
}
