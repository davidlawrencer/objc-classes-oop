//
//  main.m
//  objc-classes-oop
//
//  Created by David Rifkin on 3/5/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarnivalBarker.h"
// In this file, do I import header for my barker, or the objective-c file?

//Rule: Import the header to share functionality (to "interface" with the rest of the files)

/*
 Warmup: In a MacOS COMMAND LINE app, create the interface and implementation in two different files for a class CarnivalBarker, that has an instance method "bark" that barks and a class method "remainingEmployed" that gives the total number of Carnival Barkers that are left employed :(
 
 my files are .h (header) and .m (objective-c) files
 - in the header, we'll have the interface (how a person using our code should use it)
 - in the objective-c file, we'll have the implementation.
 
 What principle of OOP does this help us enforce?
 - encapsulation: data is contained within objects and is not accessible in ways other than what has been defined within that object.
 - abstraction can also apply: we use objects to receive messages, turn basic functionality into something more human-readable and do the job that a real life object might.
 
 Let's make a header file. 
*/

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        // why is init an instance method? a particular way of giving values to a particular instance (the instance is created when we make a pointer)
        CarnivalBarker *barker = [[CarnivalBarker alloc]init];
        CarnivalBarker *goodBarker = [[CarnivalBarker alloc]init];
        
        // in the past we've seen when we create and init a new object, we could just send the message [NSObject new] instead of alloc + init messages at once. This still works, even with our init override. Why?
        // It's looking for a method called init... new is just looking for alloc + init, and since our CarnivalBarker's override for init is still named the same thing, the "new" method will use it. Starts with the class, and then looks back in its superclasses if it doesn't find what it's looking for. The basic concept of which principle? polymorphism.
        // looks first for methods/properties in current class A -> A's superclass B -> B's superclass C
        CarnivalBarker *badBarker = [CarnivalBarker new];
        [badBarker setName:@"A dog dressed as a man"];
        
        // For the synthesized accessors of a property, i can use dot-notation. I can also send a message like we're used to.
        NSLog(@"The employee i see is %@ ", badBarker.name);
        
        // can't use dot-notation for my methods... because i'm really sending a message
        // bad: barker.bark;
        [barker bark];
        NSLog(@"There are %d remaining barkers in our ecosystem", [CarnivalBarker remainingEmployed]);
    }
    return 0;
}
