import 'package:HearMe/Utils/Authentication.dart';
import 'package:flutter/material.dart';
import '../Pages/Login.dart';
import '../Pages/Playlist.dart';
import '../Pages/Developers.dart';

Widget drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text(
              user.displayName == null ? "User" : user.displayName,
              style: TextStyle(fontSize: 20.0)),
          accountEmail: Text(
            user.email,
            style: TextStyle(fontSize: 15.0),
          ),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.greenAccent,
            child: Text(
              "G",
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.home,
          ),
          title: Text("Home", style: TextStyle(fontSize: 20.0)),
        ),
        ListTile(
            leading: Icon(
              Icons.music_note,
            ),
            title: Text(
              "Playlist",
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Playlist()),
              );
            }),
        ListTile(
          leading: Icon(
            Icons.thumb_up,
          ),
          title: Text("Liked Songs", style: TextStyle(fontSize: 20.0)),
        ),
        ListTile(
          leading: Icon(
            Icons.supervisor_account,
          ),
          title: Text("Developers", style: TextStyle(fontSize: 20.0)),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Developers()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
          ),
          title: Text("Setting", style: TextStyle(fontSize: 20.0)),
        ),
        ListTile(
          //TODO:
          onTap: () async {
            await logOut();
            //   if (await signOutUser()) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
            //             }
            //             else{
            //               print("Sign in not done");
            //             }
          },
          leading: Icon(
            Icons.settings,
          ),
          title: Text("Sign out", style: TextStyle(fontSize: 20.0)),
        )
        //Text("Home"),
      ],
    ),
  );
}
