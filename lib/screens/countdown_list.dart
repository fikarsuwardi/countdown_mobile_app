import 'package:flutter/material.dart';

class CountdownList extends StatefulWidget {
  const CountdownList({super.key});

  @override
  State<CountdownList> createState() => _CountdownListState();
}

class _CountdownListState extends State<CountdownList> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      appBar: AppBar(
        title: Text("Countdown List"),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        // crossAxisSpacing: 10,
        // childAspectRatio: (itemWidth / itemHeight),
        childAspectRatio: (1 / 0.45),
        mainAxisSpacing: 10,
        crossAxisCount: 1,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(12),
            color: Colors.pink[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Anniversary of Love",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "-65",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Day",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // height: 100,
                        // width: 100,
                        color: Colors.white,
                        child: Image.asset(
                          "assets/images/icon_love.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child: const Text('Heed not the rabble'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[300],
            child: const Text('Sound of screams but the'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[400],
            child: const Text('Who scream'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[500],
            child: const Text('Revolution is coming...'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[600],
            child: const Text('Revolution, they...'),
          ),
        ],
      ),
    );
  }
}
