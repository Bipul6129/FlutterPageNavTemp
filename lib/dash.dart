import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            // Tablet view
            return _buildTabletView(context);
          } else {
            // Mobile view
            return _buildMobileView(context);
          }
        },
      ),
    );
  }

  Widget _buildTabletView(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          child: TextField(
            style:
                TextStyle(color: Color.fromARGB(255, 45, 45, 45)), // Text color
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(
                  color:
                      const Color.fromARGB(179, 42, 41, 41)), // Hint text color
              prefixIcon: Icon(Icons.search,
                  color: Color.fromARGB(255, 51, 50, 50)), // Search icon color
              filled: true,
              fillColor: Color.fromARGB(255, 222, 220, 220),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Browse our categories',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              10, // Number of items in the row
              (index) => Container(
                margin: EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  'assets/flow.jpg',
                  height: 150,
                  width: 120,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 26,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'New',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              10, // Number of items in the row
              (index) => Container(
                margin: EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  'assets/flow.jpg',
                  height: 150,
                  width: 120,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 26,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Our Best Sellers',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              10, // Number of items in the row
              (index) => Container(
                margin: EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  'assets/flow.jpg',
                  height: 150,
                  width: 120,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildMobileView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          child: TextField(
            style:
                TextStyle(color: Color.fromARGB(255, 45, 45, 45)), // Text color
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(
                  color:
                      const Color.fromARGB(179, 42, 41, 41)), // Hint text color
              prefixIcon: Icon(Icons.search,
                  color: Color.fromARGB(255, 51, 50, 50)), // Search icon color
              filled: true,
              fillColor: Color.fromARGB(255, 222, 220, 220),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Browse our categories',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              10, // Number of items in the row
              (index) => Container(
                margin: EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  'assets/flow.jpg',
                  height: 150,
                  width: 120,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 26,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'New',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              10, // Number of items in the row
              (index) => Container(
                margin: EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  'assets/flow.jpg',
                  height: 150,
                  width: 120,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 26,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Our Best Sellers',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              10, // Number of items in the row
              (index) => Container(
                margin: EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  'assets/flow.jpg',
                  height: 150,
                  width: 120,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
