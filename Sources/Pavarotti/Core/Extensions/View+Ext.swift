//
//  View+Ext.swift
//  Pavarotii
//
//  Created by Shady El-Maadawy on 18/02/2024.
//

import Foundation
import UIKit

internal extension View {

    var localizedValue: String? {
        
        guard let localizationKey = self.localizationKey else {
            return nil
        }
        
        guard let activeBundle = Bundle.getCurrentActiveLocalizationBundle() else {
            return NSLocalizedString(localizationKey, comment: "")
        }
        return NSLocalizedString(localizationKey, bundle: activeBundle, comment: "")
    }

}

internal extension View {
    
    func setViewContentAttribute(localizationValue: String) {
        
        
        if(localizationValue == "ar") {
            
            self.semanticContentAttribute = .forceRightToLeft


        } else {

            self.semanticContentAttribute = .forceLeftToRight

        }
    }

    func localizateView(currentLangaugeCode: String) {

        self.setViewContentAttribute(
            localizationValue: currentLangaugeCode
        )
        
        self.subviews.forEach { view in
            
            view.setViewContentAttribute(
                localizationValue: currentLangaugeCode)
            if let view = view as? TextField {
                
                view.localizate()
                
            } else if let view = view as? TextView {
                
                view.localizate()
                
            } else if let view = view as? Button {
                
                view.localizate()
                
            } else if let view = view as? Label {
                
                view.localizate()
                
            }
            view.localizateView(
                currentLangaugeCode: currentLangaugeCode
            )

        }
    }
    
}
