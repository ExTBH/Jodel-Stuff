#import "Tweak.h"

// test


NSString *karmaValue = @"1000006";
%hook generalSettingsService
+(id)currentKarmaValue {
	NSLog(@"AllInOne currentKarmaValue: %@", %orig);
	%log;
	return karmaValue;
}
%end
%hook SWGKarmaResponse

-(id)karma {
	NSLog(@"AllInOne SWGKarmaResponse karma: %@", %orig);
	%log;
	return karmaValue;
}
-(void)setKarma:(id)arg0 {
	NSLog(@"AllInOne SWGKarmaResponse setKarma: %@", arg0);
	%log;
	%orig;
}

%end
%hook SWGUserStatsResponse

-(id)karma {
	NSLog(@"AllInOne SWGUserStatsResponse karma: %@", %orig);
	%log;
	return karmaValue;
}
-(void)setKarma:(id)arg0 {
	NSLog(@"AllInOne SWGUserStatsResponse setKarma: %@", arg0);
	%log;
	%orig;
}

%end

%ctor {
    %init(generalSettingsService = objc_getClass("Jodel.GeneralSettingsService"));
}

