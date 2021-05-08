import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Location de voiture au maroc",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Choisissez votre destination",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                elevation: 10.0,
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Color(0x55434343),
                child: TextField(
                  onChanged: (value) {
                    // searchController.changeQuery(value.trim());
                  },
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintText: "Rechercher une ville ...",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    Container(
                      child: TabBar(
                        indicatorColor: Color(0xFFFE8C68),
                        unselectedLabelColor: Color(0xFF555555),
                        labelColor: Color(0xFFFE8C68),
                        labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                        tabs: [
                          Tab(
                            text: "Villes",
                          ),
                          Tab(
                            text: "Historique",
                          ),
                          Tab(
                            text: "Favori",
                          ),
                          // Tab(
                          //   text: "Favori",
                          // ),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 0.64,
                      child: TabBarView(
                        children: [
                          Container(
                            color: Colors.blue,
                          ),
                          Container(
                            color: Colors.red,
                          ),
                          Container(
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        )),
      ),
    );
  }
}
