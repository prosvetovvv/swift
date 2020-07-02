//
//  main.swift
//  Triangle
//
//  Created by Vitaly Prosvetov on 27.06.2020.
//  Copyright © 2020 Vitaly Prosvetov. All rights reserved.
//

import Foundation

print ("Enter leg a:")
let a = Double(readLine() ?? "0") ?? 0
print ("Enter leg b:")
let b = Double(readLine() ?? "0") ?? 0

var c: Double = 0
var s: Double = 0
var p: Double = 0

c = sqrt (pow(a, 2) + pow(b, 2))
p = a + b + c
s = (a * b) / 2

print("c = \(c), P = \(p), S = \(s)")


