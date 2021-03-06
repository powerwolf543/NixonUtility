//
//  Created by NixonShih on 2017/7/23.
//  Copyright © 2017 NixonShih. All rights reserved.
//

import Foundation

public struct UserDefaultDefine<Type>: RawRepresentable {
    
    public typealias RawValue = String
    
    public var rawValue: UserDefaultDefine.RawValue
    
    public init(rawValue: UserDefaultDefine.RawValue) {
        self.rawValue = rawValue
    }
}

public extension UserDefaults {
    
    subscript(key: UserDefaultDefine<Bool>) -> Bool {
        set { set(newValue, forKey: key.rawValue) }
        get { return bool(forKey: key.rawValue) }
    }
    
    subscript(key: UserDefaultDefine<Int>) -> Int {
        set { set(newValue, forKey: key.rawValue) }
        get { return integer(forKey: key.rawValue) }
    }
    
    subscript(key: UserDefaultDefine<Double>) -> Double {
        set { set(newValue, forKey: key.rawValue) }
        get { return double(forKey: key.rawValue) }
    }
    
    subscript(key: UserDefaultDefine<String>) -> String? {
        set { set(newValue, forKey: key.rawValue) }
        get { return string(forKey: key.rawValue) }
    }
    
    subscript(key: UserDefaultDefine<Data>) -> Data? {
        set { set(newValue, forKey: key.rawValue) }
        get { return data(forKey: key.rawValue) }
    }
    
    subscript(key: UserDefaultDefine<[Int]>) -> [Int]? {
        set { set(newValue, forKey: key.rawValue) }
        get { return array(forKey: key.rawValue) as? [Int] }
    }
    
    subscript(key: UserDefaultDefine<[Bool]>) -> [Bool]? {
        set { set(newValue, forKey: key.rawValue) }
        get { return array(forKey: key.rawValue) as? [Bool] }
    }
    
    subscript(key: UserDefaultDefine<[String]>) -> [String]? {
        set { set(newValue, forKey: key.rawValue) }
        get { return array(forKey: key.rawValue) as? [String] }
    }
    
    subscript(key: UserDefaultDefine<[Any]>) -> [Any]? {
        set { set(newValue, forKey: key.rawValue) }
        get { return array(forKey: key.rawValue) }
    }
    
    subscript<T>(key: UserDefaultDefine<T>) -> T? where T: Codable {
        set { setCodable(newValue, forKey: key.rawValue) }
        get { return codable(forKey: key.rawValue, type: T.self) }
    }
}
