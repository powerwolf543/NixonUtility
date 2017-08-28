//
//  Created by nixon.shih on 2017/8/28.
//  Copyright © 2017 NixonShih. All rights reserved.
//

import Foundation

/// Define the UserDefaults name
public struct PreferenceName {
    /// Return 'true' if the app have been launching, 'false' if not.
    static let isLaunched = UserDefaultDefine<Bool>(rawValue: "PreferenceNameIsLaunched")
}
