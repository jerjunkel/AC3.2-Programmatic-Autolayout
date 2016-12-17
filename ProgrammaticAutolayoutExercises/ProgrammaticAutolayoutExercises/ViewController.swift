//
//  ViewController.swift
//  ProgrammaticAutolayoutExercises
//
//  Created by Jermaine Kelly on 12/13/16.
//  Copyright © 2016 Jermaine Kelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let redView = UIView()
    let greenView = UIView()
    let blackView = UIView()
    let blueView = UIView()
    let labelOne = UILabel()
    let labelTwo = UILabel()
    let textFieldOne = UITextField()
    let textFieldTwo = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Needs to be set for all views
        redView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        blackView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        labelOne.translatesAutoresizingMaskIntoConstraints = false
        labelTwo.translatesAutoresizingMaskIntoConstraints = false
        textFieldTwo.translatesAutoresizingMaskIntoConstraints = false
        textFieldOne.translatesAutoresizingMaskIntoConstraints = false
        
        redView.backgroundColor = .red
        greenView.backgroundColor = .green
        blueView.backgroundColor = .blue
        blackView.backgroundColor = .black
        exerciseFive()
    }
    
    //
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        print("Portait >>>\n")
        let oldCollection = self.traitCollection
        print(oldCollection.layoutDirection.rawValue)
        print("Landscape >>>\n")
        super.willTransition(to: newCollection, with: coordinator)
        print(newCollection)
    }
    
    func exerciseOne(){
        let padding: CGFloat = 10
        self.view.addSubview(redView)
        self.view.addSubview(greenView)
        
        redView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        redView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5, constant: -padding).isActive = true
        redView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        redView.backgroundColor = .red
        greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        greenView.heightAnchor.constraint(equalTo: redView.heightAnchor, constant: padding).isActive = true
        greenView.widthAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
        greenView.backgroundColor = .green
        
    }
    
    func exerciseTwo(){
        let padding: CGFloat = 20
        
        self.view.addSubview(redView)
        self.view.addSubview(greenView)
        self.view.addSubview(blackView)
        self.view.addSubview(blueView)
        
        greenView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        greenView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        greenView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        greenView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.33, constant: -padding).isActive = true
        greenView.backgroundColor = .green
        
        redView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        redView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        //redView.widthAnchor.constraint(equalToConstant: view.frame.width/2).isActive = true
        redView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        redView.backgroundColor = .red
        
        blackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        blackView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        blackView.widthAnchor.constraint(equalTo: greenView.widthAnchor).isActive = true
        blackView.heightAnchor.constraint(equalTo: greenView.heightAnchor).isActive = true
        blackView.backgroundColor = .black
        
        blueView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        blueView.widthAnchor.constraint(equalTo: greenView.widthAnchor).isActive = true
        blueView.heightAnchor.constraint(equalTo: greenView.heightAnchor).isActive = true
        blueView.backgroundColor = .blue
        
        
    }
    
    func exerciseThree(){
        self.view.addSubview(redView)
        redView.addSubview(greenView)
        
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        redView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        redView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        redView.backgroundColor = .blue
        
        greenView.centerXAnchor.constraint(equalTo: redView.centerXAnchor).isActive = true
        greenView.centerYAnchor.constraint(equalTo: redView.centerYAnchor).isActive = true
        greenView.heightAnchor.constraint(equalTo: redView.heightAnchor, multiplier: 0.5).isActive = true
        greenView.widthAnchor.constraint(equalTo: redView.widthAnchor, multiplier: 0.5).isActive = true
        greenView.backgroundColor = .green
        
    }
    
    func exerciseFour(){
        self.view.addSubview(redView)
        self.view.addSubview(greenView)
        self.view.addSubview(blueView)
        self.view.addSubview(blackView)
        
        greenView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        greenView.widthAnchor.constraint(equalToConstant: 90).isActive = true
        greenView.trailingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        greenView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        blueView.heightAnchor.constraint(equalTo: greenView.heightAnchor).isActive = true
        blueView.widthAnchor.constraint(equalTo: greenView.widthAnchor).isActive = true
        blueView.leadingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        blueView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        blackView.widthAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 2).isActive = true
        blackView.heightAnchor.constraint(equalTo: greenView.heightAnchor).isActive = true
        blackView.bottomAnchor.constraint(equalTo: greenView.topAnchor).isActive = true
        blackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        redView.heightAnchor.constraint(equalTo: blackView.heightAnchor).isActive = true
        redView.widthAnchor.constraint(equalTo: blackView.widthAnchor).isActive = true
        redView.topAnchor.constraint(equalTo: greenView.bottomAnchor).isActive = true
        redView.centerXAnchor.constraint(equalTo: blackView.centerXAnchor).isActive = true
    }
    
    func exerciseFive(){
        self.view.addSubview(greenView)
        greenView.addSubview(labelOne)
        greenView.addSubview(labelTwo)
        greenView.addSubview(textFieldOne)
        greenView.addSubview(textFieldTwo)
        
        greenView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        greenView.bottomAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        labelOne.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: 8).isActive = true
        labelOne.topAnchor.constraint(equalTo: greenView.topAnchor, constant: 40).isActive = true
        labelOne.text = "Label One"
        labelOne.setContentCompressionResistancePriority(UILayoutPriorityRequired, for: .horizontal)
        labelOne.setContentHuggingPriority(UILayoutPriorityRequired, for: .horizontal)
        
        labelTwo.leadingAnchor.constraint(equalTo: labelOne.leadingAnchor).isActive = true
        labelTwo.topAnchor.constraint(equalTo: labelOne.bottomAnchor, constant: 8).isActive = true
        labelTwo.text = "Label Two"
        labelTwo.setContentCompressionResistancePriority(UILayoutPriorityRequired, for: .horizontal)
        labelTwo.setContentHuggingPriority(UILayoutPriorityRequired, for: .horizontal)
        
        textFieldOne.firstBaselineAnchor.constraint(equalTo: labelOne.firstBaselineAnchor).isActive = true
        textFieldOne.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: -8).isActive = true
        textFieldOne.leadingAnchor.constraint(equalTo: labelOne.trailingAnchor, constant: 40).isActive = true
        textFieldOne.backgroundColor = .white
        textFieldOne.placeholder = "User Name"
        
        textFieldTwo.firstBaselineAnchor.constraint(equalTo: labelTwo.firstBaselineAnchor).isActive = true
        textFieldTwo.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: -8).isActive = true
        textFieldTwo.leadingAnchor.constraint(equalTo: labelTwo.trailingAnchor, constant: 40).isActive = true
        textFieldTwo.backgroundColor = .white
        textFieldTwo.placeholder = "Password"

        
    }
    
}

