//
//  NSLesson05.h
//  05
//
// NS - reduction of NextSTEP from NeXT Inc.
// NeXT Inc. has been created by Steve Jobs

// "-" - is the method of instance
// "+" - is the method of class

#import <Cocoa/Cocoa.h>

@interface NSLesson05 : NSObject {
	IBOutlet NSTextField *textField;
}

-(IBAction) putmessage: (id) sender;
-(IBAction) clearmessage: (id) sender;

@end
