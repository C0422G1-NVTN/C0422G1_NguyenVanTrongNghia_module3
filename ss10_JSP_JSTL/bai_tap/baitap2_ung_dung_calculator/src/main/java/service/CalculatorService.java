package service;

public class CalculatorService {
    public static String calculator(double firstNumber, double secondNumber, String operator) {
        double result = 0;
        switch (operator) {
            case "+":
                result = firstNumber + secondNumber;
                break;
            case "-":
                result = firstNumber - secondNumber;
                break;
            case "*":
                result = firstNumber * secondNumber;
                break;
            case "/":
               if (secondNumber == 0){
                   return "Lỗi chia hết cho 0";
               }
               result = firstNumber / secondNumber;
               break;
        }
        return "Kết quả là : " + result;
    }
}
