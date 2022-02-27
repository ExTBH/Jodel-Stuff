#line 1 "Tweak.x"


NSString* PEPEStatusLabel = @"Hi From Theos!";


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

@class _UIStatusBarStringView; 


#line 5 "Tweak.x"
static void (*_logos_orig$CustomStatusBar$_UIStatusBarStringView$setText$)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$CustomStatusBar$_UIStatusBarStringView$setText$(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL, id); 

static void _logos_method$CustomStatusBar$_UIStatusBarStringView$setText$(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {

	if ([arg1 isKindOfClass:[NSString class]] && ![arg1 containsString:@"%"] && ![arg1 containsString:@":"] && ![arg1 containsString:@"LTE"] && ![arg1 containsString:@"4G"]){

		_logos_orig$CustomStatusBar$_UIStatusBarStringView$setText$(self, _cmd, PEPEStatusLabel);
	}
	else {
		_logos_orig$CustomStatusBar$_UIStatusBarStringView$setText$(self, _cmd, arg1);
	}
}



static __attribute__((constructor)) void _logosLocalCtor_e641bec3(int __unused argc, char __unused **argv, char __unused **envp) {


	{Class _logos_class$CustomStatusBar$_UIStatusBarStringView = objc_getClass("_UIStatusBarStringView"); { MSHookMessageEx(_logos_class$CustomStatusBar$_UIStatusBarStringView, @selector(setText:), (IMP)&_logos_method$CustomStatusBar$_UIStatusBarStringView$setText$, (IMP*)&_logos_orig$CustomStatusBar$_UIStatusBarStringView$setText$);}} }
