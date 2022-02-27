// #import "Tweak.h"

NSString* PEPEStatusLabel = @"Hi From Theos!";

%group CustomStatusBar
%hook _UIStatusBarStringView
-(void)setText:(id)arg1 {
	%orig(arg1);

	if ([arg1 isKindOfClass:[NSString class]] && ![arg1 containsString:@"%"] && ![arg1 containsString:@":"]){

		%orig(PEPEStatusLabel);
	}
}
%end
%end

%ctor {
	%init(CustomStatusBar)
}