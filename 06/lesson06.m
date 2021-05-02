//
//  lesson06.m
//  06
//
// NS - reduction of NextSTEP from NeXT Inc.
// NeXT Inc. has been created by Steve Jobs

// "-" - is the method of instance
// "+" - is the method of class

#import "lesson06.h"

@implementation lesson06

- (IBAction) CountMin: (id) sender
{
	NSNumber *count;
	
	uiCountMin = (unsigned int) [uiMinutes increment];
	count = [NSNumber numberWithUnsignedInt:uiCountMin];
	[textMinutes setStringValue:[count stringValue] ];
	// Uncomment to debug
	//fprintf( stderr, "Min = %d\n", uiCountMin );
	//[count release];
}


- (IBAction) CountSec: (id) sender
{
    NSNumber *count;
	
	uiCountSec = (unsigned int) [uiSeconds increment];
	count = [NSNumber numberWithUnsignedInt:uiCountSec];
	[textSeconds setStringValue:[count stringValue] ];
	// Uncomment to debug
	//fprintf( stderr, "Sec = %d\n", uiCountSec );
}


-(IBAction) setTimer: (id)sender
{
 if( ! uiTimerOn )
   {
     // Set switch Timer ON
	 uiTimerOn = 1;
	 [timeIsOver setStringValue:@"Beginning..."];
	 __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:(uiCountMin*60+uiCountSec)
								target:self
								selector:@selector(putTimer:)
								userInfo:nil
								repeats:NO];
   }
}

-(IBAction) clearTimer: (id)sender
{
	// Set switch Timer OF
	if( uiTimerOn ) uiTimerOn = 0;
	[timeIsOver setStringValue:@""];
}

- (void) putTimer: (NSTimer *)t
{
	[timeIsOver setStringValue:@"Time is OVER."];
}

@end
