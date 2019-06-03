/******************************************************************************

C++ Object-Oriented Programming Fundamentals

Reference for using classes and objects in C++.

Leonardo Franco de Godói

*******************************************************************************/

#include <iostream>

using namespace std;

// Parent class #1
class Box {
    // Class attributes
    public:
        double Length; 
        double Width; 
        double Height;
        
    // Class methods  
    public:
        void resize(float l, float w, float h) {
            Length = l * Length;
            Width = w * Width;
            Height = h * Height;
        }
        double getVolume() {
            double Volume = Height * Length * Width;
            return Volume;
        }
};

// Parent class #2
class Data {
    // Class attributes
    public:
        int ZipCode;
        int TrackingCode;
        float Weight;
};

// Derived Class (in order to show how inheritance works)
class Delivery: public Box, public Data {
    // Class attributes
    private:
        double maxHeight;
        float maxWeight;
        
    // Class methods
    public:
        void check() {
            if(Height <= maxHeight && Weight <= maxWeight) {
                cout << "All requirements properly met." << endl;
            }
            else if(Height <= maxHeight) {
                cout << "Weight above permitted." << endl;
            }
            else if(Weight <= maxWeight) {
                cout << "Height above permitted." << endl;
            }
            else {
                cout << "Height and Weight above permitted." << endl;
            }
        }
};

// Main function
int main()
{
    // Instantiating a delivery object
    Delivery myDelivery;
    
    // Setting delivery attributes
    myDelivery.Length = 14.5;
    myDelivery.Width = 8.5;
    myDelivery.Height = 9.0;
    myDelivery.ZipCode = 13822428;
    myDelivery.TrackingCode = 102056800;
    myDelivery.Weight = 3.42;
    
    // Computing original delivery volume
    cout << "Volume of box " << myDelivery.TrackingCode << " before resizing : " << myDelivery.getVolume() << endl;
    myDelivery.check();
    
    // Resizing delivery
    myDelivery.resize(0.5, 0.5, 2.0);
    
    // Computing new delivery volume
    cout << "Volume of box " <<  myDelivery.TrackingCode  << " before resizing : " << myDelivery.getVolume() << endl;
    myDelivery.check();

    return 0;
}