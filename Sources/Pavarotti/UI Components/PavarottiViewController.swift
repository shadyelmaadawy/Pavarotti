//
//  PavarottiViewController.swift
//  Pavarotii
//
//  Created by Shady El-Maadawy on 18/02/2024.
//

#if os(iOS)
    import UIKit
    public typealias ViewController = UIViewController
#else

    import AppKit
    public typealias ViewController = NSViewController

#endif

@IBDesignable
open class PavarottiViewController: ViewController {
    
    // MARK: - Initialization

    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.configure()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configure()
    }
    
    // MARK: - View Life Cycle

    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.view.localizateView(
            currentLangaugeCode: Self.pavarotti.getActiveLanguage()
        )

    }
    
    open override func observeValue(
        forKeyPath keyPath: String?, of object: Any?,
        change: [NSKeyValueChangeKey: Any]?, context: UnsafeMutableRawPointer?) {
            
            guard keyPath == Pavarotti.Keys.Localization.rawValue,
            let newValue = change else {
                return
            }
            guard let localizationValue = newValue[.newKey] as? String else {
                return
                
            }
            
            DispatchQueue.main.async {
                
                self.view.localizateView(currentLangaugeCode: localizationValue)

            }

    }
    
    // MARK: - Object Life Cycle;

    deinit {
        
        UserDefaults.standard.removeObserver(
            self,
            forKeyPath: Pavarotti.Keys.Localization.rawValue
        )
        
    }
    
}

// MARK: - Configure

private extension PavarottiViewController {
    
    func configure() {
        
        UserDefaults.standard.addObserver(
            self,
            forKeyPath: Pavarotti.Keys.Localization.rawValue,
            options: [.new],
            context: nil
        )
    }
    
}
