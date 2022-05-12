
#import "Tweak.h"
#import "JDLAPIRequestHMACHashBuilder.h"
#import "SWGCredentials.h"



// Hook HMAC Builder


%hook JDLAPIRequestHMACHashBuilder

-(id)clientType {

	// TODO: figure out how to call [clientId] from another class. > Find a class with reference to both classes
	

	NSLog(@"Jodel API Info\nsecretKey: %@\nclientType: %@\nclientId: ",[self secretKey], %orig);

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

