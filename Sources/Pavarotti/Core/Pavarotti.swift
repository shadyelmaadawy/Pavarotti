//
//  Pavarotti.swift
//  Pavarotii
//
//  Created by Shady El-Maadawy on 18/02/2024.
//

import Foundation

public final class Pavarotti {
    
    // MARK: - Properties
    
    private let nlpEngine: PavarottiNlpEngine
    private let userDefaults = UserDefaultsManager.shared

    // MARK: - Static Properties
    
    public static let shared: Pavarotti = Pavarotti.init()

    // MARK: - Initialization
    
    private init() {
        
        self.nlpEngine = PavarottiNlpEngine.init()
        
    }
}

internal extension Pavarotti {
    
    func query(for value: String) -> PavarottiNlpEngine.PavarottiTextAlignment {
        
        return self.nlpEngine.getLanguageAlignment(for: value)
        
    }
}

// MARK: - Operations

public extension Pavarotti {
    
    func getSupportedLanguages() -> [String] {
        let values = Bundle.allBundles.map { value -> [String] in
            return value.localizations
        }.flatMap({$0})
        return values.filter({$0 != "Base"})
    }
    
    func getActiveLanguage() -> String {
        
        guard let activeLanguage: String = self.userDefaults.getValue(for: Keys.Localization.rawValue) else {
            return ""
        }
        return activeLanguage
    }
    
    /// Set Active language to system with language code
    /// - Parameter languageCode:
    func setActiveLanguage(with languageCode: String) {
        
        self.userDefaults.set(for: Keys.Localization.rawValue, value: languageCode)
  }
    
}

