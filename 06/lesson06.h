//
//  lesson06.h
//  06
//
// NS - reduction of NextSTEP from NeXT Inc.
// NeXT Inc. has been created by Steve Jobs

// "-" - is the method of instance
// "+" - is the method of class

#import <Cocoa/Cocoa.h>


@interface lesson06 : NSObject {
	IBOutlet NSTextField *textSeconds;
	IBOutlet NSTextField *textMinutes;
	IBOutlet NSTextField *timeIsOver;
	IBOutlet NSStepper *uiSeconds;
	IBOutlet NSStepper *uiMinutes;
	unsigned int uiCountMin;
	unsigned int uiCountSec;
	unsigned int uiTimerOn;
}

	- (void) putTimer: (NSTimer *)t;
	- (IBAction) CountMin: (id) sender;
	- (IBAction) CountSec: (id) sender;
	- (IBAction) setTimer: (id) sender;
	- (IBAction) clearTimer: (id) sender;

@end
