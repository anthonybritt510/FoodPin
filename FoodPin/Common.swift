//
//  Common.swift
//  FoodPin
//
//  Created by Jovan Markovic on 3/3/20.
//  Copyright © 2020 Jovan Markovic. All rights reserved.
//

import Foundation
import UIKit

class GradientColors {
    var gl:CAGradientLayer!
    
    init() {
        let colorTop = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.3).cgColor
        let colorBottom = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0).cgColor
        
        self.gl = CAGradientLayer()
        self.gl.colors = [colorTop, colorBottom]
        self.gl.locations = [0.0, 1.0]
    }
}
