import 'package:flutter/material.dart';
import 'package:counter_7/model/my_watch_list.dart';
import 'package:counter_7/drawer.dart';
import 'package:intl/intl.dart';

class WatchListDetailPage extends StatelessWidget {
  const WatchListDetailPage({super.key, required this.film});

  final MyWatchList film;
  @override
  Widget build(BuildContext context) {
    final DateFormat formatdate = DateFormat("MMM d, y");
    return Scaffold(
      appBar: AppBar(
        title: Text('Watch List Detail'),
      ),
      drawer: DrawerApplication(),
      body: Column(children: [
        Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                film.title,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Text(
                      "Release Date: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      formatdate.format(film.releaseDate).toString(),
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ))),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Text(
                      "Rating: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${film.rating}/5",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ))),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Text(
                      "Status: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    (film.watched)
                        ? Text(
                            "wacthed",
                            style: TextStyle(fontSize: 20),
                          )
                        : Text(
                            "not wacthed",
                            style: TextStyle(fontSize: 20),
                          ),
                  ],
                ))),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "Review: ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Expanded(
              child: Text(
                film.review,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        )
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 50,
        width: 500,
        child: FloatingActionButton.large(
          child: Text("Back"),
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
