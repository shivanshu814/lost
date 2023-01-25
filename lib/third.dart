// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'fourth.dart';
import 'main.dart';

// ignore: camel_case_types
class third extends StatefulWidget {
  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  bool _checkbox = false;
  bool _checkbox2 = false;
  bool _checkbox3 = false;
  bool _checkbox4 = false;
  bool _checkbox5 = false;
  bool _checkbox6 = false;
  String dropdownvalue = 'SQM';
  String dropdownvalue2 = 'SQM';
  String dropdownvalue3 = 'SQM';
  String dropdownvalue4 = 'SQM';
  String dropdownvalue5 = 'SQM';
  String dropdownvalue6 = 'SQM';

  var items = [
    'SQM',
    'SFT',
  ];
  TextEditingController name = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController withMaterial = TextEditingController();
  TextEditingController work = TextEditingController();
  TextEditingController Layout = TextEditingController();
  TextEditingController rate = TextEditingController();
  TextEditingController rates = TextEditingController();
  TextEditingController unit = TextEditingController();
  TextEditingController units = TextEditingController();
  TextEditingController Excavation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(224, 234, 242, 1),
        title: Text(
          'Add Project',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              width: 345.0,
              height: 55,
              color: Colors.grey.shade300,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.tips_and_updates_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      controller: name,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " Project Title",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 345.0,
              height: 55,
              color: Colors.grey.shade300,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.location_on_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      controller: location,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " Location",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Checkbox(
                  value: this._checkbox,
                  onChanged: (value) {
                    setState(
                      () {
                        this._checkbox = !_checkbox;
                      },
                    );
                  },
                ),
                Text(
                  'Excavation',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120.0,
                  height: 35,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: rate,
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade600), //<-- SEE HERE
                            ),
                            hintText: "Rate",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 35,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade600),
                  ),
                  child: DropdownButton(
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map(
                      (String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      },
                    ).toList(),
                    onChanged: (String? newValue) {
                      setState(
                        () {
                          dropdownvalue = newValue!;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Checkbox(
                  value: this._checkbox2,
                  onChanged: (value) {
                    setState(
                      () {
                        this._checkbox2 = !_checkbox2;
                      },
                    );
                  },
                ),
                Text(
                  'PCC',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120.0,
                  height: 35,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: rates,
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade600), //<-- SEE HERE
                            ),
                            hintText: "Rate",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 35,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade600),
                  ),
                  child: DropdownButton(
                    value: dropdownvalue2,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map(
                      (String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      },
                    ).toList(),
                    onChanged: (String? newValue) {
                      setState(
                        () {
                          dropdownvalue2 = newValue!;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Checkbox(
                  value: this._checkbox3,
                  onChanged: (value) {
                    setState(
                      () {
                        this._checkbox3 = !_checkbox3;
                      },
                    );
                  },
                ),
                Text(
                  'Reinforcement With Tools',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120.0,
                  height: 35,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade600), //<-- SEE HERE
                            ),
                            hintText: "Rate",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 35,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade600),
                  ),
                  child: DropdownButton(
                    value: dropdownvalue3,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map(
                      (String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      },
                    ).toList(),
                    onChanged: (String? newValue) {
                      setState(
                        () {
                          dropdownvalue3 = newValue!;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Checkbox(
                  value: this._checkbox4,
                  onChanged: (value) {
                    setState(
                      () {
                        this._checkbox4 = !_checkbox4;
                      },
                    );
                  },
                ),
                Text(
                  'Shuttering',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120.0,
                  height: 35,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade600), //<-- SEE HERE
                            ),
                            hintText: "Rate",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 35,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade600),
                  ),
                  child: DropdownButton(
                    value: dropdownvalue4,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map(
                      (String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      },
                    ).toList(),
                    onChanged: (String? newValue) {
                      setState(
                        () {
                          dropdownvalue4 = newValue!;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Checkbox(
                  value: this._checkbox5,
                  onChanged: (value) {
                    setState(
                      () {
                        this._checkbox5 = !_checkbox5;
                      },
                    );
                  },
                ),
                Text(
                  'RCC Casting',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120.0,
                  height: 35,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade600), //<-- SEE HERE
                            ),
                            hintText: "Rate",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 35,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade600),
                  ),
                  child: DropdownButton(
                    value: dropdownvalue5,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map(
                      (String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      },
                    ).toList(),
                    onChanged: (String? newValue) {
                      setState(
                        () {
                          dropdownvalue5 = newValue!;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Checkbox(
                  value: this._checkbox6,
                  onChanged: (value) {
                    setState(
                      () {
                        this._checkbox6 = !_checkbox6;
                      },
                    );
                  },
                ),
                Text(
                  'Brick Work',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120.0,
                  height: 35,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade600), //<-- SEE HERE
                            ),
                            hintText: "Rate",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 35,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade600),
                  ),
                  child: DropdownButton(
                    value: dropdownvalue6,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map(
                      (String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      },
                    ).toList(),
                    onChanged: (String? newValue) {
                      setState(
                        () {
                          dropdownvalue6 = newValue!;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 250,
                  height: 35,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => fourth(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.save,
                      color: Colors.red.shade200,
                    ), //icon data for elevated button
                    label: Text(
                      "Save and Next",
                      style:
                          TextStyle(color: Colors.red.shade200, fontSize: 18),
                    ), //label text
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 2, color: Colors.red.shade200),
                        // ignore: deprecated_member_use
                        primary: Colors.white //elevated btton background color
                        ),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                SizedBox(
                  height: 14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
