//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let lowerLat = -80
let upperLat = 80
let resultLat = Int(arc4random_uniform(UInt32(upperLat - lowerLat + 1))) +   lowerLat

print(resultLat)


let lowerLon = -80
let upperLon = 80
let resultLon = Int(arc4random_uniform(UInt32(upperLon - lowerLon + 1))) +   lowerLon

print(resultLon)
