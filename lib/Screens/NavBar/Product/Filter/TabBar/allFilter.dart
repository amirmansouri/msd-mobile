import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllFilter extends StatefulWidget {
  const AllFilter({super.key});

  @override
  State<AllFilter> createState() => _AllFilterState();
}

List<bool> isCheckedList = List.filled(4, false);

class _AllFilterState extends State<AllFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Text('Intrusion',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFA0A3BD),
                    fontFamily: 'Poppins')),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Text("Range",
                style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A3BD),
                    fontFamily: 'Poppins')),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                String itemText;
                switch (index) {
                  case 0:
                    itemText = 'E con inteligencia artificial (22)';
                    break;
                  case 1:
                    itemText = 'E con inteligencia artificial (22)';
                    break;
                  case 2:
                    itemText = 'E con inteligencia artificial (22)';
                    break;
                  case 3:
                    itemText ='X1 avec l intelligence artificielle et le laser jusqu à 500m (1)';
                    break;
                  default:
                    itemText = '';
                }

                return ListTile(
                  leading: InkWell(
                    onTap: () {
                      setState(() {
                        isCheckedList[index] = !isCheckedList[index];
                      });
                    },
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9DBE9),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color:
                              isCheckedList[index] ? Colors.blue : Colors.grey,
                        ),
                      ),
                      child: isCheckedList[index]
                          ? SvgPicture.asset(
                              'assets/icon/Checkbox.svg',
                            )
                          : null,
                    ),
                  ),
                  title: Text(itemText,
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFA0A3BD),
                          fontFamily: 'Poppins')),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
