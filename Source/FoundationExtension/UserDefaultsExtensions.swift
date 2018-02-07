//
//  Created by NixonShih on 2017/7/23.
//  Copyright © 2017 NixonShih. All rights reserved.
//

import Foundation

extension UserDefaults {
    
    open func setCodable<T>(_ value: T?, forKey defaultName: String) where T: Codable {
        let data = try? PropertyListEncoder().encode(value)
        set(data, forKey: defaultName)
    }
    
    open func codable<T>(forKey defaultName: String, type: T.Type) -> T? where T: Codable {
        
        guard let data = data(forKey: defaultName) else {
            return nil
        }
        
        return try? PropertyListDecoder().decode(T.self, from: data)
    }
}
