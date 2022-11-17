import 'dart:html';
import 'package:intl/intl.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/dataBudget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/globals.dart' as store;
import 'package:flutter/services.dart';

class TambahBudgetPage extends StatefulWidget {
  const TambahBudgetPage({super.key});

  @override
  State<TambahBudgetPage> createState() => _TambahBudgetPageState();
}

class _TambahBudgetPageState extends State<TambahBudgetPage> {
  final _formKey = GlobalKey<FormState>();
  String _budgetKind = "Pemasukan";
  int _amount = 0;
  String _title = "";
  String _date = "";
  List<String> budgetKindVariations = ['Pemasukan', 'Pengeluaran'];
  var controllerTextField = TextEditingController();
  var controllerTextFieldForNum = TextEditingController();
  var controllerTextFieldForDate = TextEditingController();

  // onPressed(BuildContext context) {
  //   var data = BudgetData(
  //       budgetKind: budgetKind!, amount: amount!, title: _title!, date: date);
  //   globals.budgets.add(data);
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => const DataBudgetPage()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Budget'),
      ),
      drawer: DrawerApplication(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: controllerTextField,
                    decoration: InputDecoration(
                      hintText: "Membeli makan siang",
                      labelText: "Judul",
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        _title = value!;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        _title = value!;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: controllerTextFieldForNum,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      hintText: "200",
                      labelText: "Nominal",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _amount = int.parse(value!);
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _amount = int.parse(value!);
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Nominal tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    value: _budgetKind,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: budgetKindVariations.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _budgetKind = newValue!;
                      });
                    },
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controllerTextFieldForDate,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.calendar_today),
                          labelText: "Enter Date"),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(
                                2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101));
                        if (pickedDate != null) {
                          print(pickedDate);
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(formattedDate);
                          setState(() {
                            _date =
                                formattedDate; //set output date to TextField value.
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                    )),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        store.allList.add(store.AllDataKeeped(
                          _title,
                          _amount,
                          _budgetKind,
                          _date,
                        ));
                        controllerTextField.clear();
                        controllerTextFieldForNum.clear();
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => DataBudgetPage())));
                      }
                    },
                    child: const Text("Simpan"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
