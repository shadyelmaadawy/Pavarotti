//
//  UserDefaultsManager.swift
//  Pavarotii
//
//  Created by Shady El-Maadawy on 18/02/2024.
//

import Foundation

internal final class UserDefaultsManager {
    
    // MARK: - Properties
    
    private let userDefaults: UserDefaults
    private let userThreadsLock = NSLock.init()
    
    // MARK: - Statics Properties

    internal static let shared = UserDefaultsManager.init()
    
    // MARK: - Initialization
    
    private init(userDefaults: UserDefaults = UserDefaults.standard) {
        self.userDefaults = userDefaults
    }
    
}

// MARK: - Operations

internal extension UserDefaultsManager {
    
    func set(for key: String, value: Any) {
        
        defer { userThreadsLock.unlock() }
        userThreadsLock.withLock {
            
            self.userDefaults.set(value, forKey: key)

        }
        
    }
    
    func getValue<V>(for key: String) -> V? {
        
        defer { userThreadsLock.unlock() }
        return userThreadsLock.withLock {
            
            guard let value = userDefaults.value(forKey: key),
                  let value = value as? V else {
                return nil
            }
            return value
            
        }
        
    }

    
}
