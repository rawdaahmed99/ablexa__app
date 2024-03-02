import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 35,
                  ),
                  onPressed: () {},
                ),

                IconButton(
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  onPressed: () {},
                ), // IconButton(onPressed: (){}, icon: icon)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius:
                      55, // Change this radius for the width of the circular border
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius:
                        50, // This radius is the radius of the picture in the circle avatar itself.
                    backgroundImage: AssetImage("assets/images/Ellipse 3.png"),
                  ),
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide.none,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Rawda Ahmed Salah",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10),
            child: Row(
              children: [
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 108, 99, 255)),
                    onPressed: () {},
                    child: Text(
                      "Atendence",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text(
                        "Appearance",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text(
                        "Exams",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 197, 196, 196)),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                       BoxShadow(
                        color: Color.fromARGB(245, 245, 245, 245),
                        blurRadius: 2,
                        offset: Offset(0.0, 2.0),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Text('1/1/2025 ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Container(
                        margin: EdgeInsets.only(left: 160),
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 196, 197, 196)),
                          borderRadius: BorderRadius.all(Radius.circular(45)),
                          boxShadow: [
                            const BoxShadow(
                              color: Color.fromRGBO(151, 250, 138, 0.612),
                              blurRadius: 2,
                              offset: Offset(0.0, 0.0),
                            ),
                          ],
                        ),
                        child: Text('Present ',
                            style: TextStyle(
                                color: Color.fromARGB(210, 0, 0, 0),
                                fontSize: 17,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 197, 196, 196)),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      const BoxShadow(
                        color: Color.fromARGB(245, 245, 245, 245),
                        blurRadius: 2,
                        offset: Offset(0.0, 2.0),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Text(
                        '3/1/2025 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 160),
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 196, 197, 196)),
                          borderRadius: BorderRadius.all(Radius.circular(45)),
                          boxShadow: [
                            const BoxShadow(
                              color: Color.fromRGBO(255, 80, 80, 0.377),
                              blurRadius: 2,
                              offset: Offset(0.0, 0.0),
                            ),
                          ],
                        ),
                        child: Text('Absent ',
                            style: TextStyle(
                                color: Color.fromARGB(210, 0, 0, 0),
                                fontSize: 17,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
