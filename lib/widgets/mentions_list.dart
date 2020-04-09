import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/mentions.dart';

class MentionsList extends StatelessWidget {
  final List<Mentions> mentions;
  MentionsList({Key key, this.mentions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: ListView.builder(
        itemCount: mentions.length,
        itemBuilder: (BuildContext context, int index) {
          final mention = mentions[index];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              Text(mention.title),
              SizedBox(
                height: 16,
              ),
              ...[
                for (var text in mention.text) ...[
                  Text(text['value']),
                  if (text['type'] == 'paragraph')
                    SizedBox(
                      height: 16,
                    )
                ],
              ],
            ],
          );
        },
      ),
    );
  }
}
