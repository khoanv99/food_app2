import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin:EdgeInsets.only(left: 20, top: 5),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              // Menu drop và tìm kiếm
              Icon(Icons.menu, size: 30, color: Color(0xff8A8383)),
              Icon(Icons.search, size: 30, color: Color(0xff8A8383)),
              ],
            ),//Left menu và search

            SizedBox(height: 20),

            Row(
              children: [
                Text(
                  "Work Place",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000),
                    fontFamily: "Poppins"
                  )
                ),
                Icon(Icons.arrow_drop_down,size: 30, color: Color(0xff000000),)
              ],
            ),//Work Place
            Row(
              children: [
                Text(
                    "Choose your delicious meal",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000),
                        fontFamily: "Poppins"
                    )
                ),
              ],
            ),
            SizedBox(height: 20),

            Row(
              children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xff66D678), width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: Color(0xff66D678),
                ),
              ),
              SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff66D678), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.home,
                    size: 30,
                    color: Color(0xff66D678),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff66D678), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.home,
                    size: 30,
                    color: Color(0xff66D678),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff66D678), width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.home,
                    size: 30,
                    color: Color(0xff66D678),
                  ),
                ),
                SizedBox(width: 10),

              ],
            ),


            SizedBox(height: 20),

          ],
        ),
      ),

    );

  }
}
