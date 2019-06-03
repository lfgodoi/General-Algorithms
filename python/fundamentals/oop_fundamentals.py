#
# Python Object-Oriented Programming Fundamentals
#
# Applying some concepts of classes and objects in Python programming.
# 
# Leonardo Franco de Godói
#
 
#------------------------------------------------------------------------------

# First parent class
class Box:
    
    # Init Method
    def __init__(self, Width, Height, Length):
        self.Width = Width
        self.Height = Height
        self.Length = Length

    # Method for resizing box dimensions
    def resize(self,w,h,l):
        self.Width = w * self.Width
        self.Height = h * self.Height
        self.Length = l * self.Length

    # Method for retrieving box volume
    def getVolume(self):
        Volume = self.Width * self.Height * self.Length
        return Volume
      
# Second parent class
class Data:  
    # Attributes
    trackingCode = 0
    zipCode = 0
    weight = 0

# Child class
class Delivery(Box, Data):
    # Attributes
    maxHeight = 0
    maxWeight = 0

    # Method for checking delivery parameters
    def check(self):
        if self.Height <= self.maxHeight and self.Weight <= self.maxWeight:
            print("All requirements properly met.\n")
        elif self.Height <= self.maxHeight: 
            print("Weight above permitted.\n")
        elif self.Weight <= self.maxWeight:
            print("Height above permitted.\n")
        else: 
            print("Height and Weight above permitted.\n")

# Instantiating a delivery object
myDelivery = Delivery(14.5, 8.5,9.0);

# Setting delivery attributes
myDelivery.ZipCode = 13822428;
myDelivery.TrackingCode = 102056800;
myDelivery.Weight = 3.42;

# Computing original delivery volume
print("Volume of box ", myDelivery.TrackingCode, " before resizing : ", myDelivery.getVolume(), "\n");
myDelivery.check()

# Resizing delivery
myDelivery.resize(0.5, 0.5, 2.0)

# Computing new delivery volume
print("Volume of box ", myDelivery.TrackingCode, " before resizing : ", myDelivery.getVolume(), "\n")
myDelivery.check()