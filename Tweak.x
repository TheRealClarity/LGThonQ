#import <Foundation/Foundation.h>

%hook UIApplication
- (BOOL)canOpenURL:(NSURL *)url {
    NSLog(@"URL: %@", url);
    return false;
}
%end

%hook AppsFlyerUtils
+ (bool)isJailbrokenWithSkipAdvancedJailbreakValidation:a {
    return false;
}
%end