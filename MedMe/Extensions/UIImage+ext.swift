//
//  UIImage+ext.swift
//  esegurado
//
//  Created by Erika Segatto on 22/03/18.
//  Copyright © 2018 evologica. All rights reserved.
//

import Foundation
import UIKit


extension UIImage {
    func getData() -> Data? {
        guard let imageData = UIImageJPEGRepresentation(self, 1) else {
            return UIImagePNGRepresentation(self)
        }
        
        let imageSizeKB = Double(imageData.count) / 1000.0
        if imageSizeKB < 512 {
            return imageData
        }
        let newSize = 512 / imageSizeKB
        return UIImageJPEGRepresentation(self, CGFloat(newSize))
    }
}
