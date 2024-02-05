import 'package:flutter/material.dart';

class CountdownList extends StatefulWidget {
  const CountdownList({super.key});

  @override
  State<CountdownList> createState() => _CountdownListState();
}

class _CountdownListState extends State<CountdownList> {
  List<dynamic> listCountdown = [
    {"title": "Anniversary of love", "date": "-65"},
    {"title": "Anniversary of kuda", "date": "-5"},
  ];

  @override
  Widget build(BuildContext context) {
    Widget cardItem(String title, String date) {
      return Card(
        color: Colors.pink[50],
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                flex: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          date,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Text(
                            "Day",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Image.asset('assets/images/icon_love.png'),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Countdown List",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.folder),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listCountdown.length,
        itemBuilder: (BuildContext context, int index) {
          return cardItem(
            listCountdown[index]["title"],
            listCountdown[index]["date"],
          );
        },
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.green,
        radius: 20,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.add),
          color: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}
