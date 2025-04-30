import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  String? sp;

  String? ps;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(
            16.0,
          ), // Adds padding around the entire content
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create an Event',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Center(child: SvgPicture.asset('assets/images/FRAME (1).svg')),
                SizedBox(height: 16), // Space between image and first text
                Center(
                  child: Text(
                    'Add Event Images',
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 8), // Space between first and second text
                Text(
                  'Event Title',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Event Title',
                          hintTextDirection: TextDirection.ltr,

                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(' Description'),

                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:6),
                    child: TextField(
                      textAlign: TextAlign.center,
                      
                      maxLines: 3,
                    
                      decoration: InputDecoration(
                        hintText: 'Enter the Description',
                        hintTextDirection: TextDirection.ltr,
                    
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select Date',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: () async {
                        final DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2100),
                        );
                        setState(() {
                          sp =
                              "${pickedDate!.day.toString()}-${pickedDate!.month.toString()}-${pickedDate!.year.toString()}";
                        });
                        // You'd store the date in a variable in a StatefulWidget

                        // You'd store the date in a variable in a StatefulWidget
                      },
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                              ),
                              child: Icon(
                                Icons.calendar_today,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              sp == null ? 'select a date' : sp!,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 16),
                    Text(
                      'Select Time',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: () async {
                        final TimeOfDay? pickedTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                        setState(() {
                          ps =
                              '${pickedTime!.hour.toString()}:${pickedTime!.minute.toString()}';
                        });
                        // You'd store the time in a variable in a StatefulWidget
                      },
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                              ),
                              child: Icon(
                                Icons.access_time,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              ps == null ? 'Select a time' : ps!,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: CupertinoColors.extraLightBackgroundGray,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'create'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Attendence'),
        ],
      ),
    );
  }
}
