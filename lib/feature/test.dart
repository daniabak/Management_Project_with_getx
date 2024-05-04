import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  final int maxLines;
  final String showMoreText;

  ExpandableTextWidget({
    Key? key,
    required this.text,
    this.maxLines = 2,
    this.showMoreText = 'Show more',
  }) : super(key: key);

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          child: ConstrainedBox(
            constraints: isExpanded
                ? BoxConstraints()
                : BoxConstraints(
                    maxHeight:
                        widget.maxLines * 20.0), // Assuming text size is 20.0
            child: Text(
              widget.text,
              softWrap: true,
              overflow: TextOverflow.fade,
              style: TextStyle(fontSize: 20.0), // Set your text size here
            ),
          ),
        ),
        InkWell(
          child: Text(
            widget.showMoreText,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18), // Styling for the "show more" text
          ),
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
        ),
      ],
    );
  }
}
