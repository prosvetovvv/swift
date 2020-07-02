//
//  main.swift
//  QuadraticEquation
//
//  Created by Vitaly Prosvetov on 26.06.2020.
//  Copyright © 2020 Vitaly Prosvetov. All rights reserved.
//

import Foundation

print ("ax2 + bx + c = 0")
print ("Enter a:")
let a = Double(readLine() ?? "0") ?? 0
print ("Enter b:")
let b = Double(readLine() ?? "0") ?? 0
print ("Enter c:")
let c = Double(readLine() ?? "0") ?? 0

var x1: Double = 0
var x2: Double = 0

let d = pow(b, 2) - 4 * a * c

if (d > 0) {
    x1 = (-b + sqrt(d)) / 2 * a
    x2 = (-b - sqrt(d)) / 2 * a
    print ("x1 = \(x1) x2 = \(x2)")
    
} else if (d == 0){
    
    x1 = -b / 2 * a
    print ("x = \(x1)")
    
} else {
    
    print ("The discriminant is zero - NO roots")
    
}

    
