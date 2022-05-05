import 'package:flutter/material.dart';
import 'package:instagram/screen/add_post.dart';
import 'package:instagram/screen/feed_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  Center(child: Text('Search')),
  AddPostScreen(),
  Center(child: Text('Notification')),
  Center(child: Text('Account'))
];
