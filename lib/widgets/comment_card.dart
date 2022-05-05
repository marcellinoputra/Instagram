import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/models/user.dart';
import 'package:instagram/providers/user_providers.dart';
import 'package:provider/provider.dart';

class CommentCard extends StatefulWidget {
  const CommentCard({Key? key}) : super(key: key);

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    final User? user = Provider.of<UserProvider>(context).getUser;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(user!.photoUrl),
            radius: 18,
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: user.username,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'some description')
                    ])),
                    const Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: Text(
                        '23/12/22',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                )),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const FaIcon(
              FontAwesomeIcons.heart,
              size: 16,
            ),
          )
        ],
      ),
    );
  }
}
