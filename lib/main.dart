import 'package:flutter/material.dart';

void main() {
  runApp(POINTCOUNTER());
}

class POINTCOUNTER extends StatefulWidget {
  POINTCOUNTER({super.key});

  @override
  State<POINTCOUNTER> createState() => _POINTCOUNTERSTATE();
}

class _POINTCOUNTERSTATE extends State<POINTCOUNTER> {
  int teamA = 0;
  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove debug banner in top corner
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Pointes Counter",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontFamily: "Aremat",
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 45, fontFamily: "Aremat"),
                    ),
                    Text("$teamA", style: TextStyle(fontSize: 150)),
                    //------------------------------------//
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamA++;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          height: 2,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamA += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          height: 2,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamA += 3;
                        });
                      },
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          height: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 330,
                  child: VerticalDivider(thickness: 2, color: Colors.grey),
                ),
                //-------------TEAM B----------------//
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 45, fontFamily: "Aremat"),
                    ),
                    Text("$teamB", style: TextStyle(fontSize: 150)),
                    //------------------------------------//
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {
                        teamB++;
                        setState(() {
                          teamB;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          height: 2,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamB += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          height: 2,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamB += 3;
                        });
                      },
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          height: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(flex: 1),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {
                setState(() {
                  teamA = 0;
                  teamB = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(color: Colors.black, fontSize: 24, height: 3),
              ),
            ),
            Spacer(flex: 1),
            Text(
              "Created by Mohammed El-Wakil",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 25,
                fontFamily: "Relieve",
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
