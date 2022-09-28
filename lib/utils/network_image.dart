import 'package:flutter/services.dart';

Future<Uint8List?> getBytesFromNetworkImageUrl (String url) async {
  //Get the image from the URL and then convert it to Uint8List
  Uint8List? bytes = (
    await NetworkAssetBundle(Uri.parse(url))
      .load(url)
    )
    .buffer
    .asUint8List();

  return bytes;
}