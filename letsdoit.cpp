// Baby's 1st c++ code

#include <iostream>
#include <fstream>
using namespace std;

ofstream* generate_file_head() {
  ofstream file; //testing
  file.open("image.ppm");
  file << "P3 500 500 255\n";
  return &file;
}


int main() {


  ofstream file = *generate_file_head();

  cout << "Generating an image...\n";




}
