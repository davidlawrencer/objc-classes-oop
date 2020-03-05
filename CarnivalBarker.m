//
//  CarnivalBarker.m
//  objc-classes-oop
//
//  Created by David Rifkin on 3/5/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarnivalBarker.h"
// we need to import the header by file name bc... it's not a built-in library like Foundation is. It's a "local" file.

// if you create a cocoa touch class, it creates both .m/.h
// what's cocoa? what's cocoa touch? we'll get into both when we start iOS development w/Objc
// if you look on the calendar it is scheduled for two week from now.
// k?

// we import foundation, which is where NSObject is defined.
// we also need to know what this is interfaces with, or else... there's no link between implementation and interface for our new class

// rule: import your interface into your implementation file

// later, when we have init functions, we can add "new hires" to this global var


@implementation CarnivalBarker

//what is the return type? id is part of initializer. the same object that's being initialized?
// id is the type of the object being initialized, instead of saying self.type or something?
// id and instancetype are not the same when we fight with inheritance and polymorphism on tuesday.
- (instancetype)init {
    // initializes from its superclass
    self = [super init];
    // add one to static int, which can be used later
    numberOfRemainingBarkers++;
    // in the end get back number of remaining barkers.
    return self;
}

//instance method bark
- (void)bark {
    NSLog(@"Step Right Up");
}
// class method remainingEmployed - this would need to count every instance of a carnival barker. How did we get struct/class-level info in Swift? static var. Those don't exist here in Objc.
// static var numberOfBarkersLeft = 10

// One approach - create a different object to hold that info. singleton to store "Global" or "readily-needed" information. Come back to this down the line.
// another approach - Globals. When 👎 I was too lazy to figure out where to put a variable 👎, 👍 or wanted to use it across the application 👍, I would create a global.

+ (int)remainingEmployed {
    return numberOfRemainingBarkers;
}

static int numberOfRemainingBarkers = 0;

//_name is something that we're not creating ourselves. it comes from what the implementation creates internally for itself when it sees a property -> ivar, instance variable. like a private var for us to use with our properties.

// if we have a property, we can tell the compiler that we want to make it available in certain ways.
@synthesize name = _name;

@end


