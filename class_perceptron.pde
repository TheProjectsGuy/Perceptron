/*

  *Class TIPerceptron 
  We will basically adjust weights according to gradient descent algorithm and get final weights
*/

int _Taylor_Series__number_terms = 9;  //The number of terms in the taylor series

class TIPerceptron {
  float[] weights = new float[_Taylor_Series__number_terms];  //Remember that weights[0] is for the constant term
  float learningRate = 0.01;
  
  TIPerceptron() {
    for (int i = 0 ; i < _Taylor_Series__number_terms ; i++) {
      weights[i] = random(-10,10);  //Assign a random weight in the beginning
    }
  }
  
  float guess(float x) {  //return me a guess based on the X value on the graph (NOTE : cart not screen)
    float weighedSum = 0;
    for (int i = 0 ; i < _Taylor_Series__number_terms ; i++) {
      weighedSum += pow(x,i) * weights[i];
    }
    return weighedSum;
  }
  
  void learn(float X, float actualResult) {
    float error = actualResult - guess(X);
  }
}