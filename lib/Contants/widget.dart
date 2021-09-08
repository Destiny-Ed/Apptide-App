import 'package:apptide/Styles/colors.dart';
import 'package:flutter/material.dart';

Widget customDropDownField(
    {required List<String> items,
      required String label,
      String? itemValue,
      Function(String?)? onChanged}) {
  return Expanded(
    child: ListTile(

contentPadding: EdgeInsets.zero,
        title : Text(
          label,
          style: TextStyle(fontSize: 14.0),
        ),
        subtitle : Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: lightAmber,
            border: Border.all(width: 1.5, color: primaryColor),
          ),
          child: DropdownButton<String>(
            value: itemValue,
            style: TextStyle(
              color: grey,
              fontSize: 16
            ),
            // isDense: true,
            isExpanded : true,
            underline: Container(),
            onChanged: (String? value) => onChanged!(value),

            items: items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),

    ),
  );
}