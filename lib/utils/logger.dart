// ignore_for_file: avoid_print
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';

String colorText([String color = "reset"]) {
  bool isIOs = false;

  try {
    isIOs = Platform.isIOS || Platform.isMacOS;
  } catch (_) {}
  /// Get color text ASCII codes
  /// 
  if (isIOs) {
    switch (color.toLowerCase()) {
      case "red":
        return "🟥";
      case "yellow":
        return "🟨";
      case "green":
        return "🟩";
      case "blue":
        return "🟦";
      case "reset":
        return "";
      default:
        return "";
    }
  } else {
    String prefix = "\x1B";
    switch (color.toLowerCase()) {
      case "red":
        return "$prefix[31m";
      case "yellow":
        return "$prefix[33m";
      case "green":
        return "$prefix[32m";
      case "blue":
        return "$prefix[34m";
      case "reset":
        return "$prefix[0m";
      default:
        return "$prefix[0m";
    }
  }
}

void printWarning(Object? text) {
  if (!kDebugMode) return;
  /// Print Warning with format
  print("${colorText("yellow")}[WARNING]: $text${colorText()}");
}

void printError(Object? error) {
  if (!kDebugMode) return;
  /// Print Error with format
  print("${colorText("red")}[ERROR]: $error${colorText()}");
}

void printSuccess(Object? text) {
  if (!kDebugMode) return;
  /// Print Success with format
  print("${colorText("green")}[SUCCESS]: $text${colorText()}");
}

void printLog(Object? log) {
  if (!kDebugMode) return;
  /// Print Log with format
  print("${colorText("blue")}[LOG]: $log${colorText()}");
}
