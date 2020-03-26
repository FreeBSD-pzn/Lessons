//
//  NSLesson02.m
//  02
//
//  Created by Oleg Pyzin on 3/13/20.
//

// NS - NextSTEP from NeXT Inc.
// NeXT Inc. has been created by Steve Jobs

#import "NSLesson02.h"


@implementation NSLesson02

-(IBAction)textFieldChanged: (id)sender
{
	NSString *string = [NSString stringWithFormat:@"%@", [stringField stringValue]];
	
// Debug
//    NSLog( string );	
	[resultStringView setStringValue:string];
}

- (IBAction)stringFieldUpper: (id)sender
{
	NSString *string = [NSString stringWithFormat:@"%@", [resultStringView stringValue]];

	[resultStringView setStringValue:[string uppercaseString]];
}

- (IBAction)stringFieldLower: (id)sender
{
	NSString *string = [NSString stringWithFormat:@"%@", [resultStringView stringValue]];

	[resultStringView setStringValue:[string lowercaseString]];
}

@end
