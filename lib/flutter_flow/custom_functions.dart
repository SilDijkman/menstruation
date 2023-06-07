import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

int? convertStringtoInt(String? someString) {
// string to int
  int tries;

  if (someString == null) {
    return 0;
  }

  try {
    tries = int.parse(someString);
  } catch (err) {
    return 0;
  }

  return tries;
}

DateTime? convertStringtoDate(String? someString) {
  DateTime? tries;

  if (someString == null) {
    return null;
  }

  try {
    tries = DateTime.parse(someString);
  } catch (err) {
    return null;
  }

  return tries;
}
