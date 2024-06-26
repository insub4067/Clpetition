//
//  File.swift
//  
//
//  Created by 김인섭 on 6/17/24.
//

import UIKit

public extension UIFont {
    
    static func registerFonts() {
        for font in Pretendard.allCases {
            UIFont.registerFont(bundle: Bundle.module, fontName: font.rawValue)
        }
    }
    
    static func pretendard(_ font: Pretendard, size: CGFloat) -> UIFont {
        return .init(name: font.rawValue, size: size) ?? .systemFont(ofSize: size)
    }
}

extension UIFont {
    
    static func registerFont(bundle: Bundle, fontName: String) {
        guard let pathForResourceString = bundle.path(forResource: fontName, ofType: ".otf"),
              let fontData = NSData(contentsOfFile: pathForResourceString),
              let dataProvider = CGDataProvider(data: fontData),
              let fontRef = CGFont(dataProvider)
        else {
            print("Failed to register font - bundle identifier invalid.")
            return
        }

        var errorRef: Unmanaged<CFError>? = nil
        
        if CTFontManagerRegisterGraphicsFont(fontRef, &errorRef) == false {
            print("Failed to register font - register graphics font failed - this font may have already been registered in the main bundle.")
        }
    }
}
