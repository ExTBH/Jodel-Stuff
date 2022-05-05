%group Hooks

%hook _TtC5Jodel18ExperimentsService
-  (bool)isMuteUserEnabled {
    return 1;
} 
%end /*End Hook */

%hook JDLFeedActionContext
-  (bool)isAbleToMute {
    return 1;
} 
%end /*End Hook */


%end /*End Group */

%ctor {
	%init(Hooks)
}