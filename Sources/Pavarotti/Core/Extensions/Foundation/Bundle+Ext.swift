//
//  Bundle+Ext.swift
//  Pavarotii
//
//  Created by Shady El-Maadawy on 18/02/2024.
//

import Foundation

internal extension Bundle {
    
    class func getCurrentActiveLocalizationBundle() -> Bundle? {
        
        guard let resourceValue: String = UserDefaultsManager.shared.getValue(
            for: Pavarotti.Keys.Localization.rawValue) else {
            
            return nil
            
        }

        let resourceFullPath = Bundle.main.path(forResource: resourceValue, ofType: "lproj")
        guard let resourceFullPath = resourceFullPath else {
            return nil
        }

        guard let activeBundle = Bundle.init(path: resourceFullPath) else {
            return nil
        }
        return activeBundle
        
    }
    
}

