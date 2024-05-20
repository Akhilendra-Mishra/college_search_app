import 'package:flutter/material.dart';

class CollegeDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Handle back button press
          },
        ),
        title: Text('GHJK Engineering College'),
        backgroundColor: Colors.blue.shade800,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/college1.jpg', // Replace with your image asset path
                        width: double.infinity,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'GHJK Engineering college',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                              'Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. '
                              'Pellentesque aliquam .',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 16),
                        Container(
                          child: DefaultTabController(
                            length: 4,
                            child: Column(
                              children: [
                                TabBar(
                                  labelColor: Colors.blue,
                                  unselectedLabelColor: Colors.black,
                                  tabs: [
                                    Tab(text: 'About college'),
                                    Tab(text: 'Hostel facility'),
                                    Tab(text: 'Q & A'),
                                    Tab(text: 'Events'),
                                  ],
                                ),
                                Container(
                                  height: 400, // Adjust as needed
                                  child: TabBarView(
                                    children: [
                                      buildAboutCollegeTab(),
                                      buildHostelFacilityTab(),
                                      buildQandATab(),
                                      buildEventsTab(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.blue,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30), // Add padding from all sides
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ApplicationScreen()), // Navigate to application screen
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0, // No shadow
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Apply Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Other methods remain unchanged...

  Widget buildAboutCollegeTab() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Text(
            'Description',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiingt. '
                'Neque accumsan, scelerisque eget lectus ullamcorper a placerat. '
                'Porta hfdjdk ndjkdkb cruis. ',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            'Location',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Container(
            height: 150,
            width: 400,
            child: Image.asset(
              'assets/images/map.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Student Review',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/student1.jpg'),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/student2.jpg'),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/student3.jpg'),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/student4.jpg'),
              ),
              SizedBox(width: 20),
              Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: Text('+12'),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Arun sai',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Row(
            children: List.generate(4, (index) => Icon(Icons.star, color: Colors.yellow)),
          ),
        ],
      ),
    );
  }

  Widget buildHostelFacilityTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildFacilityIcon(Icons.king_bed, '4'),
                buildFacilityIcon(Icons.bed, '3'),
                buildFacilityIcon(Icons.bathtub, '2'),
                buildFacilityIcon(Icons.home, '1'),
              ],
            ),
            SizedBox(height: 16),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildHostelImage('assets/images/hostel1.jpg'),
                  buildHostelImage('assets/images/hostel2.jpg'),
                  buildHostelImage('assets/images/hostel3.jpg'),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GHJK Engineering Hostel',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Lorem ipsum dolor sit amet, . '
                            'orbi justo  habitant morbi quis pharetra posuere. '
                            'Nisl pellentesque nec conse adipiscing elit  posuere mauris.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Facilities',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.orange),
                SizedBox(width: 8),
                Text(
                  'College in 400mtrs',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.bathtub, color: Colors.blue),
                SizedBox(width: 8),
                Text(
                  'Bathrooms: 2',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildQandATab() {
    return Center(
      child: Text('Q & A section here'),
    );
  }

  Widget buildEventsTab() {
    return Center(
      child: Text('Events details here'),
    );
  }

  Widget buildFacilityIcon(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, size: 25),
        SizedBox(height: 25),
        Text(text, style: TextStyle(fontSize: 10)),
      ],
    );
  }

  Widget buildHostelImage(String url) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Image.asset(
        url,
        width: 150,
        height: 50,
        fit: BoxFit.cover,
      ),
    );
  }
}

class ApplicationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application Form'),
      ),
      body: Center(
        child: Text('Application Form goes here'),
      ),
    );
  }
}



