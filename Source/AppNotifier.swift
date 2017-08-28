//
//  Created by nixon.shih on 2017/8/28.
//  Copyright © 2017 NixonShih. All rights reserved.
//

import Foundation

/// Provide appDelegate lifecycle's notifications
public enum AppNotifier: String, Notifiable {
    
    case DidFinishLaunching
    case WillResignActive
    case DidEnterBackground
    case WillEnterForeground
    case DidBecomeActive
    case WillTerminate
    
    public var name: Notification.Name {
        switch self {
        case .DidFinishLaunching:
            return Notification.Name.UIApplicationDidFinishLaunching
        case .WillResignActive:
            return Notification.Name.UIApplicationWillResignActive
        case .DidEnterBackground:
            return Notification.Name.UIApplicationDidEnterBackground
        case .WillEnterForeground:
            return Notification.Name.UIApplicationWillEnterForeground
        case .DidBecomeActive:
            return Notification.Name.UIApplicationDidBecomeActive
        case .WillTerminate:
            return Notification.Name.UIApplicationWillTerminate
        }
    }
}

public enum DeviceNotifier: String, Notifiable {
    
    case DeviceOrientationDidChange
    
    public var name: Notification.Name {
        switch self {
        case .DeviceOrientationDidChange:
            return Notification.Name.UIDeviceOrientationDidChange
        }
    }
}
