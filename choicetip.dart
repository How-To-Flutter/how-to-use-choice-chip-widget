import 'package:flutter/material.dart';

class Selector extends StatefulWidget {
  Selector({Key? key}) : super(key: key);
  @override
  State<Selector> createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 233, 233),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 234, 233, 233),
        elevation: 0,
        title: Text('Choice Tip Widget', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Center(
        child: ChoiceChip(
          label: Text(
            'Choice Chip',
            style: TextStyle(
                color: isSelected
                    ? Color.fromARGB(255, 18, 149, 255)
                    : Colors.black,
                fontSize: 25),
          ),
          padding: EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          selected: isSelected,
          selectedColor: Color.fromARGB(107, 96, 125, 139),
          onSelected: (selected) {
            setState(() {
              isSelected = selected;
            });
          },
        ),
      ),
    );
  }
}
