import 'package:flutter/material.dart';

class ActionButtonListWidget extends StatefulWidget {
  const ActionButtonListWidget({Key? key}) : super(key: key);

  @override
  State<ActionButtonListWidget> createState() => _ActionButtonListWidgetState();
}

class _ActionButtonListWidgetState extends State<ActionButtonListWidget> {
  String? _selected;
  List titles = ["Home", "About", "Contact"];
  @override
  void initState() {
    _selected = titles[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ActionTextWidget(
            onTap: () {
              setState(() {
                _selected = titles[0];
              });
            },
            title: titles[0],
            selected: _selected),
        ActionTextWidget(
            onTap: () {
              setState(() {
                _selected = titles[1];
              });
            },
            title: titles[1],
            selected: _selected),
        ActionTextWidget(
            onTap: () {
              setState(() {
                _selected = titles[2];
              });
            },
            title: titles[2],
            selected: _selected),
      ],
    );
  }
}

class ActionTextWidget extends StatefulWidget {
  final String title;
  final Function()? onTap;
  final String? selected;
  const ActionTextWidget(
      {Key? key, required this.title, this.onTap, this.selected})
      : super(key: key);

  @override
  State<ActionTextWidget> createState() => _ActionTextWidgetState();
}

class _ActionTextWidgetState extends State<ActionTextWidget> {
  late Color _textColor;
  late Color _hoverColor;
  late Color _actualColor;
  late Color _selectedColor;
  @override
  void initState() {
    _actualColor = Colors.black;
    _hoverColor = Colors.blue[100]!;
    _selectedColor = Colors.blue;
    _textColor = _actualColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isSelected = (widget.selected == widget.title);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onHover: (isHover) {
          setState(() {
            _textColor = isHover ? _hoverColor : _actualColor;
          });
        },
        onTap: widget.onTap,
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          elevation: isSelected ? 8 : 0,
          // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: 16,
                  color: isSelected ? _selectedColor : _textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
