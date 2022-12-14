import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merohealth/constants/routes_constant.dart';
import 'package:merohealth/screens/disease%20and%20threat/widgets/container_with_title.dart';
import 'package:merohealth/screens/dissease/screen.dart';
import 'package:merohealth/screens/home/widgets/custom_back_button.dart';
import 'package:merohealth/screens/home/widgets/custom_text_form_field.dart';

class DiseaseAndThreatScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  @override
  String forTitle(int index) {
    if (index == 0) {
      return "Covid";
    } else if (index == 1) {
      return "Malaria";
    } else if (index == 2) {
      return "Typhoid";
    } else if (index == 3) {
      return "Rabies";
    } else if (index == 4) {
      return "High blood pressure";
    } else if (index == 5) {
      return "Copd";
    } else if (index == 6) {
      return "T.b";
    } else if (index == 7) {
      return "Tonsils";
    } else if (index == 8) {
      return "Scabies";
    } else if (index == 9) {
      return "Ostroporosis";
    } else {
      return "Error";
    }
  }

  String forUrl(int index) {
    if (index == 0) {
      return "assets/images/covid.jpg";
    } else if (index == 1) {
      return "assets/images/malaria.jpg";
    } else if (index == 2) {
      return "assets/images/typhoid.jpg";
    } else if (index == 3) {
      return "assets/images/rabies.jpg";
    } else if (index == 4) {
      return "assets/images/highbp.jpg";
    } else if (index == 5) {
      return "assets/images/copd.jpg";
    } else if (index == 6) {
      return "assets/images/tb.jpg";
    } else if (index == 7) {
      return "assets/images/tonsils.jpg";
    } else if (index == 8) {
      return "assets/images/scabies.jpg";
    } else if (index == 9) {
      return "assets/images/osteoporosis.jpg";
    } else {
      return "Error";
    }
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomBackButton(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomTextFormField(
                hinttext: "Search Symptoms", controller: controller),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: ContainerWithTitle(
                      url: forUrl(index),
                      disease: forTitle(index),
                    ),
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Disease(
                                      url: "assets/images/covid.jpg",
                                      diseaseName: "Covid",
                                      precautions1: "Wear masks",
                                      precautions2: "Get vaccinated",
                                      precautions3:
                                          " Wash your hands and use sanitizer",
                                      symptoms1: "Fever",
                                      symptoms2: "Loss of taste and sense",
                                      symptoms3: "Tiredness",
                                    ))));
                      } else if (index == 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Disease(
                                      url: "assets/images/malaria.jpg",
                                      diseaseName: "Malaria",
                                      precautions1:
                                          "Apply insect repellent to exposed skin.",
                                      precautions2: "Wear long-sleeved cloth.",
                                      precautions3: "Use a mosquito net .",
                                      symptoms1: "Abdominal pain",
                                      symptoms2: "Chills and sweats",
                                      symptoms3:
                                          "Diarrhea, nausea and vomiting",
                                    ))));
                      } else if (index == 2) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Disease(
                                      url: "assets/images/typhoid.jpg",
                                      diseaseName: "Typhoid",
                                      precautions1:
                                          "Avoid drinking untreated water.",
                                      precautions2:
                                          "Avoid raw fruits and vegetables.",
                                      precautions3: "Wash your hands. ",
                                      symptoms1: "High fever",
                                      symptoms2: "Weakness and fatigue",
                                      symptoms3: "Muscle aches",
                                    ))));
                      } else if (index == 3) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Disease(
                                      url: "assets/images/rabies.jpg",
                                      diseaseName: "Rabies",
                                      precautions1: "Vaccinate your pets.",
                                      precautions2:
                                          " Report stray animals to local authorities.",
                                      precautions3:
                                          "Don't approach wild animals.",
                                      symptoms1: "Fever",
                                      symptoms2: "Agitation",
                                      symptoms3: "Difficulty swallowing",
                                    ))));
                      } else if (index == 4) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Disease(
                                      url: "assets/images/highbp.jpg",
                                      diseaseName: "High blood pressure",
                                      precautions1: "Be Physically Active",
                                      precautions2: "Do Not Smoke",
                                      precautions3:
                                          "Limit How Much Alcohol You Drink",
                                      symptoms1: "Severe headaches",
                                      symptoms2: "Irregular heartbeat",
                                      symptoms3: "Difficulty breathing",
                                    ))));
                      } else if (index == 5) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Disease(
                                      url: "assets/images/copd.jpg",
                                      diseaseName: "Copd",
                                      precautions1: "Do Not Smoke",
                                      precautions2: "Be Physically Active",
                                      precautions3: "Eat a Healthy Diet",
                                      symptoms1: "increasing breathlessness",
                                      symptoms2: "frequent chest infections",
                                      symptoms3: "persistent wheezing",
                                    ))));
                      } else if (index == 6) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Disease(
                                      url: "assets/images/tb.jpg",
                                      diseaseName: "T.b",
                                      precautions1: "Do Not Smoke",
                                      precautions2:
                                          "Make a safe distance from infected",
                                      precautions3: "Eat a Healthy Diet",
                                      symptoms1: "weight loss.",
                                      symptoms2: "loss of appetite.",
                                      symptoms3: "swellings in the neck.",
                                    ))));
                      } else if (index == 7) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Disease(
                                      url: "assets/images/tonsils.jpg",
                                      diseaseName: "Tonsils",
                                      precautions1:
                                          "Drinking plenty of warm liquids.",
                                      precautions2: "Getting plenty of rest.",
                                      precautions3: "Avoiding hard foods.",
                                      symptoms1:
                                          "Moderate to severe pain in the throat .",
                                      symptoms2:
                                          "Pain in the ears, neck or jaw.",
                                      symptoms3:
                                          "Swelling of the tongue or throat.",
                                    ))));
                      } else if (index == 8) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Disease(
                                      url: "assets/images/scabies.jpg",
                                      diseaseName: "Scabies",
                                      precautions1:
                                          "Avoiding direct skin-to-skin contact.",
                                      precautions2:
                                          "Avoid personal items of infected person",
                                      precautions3: "Maintain personal hygiene",
                                      symptoms1:
                                          "Itching between the fingers and toes",
                                      symptoms2: "Itching Around the waist",
                                      symptoms3: "Itching On the chest",
                                    ))));
                      } else if (index == 9) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Disease(
                                      url: "assets/images/osteoporosis.jpg",
                                      diseaseName: "Ostroporosis",
                                      precautions1: "Eat calcium-rich foods.",
                                      precautions2: "Absorb enough vitamin D.",
                                      precautions3:
                                          "Limit alcohol consumption.",
                                      symptoms1:
                                          "Back pain, caused by collapsed vertebra.",
                                      symptoms2: "Loss of height over time.",
                                      symptoms3:
                                          "A bone that breaks much more easily.",
                                    ))));
                      }
                    },
                  );
                }),
          ),
        ],
      ),
    ));
  }
}
