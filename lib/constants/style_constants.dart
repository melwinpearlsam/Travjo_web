import 'package:flutter/material.dart';
import 'package:travjo_web/constants/colors.dart';

final ButtonStyle buttonStyleNavBar2 = OutlinedButton.styleFrom(
    padding: const EdgeInsets.all(16),
    primary: Colors.white,
    backgroundColor: primaryColor,
    side: const BorderSide(color: primaryColor, width: 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)));

final ButtonStyle buttonStyleNavBar = OutlinedButton.styleFrom(
    padding: const EdgeInsets.all(16),
    primary: primaryColor,
    backgroundColor: Colors.white,
    side: const BorderSide(color: primaryColor, width: 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)));
