//
//  NSLesson05.m
//  05
//
// NS - reduction of NextSTEP from NeXT Inc.
// NeXT Inc. has been created by Steve Jobs

// "-" - is the method of instance
// "+" - is the method of class

#import "NSLesson05.h"

@implementation NSLesson05

-(IBAction) putmessage: (id)sender
{
//	int i, len;
	
//	NSString *localizedPath;
//	NSUserDefaults *defs = [NSUserDefaults standardUserDefaults];
//	NSArray *languages = [defs objectForKey:@"AppleLanguages"];
//	NSString *preferredLang;
	
//	len = [languages count];
//	fprintf( stderr, "Number of Languages = %d\n", len );
//	i=0;
//	for( i=0; i<len; i++ )
//		{
//			preferredLang = [languages objectAtIndex:i];
//			NSLog( preferredLang );
//		}

	NSBundle *LessonBundle = [NSBundle mainBundle];
	if( [LessonBundle isLoaded] ) ;
//		{
//			NSLog( @"Bundle has been loaded...");
//			NSLog( [LessonBundle executablePath] );
//			localizedPath = [LessonBundle pathForResource:@"Localizable" ofType:@"strings"
//											inDirectory:@""
//											forLocalization:@"Russian"];
//			if( localizedPath )
//				NSLog( localizedPath );
//			else
//				NSLog( @"No localized ..." );
//		}
	else
		NSLog( @"Bundle has not been loaded...");

	[textField setStringValue: NSLocalizedString( @"HELLO", @"print message" ) ];
}

-(IBAction)clearmessage: (id)sender
{
	[textField setStringValue: @""];
}

@end
