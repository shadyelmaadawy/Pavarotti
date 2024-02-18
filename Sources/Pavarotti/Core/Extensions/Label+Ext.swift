//
//  Label+Ext.swift
//  Pavarotii
//
//  Created by Shady El-Maadawy on 18/02/2024.
//

import Foundation

internal extension Label {
    
    func localizate() {
        
        #if os(iOS)
            
            self.text = self.localizedValue ?? self.text
            
            if self.textAlignment == .left || self.textAlignment == .right {
                
                guard let text = self.text else {
                    return
                }
                self.textAlignment = Self.pavarotti.query(for: text).value
            }
        
        #else
        
            self.placeholder = self.localizedValue

        #endif
    }

}

