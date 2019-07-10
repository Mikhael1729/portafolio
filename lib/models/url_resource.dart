import 'package:flutter/material.dart';

class UrlResource {
  final int id;
  final String title;
  final String url;
  IconData get icon => Icons.web;

  UrlResource({this.id, this.title, this.url});
}