import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 236, 236),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(screenWidth * 0.9, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {},
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Search here...',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 176, 171, 171),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ResponsiveRow(
              children: [
                ResponsiveContainer(
                  widthPercent: 0.3,
                  child: Image.asset(
                    'assets/images/image1.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 15),
                ResponsiveContainer(
                  widthPercent: 0.3,
                  child: Image.asset(
                    'assets/images/image2.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 20),
                ResponsiveContainer(
                  widthPercent: 0.3,
                  child: Image.asset(
                    'assets/images/image1.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            ResponsiveRow(
              children: [
                ResponsiveContainer(
                  widthPercent: 0.3,
                  child: Image.asset(
                    'assets/images/image1.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 15),
                ResponsiveContainer(
                  widthPercent: 0.3,
                  child: Image.asset(
                    'assets/images/image2.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 20),
                ResponsiveContainer(
                  widthPercent: 0.3,
                  child: Image.asset(
                    'assets/images/image1.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            ResponsiveRow(
              children: [
                ResponsiveContainer(
                  widthPercent: 0.9,
                  child: Image.asset(
                    'assets/images/monsoon.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(screenWidth * 0.9, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Advt. Banner here..!',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 176, 171, 171),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ResponsiveRow(
              children: [
                ResponsiveContainer(
                  widthPercent: 0.3,
                  child: Image.asset(
                    'assets/images/image1.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 15),
                ResponsiveContainer(
                  widthPercent: 0.3,
                  child: Image.asset(
                    'assets/images/image2.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 20),
                ResponsiveContainer(
                  widthPercent: 0.3,
                  child: Image.asset(
                    'assets/images/image1.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            // ... Repeat the pattern for other sections
          ],
        ),
      ),
    );
  }
}

class ResponsiveRow extends StatelessWidget {
  final List<Widget> children;

  const ResponsiveRow({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}

class ResponsiveContainer extends StatelessWidget {
  final double widthPercent;
  final Widget child;

  const ResponsiveContainer({
    Key? key,
    required this.widthPercent,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      height: screenWidth * widthPercent,
      width: screenWidth * widthPercent,
      child: child,
    );
  }
}
