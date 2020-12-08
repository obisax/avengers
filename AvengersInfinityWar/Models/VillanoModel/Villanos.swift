//
//  Villanos.swift
//  AvengersInfinityWar
//
//  Created by Humberto Franco Paredes Chaupis on 28/11/20.
//

import Foundation

typealias Villanos = [Villano]

struct Villano {
    var image: String? = nil
    var name: String
    var descripcion: String
    var poder: String 
    var nivel:Int = 0
}
