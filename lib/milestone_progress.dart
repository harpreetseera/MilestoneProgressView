library milestone_progress;

import 'package:flutter/material.dart';

typedef MilestoneProgressBuilder = Widget Function(
    BuildContext context, String text, Color color);

class MilestoneProgress extends StatelessWidget {
  final double width;
  final double maxIconSize;
  final int totalMilestones;
  final int completedMilestone;
  final IconData completedIconData;
  final IconData nonCompletedIconData;
  final Color completedIconColor;
  final Color incompleteIconColor;
  

  MilestoneProgress(
      {@required this.width,
      this.maxIconSize = 24,
      @required this.totalMilestones,
      @required this.completedMilestone,
      this.completedIconData = Icons.check_circle,
      this.nonCompletedIconData = Icons.adjust,
      this.completedIconColor = Colors.green,
      this.incompleteIconColor = Colors.grey})
      : assert(width != null),
        assert(totalMilestones != null),
        assert(completedMilestone != null),
        assert(totalMilestones != null);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: getTitleWithMilestone(
            width,
            totalMilestones,
            completedMilestone,
            completedIconData,
            nonCompletedIconData,
            completedIconColor,
            incompleteIconColor,
            maxIconSize));
  }
}

List<Widget> getTitleWithMilestone(
    double width,
    int totalPoints,
    int checkedPoints,
    IconData completedIconData,
    IconData nonCompletedIconData,
    Color completedIconColor,
    Color incompleteIconColor,
    double mxIconSize) {
  List<Widget> list = List<Widget>();
  double iconSizeTemp = width / (1.5 * totalPoints);
  double lineSizeTemp = width / (3 * totalPoints);
  double maxIconSize = mxIconSize;
  double maxLineSize = mxIconSize / 2;

  // checks and adjusts icon size acc to max width
  double iconSize = iconSizeTemp > maxIconSize ? maxIconSize : iconSizeTemp;
  double lineSize = lineSizeTemp > maxLineSize ? maxLineSize : lineSizeTemp;

  for (int i = 0; i < (2 * totalPoints) - 1; i++) {
    if (i % 2 == 0) {
      list.add(Icon(
        i <= (2 * checkedPoints) - 1 ? completedIconData : nonCompletedIconData,
        size: iconSize,
        color: i <= (2 * checkedPoints) - 1
            ? completedIconColor
            : incompleteIconColor,
      ));
    } else {
      list.add(SizedBox(
        height: 1,
        width: lineSize,
        child: Container(
          color: i < (2 * checkedPoints) - 1
              ? completedIconColor
              : incompleteIconColor,
        ),
      ));
    }
  }
  return list;
}
