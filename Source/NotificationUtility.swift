//
//  Created by NixonShih on 2017/7/23.
//  Copyright © 2017 NixonShih. All rights reserved.
//

import Foundation

public protocol Notifiable {
    
    var name: Notification.Name { get }
    
    func observed<T: AnyObject>(by observer: T, withSelector selector: Selector, object: Any?)
    func post(object: Any?, userInfo: [AnyHashable: Any]?)
    func remove<T: AnyObject>(observer: T)
}

public extension Notifiable {
    
    func observed<T: AnyObject>(by observer: T, withSelector selector: Selector, object: Any? = nil) {
        NotificationCenter.default.addObserver(observer, selector: selector, name: name, object: object)
    }
    
    func post(object: Any? = nil, userInfo: [AnyHashable: Any]? = nil) {
        NotificationCenter.default.post(name: name, object: object, userInfo: userInfo)
    }
    
    func remove<T: AnyObject>(observer: T) {
        NotificationCenter.default.removeObserver(observer, name: name, object: nil)
    }
}
