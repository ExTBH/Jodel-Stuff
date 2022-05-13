
#import "Tweak.h"
#import "JDLAPIRequestHMACHashBuilder.h"
#import "SWGCredentials.h"



// Hook HMAC Builder


%hook JDLAPIRequestHMACHashBuilder

-(id)clientType {

	// TODO: figure out how to call [clientId] from another class. > Find a class with reference to both classes
	
	// figur how to log stack trace when the method is called
	NSLog(@"Jodel API Info\nsecretKey: %@\nclientType: %@\naccessToken: %@",
	[self secretKey],
	%orig,
	[self accessToken]);

	return %orig;

}

%end

%hook SWGCredentials
-(id)clientId {
	NSLog(@"Jodel API Info\nappleDeviceToken: %@\nclientId: %@\ndeviceuid: %@\nadId: %@\nregistrationData: %@",
	[self appleDeviceToken],
	%orig,
	[self deviceuid],
	[self adId],
	[self registrationData]);
	return %orig;
}

%end

