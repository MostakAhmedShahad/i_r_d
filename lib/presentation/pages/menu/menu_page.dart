import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,  
      child: Column(
        children: [
          const DrawerHeader(child: Text("Menu", style: TextStyle(color: Colors.white))),
          
          
          Container(
            color: Colors.white,  
            child: ListTile(
              leading: Icon(Icons.home, color: Colors.white), // White icon
              title: Text("Home", style: TextStyle(color: Colors.white)), // White text
              onTap: () {
                
              },
            ),
          ),

           
          ListTile(
            leading: Icon(Icons.person, color: Colors.white),
            title: Text("Profile", style: TextStyle(color: Colors.white)),
            onTap: () {
              
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.white),
            title: Text("Nearby", style: TextStyle(color: Colors.white)),
            onTap: () {
               
            },
          ),
          ListTile(
            leading: Icon(Icons.bookmark, color: Colors.white),
            title: Text("Bookmark", style: TextStyle(color: Colors.white)),
            onTap: () {
              
            },
          ),

          
          Divider(color: Colors.white),

          
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.white),
            title: Text("Notifications", style: TextStyle(color: Colors.white)),
            trailing: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),  
            onTap: () {
              // Handle notifications click
            },
          ),
          ListTile(
            leading: Icon(Icons.message, color: Colors.white),
            title: Text("Messages", style: TextStyle(color: Colors.white)),
            trailing: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),  
            onTap: () {
              // Handle messages click
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text("Settings", style: TextStyle(color: Colors.white)),
            onTap: () {
              // Handle settings click
            },
          ),

          // White separation line
          Divider(color: Colors.white),

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
