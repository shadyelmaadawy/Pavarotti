//
//  Button+Ext.swift
//  Pavarotii
//
//  Created by Shady El-Maadawy on 18/02/2024.
//

import Foundation

internal extension Button {
    
    func localizate() {
        
        guard let value = self.localizedValue else {
            
            self.setTitle(self.titleLabel?.text, for: .normal)
            return
        }
        
        self.setTitle(value, for: .normal)
    }
}

