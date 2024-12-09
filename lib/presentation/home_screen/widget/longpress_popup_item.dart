import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

Future<Object?> longPressMenuItem(BuildContext context) {
  return showPopover(
    context: context,
    bodyBuilder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 50,
            width: 200,
            color: Colors.white,
            child: const Center(child: Text("Delete")),
          ),
          const SizedBox(
            width: 200,
            child: Divider(),
          ),
          Container(
            height: 50,
            width: 200,
            color: Colors.white,
            child: const Center(child: Text("Edit")),
          )
        ],
      );
    },
  );
}
