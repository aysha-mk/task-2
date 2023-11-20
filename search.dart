import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 243, 244),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(screenWidth * 0.9, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 164, 108, 207),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Search here...',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 176, 171, 171),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Recent Searches',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            buildRecentSearch('Taj Avante Mumbai'),
            const SizedBox(height: 25),
            buildRecentSearch('Taj Avante Mumbai'),
            const SizedBox(height: 25),
            buildRecentSearch('Taj Avante Mumbai'),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: GestureDetector(
                      onTap: () {
                        // Handle clear recent searches
                      },
                      child: const Text(
                        'Clear Recent Searches',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget buildRecentSearch(String searchQuery) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          const Icon(
            Icons.access_time_sharp,
            color: Color.fromARGB(255, 164, 108, 207),
          ),
          const SizedBox(width: 10),
          Text(
            searchQuery,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
