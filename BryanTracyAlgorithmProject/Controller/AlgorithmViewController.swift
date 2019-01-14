//
//  ViewController.swift
//  BryanTracyAlgorithmProject
//
//  Created by Tracy, Bryan on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController {
    
    @IBOutlet weak var algorithmText: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        formatAlgorithm()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //override func didReceiveMemoryWarning() -> Void
    //{
      //  super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    //}

private func formatAlgorithm() -> Void
{
    let title : String = "This is a swift Program"
    
    let stepOne = "Open Xcode and make a new project."
    let stepTwo = "Create the model, view, resources, and controller files. Then, put xcassets, plist, and App delegate in resources. Then, put the 2 storyboard files in the view package. Put the view controller file in the controller package. Optionally, create a swift file for the model package."
    let stepThree = "Link the info.plist file to where it is in the resources package."
    let stepFour = "Explicitly type the return types for the view controller."
    let stepFive = "Write your program in the controller/model."
    let stepSix = "Edit the main.storyboard for gui components."
    let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix]
    let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
    let fullAttributedString = NSMutableAttributedString(string : title, attributes: attributesDictionary)
    for step in algorithm
    {
        let bullet : String = "😩"
        let formattedStep : String = "/n\(bullet) \(step)"
        let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
        let outlineStyle = createOutlineStyle()
        attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle: outlineStyle], range: NSMakeRange(0, attributedStringStep.length))
    }
    algorithmText.attributedText = fullAttributedString
    
}
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        return outlineStyle
    }
}

