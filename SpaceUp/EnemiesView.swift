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
    let exitButton = SpriteButtonNode(imageNamed: TextureFileName.ButtonResume)
    var currentUserScore:Int?
    
    let firstImage = SpriteButtonNode(imageNamed: TextureFileName.CometSmall)
    let secondImage = SpriteButtonNode(imageNamed: TextureFileName.CometSmall2)
    let thirdImage = SpriteButtonNode(imageNamed: TextureFileName.CometSmall3)
    let fourthImage = SpriteButtonNode(imageNamed: TextureFileName.CometMedium)
    let fifthImage = SpriteButtonNode(imageNamed: TextureFileName.CometMedium2)
    let sixthImage = SpriteButtonNode(imageNamed: TextureFileName.CometMedium3)
    let seventhImage = SpriteButtonNode(imageNamed: TextureFileName.CometLarge)
    let eighthImage = SpriteButtonNode(imageNamed: TextureFileName.CometLarge2)
    let ninethImage = SpriteButtonNode(imageNamed: TextureFileName.CometLarge3)
   
    let spriteImagesArray: Array<SpriteButtonNode>
    
    // MARK: - Init
    init(currentScore: Int) {
        spriteImagesArray = [self.firstImage, self.secondImage, self.thirdImage, self.fourthImage, self.fifthImage, self.sixthImage, self.seventhImage, self.eighthImage, ninethImage]
        self.currentUserScore = currentScore
        self.currentUserScore = 15
        super.init(size: CGSize(width: 640, height: 1000))

        // Resume
        exitButton.position = CGPoint(x: modalBackground.frame.midX, y: modalBackground.frame.maxY - 150)
        modal.addChild(exitButton)
        
        //0 - 0
        let firstImageToSet = self.createNewImageRequiredPoints(15, position: 0, xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 250)
        modal.addChild(firstImageToSet)
        
        let firstTextLabel:SKLabelNode = self.createNewLabelWithPoints(15, name: "first one", xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 320)
        modal.addChild(firstTextLabel)
    
        
        //0 - 1
        let secondImageToSet = self.createNewImageRequiredPoints(20, position: 1, xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 250)
        modal.addChild(secondImageToSet)
        let secondTextLabel = self.createNewLabelWithPoints(20, name:"second one", xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 320)
        modal.addChild(secondTextLabel)
        
        //1 - 0
        let thirdImage = self.createNewImageRequiredPoints(30, position: 2, xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 400)
        modal.addChild(thirdImage)
        let thirdTextLabel = self.createNewLabelWithPoints(30, name:"third one", xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 470)
        modal.addChild(thirdTextLabel)
        
        //1 - 1
        let fourthImageToSet = self.createNewImageRequiredPoints(70, position: 3, xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 400)
        modal.addChild(fourthImageToSet)
        let fourthTextLabel = self.createNewLabelWithPoints(70, name:"fourth one", xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 470)
        modal.addChild(fourthTextLabel)
        
        //2 - 0
        let fifthImage = self.createNewImageRequiredPoints(75, position: 4, xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 550)
        modal.addChild(fifthImage)

        let fifthTextLabel = self.createNewLabelWithPoints(75, name:"fifth one", xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 620)
        modal.addChild(fifthTextLabel)
        
        //2 - 1
        let sixthImage = self.createNewImageRequiredPoints(80, position: 5, xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY)-550)
        modal.addChild(sixthImage)
        
        let sixthTextLabel = self.createNewLabelWithPoints(80, name:"sixth one", xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 620)
        modal.addChild(sixthTextLabel)
        
        //3 - 0
        let seventhImage = self.createNewImageRequiredPoints(120, position: 6, xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 700)
        modal.addChild(seventhImage)
        
        let seventhTextLabel = self.createNewLabelWithPoints(120, name:"fifth one", xPosition: Int(modalBackground.frame.minX) + 120, yPosition: Int(modalBackground.frame.maxY) - 770)
        modal.addChild(seventhTextLabel)
        
        //3 - 1
        let eightImage = self.createNewImageRequiredPoints(125, position: 7, xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 700)
        modal.addChild(eightImage)
        
        let eightTextLabel = self.createNewLabelWithPoints(125, name:"sixth one", xPosition: Int(modalBackground.frame.maxX) - 120, yPosition: Int(modalBackground.frame.maxY) - 770)
        modal.addChild(eightTextLabel)
        
       
        //4
        let ninthImage = self.createNewImageRequiredPoints(130, position: 8, xPosition:Int(modalBackground.frame.midX), yPosition: Int(modalBackground.frame.maxY) - 850)
        modal.addChild(ninthImage)
        
        let ninthTextLabel = self.createNewLabelWithPoints(130, name:"sixth one", xPosition: Int(modalBackground.frame.midX), yPosition: Int(modalBackground.frame.maxY) - 920)
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
        if(self.currentUserScore >= pointsRequired) {
            aLabel.text = name
        } else {
            aLabel.text = "Unlock at " + String(pointsRequired)
        }
        aLabel.fontSize = 25
        aLabel.position = CGPoint(x: xPosition, y: yPosition)
        return aLabel
    }
    
    private func createNewImageRequiredPoints(pointsRequired: Int, position: Int, xPosition: Int, yPosition: Int) -> SpriteButtonNode {
        if (self.checkIfImageShouldAppear(self.currentUserScore!, requiredScore: pointsRequired)) {
            let characterImage = spriteImagesArray[position]
            characterImage.position = CGPoint(x: xPosition, y: yPosition)
            return characterImage
        }
        let defaultImage = SpriteButtonNode(imageNamed: TextureFileName.CometSmallGlow)
        defaultImage.position = CGPoint(x: xPosition, y: yPosition)
        return defaultImage
    }
    
}


