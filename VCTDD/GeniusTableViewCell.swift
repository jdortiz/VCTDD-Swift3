//
//  GeniusTableViewCell.swift
//  VCTDD
//
//  Created by Jorge D. Ortiz Fuentes on 11/1/17.
//  Copyright © 2017 Canonical Examples. All rights reserved.
//

import UIKit


class GeniusTableViewCell: UITableViewCell {
    
    // MARK: - Instance variables

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var skillLabel: UILabel!
    
    // MARK: - Display orders

    func display(name: String) {
        nameLabel?.text = name
    }
    
    func display(skill: String) {
        skillLabel?.text = skill
    }
}
