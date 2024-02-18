//
//  Pavarotti+Localization.swift
//  Pavarotii
//
//  Created by Shady El-Maadawy on 18/02/2024.
//

import Foundation

#if os(macOS)

    import AppKit
    public typealias View = NSView

    public typealias TextView = NSTextView
    public typealias TextField = NSTextField

    public typealias Button = NSButton

#else

    import UIKit
    public typealias View = UIView

    public typealias Label = UILabel
    public typealias TextView = UITextView
    public typealias TextField = UITextField
    
    public typealias Button = UIButton

#endif
