//
//  NSLesson01.m
//  01
//
//  Created by Oleg Pyzin on 03/13/20.
//

// NS - reduction of NextSTEP from NeXT Inc.
// NeXT Inc. has been created by Steve Jobs

// "-" - is the method of instance
// "+" - is the method of class

#import "NSLesson01.h"
//#import <NSApplications.h>

@implementation NSLesson01

-(IBAction) putmessage: (id)sender
{	
	[textField setStringValue: @"Hello World and Objective-C."];
}

-(IBAction)clearmessage: (id)sender
{
	[textField setStringValue: @""];
}

@end
