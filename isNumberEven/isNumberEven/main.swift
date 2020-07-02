//
//  main.swift
//  isNumberEven
//
//  Created by Vitaly Prosvetov on 01.07.2020.
//  Copyright © 2020 Vitaly Prosvetov. All rights reserved.
//


import Foundation

// Четное число или нет.

func isEven (number: Int?) -> String {
    guard number != nil else { return "Entered incorrect value\n" }
    
    if number! % 2 == 0 {
        return "Number \(number!) is even\n"
    } else {
        return "Number \(number!) is NOT even\n"
    }
}

// Кратно 3 или нет.

func isDevisionThreeOn (number: Int?) -> String {
    guard number != nil else { return "Entered incorrect value\n" }
    
    if number! % 3 == 0 {
        return "Number \(number!) devisions on 3\n"
    } else {
        return "Number \(number!) DON'T devisions on 3\n"
    }
}

// Создание массива от 1 до 100.

func createArray () -> [Int] {
    var array = [Int]()
    for index in (1...100) {
        array.append(index)
    }
    return array
}

//  Формирование массива из четных чисел и чисел кратных 3.

func deleteNumbersFrom (array: [Int]) -> [Int] {
    var newArray = [Int]()
    for element in array {
        if (element % 2 != 0) && (element % 3 == 0){
            newArray.append(element)
        }
    }
    return newArray
}

// Генерация числа Фибоначчи.

func getFibonacciFor(number: Int?) -> Int {
    guard number != nil else { return 0 }
    guard number! <= 93 else { return 0 }
    
    var previousNumber = -1
    var nextNumber = 1
    var sum = 0
    
    for _ in 0..<number! {
        sum = previousNumber + nextNumber
        previousNumber = nextNumber
        nextNumber = sum
    }
    return sum
}

// Заполнение массива числами Фибоначчи.

func createFibonacciArray (length: Int?) -> [Int] {
    guard length != nil else { return [0] }
    guard length! > 1 else {  return [0] }
    
    var array = [Int]()
    for index in (1...length!) {
        array.append(getFibonacciFor(number: index))
    }
    return array
}

// Массив простых чисел, методом Решето Эратосфена.

func getPrimeNumbers (limit: Int?) -> [Int] {
    guard limit != nil else { return [0] }
    guard limit != nil else { return [0] }
    
    var trueArray = Array(repeating: true, count: limit! + 1)
    var primeArray = [Int]()
    let firstPrime = 2
    var i = firstPrime
    let lengthArray = trueArray.count
    
    while i * i <= lengthArray {
        if trueArray[i] {
            var j = i * i
            while j < lengthArray {
                trueArray[j] = false
                j += i
            }
            i += 1
        } else {
            i += 1
        }
    }
    for (index, value) in trueArray.enumerated() where value && index > 1 {
        primeArray.append(index)
    }
    return primeArray
}

// Четность, кратность, массив.

print ("Enter a number for check:")

let userNumber = Int(readLine()!)
let array = createArray()

print (isEven(number: userNumber))
print (isDevisionThreeOn(number: userNumber))
print ("Result array:\n", deleteNumbersFrom(array: array), "\n")

//  Числа Фибоначчи.

print ("How many numbers of Fibonacci would you add to array?:\n")

let rangeFibonacci = Int(readLine()!)

print ("Fibonacci array:\n", createFibonacciArray(length: rangeFibonacci), "\n")

// Правильные числа, Решето Эратосфена.

print ("Enter limit for prime numbers range:\n")

let range = Int(readLine()!)

print(getPrimeNumbers(limit: range))





