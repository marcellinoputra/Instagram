import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screen/add_post.dart';
import 'package:instagram/screen/feed_screen.dart';
import 'package:instagram/screen/profile_screen.dart';
import 'package:instagram/screen/search_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Center(child: Text('Notification')),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  )
];
