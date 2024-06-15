import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:typed_data';
import 'dart:math';

class ImageUploadPage extends StatefulWidget {
  @override
  _ImageUploadPageState createState() => _ImageUploadPageState();
}

class _ImageUploadPageState extends State<ImageUploadPage> {
  Uint8List? _imageBytes;
  String? _imageName;

  // دالة لاختيار الصورة وعرضها
  void _chooseAndDisplayImage() {
    final html.FileUploadInputElement input = html.FileUploadInputElement()
      ..accept = 'image/*';
    input.click();
    input.onChange.listen((event) {
      final html.File file = input.files!.first;
      final reader = html.FileReader();
      reader.onLoadEnd.listen((event) {
        setState(() {
          _imageBytes = reader.result as Uint8List;
          _imageName = file.name;
        });
      });
      reader.readAsArrayBuffer(file);
    });
  }

  // دالة لرفع الصورة إلى السيرفر
  Future<void> _uploadImageToServer() async {
    if (_imageBytes != null && _imageName != null) {
      var rng = Random();
      String imageName = '${rng.nextInt(1000000)}.png';

      try {
        final uri = Uri.parse(
            'https://larra.xyz/lar_testing/flanjo/public/upload-endpoint');
        final request = http.MultipartRequest('POST', uri)
          ..files.add(http.MultipartFile.fromBytes('image', _imageBytes!,
              filename: imageName));
        final response = await request.send();

        if (response.statusCode == 200) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Image Uploaded Successfully')));
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Failed to upload image')));
        }
      } catch (e) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('No image selected')));
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
              Image.memory(
                _imageBytes!,
                width: 100, // عرض الصورة
                height: 100, // ارتفاع الصورة
                fit: BoxFit.cover, // ضبط الصورة لتغطية الحجم المحدد
              )
            else
              Text('Select an image to upload'),
            ElevatedButton(
              onPressed: _chooseAndDisplayImage,
              child: Text('Choose Image'),
            ),
            ElevatedButton(
              onPressed: _uploadImageToServer,
              child: Text('Upload to Server'),
            ),
          ],
        ),
      ),
    );
  }
}
