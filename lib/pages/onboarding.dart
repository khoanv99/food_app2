import 'package:flutter/material.dart';

import 'homepage.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    // Lấy kích thước màn hình hiện tại
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xff66D678), // thay # -> 0xff để chuyển sang kiểu int
      body: Container(
        width: double.infinity,// Đảm bảo Container rộng hết màn hình
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Căn giữa ảnh theo chiều dọc
          children: [
            Image.asset("images/1.jpg",
             // height: screenHeight * 0.8, // px -> xx.o kiểu double
              width: screenWidth * 0.8,
            ),
            SizedBox(height: 5),
            Text('Food Ordering App',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: "Poppins"
              ),
            ),
            SizedBox(height: 20),
          // SỬA Ở ĐÂY: Bọc GestureDetector quanh Container
          GestureDetector( //Là một widget "vô hình" bao lấy cái nút của bạn để lắng nghe hành động của người dùng.
            onTap: () { //Đây là hàm sẽ chạy khi bạn click vào nút.
              // Lệnh chuyển hướng trang
              //   Nếu bạn muốn khi nhấn nút, trang cũ bị xóa hẳn khỏi bộ nhớ (người dùng không thể nhấn nút "Back" quay lại trang Onboarding nữa), hãy dùng:
              // Navigator.pushReplacement(
              Navigator.push( //Lệnh này sẽ "đè" một trang mới lên trên trang cũ.
              context,
                MaterialPageRoute(builder: (context) => const Homepage()),//Tạo hiệu ứng chuyển trang mượt mà (trượt từ dưới lên trên iOS hoặc mờ dần trên Android)
              );
            },
            child: Container(
              width: screenWidth *0.7,// Nên để khoảng 70% màn hình thay vì full
              padding: EdgeInsets.symmetric(vertical: 15),// Thêm khoảng cách trên dưới cho nút
              decoration: BoxDecoration(
                color: Color(0xffFFE600),// Bỏ bớt chữ CC nếu bạn muốn màu vàng tươi 0xffFFE600CC
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  )
                ]
              ),
              child: Center( //<-- BỌC TEXT BẰNG CENTER để căn giữa text trong button
                child: Text(
                  "Get A Meal",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins", // config tên font ở pubspec.yaml
                  ),
                )
              ),
            )
        ),
        ],
      ),
      ),
    );
  }
}


//---------Note---------------------

// | Thuộc tính | Chứa được                       | Dùng khi nào                         |
// | ---------- | ------------------------------- | ------------------------------------ |
// | `child`    | **1 widget**                    | Khi widget chỉ có **1 con duy nhất** |
// | `children` | **NHIỀU widget (List<Widget>)** | Khi widget có **nhiều con**          |
//


// Cấu trúc của widget
// Center
// └── Container
//   └── Column
//     ├── Text
//     ├── Text
//     └── Button
//
// Center → child
//
// Container → child
//
// Column → children

