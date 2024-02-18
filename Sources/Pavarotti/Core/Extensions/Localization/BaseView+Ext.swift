//
//  BaseView+Ext.swift
//  Pavarotii
//
//  Created by Shady El-Maadawy on 18/02/2024.
//

import Foundation

#if os(iOS)

    import UIKit

    @IBDesignable
    public extension UIView
    {
        
        @IBInspectable
        var localizationKey: String?
        {
            set {
                self.accessibilityIdentifier = newValue
                self.localizateView(currentLangaugeCode: Pavarotti.shared.getActiveLanguage())
            }

            get {
                
                return self.accessibilityIdentifier
                
            }
        }

    }

#endif


#if os(macOS)

    @IBDesignable
    public extension NSView
    {

        @IBInspectable
        var localizationKey: String?
        {
            set {
                self.accessibilityIdentifier = newValue
                self.localizateView()
            }

            get {
                
                return self.accessibilityIdentifier
                
            }
        }

    }

#endif
