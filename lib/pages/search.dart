import 'package:flutter/material.dart';
import 'package:instagram/file/explore_grid.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // Removes shadow for a cleaner look
        title: Row(
          children: [
            Icon(Icons.search, color: Colors.grey),
            SizedBox(width: 10), // Adds spacing between icon and text
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8), // Adds padding inside the container
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10), // Rounds the edges
                ),
                child: Text(
                  'Search',
                  style: TextStyle(
                      color: Colors.grey[
                          700]), // Changes text color for better visibility
                ),
              ),
            ),
          ],
        ),
      ),
      body: ExploreGrid(),
    );
  }
}
