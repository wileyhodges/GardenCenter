func percolate(volume: Float) -> Float{
    return 40.0
}
func lookupName(plantName: String) -> Int {
    return 5
}





//
//  GardenPlantSupport.swift
//  GardenCenter
//
//  Created by J. Appleseed
//

import Foundation

func getUSDAZone(latitude: Double) -> Int{
    //
    // Returns the USDA Plant Hardiness Zone based on the latitude
    //
    var USDAZone:Int
    switch latitude {
        case 0.0..<7.0:      USDAZone = 13
        case 7.0..<14.0:     USDAZone = 12
        case 14.0..<21.0:    USDAZone = 11
        case 21.0..<28.0:    USDAZone = 10
        case 28.0..<35.0:    USDAZone =  9
        case 35.0..<42.0:    USDAZone =  8
        case 42.0..<49.0:    USDAZone =  7
        case 49.0..<56.0:    USDAZone =  6
        case 56.0..<63.0:    USDAZone =  5
        case 63.0..<70.0:    USDAZone = 4
        case 70.0..<77.0:    USDAZone = 3
        case 77.0..<84.0:    USDAZone = 2
        default:             USDAZone =  1
    }
    return USDAZone
    
}

func soilVolume(lowerRadius: Float, upperRadius: Float, height: Float) -> Float{
    //
    // Calculates the volume of soil in the pot
    //
    
    let outer = Float.pi * 1/3
    let inner = (lowerRadius * lowerRadius) + (lowerRadius*upperRadius) + (upperRadius * upperRadius)

    return inner * outer * height
    
}

func water(plant: String){
    //
    // Calls the soil percolation model
    //
    _ = soilVolume(
        lowerRadius: 1.0,
        upperRadius: 2.0,
        height: 3.0)
    
    
}

func getPlantIDFromName(plantName: String) -> Int {
    
    return lookupName(plantName: plantName)
    
}
