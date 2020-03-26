//
//  NSLesson04.m
//  04
//
//  Created by Oleg Pyzin on 3/15/20.
//

// NS - NeXTSTEP from NeXT company
// "-" - is the metod of instance
// "+" - is the metod of class

#import "NSLesson04.h"


@implementation NSLesson04

- (IBAction) textFieldChanged:(id)sender
{
	NSString *string = [NSString stringWithFormat:@"%@ %@ [%@]",
			[firstNameField stringValue],
			[lastNameField  stringValue],
			[emailField stringValue]];
// Debug
//	  NSLog( string );
	[resultTextView setStringValue : string ];
}

@end
