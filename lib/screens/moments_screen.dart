import 'package:flutter/material.dart';
import '../models/moment.dart';
import '../data/moments_data.dart';

class MomentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Momentos'),
      ),
      body: ListView.builder(
        itemCount: moments.length,
        itemBuilder: (context, index) {
          final moment = moments[index];
          return ListTile(
            leading: Image.asset(moment.imageUrl),
            title: Text(moment.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MomentDetailScreen(moment: moment),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class MomentDetailScreen extends StatelessWidget {
  final Moment moment;

  MomentDetailScreen({required this.moment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(moment.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(moment.imageUrl),
            SizedBox(height: 20),
            Text(moment.description),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes abrir un video relacionado
              },
              child: Text('Ver Video'),
            ),
          ],
        ),
      ),
    );
  }
}