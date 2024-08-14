import 'package:flutter/material.dart';

class NumbersOperationPage extends StatefulWidget {
  const NumbersOperationPage({super.key});

  @override
  State<NumbersOperationPage> createState() => _NumbersOperationPageState();
}

class _NumbersOperationPageState extends State<NumbersOperationPage> {
  String _result="";
  @override
  Widget build(BuildContext context) {
    TextEditingController _num1=TextEditingController();
    TextEditingController _num2=TextEditingController();
    TextEditingController _num3=TextEditingController();




    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Number Operations"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(10),
            child:TextField(
            controller: _num1,
            decoration: InputDecoration(
              hintText: "Enter 1st number",
              labelText: "Num1",
            ),
          ),
          
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child:TextField(
            controller: _num2,
            decoration: InputDecoration(
              hintText: "Enter 2nd number",
              labelText: "Num2",
            ),
          ),
          
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child:TextField(
            controller: _num3,
            decoration: InputDecoration(
              hintText: "Enter 3rd number",
              labelText: "Num3",
            ),
          ),
          ),

          Padding(
            padding: EdgeInsets.all(10),

            child: ElevatedButton(
              child: Text("Calculate"),
              
              onPressed: () { 
                
                double num1=double.tryParse(_num1.text)??0;
                double num2=double.tryParse(_num2.text)??0;
                double num3=double.tryParse(_num3.text)??0;
                double result=num1+num2+num3;
                setState(() {
                  _result='Result: ${result}';
                });
              },
            
            ), 
          ),
          SizedBox(height: 32),
            Text(
              _result,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
        ],
      ),
    );
  }
}
























// class NumbersOperationPage extends StatefulWidget {
//   const NumbersOperationPage({super.key});

//   @override
//   State<NumbersOperationPage> createState() => _NumbersOperationPageState();
// }

// class _NumbersOperationPageState extends State<NumbersOperationPage> {
//   final TextEditingController _firstNumberController = TextEditingController();
//   final TextEditingController _secondNumberController = TextEditingController();
//   final TextEditingController _thirdNumberController = TextEditingController();

//   String _result = '';

//   void _calculateResult() {
//     final double firstNumber =
//         double.tryParse(_firstNumberController.text) ?? 0;
//     final double secondNumber =
//         double.tryParse(_secondNumberController.text) ?? 0;
//     final double thirdNumber =
//         double.tryParse(_thirdNumberController.text) ?? 0;

//     final double sum = firstNumber + secondNumber;
//     final double result = sum * thirdNumber;

//     setState(() {
//       _result = 'Result: $result';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Number Operations'),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: <Widget>[
//             TextField(
//               controller: _firstNumberController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 labelText: 'First Number',
//               ),
//             ),
//             SizedBox(height: 16),
//             TextField(
//               controller: _secondNumberController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 labelText: 'Second Number',
//               ),
//             ),
//             SizedBox(height: 16),
//             TextField(
//               controller: _thirdNumberController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 labelText: 'Third Number',
//               ),
//             ),
//             const SizedBox(height: 32),
//             ElevatedButton(
//               onPressed: _calculateResult,
//               child: Text('Calculate'),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blue,
//                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                 textStyle: TextStyle(fontSize: 20),
//               ),
//             ),
//             SizedBox(height: 32),
//             Text(
//               _result,
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
