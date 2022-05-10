import 'package:flutter/material.dart';

class DateTimePage extends StatefulWidget {
  const DateTimePage({ Key? key }) : super(key: key);

  @override
  State<DateTimePage> createState() => _DateTimePageState();
}

class _DateTimePageState extends State<DateTimePage> {
  final TextEditingController _numController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextFormField(
          controller: _numController,
          validator: (value) {
            if (value!.isEmpty) {
              return "Required";
            }
            return null;
          },
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
            disabledBorder: InputBorder.none,
            // border: OutlineInputBorder(
            //     borderSide: BorderSide.none
            // ),
            hintText: "Enter Number of Rooms",
            hintStyle: TextStyle(color: Colors.black54),
            prefixIcon: Icon(
              Icons.room_service,
              color: Colors.black,
            ),
          ),
        ),
        //SizedBox(height: 16),
        
      ),
    );
  }
}