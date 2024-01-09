import 'package:flutter/material.dart';

Padding textFieldCustom(ttl, ctrl) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ttl,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Container(
          width: 300,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: TextFormField(
              controller: ctrl,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Input tidak bole kosong';
                }
                return null;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0), width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ))),
        ),
      ],
    ),
  );
}
