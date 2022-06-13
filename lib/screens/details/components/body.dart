import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/components/application.dart';

class Body extends StatelessWidget {
  final Application application;
  // 생성자의 인자 값으로 Product 객체를 넘겨받음.
  const Body({Key? key, required this.application}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 500,
          // child: Image.network(
          //   application.imgUrl ?? "",
          //   fit: BoxFit.cover,
          // ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                application.location, //?? "" 일단 생략함
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "상세보기 화면 입니다.",
                style: TextStyle(fontSize: 16, color: kTextColor),
              ),
              const SizedBox(height: 8),
              Text(
                application.jobGroup,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '${application.startDate} ~ ${application.endDate}',
                style: const TextStyle(
                  fontSize: 16,
                  color: kTextColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
