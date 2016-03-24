//
//  EnemiesView.swift
//  TrumpVsEveryone
//
//  Created by Andrei Nastasiu on 23/03/16.
//  Copyright © 2016 Tyler Youk. All rights reserved.
//

import SpriteKit

class EnemiesView : ModalView {
    // MARK: - Immutable var
    let exitButton = SpriteButtonNode(imageNamed: TextureFileName.kCloseEnemiesViewButton)
    var highestUserScore:Int?
    
    let firstImage = SpriteButtonNode(imageNamed: TextureFileName.kHilaryClinton)
    let secondImage = SpriteButtonNode(imageNamed: TextureFileName.kTedCruz)
    let thirdImage = SpriteButtonNode(imageNamed: TextureFileName.kJebBush)
    let fourthImage = SpriteButtonNode(imageNamed: TextureFileName.kMacMiller)
    let fifthImage = SpriteButtonNode(imageNamed: TextureFileName.kBernieSanders)
    let sixthImage = SpriteButtonNode(imageNamed: TextureFileName.kFloRida)
    let seventhImage = SpriteButtonNode(imageNamed: TextureFileName.kBarackObama)
    let eighthImage = SpriteButtonNode(imageNamed: TextureFileName.kVladimirPutin)
    let ninethImage = SpriteButtonNode(imageNamed: TextureFileName.kMarcoRubio)
   
    let spriteImagesArray: Array<SpriteButtonNode>
    var tableView = UIViewController()
    // MARK: - Init
    init(overallHighestUserScore: Int) {
        //self.scene?.view?.addSubview(tableView)
        
        spriteImagesArray = [self.firstImage, self.secondImage, self.thirdImage, self.fourthImage, self.fifthImage, self.sixthImage, self.seventhImage, self.eighthImage, ninethImage]
        self.highestUserScore = overallHighestUserScore
        super.init(size: CGSize(width: 640, height: 1000))

        //Resume
        exitButton.position = CGPoint(x: modalBackground.frame.maxX, y: modalBackground.frame.maxY)
        modal.addChild(exitButton)
        
        //0 - 0
        let firstImageToSet = self.createNewImageRequiredPoints(15, position: 0, xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 150)
        modal.addChild(firstImageToSet)
        
        let firstTextLabel:SKLabelNode = self.createNewLabelWithPoints(15, name: "Hillari Clinton", xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 250)
        modal.addChild(firstTextLabel)
    
        
        //0 - 1
        let secondImageToSet = self.createNewImageRequiredPoints(20, position: 1, xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 150)
        modal.addChild(secondImageToSet)
        let secondTextLabel = self.createNewLabelWithPoints(20, name:"Ted Cruz", xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 250)
        modal.addChild(secondTextLabel)
        
        //1 - 0
        let thirdImage = self.createNewImageRequiredPoints(30, position: 2, xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 350)
        modal.addChild(thirdImage)
        let thirdTextLabel = self.createNewLabelWithPoints(30, name:"Jeb Bush", xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 450)
        modal.addChild(thirdTextLabel)
        
        //1 - 1
        let fourthImageToSet = self.createNewImageRequiredPoints(70, position: 3, xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 350)
        modal.addChild(fourthImageToSet)
        let fourthTextLabel = self.createNewLabelWithPoints(70, name:"Mac Miller", xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 450)
        modal.addChild(fourthTextLabel)
        
        //2 - 0
        let fifthImage = self.createNewImageRequiredPoints(75, position: 4, xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 550)
        modal.addChild(fifthImage)

        let fifthTextLabel = self.createNewLabelWithPoints(75, name:"Bernie Sanders", xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 650)
        modal.addChild(fifthTextLabel)
        
        //2 - 1
        let sixthImage = self.createNewImageRequiredPoints(80, position: 5, xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 550)
        modal.addChild(sixthImage)
        
        let sixthTextLabel = self.createNewLabelWithPoints(80, name:"Flo Rida", xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 650)
        modal.addChild(sixthTextLabel)
        
        //3 - 0
        let seventhImage = self.createNewImageRequiredPoints(120, position: 6, xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 750)
        modal.addChild(seventhImage)
        
        let seventhTextLabel = self.createNewLabelWithPoints(120, name:"Barack Obama", xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 850)
        modal.addChild(seventhTextLabel)
        
        //3 - 1
        let eightImage = self.createNewImageRequiredPoints(125, position: 7, xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 750)
        modal.addChild(eightImage)
        
        let eightTextLabel = self.createNewLabelWithPoints(125, name:"Vladirimir Putin", xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 850)
        modal.addChild(eightTextLabel)
        
       
        //4
        let ninthImage = self.createNewImageRequiredPoints(130, position: 8, xPosition:Int(modalBackground.frame.midX), yPosition: Int(modalBackground.frame.maxY) - 850)
        modal.addChild(ninthImage)
        
        let ninthTextLabel = self.createNewLabelWithPoints(130, name:"Marco Rubio", xPosition: Int(modalBackground.frame.midX), yPosition: Int(modalBackground.frame.maxY) - 950)
        modal.addChild(ninthTextLabel)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func checkIfImageShouldAppear(userScore: Int, requiredScore: Int) -> Bool {
        return userScore >= requiredScore
    }
    
    private func createNewLabelWithPoints(pointsRequired: Int, name: String, xPosition:Int, yPosition: Int) -> SKLabelNode {
        var aLabel = SKLabelNode()
        aLabel = SKLabelNode(fontNamed: "Arial")
        if(self.highestUserScore >= pointsRequired) {
            aLabel.text = name
        } else {
            aLabel.text = "Unlock at " + String(pointsRequired)
        }
        aLabel.fontSize = 25
        aLabel.position = CGPoint(x: xPosition, y: yPosition)
        return aLabel
    }
    
    private func createNewImageRequiredPoints(pointsRequired: Int, position: Int, xPosition: Int, yPosition: Int) -> SpriteButtonNode {
        if (self.checkIfImageShouldAppear(self.highestUserScore!, requiredScore: pointsRequired)) {
            let characterImage = spriteImagesArray[position]
            characterImage.position = CGPoint(x: xPosition, y: yPosition)
            return characterImage
        }
        let defaultImage = SpriteButtonNode(imageNamed: TextureFileName.kNoImage)
        defaultImage.position = CGPoint(x: xPosition, y: yPosition)
        return defaultImage
    }
    
}


