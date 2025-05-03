import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_r_d/domain/entities/property.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Property property = Get.arguments;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top image with overlay and rounded corners
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.asset(
                      property.imageUrl,
                      height: 280,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 280,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.5),
                            Colors.transparent
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 40,
                      child: CircleAvatar(
                        backgroundColor: Colors.black54,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () => Get.back(),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 16,
                      top: 40,
                      child: CircleAvatar(
                        backgroundColor: Colors.black54,
                        child: Icon(Icons.bookmark_border, color: Colors.white),
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      right: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            property.name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            property.location,
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.bed, color: Colors.white),
                              SizedBox(width: 4),
                              Text('${property.bedrooms} Bedroom',
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(width: 16),
                              Icon(Icons.bathtub, color: Colors.white),
                              SizedBox(width: 4),
                              Text('${property.bathrooms} Bathroom',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Details Section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Text(
                    'The 3-level house that has a modern design, a large pool & a garage that fits up to four cars. The interior is designed with elegance and comfort in mind...',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  TextButton(onPressed: () {}, child: Text('Read More')),

                  Divider(height: 30),

                  // Owner Info
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/human1.jpg'),
                        radius: 26,
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(property.ownerName,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Owner', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.phone, color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                           borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.message, color: Colors.white),
                        ),
                      ),
                    ],
                  ),

                  Divider(height: 30),

                  // Gallery
                  Text('Gallery',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: property.gallery.length ?? 0,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(right: 8),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: NetworkImage(property.gallery?[index] ?? ''),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Google Map with rounded corners and padding
                  Text('Location',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/map2.png',
                        height: 160,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Price and Rent Now
                  Row(
                    children: [
                      Text(
                        'Rp. ${property.price.toStringAsFixed(0)} / Year',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 14),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        child: Text('Rent Now',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
