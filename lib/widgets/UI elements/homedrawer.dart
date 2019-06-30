import 'package:flutter/material.dart';

import 'package:sarvodian/pages/eventspage.dart';
import 'package:sarvodian/pages/batchtimingspage.dart';
import 'package:sarvodian/pages/sarvodayateam.dart';
import 'package:sarvodian/pages/studentspage.dart';
import 'package:sarvodian/pages/contactpage.dart';

class HomeDrawer extends StatelessWidget {
  Widget _buildBrowseListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.view_list),
      title: Text('Browse Questions'),
      onTap: () {
        Navigator.pushNamed(context, '/home');
      },
    );
  }

  Widget _buildEventsListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.event_note),
      title: Text('Events'),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => EventsPage()));
      },
    );
  }

  Widget _buildBatchListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.access_time),
      title: Text('Batch Timings'),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => BatchtimingsPage()));
      },
    );
  }

  Widget _buildTeamListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.people),
      title: Text('Sarvodaya Team'),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => SarvodayateamPage()));
      },
    );
  }

  Widget _buildMeritListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text('Meritorious Students'),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => StudentsPage()));
      },
    );
  }

  Widget _buildContactListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.call),
      title: Text('Contact Us'),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => ContactPage()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          AppBar(
            title: Text('Choose'),
            automaticallyImplyLeading: false,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
          _buildBrowseListTile(context),
          _buildEventsListTile(context),
          _buildBatchListTile(context),
          _buildTeamListTile(context),
          _buildMeritListTile(context),
          _buildContactListTile(context),
        ],
      ),
    );
  }
}
