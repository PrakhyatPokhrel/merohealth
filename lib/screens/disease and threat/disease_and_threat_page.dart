
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
  String forTitle(int index){
    if (index==0){
      return "Covid";
    }else if(index==1) {
      return "Malaria";
    }else if(index==2) {
      return "Typhoid";
    }else if(index==3) {
      return "Rabies";
    }else if(index==4) {
      return "High blood pressure";
    }else if(index==5) {
      return "Copd";
    }else if(index==6) {
      return "T.b";
    }else if(index==7) {
      return "Tonsils";
    }else if(index==8) {
      return "Scabies";
    }else if(index==9) {
      return "Ostroporosis";
    }else{
      return "Error";
    }
  }
  String forUrl(int index){
    if (index==0){
      return "https://www.bu.edu/files/2020/02/coronavirus-2019-nCoV-illustration.jpg?fbclid=IwAR1-YCr8_TYxrPDoYU8vZ55Uf9hcPjIihIY7Wfw1O1CgX5lLvrWEyOHEdHM";
    }else if(index==1) {
      return "https://www.cdc.gov/parasites/images/features/world_mosquito_day_2021/1_Anopheles_gambiae_flex.jpg?fbclid=IwAR3VsxlcFTzpupo1q6Q-5llachiXyNntcIfvnyQaoc1EjEFyy5HLmBoZc1o";
    }else if(index==2) {
      return "https://healthjade.net/wp-content/uploads/2018/10/typhoid-fever.jpg?fbclid=IwAR1KgPc2lSh5uLYuvmtBxKVLPEFzB6TDQRn6CYiBkQP-buyTtjwEB8tiYjw";
    }else if(index==3) {
      return "https://cdn.shopify.com/s/files/1/0067/6786/9988/files/Rabies.jpg?v=1632416480&fbclid=IwAR1Nx-G6_FDMPNRPycNc7aaG_aoOs0KDHbyPTWMXjHCtDE_Zd2r6kyGEoJ4";
    }else if(index==4) {
      return "https://media.glide.mailplus.co.uk/prod/images/gm_preview/3bd05a74d8b8-untitled-design.jpg?fbclid=IwAR1-YCr8_TYxrPDoYU8vZ55Uf9hcPjIihIY7Wfw1O1CgX5lLvrWEyOHEdHM";
    }else if(index==5) {
      return "https://cdn.britannica.com/04/100104-050-9C3C04EB/Emphysema-walls-alveoli-oxygen-intake-loss-lungs.jpg?fbclid=IwAR2ZH38Khq3XK9DXbi8PjkvaUdXhoD1RYoTpj9dBC8pTE35eYC8w88Mt2ys";
    }else if(index==6) {
      return "https://www.practostatic.com/health-wiki/images/cb41de1757d654fb5e945b0840abf455.jpg?fbclid=IwAR3yWF4YIIV_WQiw0sS3vYRxwLLSrkeY3bB-WKG5KWKShvlHvRxqIHyNioA";
    }else if(index==7) {
      return "https://cdn.mos.cms.futurecdn.net/2Z2yMTSAJ9dzy7K53Fj78M.jpg?fbclid=IwAR1Nx-G6_FDMPNRPycNc7aaG_aoOs0KDHbyPTWMXjHCtDE_Zd2r6kyGEoJ4";
    }else if(index==8) {
      return "https://png.pngtree.com/png-vector/20190216/ourlarge/pngtree-vector-illustration-of-little-girl-with-a-rash-on-skin-smallpox-png-image_321378.jpg?fbclid=IwAR2ziSKzasDjoEQETi5sNpJaOBhqMo_0Z55vyNfXIuxeoeUTuejnr7hs2rY";
    }else if(index==9) {
      return "https://assets.lybrate.com/q_auto:eco,f_auto,w_450/eagle/uploads/6e67eaf22dedfbabc6fa671cd0584385/e1f49c.jpg?fbclid=IwAR2ZH38Khq3XK9DXbi8PjkvaUdXhoD1RYoTpj9dBC8pTE35eYC8w88Mt2ys";
    }else{
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
                      }else if(index == 4){
                        Navigator.push(context,MaterialPageRoute(builder: ((context)=>Disease(
                          url: "https://media.glide.mailplus.co.uk/prod/images/gm_preview/3bd05a74d8b8-untitled-design.jpg?fbclid=IwAR1-YCr8_TYxrPDoYU8vZ55Uf9hcPjIihIY7Wfw1O1CgX5lLvrWEyOHEdHM",
                          diseaseName: "High blood pressure",
                          precautions1: "Be Physically Active",
                          precautions2:"Do Not Smoke" ,
                          precautions3:"Limit How Much Alcohol You Drink" ,
                          symptoms1: "Severe headaches",
                          symptoms2:"Irregular heartbeat" ,
                          symptoms3: "Difficulty breathing",
                        ))));
                      }else if(index == 5){
                        Navigator.push(context,MaterialPageRoute(builder: ((context)=>Disease(
                          url: "https://cdn.britannica.com/04/100104-050-9C3C04EB/Emphysema-walls-alveoli-oxygen-intake-loss-lungs.jpg?fbclid=IwAR2ZH38Khq3XK9DXbi8PjkvaUdXhoD1RYoTpj9dBC8pTE35eYC8w88Mt2ys",
                          diseaseName: "Copd",
                          precautions1: "Do Not Smoke",
                          precautions2: "Be Physically Active",
                          precautions3: "Eat a Healthy Diet",
                          symptoms1: "increasing breathlessness",
                          symptoms2: "frequent chest infections",
                          symptoms3: "persistent wheezing",
                        ))));
                      }else if(index == 6){
                        Navigator.push(context,MaterialPageRoute(builder: ((context)=>Disease(
                          url: "https://www.practostatic.com/health-wiki/images/cb41de1757d654fb5e945b0840abf455.jpg?fbclid=IwAR3yWF4YIIV_WQiw0sS3vYRxwLLSrkeY3bB-WKG5KWKShvlHvRxqIHyNioA",
                          diseaseName: "T.b",
                          precautions1: "Do Not Smoke",
                          precautions2: "Make a safe distance from infected",
                          precautions3: "Eat a Healthy Diet",
                          symptoms1:"weight loss." ,
                          symptoms2:"loss of appetite." ,
                          symptoms3: "swellings in the neck.",
                        ))));
                      }else if(index == 7){
                        Navigator.push(context,MaterialPageRoute(builder: ((context)=>Disease(
                          url: "https://cdn.mos.cms.futurecdn.net/2Z2yMTSAJ9dzy7K53Fj78M.jpg?fbclid=IwAR1Nx-G6_FDMPNRPycNc7aaG_aoOs0KDHbyPTWMXjHCtDE_Zd2r6kyGEoJ4",
                          diseaseName: "Tonsils",
                          precautions1:"Drinking plenty of warm liquids.",
                          precautions2:"Getting plenty of rest." ,
                          precautions3: "Avoiding hard foods.",
                          symptoms1: "Moderate to severe pain in the throat .",
                          symptoms2:"Pain in the ears, neck or jaw." ,
                          symptoms3:"Swelling of the tongue or throat." ,
                        ))));
                      }else if(index == 8){
                        Navigator.push(context,MaterialPageRoute(builder: ((context)=>Disease(
                          url: "https://png.pngtree.com/png-vector/20190216/ourlarge/pngtree-vector-illustration-of-little-girl-with-a-rash-on-skin-smallpox-png-image_321378.jpg?fbclid=IwAR2ziSKzasDjoEQETi5sNpJaOBhqMo_0Z55vyNfXIuxeoeUTuejnr7hs2rY",
                          diseaseName: "Scabies",
                          precautions1: "Avoiding direct skin-to-skin contact.",
                          precautions2:"Avoid personal items of infected person" ,
                          precautions3:"Maintain personal hygiene" ,
                          symptoms1: "Itching between the fingers and toes",
                          symptoms2: "Itching Around the waist",
                          symptoms3: "Itching On the chest",
                        ))));
                      }else if(index == 9){
                        Navigator.push(context,MaterialPageRoute(builder: ((context)=>Disease(
                          url: "https://assets.lybrate.com/q_auto:eco,f_auto,w_450/eagle/uploads/6e67eaf22dedfbabc6fa671cd0584385/e1f49c.jpg?fbclid=IwAR2ZH38Khq3XK9DXbi8PjkvaUdXhoD1RYoTpj9dBC8pTE35eYC8w88Mt2ys",
                          diseaseName: "Ostroporosis",
                          precautions1:"Eat calcium-rich foods." ,
                          precautions2: "Absorb enough vitamin D.",
                          precautions3: "Limit alcohol consumption.",
                          symptoms1: "Back pain, caused by collapsed vertebra.",
                          symptoms2: "Loss of height over time.",
                          symptoms3:"A bone that breaks much more easily." ,
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
