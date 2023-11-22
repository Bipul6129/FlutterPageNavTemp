import 'package:flutter/material.dart';
import 'main.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ResponsiveLayout(
        mobileBody: _buildMobileBody(context),
        tabletBody: _buildTabletBody(context),
      ),
    );
  }

  Widget _buildMobileBody(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/flower.png', // Replace with your image path
              height: 400,
              width: 400,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'GEETAB',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 226, 182, 197),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Flowers with love',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'AT   OUR   core\n        There   IS A\nPURE   love\nof  FLOWER',
              style: TextStyle(
                fontSize: 32,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  ),
                  child: Text(
                    'SHOP NOW',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabletBody(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/flower.png',
                height: 400,
                width: 400,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'GEETAB',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 226, 182, 197),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'AT   OUR   core\n        There   IS A\nPURE   love\nof  FLOWER',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  ),
                  child: Text(
                    'SHOP NOW',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
