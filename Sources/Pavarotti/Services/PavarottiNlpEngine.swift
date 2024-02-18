//
//  PavarottiNlpEngine.swift
//  Pavarotii
//
//  Created by Shady El-Maadawy on 18/02/2024.
//

import Foundation

import NaturalLanguage

#if os(iOS)

    import UIKit

#else

    import AppKit

#endif

internal final class PavarottiNlpEngine {
    
    // MARK: - Enums
    
    internal enum PavarottiTextAlignment {
        
        
        case left
        case right
        case unrecognized
        
        var value: NSTextAlignment {
            switch(self) {
                case .left:
                    return .left
                case .right:
                    return .right
                case .unrecognized:
                    return .natural
            }
        }
    }

 // MARK: - Properties
    
    private let languageRecognizer: NLLanguageRecognizer
    private let threadsLock = NSLock.init()
    
    
    // MARK: - Initialization
    
    init(languageRecognizer: NLLanguageRecognizer = NLLanguageRecognizer.init()) {
        self.languageRecognizer = languageRecognizer
    }
    
}

// MARK: - Operations

internal extension PavarottiNlpEngine {
    
    /// Get language alignment based on input value
    /// - Parameter value: value to scan
    /// - Returns: text alignment
    func getLanguageAlignment(for value: String) -> PavarottiTextAlignment {
        
        defer { threadsLock.unlock() }
        return threadsLock.withLock {
            
            var tempValue: String
            if value.count > 32 {
                tempValue = String.init(value.prefix(32))
            } else {
                tempValue = value
            }
            
            languageRecognizer.processString(
                tempValue
            )
            
            guard let language = languageRecognizer.dominantLanguage else {
                return PavarottiTextAlignment.unrecognized
            }
            
            switch(language.rawValue.lowercased()) {
                
                case "ar":
                
                    return PavarottiTextAlignment.right
                
                default:
                
                    return PavarottiTextAlignment.left
            }

        }
        
    }



}
