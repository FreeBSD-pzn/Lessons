//
//  NSLesson04.h
//  04
//
//  Created by Oleg Pyzin on 3/15/20.
//

// NS - NeXTSTEP from NeXT company
// "-" - is the metod of instance
// "+" - is the metod of class

#import <Cocoa/Cocoa.h>


@interface NSLesson04 : NSObject {
	IBOutlet NSTextField *firstNameField;
	IBOutlet NSTextField *lastNameField;
	IBOutlet NSTextField *emailField;
	IBOutlet NSTextField *resultTextView;
}

- (IBAction) textFieldChanged:(id)sender;

@end
