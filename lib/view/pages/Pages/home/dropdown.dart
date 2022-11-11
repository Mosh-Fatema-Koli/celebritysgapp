import 'package:flutter/material.dart';

class DropPage extends StatefulWidget {
  const DropPage({Key? key}) : super(key: key);

  @override
  _DropPageState createState() => _DropPageState();
}

class _DropPageState extends State<DropPage> {
// Initial Selected Value
  String dropdownvalue = 'BNB';

// List of items in our dropdown menu
  var items = [
    'BNB',
    'USDSC',
    'DSL',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: DropdownButton(
                // Initial Value
                value: dropdownvalue,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                iconSize: 15,
                isExpanded: true,
                focusColor: Colors.white,
                elevation: 0,
                dropdownColor: Colors.white,
                borderRadius: BorderRadius.circular(10),
                style: TextStyle(
                  color: Colors.black,
                ),

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
