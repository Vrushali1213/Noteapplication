import 'package:flutter/material.dart';
import 'package:noteapp/common/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<Widget> routes = [
      _RouteListTile('Notes App', Routes.notesHome),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Note App'),
      ),
      body: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (_, index) => routes[index],
      ),
    );
  }
}

class _RouteListTile extends StatelessWidget {
  final String title;
  final String namedRoute;

  const _RouteListTile(
    this.title,
    this.namedRoute, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(namedRoute);
      },
      child: const Text('Hey, Welcome to your Note application'),
    );
  }
}
