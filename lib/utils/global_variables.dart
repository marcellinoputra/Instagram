import 'package:flutter/material.dart';
import 'package:instagram/screen/add_post.dart';
import 'package:instagram/screen/feed_screen.dart';
import 'package:instagram/screen/search_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  SearchScreen(),
  AddPostScreen(),
  Center(child: Text('Notification')),
  Center(child: Text('Account'))
];
