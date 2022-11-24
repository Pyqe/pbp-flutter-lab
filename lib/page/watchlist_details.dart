import 'package:counter_7/model/watchlistmodel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WatchListDetailsPage extends StatelessWidget {
  final WatchList watchListItem;
  const WatchListDetailsPage({super.key, required this.watchListItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                watchListItem.fields.title,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                const Text(
                  "Release Date: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("${DateFormat.yMMMMd('en_US').format(watchListItem.fields.releaseDate)}"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                const Text(
                  "Rating: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(watchListItem.fields.rating.toString() + "/5"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                const Text(
                  "Status: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(watchListItem.fields.watched ? "watched" : "not watched"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                const Text(
                  "Review: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Flexible(
                  child: Text(watchListItem.fields.review),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}