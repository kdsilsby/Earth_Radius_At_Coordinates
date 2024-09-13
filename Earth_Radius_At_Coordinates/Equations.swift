//
//  Equations.swift
//  Earth_Radius_At_Coordinates
//
//  Created by Kurt Silsby on 9/12/24.
//
import Foundation


//Source: https://en.wikipedia.org/wiki/Earth_radius
func geocentricRadius(latitude: Double) -> Double {
    let a = 6378.1370 //km
    let b = 6356.7523 //km
    
    let lat_rad = latitude * Double.pi / 180
    
    let numerator = pow((pow(a, 2) * cos(lat_rad)),2) + pow((pow(b, 2) * sin(lat_rad)),2)
    let denominator = pow(a * cos(lat_rad), 2) + pow(b * sin(lat_rad), 2)
    
    return sqrt(numerator/denominator)
}
