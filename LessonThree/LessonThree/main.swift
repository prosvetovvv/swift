//
//  main.swift
//  LessonThree
//
//  Created by Vitaly Prosvetov on 06.07.2020.
//  Copyright © 2020 Vitaly Prosvetov. All rights reserved.


import Foundation

enum Brand {
    case Ford, BMW, Subaru, VW
}
enum Model {
    case Focus, X5, Forester, Polo
}
enum ColorCar {
    case Red, Blue, Black, Green
}
enum CarStateWindows {
    case open, close
}
enum EngineState {
    case run, stop
}

struct Car {
    var brand: Brand = .Ford
    var model: Model = .Focus
    var color: ColorCar = .Black
    let year: UInt = 2015
    var trunkVolume: UInt = 400
    var usedVolumeTrunk: UInt = 0
    var freeVolumeTrunk: UInt {
        return trunkVolume - usedVolumeTrunk
    }
    var engineState: EngineState = .stop
    var stateWindows: CarStateWindows = .close

    init() {
    }

    init(brand: Brand, model: Model, color: ColorCar, year: UInt, trunkVolume: UInt) {
        self.brand = brand
        self.model = model
        self.color = color
        self.trunkVolume = trunkVolume
    }

    mutating func startEngine() {
        engineState = .run
    }
    mutating func stopEngine() {
        engineState = .stop
    }
    mutating func openWindows() {
        stateWindows = .open
    }
    mutating func closeWindows() {
        stateWindows = .close
    }
    mutating func loadInTrunk(volume: UInt) -> Bool {
        guard  volume <= freeVolumeTrunk && volume >= 0 else {
            return false
        }
        usedVolumeTrunk += volume
        return true
    }
    mutating func unloadFromTrunk(volume: UInt) -> Bool {
        guard volume <= usedVolumeTrunk && volume >= 0 else {
            return false
        }
        usedVolumeTrunk -= volume
        return true
    }
}

var carFord = Car()

var carBMW = (brand: Brand.BMW, model: Model.X5, color: ColorCar.Blue, year: 2019, trunkVolume: 750)

if carFord.loadInTrunk(volume: 300) {
    print (carFord.usedVolumeTrunk)
} else {
    print ("Too much cargo")
}

if carFord.unloadFromTrunk(volume: 50) {
    print (carFord.usedVolumeTrunk)
}

carFord.startEngine()
print(carFord.engineState)
carFord.stopEngine()
print(carFord.engineState)

print ("\(carBMW.brand) \(carBMW.model) is \(carBMW.color)")

var truckScania = Truck()

truckScania.startEngine()

if truckScania.loadInBodywork(volume: 3000) {
    print (truckScania.usedVolumeBodywork)
} else {
    print ("Too much cargo")
}

if truckScania.unloadFromBodywork(volume: 500) {
    print (truckScania.usedVolumeBodywork)
}



