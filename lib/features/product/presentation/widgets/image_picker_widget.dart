import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key, required this.fileimage});
  final ValueChanged<File?> fileimage;

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  File? fileimage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        fileimage != null
            ? Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.file(
                    fileimage!,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            : Container(
                width: double.infinity,
                height: size.height * .25,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () async {
                    final ImagePicker picker = ImagePicker();
                    final xfile = await picker.pickImage(
                      source: ImageSource.gallery,
                    );
                    if (xfile != null) {
                      setState(() {
                        fileimage = File(xfile.path);
                        widget.fileimage(fileimage);
                      });
                    }
                  },
                  icon: Icon(Icons.image_outlined, size: size.height * .22),
                ),
              ),
        Positioned(
          child: IconButton(
            onPressed: () {
              setState(() {
                fileimage = null;
                widget.fileimage(fileimage);
              });
            },
            icon: Icon(Icons.close),
          ),
        ),
      ],
    );
  }
}
