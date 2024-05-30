import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:typed_data';

class ImageUploadPage extends StatefulWidget {
  @override
  _ImageUploadPageState createState() => _ImageUploadPageState();
}

class _ImageUploadPageState extends State<ImageUploadPage> {
  Uint8List? _imageBytes;
  String? _imageName;

  Future<void> _uploadImage(Uint8List imageBytes, String imageName) async {
    try {
      final uri = Uri.parse(
          'https://larra.xyz/lar_testing/flanjo/public/upload-endpoint');
      final request = http.MultipartRequest('POST', uri)
        ..files.add(http.MultipartFile.fromBytes('image', imageBytes,
            filename: imageName));
      final response = await request.send();

      if (response.statusCode == 200) {
        final responseData = await response.stream.toBytes();
        final responseString = String.fromCharCodes(responseData);
        final jsonResponse = json.decode(responseString);
        setState(() {
          _imageName = jsonResponse['success'];
        });
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Image Uploaded Successfully')));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Failed to upload image')));
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Error: $e')));
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Web Image Upload'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_imageBytes != null)
              Image.memory(_imageBytes!)
            else
              Text('Select an image to upload'),
            ElevatedButton(
              onPressed: () async {
                final html.FileUploadInputElement input =
                    html.FileUploadInputElement()..accept = 'image/*';
                input.click();
                input.onChange.listen((event) {
                  final html.File file = input.files!.first;
                  final reader = html.FileReader();
                  reader.onLoadEnd.listen((event) async {
                    setState(() {
                      _imageBytes = reader.result as Uint8List;
                      _imageName = file.name;
                    });
                    await _uploadImage(_imageBytes!, _imageName!);
                  });
                  reader.readAsArrayBuffer(file);
                });
              },
              child: Text('Upload Image'),
            ),
          ],
        ),
      ),
    );
  }
}
