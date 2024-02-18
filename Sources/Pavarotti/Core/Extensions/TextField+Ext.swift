//
//  TextField+Ext.swift
//  Pavarotii
//
//  Created by Shady El-Maadawy on 18/02/2024.
//

import Foundation

internal extension TextField {
    
    func localizate() {
        
        #if os(iOS)
        
            self.placeholder = self.localizedValue
            if self.textAlignment == .left || self.textAlignment == .right {
                
                guard let textValue = self.text else {
                    return
                }
                self.textAlignment = Self.pavarotti.query(for: textValue).value
                
            }

        #else
        
            self.placeholder = self.localizedValue

        #endif
    }
    
}

