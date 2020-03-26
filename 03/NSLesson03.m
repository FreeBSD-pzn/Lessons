//
//  NSLesson03.m
//  03
//
//  Created by Oleg Pyzin on 03/15/20.
//

// NS - reduction of NextSTEP from NeXT Inc.
// NeXT Inc. has been created by Steve Jobs

// "-" - is the method of instance class
// "+" - is the method of class

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
//#include <NSRange.h>

#import "NSLesson03.h"


@implementation NSLesson03

-(IBAction) numberFieldChanged: (id) sender
{
	char *tmpbuf;

	NSButton *keyPressed;
	NSString *strPressNumber;
	NSMutableString *strNumber;

	keyPressed = sender;
	
	NSString *string = [NSString stringWithFormat:@"%@", [numberField stringValue]];

	strPressNumber = [keyPressed keyEquivalent];
	strNumber = [NSMutableString stringWithString:string];

	if( ![string length] )
	   {
		if( [strPressNumber characterAtIndex:0] != '0' )
			[strNumber appendString:strPressNumber];
	   }
	else
		[strNumber appendString:strPressNumber];

	tmpbuf = (char *)malloc( [strNumber length] + 1 );

	if( tmpbuf )
		{
			[strNumber getCString:tmpbuf];
			ulValue = atol( tmpbuf );
			free( tmpbuf );
		}
	//fprintf( stderr, "%s -> %d\n", tmpbuf, ulValue );

	[numberField setStringValue:strNumber];

}

-(IBAction) buttonDel: (id) sender
{	
	char *tmpbuf;
	
	NSString *string = [NSString stringWithFormat:@"%@", [numberField stringValue]];

	NSRange aRange = NSMakeRange( 0, [string length]-1 );
	
	string = [string substringWithRange:aRange];

	tmpbuf = (char *)malloc( [string length] + 1 );
	
	[string getCString:tmpbuf];

	ulValue = atol( tmpbuf );
	
	[numberField setStringValue:string];
}


-(IBAction) clearResult: (id) sender
{
	[resultFunction01 setStringValue: @""];
	[resultFunction02 setStringValue: @""];
	[resultFunction03 setStringValue: @""];
	[resultFunction04 setStringValue: @""];
	[resultFunction05 setStringValue: @""];
	[resultFunction06 setStringValue: @""];
	[resultFunction07 setStringValue: @""];
	[resultFunction08 setStringValue: @""];
	[resultFunction09 setStringValue: @""];
}

// Calculation Factorial
-(IBAction) function01: (id) sender
{
	int i;
	unsigned long long ulResult;
	//char str2long[12];
	NSNumber *result;

	// Calculation Factorial
	if(ulValue==0)
		ulResult=1;
	else
		for( i=1, ulResult=1; i<=ulValue; i++ )
			ulResult *= i;
	
	result = [NSNumber numberWithUnsignedLongLong:ulResult];
	
	// Debug
	// fprintf( stderr, "%d\n", ulResult );

	[resultFunction01 setStringValue:[result stringValue]];
}


// Calculation number/10
-(IBAction) function02: (id) sender
{	
	// Debug
	//fprintf( stderr, "%d\n", ulValue );
	
	[resultFunction02 setStringValue:[[NSNumber numberWithUnsignedLong:(ulValue/10)] stringValue]];
}


// Calculation number%10
-(IBAction) function03: (id) sender
{			
	// Debug
	//fprintf( stderr, "%d\n", ulValue );
	
	[resultFunction03 setStringValue:[[NSNumber numberWithUnsignedLong:(ulValue%10)] stringValue]];
}

// Reverse Number as a string
-(IBAction) function04: (id) sender
{			
	unsigned int i, len;
	char *tmpbuf, tmpch;
	
	NSString *string1;
	NSString *string = [NSString stringWithFormat:@"%@", [numberField stringValue]];

	len = [string length];
	if( len )
		{
			tmpbuf = (char *)malloc( len + 1 );
	
			if( tmpbuf )
				{
					[string getCString:tmpbuf];
					for( i=0, len--; i<=(len/2); i++ )
						{
							tmpch = *(tmpbuf+i);
							*(tmpbuf+i) = *(tmpbuf+len-i);
							*(tmpbuf+len-i) = tmpch;
						}
					// Remove Leading '0'
					while( *tmpbuf == '0' && *tmpbuf )
						for( i=0; i<len+1; i++ )
						   *(tmpbuf+i) = *(tmpbuf+i+1);
					// -> Remove Leading '0'
					string1 = [NSString stringWithCString:tmpbuf
								encoding:NSUTF8StringEncoding];
					free( tmpbuf );
				}
		}
	else
		{
			string1 = string;
		}
	[resultFunction04 setStringValue:string1];
}

// Reverse number as a number
-(IBAction) function05: (id) sender
{
	unsigned long ulReverse, tmp;

	tmp = ulValue;
	ulReverse = 0;
	
	while( tmp )
		{
			ulReverse *=10;
			ulReverse += (tmp%10);
			tmp /=10;
		}
	
	[resultFunction05 setStringValue:[[NSNumber numberWithUnsignedLong:(ulReverse)] stringValue]];
}

// Convert to binary
-(IBAction) function06: (id) sender
{
	unsigned int i;
	unsigned long ulMask;
	char bits[129];   // 128 bits + '\0'
	
	for( i=0, ulMask = 0x1; i<sizeof(ulValue)*8-1; i++ )
		ulMask <<=1;
	
	for( i=0; i<sizeof(ulValue)*8; i++)
		{
			if( ulValue & ulMask )
				bits[i] = '1';
			else
				bits[i] = '0';
			ulMask >>=1;
		}
	// Ending '\0'
	bits[i] = '\0';
	// Debug
	//fprintf( stderr, "%s\n", bits );
	NSString *string = [NSString stringWithCString:bits
						encoding:NSUTF8StringEncoding];
	
	[resultFunction06 setStringValue:string];
}

-(IBAction) function07: (id) sender
{			
	[resultFunction07 setStringValue: @"Declare you function 07"];
}

-(IBAction) function08: (id) sender
{			
	[resultFunction08 setStringValue: @"Declare you function 08"];
}

-(IBAction) function09: (id) sender
{			
	[resultFunction09 setStringValue: @"Declare you function 09"];
}

@end
