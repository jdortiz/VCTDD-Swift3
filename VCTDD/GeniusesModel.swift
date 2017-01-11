//
//  GeniusesModel.swift
//  VCTDD
//
//  Created by Jorge D. Ortiz Fuentes on 11/1/17.
//  Copyright © 2017 Canonical Examples. All rights reserved.
//


import Foundation


class GeniusesModel {
    private let data = [ (name: "Randal", skill: "Be invisible"),
                         (name: "Kinping", skill: "Pure strength"),
                         (name: "Donkey Kong", skill: "Throw many barells"), ]
    func fetchData() -> [(name: String, skill: String)] {
        return data
    }
}
