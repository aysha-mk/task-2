import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 233, 233),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'My Favourites',
            style: TextStyle(
              color: Color.fromARGB(255, 70, 35, 108),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            ResponsiveRow(
              children: [
                ResponsiveContainer(
                  widthPercent: 0.3,
                  child: Image.asset(
                    'assets/images/image1.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 140),
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
                  widthPercent: 0.3,
                  child: Image.asset(
                    'assets/images/image2.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 10),
                ResponsiveContainer(
                  widthPercent: 0.3,
                  child: Image.asset(
                    'assets/images/image2.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 120,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ResponsiveRow(
              children: [
                const SizedBox(
                  width: 120,
                ),
                ResponsiveContainer(
                  widthPercent: 0.3,
                  child: Image.asset(
                    'assets/images/image2.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 10),
                ResponsiveContainer(
                  widthPercent: 0.3,
                  child: Image.asset(
                    'assets/images/image2.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 0,
                )
              ],
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
                    'assets/images/image1.png',
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
            const SizedBox(height: 140),
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
