//
//  GeniusTableViewCell.swift
//  VCTDD
//
//  Created by Jorge D. Ortiz Fuentes on 11/1/17.
//  Copyright © 2017 Canonical Examples. All rights reserved.
//

import UIKit


class GeniusTableViewCell: UITableViewCell {
    func display(name: String) {
        textLabel?.text = name
    }
    
    func display(skill: String) {
        detailTextLabel?.text = skill
    }
}
