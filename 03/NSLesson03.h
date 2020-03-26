//
//  NSLesson03.h
//  03
//
//  Created by Oleg Pyzin on 03/15/20.
//


// NS - reduction of NextSTEP from NeXT Inc.
// NeXT Inc. has been created by Steve Jobs

// "-" - is the method of instance class
// "+" - is the method of class

#import <Cocoa/Cocoa.h>


@interface NSLesson03 : NSObject {

//IBOutlet NSMutableString *strNumber;
unsigned long ulValue;

IBOutlet NSTextField *numberField;
IBOutlet NSTextField *resultFunction01;
IBOutlet NSTextField *resultFunction02;
IBOutlet NSTextField *resultFunction03;
IBOutlet NSTextField *resultFunction04;
IBOutlet NSTextField *resultFunction05;
IBOutlet NSTextField *resultFunction06;
IBOutlet NSTextField *resultFunction07;
IBOutlet NSTextField *resultFunction08;
IBOutlet NSTextField *resultFunction09;

}

//- (IBAction) button0: (id) sender;
//- (IBAction) button1: (id) sender;
//- (IBAction) button2: (id) sender;
//- (IBAction) button3: (id) sender;
//- (IBAction) button4: (id) sender;
//- (IBAction) button5: (id) sender;
//- (IBAction) button6: (id) sender;
//- (IBAction) button7: (id) sender;
//- (IBAction) button8: (id) sender;
//- (IBAction) button9: (id) sender;
- (IBAction) buttonDel: (id) sender;

// Get unsigned long number
- (IBAction) numberFieldChanged: (id) sender;
// Clear all result field
- (IBAction) clearResult: (id) sender;
// Create some arifmetics method
- (IBAction) function01: (id) sender;
- (IBAction) function02: (id) sender;
- (IBAction) function03: (id) sender;
- (IBAction) function04: (id) sender;
- (IBAction) function05: (id) sender;
- (IBAction) function06: (id) sender;
- (IBAction) function07: (id) sender;
- (IBAction) function08: (id) sender;
- (IBAction) function09: (id) sender;

@end
