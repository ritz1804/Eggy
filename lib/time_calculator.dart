
class CalculatorBrain{
  CalculatorBrain({this.num1, this.num2, this.num3, this.num4, this.num5, this.num6, this.num7, this.num8});

  final int num1;
  final int num2;
  final int num3;
  final int num4;
  final int num5;
  final int num6;
  final int num7;
  final int num8;

  String time;
  String type;

  String calculateTime(){
    if(num1 == 1 && num3 == 1 && num6 == 1){
      time = '5.00';
    }
    else if(num1 == 1 && num3 == 1 && num7 == 1){
      time = '5.20';
    }
    else if(num1 == 1 && num3 == 1 && num8 == 1){
      time = '6.00';
    }
    else if(num1 == 1 && num4 == 1 && num6 == 1){
      time = '6.30';
    }
    else if(num1 == 1 && num4 == 1 && num7 == 1){
      time = '7.00';
    }
    else if(num1 == 1 && num4 == 1 && num8 == 1){
      time = '7.30';
    }
    else if(num1 == 1 && num5 == 1 && num6 == 1){
      time = '8.00';
    }
    else if(num1 == 1 && num5 == 1 && num7 == 1){
      time = '8.20';
    }
    else if(num1 == 1 && num5 == 1 && num8 == 1){
      time = '8.50';
    }
    else if(num2 == 1 && num3 == 1 && num6 == 1){
      time = '9.00';
    }
    else if(num2 == 1 && num3 == 1 && num7 == 1){
      time = '9.10';
    }
    else if(num2 == 1 && num3 == 1 && num8 == 1){
      time = '9.25';
    }
    else if(num2 == 1 && num4 == 1 && num6 == 1){
      time = '9.30';
    }
    else if(num2 == 1 && num4 == 1 && num7 == 1){
      time = '9.50';
    }
    else if(num2 == 1 && num4 == 1 && num8 == 1){
      time = '10.30';
    }
    else if(num2 == 1 && num5 == 1 && num6 == 1){
      time = '10.50';
    }
    else if(num2 == 1 && num5 == 1 && num7 == 1){
      time = '11.00';
    }
    else if(num2 == 1 && num5 == 1 && num8 == 1){
      time = '11.30';
    }
    return time;
  }

  String calculateType() {
    if(num6 == 1){
      type = 'Soft Boiled';
    }
    else if(num7 == 1){
      type = 'Medium Boiled';
    }
    else{
      type = 'Hard Boiled';
    }
    return type;
  }
}
