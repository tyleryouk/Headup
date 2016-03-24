//
//  EnemiesViewController.swift
//  TrumpVsEveryone
//
//  Created by Andrei Nastasiu on 24/03/16.
//  Copyright © 2016 Tyler Youk. All rights reserved.
//

import UIKit

class EnemiesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var highestScore: Int = 0
    @IBOutlet weak var enemiesCollectionView: UICollectionView!
    let charactersImagesArray: Array<String> = ["HilaryClinton","TedCruz", "JebBush","MacMiller","BernieSanders","FloRida","BarackObama", "VladimirPutin","MarcoRubio"]
    let charactersNamesArray: Array<String> = ["Hilary Clinton","Ted Cruz", "Jeb Bush","Mac Miller","Bernie Sanders","Flo Rida","Barack Obama", "Vladimir Putin","Marco Rubio"]
    let requiredPointsArray: Array<Int> = [15,20,30,70,75,80,120,125,130]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func closeButtonTapped(sender: UIButton) {
        self.dismissViewControllerAnimated(false, completion: nil)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.charactersImagesArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let aCell = collectionView.dequeueReusableCellWithReuseIdentifier("enemyCell", forIndexPath: indexPath) as! EnemyCollectionCell
        
        aCell.setupCell(self.requiredPointsArray[indexPath.row], userPoints: self.highestScore, imageNameToSet: self.charactersImagesArray[indexPath.row], textLabelToSet: self.charactersNamesArray[indexPath.row])
        return aCell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: UIScreen.mainScreen().bounds.width/2-7, height: UIScreen.mainScreen().bounds.width/2-7)

    }
    
}
