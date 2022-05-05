#line 1 "Tweak.x"

#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class _TtC5Jodel18ExperimentsService; @class JDLFeedActionContext; 


#line 1 "Tweak.x"
static bool (*_logos_orig$Hooks$_TtC5Jodel18ExperimentsService$isMuteUserEnabled)(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel18ExperimentsService* _LOGOS_SELF_CONST, SEL); static bool _logos_method$Hooks$_TtC5Jodel18ExperimentsService$isMuteUserEnabled(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel18ExperimentsService* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$Hooks$JDLFeedActionContext$isAbleToMute)(_LOGOS_SELF_TYPE_NORMAL JDLFeedActionContext* _LOGOS_SELF_CONST, SEL); static bool _logos_method$Hooks$JDLFeedActionContext$isAbleToMute(_LOGOS_SELF_TYPE_NORMAL JDLFeedActionContext* _LOGOS_SELF_CONST, SEL); 


static bool _logos_method$Hooks$_TtC5Jodel18ExperimentsService$isMuteUserEnabled(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel18ExperimentsService* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
} 
 


static bool _logos_method$Hooks$JDLFeedActionContext$isAbleToMute(_LOGOS_SELF_TYPE_NORMAL JDLFeedActionContext* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
} 
 


 

static __attribute__((constructor)) void _logosLocalCtor_f982ec33(int __unused argc, char __unused **argv, char __unused **envp) {


	{Class _logos_class$Hooks$_TtC5Jodel18ExperimentsService = objc_getClass("_TtC5Jodel18ExperimentsService"); { MSHookMessageEx(_logos_class$Hooks$_TtC5Jodel18ExperimentsService, @selector(isMuteUserEnabled), (IMP)&_logos_method$Hooks$_TtC5Jodel18ExperimentsService$isMuteUserEnabled, (IMP*)&_logos_orig$Hooks$_TtC5Jodel18ExperimentsService$isMuteUserEnabled);}Class _logos_class$Hooks$JDLFeedActionContext = objc_getClass("JDLFeedActionContext"); { MSHookMessageEx(_logos_class$Hooks$JDLFeedActionContext, @selector(isAbleToMute), (IMP)&_logos_method$Hooks$JDLFeedActionContext$isAbleToMute, (IMP*)&_logos_orig$Hooks$JDLFeedActionContext$isAbleToMute);}} }
