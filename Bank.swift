//
//  main.swift
//  Bank
//
//  Created by Vitaly Prosvetov on 27.06.2020.
//  Copyright © 2020 Vitaly Prosvetov. All rights reserved.
//

import Foundation

print ("Enter deposit amount:")
var deposit = Double(readLine() ?? "0") ?? 0

print ("Enter the percent:")
let percent = Double(readLine() ?? "0") ?? 0

print ("How many years:")
let years = Int(readLine() ?? "0") ?? 1

for _ in 1...years {
    deposit = deposit + (deposit * percent / 100 )
}

print ("After \(years) years your deposit will be: \(deposit)");


