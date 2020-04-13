//
//  TaskCollectionViewCell.swift
//  bloowery-2
//
//  Created by Полина Тизик on 13.04.2020.
//  Copyright © 2020 Полина Тизик. All rights reserved.
//

import UIKit

class TaskCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var plantImage: UIImageView!
    
    @IBOutlet weak var taskName: UILabel!
    
    @IBOutlet weak var taskInfo: UILabel!
    
    @IBAction func checkboxButton(_ sender: UIButton) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
