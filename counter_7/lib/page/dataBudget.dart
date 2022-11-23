import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/tambahBudget.dart';
import 'package:counter_7/globals.dart' as store;

class DataBudgetPage extends StatefulWidget {
  const DataBudgetPage({super.key});

  @override
  State<DataBudgetPage> createState() => _DataBudgetPageState();
}

class _DataBudgetPageState extends State<DataBudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction in progress'),
      ),
      drawer: DrawerApplication(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ...store.allList.map((iteration) => Center(
                  child: Column(children: [
                    SizedBox(height: 10),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.lightGreen.withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 3,
                            )
                          ]),
                      child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  iteration.title,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    iteration.amount.toString(),
                                  ),
                                  Text(
                                    iteration.kind,
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  iteration.date,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}
