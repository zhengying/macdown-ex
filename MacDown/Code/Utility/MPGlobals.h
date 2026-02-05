//
//  MPGlobals.h
//  MacDown
//
//  Created by Tzu-ping Chung on 02/12.
//  Copyright (c) 2014 Tzu-ping Chung . All rights reserved.
//

#import "version.h"

// These should match the main bundle's values.
static NSString * const kMPApplicationName = @"MacDown";

#ifdef DEBUG
static NSString * const kMPApplicationBundleIdentifier = @"com.uranusjr.macdown-debug";
#else
static NSString * const kMPApplicationBundleIdentifier = @"com.uranusjr.macdown";
#endif
