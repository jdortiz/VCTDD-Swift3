//
//  GeniusesListPresenter.swift
//  VCTDD
//
//  Created by Jorge D. Ortiz Fuentes on 11/1/17.
//  Copyright © 2017 Canonical Examples. All rights reserved.
//


import Foundation

class GeniusesListPresenter {
    
    // MARK: - Instance variables

    let model: GeniusesModel
    var dataSet: [(name: String, skill: String)] = []


    // MARK: - Initializer

    init(model: GeniusesModel) {
        self.model = model
    }


    // MARK: - Events

    func viewReady() {
        dataSet = model.fetchData()
    }
    
    func numberOfGeniuses() -> Int {
        return dataSet.count
    }
    
    func configure(cell: GeniusTableViewCell, forRow row: Int) {
        cell.display(name: dataSet[row].name)
        cell.display(skill: dataSet[row].skill)
    }
}
