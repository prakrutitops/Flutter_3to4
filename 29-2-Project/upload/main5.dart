import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class Details extends StatefulWidget
{
  List list;
  int index;


  Details({required this.list, required this.index});




  @override
  _UploadDataPageState createState() => _UploadDataPageState();
}

class _UploadDataPageState extends State<Details> {





  TextEditingController _textController = TextEditingController();
  File _imageFile = File("");

  Future<void> _uploadData() async {
    try {
      // API endpoint
      var url = Uri.parse('https://topsapi.000webhostapp.com/flutter_project_morning/Upload_category/upload_category_sub_image_insert.php');

      // Prepare data to be sent
        print("xyzabcd");
        print(widget.list.toString());
      var request = http.MultipartRequest('POST', url)

        ..fields['c_id'] = widget.list[widget.index]['id'].toString()
        ..files.add(await http.MultipartFile.fromPath('c_images', _imageFile.path));

      // Send the request
      var response = await request.send();

      // Check the status code of the response
      if (response.statusCode == 200) {
        print('Data uploaded successfully');

      } else {
        print('Failed to upload data. Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception while uploading data: $e');
    }
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Text & Image'+widget.list[widget.index]['id'].toString()),
      ),

      body: Padding(

        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Enter text',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Choose Image'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _imageFile != null ? _uploadData : null,
              child: Text('Upload Data'),
            ),
          ],
        ),
      ),
    );
  }
}
