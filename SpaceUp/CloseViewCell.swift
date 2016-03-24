//
//  CloseViewCell.swift
//  TrumpVsEveryone
//
//  Created by Andrei Nastasiu on 24/03/16.
//  Copyright © 2016 Tyler Youk. All rights reserved.
//

import UIKit

class CloseViewCell: UITableViewCell {
        

    @IBOutlet var closeButton: UIButton!
    @IBAction func closeButtonPressed(sender: UIButton) {
        
    }
    
    override func awakeFromNib() {
         super.awakeFromNib()
    }
    
    func setupCell() {
        //self.closeButton.imageView!.image = UIImage(named: "closeEnemiesViewButton")
    }
    

}
