import 'package:flutter/material.dart';

class DropDownHome extends StatefulWidget {
  const DropDownHome({super.key});

  @override
  State<DropDownHome> createState() => _DropDownHomeState();
}

class _DropDownHomeState extends State<DropDownHome> {
  List<String> items = ['Manan', 'Father', 'mother', 'brother', 'sister'];
  String? selectedItem = 'Manan';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Container(
        margin: const EdgeInsets.only(
          top: 15,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Colors.white,
          ),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 210, 213, 244),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(4, 5),
            )
          ],
        ),
        child: Row(
          children: [
            const Icon(Icons.person, size: 24, color: Color(0xff2d3c4e)),
            const SizedBox(width: 8),
            Container(
              height: 24,
              width: 1,
              color: const Color(0xff2d3c4e),
              margin: const EdgeInsets.symmetric(horizontal: 8),
            ),
            Expanded(
              child: DropdownButton<String>(
                isExpanded: true,
                value: selectedItem,
                icon: const Icon(Icons.arrow_drop_down),
                iconSize: 24,
                elevation: 16,
                style: const TextStyle(
                  color: Color(0xff2d3c4e),
                  fontSize: 14,
                ),
                underline: Container(
                  height: 0,
                  color: Colors.transparent,
                ),
                onChanged: (String? item) {
                  setState(() {
                    selectedItem = item;
                  });
                },
                items: items.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
