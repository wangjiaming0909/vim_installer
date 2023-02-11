#include <iostream>
#include <vector>
#include <string>

void print() {}
namespace ns {

class A {
  public:
    A();
    ~A(){}
    void print();
    private:
    int a_;
};

A::A() {
  a_ = 1;
}

void A::print() {
  a_ = 2;
}

int main() {
  ns::A a;
  std::cout << 123 << std::endl;
  std::string s;
  s.begin();
  std::vector<int> v;
  print();
  a.print();
}

}
