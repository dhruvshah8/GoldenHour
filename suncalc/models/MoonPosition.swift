//
//  MoonPosition.swift
//  suncalc-example
//
//  Created by Shaun Meredith on 10/2/14.
//

import Foundation

class MoonPosition {
	var azimuth:Double
	var altitude:Double
	var distance:Double
	
	init(azimuth:Double, altitude:Double, distance:Double) {
		self.azimuth = azimuth
		self.altitude = altitude
		self.distance = distance
	}
}
