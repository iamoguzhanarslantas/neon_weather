import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('Time'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'London',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 24,
            ),
          ),
          Text('Today 24.01.2025'),
          SizedBox(height: 20),
          Text('Temperature'),
          Row(
            children: [
              Text("It's a sunny day"),
              Text('UV Index'),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('Today'),
                  Text('10'),
                ],
              ),
              Column(
                children: [
                  Text('Tomorrow'),
                  Text('10'),
                ],
              ),
              Column(
                children: [
                  Text('Thursday'),
                  Text('10'),
                ],
              ),
              Column(
                children: [
                  Text('Friday'),
                  Text('10'),
                ],
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('Wind'),
                  Text('10'),
                  Text('Rain'),
                  Text('15'),
                ],
              ),
              Column(
                children: [
                  Text('Humidity'),
                  Text('10'),
                  Text('Pressure'),
                  Text('15'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
