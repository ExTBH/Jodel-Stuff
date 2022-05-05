
#import "Tweak.h"


// Hook HMAC Builder
%hook JDLAPIRequestHMACHashBuilder
// Log secret to Sys log
-(id)secretKey {
	NSLog(@"JDLLogger secretkey: %@", %orig);

	return %orig;

}
// Log client type to Sys log
-(id)clientType {
	NSLog(@"JDLLogger clientType: %@", %orig);

	return %orig;

}

%end

%hook SWGCredentials
-(id)clientId {
		NSLog(@"JDLLogger clientID: %@", %orig);

		return %orig;

}

%end