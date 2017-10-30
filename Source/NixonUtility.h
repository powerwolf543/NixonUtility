//
//  Created by NixonShih on 2017/8/22.
//  Copyright © 2017 NixonShih. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TargetConditionals.h"

#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#elif TARGET_OS_MAC
#import <Cocoa/Cocoa.h>
#elif TARGET_OS_WATCH
#import <WatchKit/WatchKit.h>
#endif

//! Project version number for NixonUtility.
FOUNDATION_EXPORT double NixonUtilityVersionNumber;

//! Project version string for NixonUtility.
FOUNDATION_EXPORT const unsigned char NixonUtilityVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <NixonUtility/PublicHeader.h>


