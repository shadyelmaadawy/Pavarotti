//
//  TextView+Ext.swift
//  Pavarotii
//
//  Created by Shady El-Maadawy on 18/02/2024.
//

import Foundation

internal extension TextView {
    
    func localizate() {
        
        #if os(iOS)
        
            self.text = self.text ?? self.localizedValue
            
        #else
        
            self.text = self.text ?? self.localizedValue

        #endif
    }

}
