import 'package:flutter/material.dart';
import 'package:kkservices/screens/bookings/available_cleaners.dart';
import 'package:kkservices/screens/bookings/date_Time.dart';


class ServicesPage extends StatefulWidget {
  final Map<String, dynamic> data;
  const ServicesPage({Key? key, required this.data}) : super(key: key);

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  String selectedType = "initial";
  String selectedFrequency = "monthly";

  Map<String, dynamic> data = {};
  @override
  void initState() {
    super.initState();
    data = widget.data;
  }

  bool isVisible = false;
  final TextEditingController _numController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Service"),
      ),
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                //borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Selected Cleaning",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          changeCleaningType("initial");
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 130,
                              width: MediaQuery.of(context).size.width * 0.43,
                              decoration: const BoxDecoration(
                                color: Color(0xffdfdeff),
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/img1.png"),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Initial Cleaning",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 10,
                              width: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffededed),
                              ),
                              child: (selectedType == "initial")
                                  ? const Icon(
                                      Icons.check_circle,
                                      color: Colors.blueAccent,
                                      size: 30,
                                    )
                                  : Container(),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changeCleaningType("upkeep");
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 130,
                              width: MediaQuery.of(context).size.width * 0.43,
                              decoration: const BoxDecoration(
                                color: Color(0xffdfdeff),
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/img2.png"),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Upkeep Cleaning",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 10,
                              width: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffededed),
                              ),
                              child: (selectedType == "upkeep")
                                  ? const Icon(
                                      Icons.check_circle,
                                      color: Colors.blueAccent,
                                      size: 30,
                                    )
                                  : Container(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Select Service",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                          changeFrequency("laundry");
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          decoration: (selectedFrequency == "laundry")
                              ? const BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))
                              : BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.3)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Laundry",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: (selectedFrequency == "laundry")
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                          changeFrequency("dusting");
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          decoration: (selectedFrequency == "dusting")
                              ? const BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))
                              : BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.3)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Dusting",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: (selectedFrequency == "dusting")
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                          changeFrequency("cleaning");
                        },
                        child: Container(
                          height: 50,
                          width: 90,
                          decoration: (selectedFrequency == "cleaning")
                              ? const BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))
                              : BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.3)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Cleaning",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: (selectedFrequency == "cleaning")
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Enter the number of rooms or piles",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Expanded(
                        child: TextFormField(
                          //width: MediaQuery.of(context).size.width * 0.875,
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
                            hintText: "Enter Number of Rooms",
                            hintStyle: TextStyle(color: Colors.black54),
                            prefixIcon: Icon(
                              Icons.room_service,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      extraWidget("fridge", "Inside Fridge", true),
                      extraWidget("organise", "Organise", false),
                      extraWidget("blind", "Small Blinds", false),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: openCalendarPage,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 8),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.blueAccent),
                          child: const Text(
                            "Next",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void calculation() {
    var val = int.parse(_numController.text);
    var estimate = val * 250;
    setState(() {
      data['amount'] = estimate;
    });
  }

  void changeCleaningType(String type) {
    selectedType = type;
    setState(() {
      data['frequency'] = type;
    });
  }

  void changeFrequency(String frequency) {
    selectedFrequency = frequency;
    setState(() {
      data['service'] = frequency;
      //print(frequency);
    });
  }

  Column extraWidget(String img, String name, bool isSelected) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueAccent,
              ),
              child: Container(
                margin: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/$img.png"),
                        fit: BoxFit.contain)),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: (isSelected == true)
                  ? Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Center(
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.purple,
                        ),
                      ))
                  : Container(),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.w700),
        )
      ],
    );
  }

  void openCalendarPage() {
    calculation();
    //FirebaseFirestore.instance.collection("booking").add(data);
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => InstructionScreen(data: data)));
  }

  // Future pickDateTime() async {
  //   DateTime? date = await pickDate();
  //   if (date == null) return; // pressed "Cancel"

  //   TimeOfDay? time = await pickTime();
  //   if (time == null) return; //pressed "Cancel"

  //   final dateTime = DateTime(
  //     date.year,
  //     date.month,
  //     date.day,
  //     time.hour,
  //     time.minute,
  //   );
  //   setState(() {
  //     this.dateTime = dateTime;
  //     data['date'] = date.year.toString() +
  //         '/' +
  //         date.month.toString() +
  //         '/' +
  //         date.day.toString();
  //     data['time'] = time.hour.toString() + ':' + time.minute.toString();
  //   });
  // }

  // Future<DateTime?> pickDate() => showDatePicker(
  //       context: context,
  //       initialDate: dateTime,
  //       firstDate: DateTime(2022),
  //       lastDate: DateTime(2100),
  //     );

  // Future<TimeOfDay?> pickTime() => showTimePicker(
  //     context: context,
  //     initialTime: TimeOfDay(hour: dateTime.hour, minute: dateTime.minute));

}
