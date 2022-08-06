import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merohealth/constants/MyColors.dart';
import 'package:merohealth/screens/home/widgets/custom_back_button.dart';
import 'package:merohealth/screens/home/widgets/title.dart';

class Disease extends StatelessWidget {
  const Disease(
      {Key? key,
      required this.symptoms1,
      required this.symptoms2,
      required this.symptoms3,
      required this.precautions1,
      required this.precautions2,
      required this.precautions3,
      required this.diseaseName, required this.url})
      : super(key: key);
  final String url;
  final String diseaseName;
  final String symptoms1;
  final String symptoms2;
  final String symptoms3;
  final String precautions1;
  final String precautions2;
  final String precautions3;
  @override
  Widget build(BuildContext context) {
    CollectionReference doctors =
        FirebaseFirestore.instance.collection('doctor1');
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            CustomBackButton(),
            MyTitle(
              text: diseaseName,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 125.h,
                width: 395.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(5)),
                child:Image.network(url,fit: BoxFit.fill,
                height: 125.h,
                width: 395.w,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(10.w),
                height: 130.h,
                width: 395.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Symptoms :",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20))),
                    SymptomsText(text: symptoms1),
                    SymptomsText(text: symptoms2),
                    SymptomsText(text: symptoms3),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(10.w),
                height: 130.h,
                width: 395.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(5)
                  ),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Precautions :",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20))),
                    SymptomsText(text: precautions1),
                    SymptomsText(text: precautions2),
                    SymptomsText(text: precautions3),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(10.w),
                height: 550.h,
                width: 395.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Text("Specialist Doctors",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        SizedBox(
                          height: 50.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GetUserName("doctor1"),
                            GetUserName("doctor1"),
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GetUserName("doctor1"),
                            GetUserName("doctor1"),
                          ],
                        )
                      ],
                    )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

// class DrInfoContainer extends StatelessWidget {
//   const DrInfoContainer({Key? key, required this.name, required this.field, required this.hospital, required this.schedule}) : super(key: key);
//   final String name;
//   final String field;
//   final String hospital;
//   final String schedule;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200.h,
//       width: 150.w,
//       decoration: BoxDecoration(
//           border: Border.all(color: MyColors.black, style: BorderStyle.solid)),
//       child: Column(children: [
//         Container(
//           height: 100.h,
//           width: 150.w,
//           child: Image.network(
//             "https://thumbs.dreamstime.com/b/photo-attractive-doctor-practitioner-lady-meet-patients-consultation-not-smiling-reliable-person-arms-crossed-wear-white-lab-176968213.jpg",
//             fit: BoxFit.fill,
//           ),
//         ),
//         Text(name),
//         Text(field),
//         Text(hospital),
//         Text(schedule),
//       ]),
//     );
//   }
// }
class GetUserName extends StatelessWidget {
  final String documentId;

  GetUserName(this.documentId);

  @override
  Widget build(BuildContext context) {
    CollectionReference doctors =
        FirebaseFirestore.instance.collection('doctors');

    return FutureBuilder<DocumentSnapshot>(
      future: doctors.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Container(
            height: 200.h,
            width: 150.w,
            decoration: BoxDecoration(
                border: Border.all(
                    color: MyColors.black, style: BorderStyle.solid)),
            child: Column(children: [
              Container(
                height: 100.h,
                width: 150.w,
                child: Image.network(
                  data['url'],
                  fit: BoxFit.fill,
                ),
              ),
              Text(" ${data['name']} "),
              Text(" ${data['field']} "),
              Text(" ${data['hospital']} "),
              Text(" ${data['schedule']} "),
            ]),
          );
        }

        return Text("loading");
      },
    );
  }
}

class SymptomsText extends StatelessWidget {
  const SymptomsText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "\u2022 $text",
            style: TextStyle(fontSize: 17),
          )),
    );
  }
}
