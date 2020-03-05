//
//  CarnivalBarker.h
//  objc-classes-oop
//
//  Created by David Rifkin on 3/5/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

// header file: what's in here? the interface

// need to subclass NSObject so that I can inherit functionalities. The most important are alloc and init - alloc points to a spot in memory (allocates it) and init creates an  instance in that space in memory.

// important: because we are using inheritance, if there are no implemented methods/properties, we'd only be able to use the ones inherited from NSObject

@interface CarnivalBarker: NSObject

//TODO: Create an init method (send a message) that creates a new Carnival Barker using all the inherited properties and methods of its superclass. Init should increase the number of carnival barkers hired. Inits are not factory methods... so Init is an instance method. Why? We'll see!
// OOP: something to do with how subclasses/superclasses work. children can behave differently than their parents... polymorphism. overloading and overriding! here we override NSObject's init, and when we use this interface, we'll be calling the "init" defined for CarnivalBarker.
- (instancetype)init;

// instance method bark - no implementation, just its signature. "-" indicates an instance method.
- (void)bark;

// class method remainingEmployed - again, just its signature.
+ (int)remainingEmployed;

//TODO: our carnival barker, to feel like a human being in what can be a trying job, would at least like to have a name to which they can be referred. Add this to their interface/implementation as a PROPERTY

//copy is telling our compiler that, when we modify this object (NSString), it shouldn't overwrite the original location but instead save to a new one.

// by default it's read and write (like get/set) so when the property called name is synthesized, it automatically creates two messages that we can send to an instance. getter is always the name of property (here, "name") and the setter, by default, is set(NameOfProperty) (here, "setName").
@property (copy) NSString *name;

@end
