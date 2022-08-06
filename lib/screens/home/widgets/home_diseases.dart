import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:merohealth/constants/MyColors.dart';
import 'package:merohealth/screens/dissease/screen.dart';

class HomeDiseases extends StatelessWidget {
  const HomeDiseases({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 400.h,
        width: 395.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: MyColors.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ImageContainer(index: 0),
                  ImageContainer(index: 1),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ImageContainer(index: 2),
                  ImageContainer(index: 3),
                ]),
          ],
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key, required this.index,
  }) : super(key: key);
  final int index;
   String forUrl(int index){
    if (index==0){
      return "https://www.bu.edu/files/2020/02/coronavirus-2019-nCoV-illustration.jpg?fbclid=IwAR1-YCr8_TYxrPDoYU8vZ55Uf9hcPjIihIY7Wfw1O1CgX5lLvrWEyOHEdHM";
    }else if(index==1) {
      return "https://www.cdc.gov/parasites/images/features/world_mosquito_day_2021/1_Anopheles_gambiae_flex.jpg?fbclid=IwAR3VsxlcFTzpupo1q6Q-5llachiXyNntcIfvnyQaoc1EjEFyy5HLmBoZc1o";
    }else if(index==2) {
      return "https://healthjade.net/wp-content/uploads/2018/10/typhoid-fever.jpg?fbclid=IwAR1KgPc2lSh5uLYuvmtBxKVLPEFzB6TDQRn6CYiBkQP-buyTtjwEB8tiYjw";
    }else if(index==3) {
      return "https://cdn.shopify.com/s/files/1/0067/6786/9988/files/Rabies.jpg?v=1632416480&fbclid=IwAR1Nx-G6_FDMPNRPycNc7aaG_aoOs0KDHbyPTWMXjHCtDE_Zd2r6kyGEoJ4";
    }else{
      return "Error";
    }
  }
  @override
  Widget build(BuildContext context) {
    
    String src =
        "https://media.springernature.com/w580h326/nature-cms/uploads/collections/Microbiology_and_infectious_diseases-58db67bcc665cc7d52151b5713608a54.jpg";
    return InkWell(
      onTap: () {
        if (index == 0) {
                        Navigator.push(context,MaterialPageRoute(builder: ((context)=>const Disease(
                          url: "https://www.bu.edu/files/2020/02/coronavirus-2019-nCoV-illustration.jpg?fbclid=IwAR1-YCr8_TYxrPDoYU8vZ55Uf9hcPjIihIY7Wfw1O1CgX5lLvrWEyOHEdHM",
                          diseaseName: "Covid",
                          precautions1: "Wear masks",
                          precautions2: "Get vaccinated",
                          precautions3: " Wash your hands and use sanitizer",
                          symptoms1:"Fever" ,
                          symptoms2: "Loss of taste and sense",
                          symptoms3: "Tiredness",
                        ))));
                      }else if(index == 1){
                        Navigator.push(context,MaterialPageRoute(builder: ((context)=>const Disease(
                          url: "https://www.cdc.gov/parasites/images/features/world_mosquito_day_2021/1_Anopheles_gambiae_flex.jpg?fbclid=IwAR3VsxlcFTzpupo1q6Q-5llachiXyNntcIfvnyQaoc1EjEFyy5HLmBoZc1o",
                          diseaseName: "Malaria",
                          precautions1: "Apply insect repellent to exposed skin.",
                          precautions2: "Wear long-sleeved cloth.",
                          precautions3: "Use a mosquito net .",
                          symptoms1:"Abdominal pain" ,
                          symptoms2: "Chills and sweats",
                          symptoms3: "Diarrhea, nausea and vomiting",
                        ))));
                      }else if(index == 2){
                        Navigator.push(context,MaterialPageRoute(builder: ((context)=>const Disease(
                          url: "https://healthjade.net/wp-content/uploads/2018/10/typhoid-fever.jpg?fbclid=IwAR1KgPc2lSh5uLYuvmtBxKVLPEFzB6TDQRn6CYiBkQP-buyTtjwEB8tiYjw",
                          diseaseName: "Typhoid",
                          precautions1: "Avoid drinking untreated water.",
                          precautions2: "Avoid raw fruits and vegetables.",
                          precautions3: "Wash your hands. ",
                          symptoms1:"High fever",
                          symptoms2: "Weakness and fatigue",
                          symptoms3: "Muscle aches",
                        ))));
                      }else if(index == 3){
                        Navigator.push(context,MaterialPageRoute(builder: ((context)=>Disease(
                          url: "https://cdn.shopify.com/s/files/1/0067/6786/9988/files/Rabies.jpg?v=1632416480&fbclid=IwAR1Nx-G6_FDMPNRPycNc7aaG_aoOs0KDHbyPTWMXjHCtDE_Zd2r6kyGEoJ4",
                          diseaseName: "Rabies",
                          precautions1:"Vaccinate your pets." ,
                          precautions2: " Report stray animals to local authorities.",
                          precautions3:"Don't approach wild animals." ,
                          symptoms1:"Fever" ,
                          symptoms2: "Agitation",
                          symptoms3: "Difficulty swallowing",
                        ))));
                      }
      },
      child: Container(
        height: 140.h,
        width: 150.w,
        alignment: Alignment.center,
        child: Image.network(
          forUrl(index),
          height: 140.h,
        width: 150.w,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
