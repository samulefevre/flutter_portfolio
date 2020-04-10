import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/mentions.dart';
import 'package:flutter_portfolio/widgets/mentions_list.dart';

class MentionsPage extends StatelessWidget {
  final List data = [];

  List<Mentions> parseJson(String response) {
    if (response == null) {
      return [];
    }

    final parsed = json.decode(response).cast<Map<dynamic, dynamic>>();
    return parsed.map<Mentions>((json) => Mentions.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mentions légales :'),
      ),
      body: FutureBuilder(
          future:
              DefaultAssetBundle.of(context).loadString('assets/mentions.json'),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            List<Mentions> mentions = parseJson(snapshot.data.toString());

            return mentions.isNotEmpty
                ? MentionsList(mentions: mentions)
                : Center(
                    child: CircularProgressIndicator(),
                  );
          }),
    );
  }
}
