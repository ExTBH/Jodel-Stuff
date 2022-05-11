
#import "Tweak.h"
#import "JDLAPIRequestHMACHashBuilder.h"
#import "SWGCredentials.h"



// Hook HMAC Builder


%hook JDLAPIRequestHMACHashBuilder

-(id)clientType {
	SWGCredentials *instance = [[SWGCredentials alloc] init];

	NSLog(@"Jodel API Info\nsecretKey: %@\nclientType: %@\nclientId: %@",[self secretKey], %orig, [instance clientId]);

	return %orig;

}

%end

// %hook SWGCredentials
// -(id)clientId {
// 		NSLog(@"JDLLogger clientID: %@", %orig);

// 		return %orig;

// }
// -(id)appleDeviceToken {

// 		NSLog(@"JDLLogger appleDeviceToken: %@", %orig);

// 		return %orig;

// }

// %end

