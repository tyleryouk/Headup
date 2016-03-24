//
//  EnemyCollectionCell.swift
//  TrumpVsEveryone
//
//  Created by Andrei Nastasiu on 24/03/16.
//  Copyright © 2016 Tyler Youk. All rights reserved.
//

import UIKit

class EnemyCollectionCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    private func checkIfImageShouldAppear(userScore: Int, requiredScore: Int) -> Bool {
        return userScore >= requiredScore
    }
    
    func setupCell(requiredPoints: Int, userPoints: Int, imageNameToSet: String, textLabelToSet: String) {
        if (userPoints >= requiredPoints) {
            self.imageView.image = UIImage(named: imageNameToSet)
            self.textLabel.text = textLabelToSet
        } else {
            self.imageView.image = UIImage(named: "officialquestion")
            self.textLabel.text = "Unlock at " + String(requiredPoints)
        }
        
    }
}
