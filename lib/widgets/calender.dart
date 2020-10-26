import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:date_util/date_util.dart';

import 'dots_decorator.dart';

typedef void OnTap(double position);

class Calender extends StatelessWidget {
  int daysCount;
  int offset;
  double position;
  OnTap onTap;
  bool reversed;

  Axis axis;
  MainAxisSize mainAxisSize;
  MainAxisAlignment mainAxisAlignment;

  DotsDecorator decorator;

  Calender(int month, int year) {
    decorator = const DotsDecorator();

    DateUtil dateUtility = DateUtil();
    daysCount = dateUtility.daysInMonth(month, year);

    offset = DateTime.utc(year, month, 1).weekday - 1;

    position = (DateTime.now().day + offset - 1).toDouble();
  }

  Widget _buildDot(int index) {
    final state = min(1.0, (position - index).abs());

    var color;
    if (index < offset) {
      color = decorator.noColor;
    } else {
      color = Color.lerp(decorator.activeColor, decorator.color, state);
    }

    final size = Size.lerp(decorator.activeSize, decorator.size, state);
    final shape = ShapeBorder.lerp(
      decorator.activeShape,
      decorator.shape,
      state,
    );

    final dot = Container(
      width: size.width,
      height: size.height,
      margin: decorator.spacing,
      decoration: ShapeDecoration(
        color: color,
        shape: shape,
      ),
    );
    return onTap == null
        ? dot
        : InkWell(
            customBorder: const CircleBorder(),
            onTap: () => onTap(index.toDouble()),
            child: dot,
          );
  }

  @override
  Widget build(BuildContext context) {
    final dotsList = List<Widget>.generate(daysCount + offset, _buildDot);
    final dots = reversed == true ? dotsList.reversed.toList() : dotsList;

    List<Row> rows = [];
    int rowsCount = ((daysCount + offset) / 7).ceil();

    for (int i = 0; i < rowsCount; i++) {
      int startDay = 7 * i;
      int endDay = min(daysCount + offset - 1, startDay + 7);
      rows.add(Row(children: dots.sublist(startDay, endDay)));
    }

    return Column(children: rows);

    // return axis == Axis.vertical
    //     ? Column(
    //         mainAxisAlignment: mainAxisAlignment,
    //         mainAxisSize: mainAxisSize,
    //         children: dots,
    //       )
    //     : Row(
    //         mainAxisAlignment: mainAxisAlignment,
    //         mainAxisSize: mainAxisSize,
    //         children: dots,
    //       );
  }
}
