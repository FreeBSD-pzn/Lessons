//
//  NSLesson02.h
//  02
//
//  Created by Oleg Pyzin on 3/13/20.
//

// NS - NextSTEP from NeXT Inc.
// NeXT Inc. has been created by Steve Jobs

#import <Cocoa/Cocoa.h>


@interface NSLesson02 : NSObject
{

	IBOutlet NSTextField *stringField;
	IBOutlet NSTextField *resultStringView;
}

- (IBAction)textFieldChanged: (id)sender;
- (IBAction)stringFieldUpper: (id)sender;
- (IBAction)stringFieldLower: (id)sender;

@end
