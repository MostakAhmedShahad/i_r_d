import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue, // Set the background color to blue
      child: Column(
        children: [
          const DrawerHeader(
              child: Text("Menu", style: TextStyle(color: Colors.white))),

          Container(
            padding:
                EdgeInsets.only(left: 16), // Push the content to the left a bit
            decoration: BoxDecoration(
              color: Colors.white, // White background for selected item
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), // Circular on the right side
                bottomRight: Radius.circular(30), // Circular on the right side
              ),
            ),
            child: ListTile(
              leading: Icon(Icons.home,
                  color: Colors.blue), // Blue icon for selected
              title: Text("Home",
                  style: TextStyle(color: Colors.blue)), // Blue text
              onTap: () {
                // Handle home item click
              },
            ),
          ),

          ListTile(
            leading: Icon(Icons.person, color: Colors.white),
            title: Text("Profile", style: TextStyle(color: Colors.white)),
            onTap: () {
              // Handle profile click
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.white),
            title: Text("Nearby", style: TextStyle(color: Colors.white)),
            onTap: () {
              // Handle nearby click
            },
          ),
          Divider(color: Colors.white),
          ListTile(
            leading: Icon(Icons.bookmark, color: Colors.white),
            title: Text("Bookmark", style: TextStyle(color: Colors.white)),
            onTap: () {
              // Handle bookmark click
            },
          ),

          Stack(
            children: [
              ListTile(
                leading: Stack(
                  children: [
                    Icon(Icons.notifications, color: Colors.white),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                title: Text("Notifications",
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Handle notifications click
                },
              ),
            ],
          ),

          Stack(
            children: [
              ListTile(
                leading:  Stack(
                  children: [
                    Icon(Icons.message, color: Colors.white),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                title: Text("Messages", style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Handle messages click
                },
              ),
            ],
          ),
          Divider(color: Colors.white),
          ListTile(
            leading: Icon(Icons.help, color: Colors.white),
            title: Text("Help", style: TextStyle(color: Colors.white)),
            onTap: () {
              // Handle settings click
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text("Settings", style: TextStyle(color: Colors.white)),
            onTap: () {
              // Handle settings click
            },
          ),

          // Logout item
          ListTile(
            leading: Icon(Icons.logout, color: Colors.white),
            title: Text("Logout", style: TextStyle(color: Colors.white)),
            onTap: () {
              // Handle logout click
            },
          ),
        ],
      ),
    );
  }
}
