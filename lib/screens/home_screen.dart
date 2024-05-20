import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedSortOption = 'Sort By';

  void _showSortOptions() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sort By',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(Icons.engineering), // Add an appropriate icon
                title: Text('Bachelor of Technology'),
                onTap: () {
                  setState(() {
                    selectedSortOption = 'Bachelor of Technology';
                  });
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/colleges');
                },
              ),
              ListTile(
                leading: Icon(Icons.architecture), // Add an appropriate icon
                title: Text('Bachelor of Architecture'),
                onTap: () {
                  setState(() {
                    selectedSortOption = 'Bachelor of Architecture';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.local_pharmacy), // Add an appropriate icon
                title: Text('Pharmacy'),
                onTap: () {
                  setState(() {
                    selectedSortOption = 'Pharmacy';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.gavel), // Add an appropriate icon
                title: Text('Law'),
                onTap: () {
                  setState(() {
                    selectedSortOption = 'Law';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.business), // Add an appropriate icon
                title: Text('Management'),
                onTap: () {
                  setState(() {
                    selectedSortOption = 'Management';
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue.shade800,
        selectedItemColor: Colors.white, // Set the selected item color to white
        unselectedItemColor: Colors.white, // Set the unselected item color to white
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, color: Colors.white),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.white),
            label: 'Account',
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue[800],
            padding: EdgeInsets.only(top: 40, bottom: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Find your own way',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            ' Search in 600 college around!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Search for colleges, schools...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(13),
                        child: Icon(Icons.mic, color: Colors.blue[800]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(25),
              children: [
                GestureDetector(
                  onTap: _showSortOptions,
                  child: CategoryCard(
                    title: 'Top Colleges',
                    description:
                    'Search through thousands of accredited colleges and universities online to find the right one for you. Apply in 3 min, and connect with your future.',
                    count: '+126 Colleges',
                    imagePath: 'assets/images/c.jpg',
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/topSchools');
                  },
                  child: CategoryCard(
                    title: 'Top Schools',
                    description:
                    'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
                    count: '+106 Schools',
                    imagePath: 'assets/images/school.jpg',
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/exams');
                  },
                  child: CategoryCard(
                    title: 'Exams',
                    description:
                    'Find an end to end information about the exams that are happening in India.',
                    count: '+16 Exams',
                    imagePath: 'assets/images/exam.jpg', // Make sure to add your asset
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

class CategoryCard extends StatelessWidget {
  final String title;
  final String description;
  final String count;
  final String imagePath;

  CategoryCard({
    required this.title,
    required this.description,
    required this.count,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black.withOpacity(0.4),
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              count,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



