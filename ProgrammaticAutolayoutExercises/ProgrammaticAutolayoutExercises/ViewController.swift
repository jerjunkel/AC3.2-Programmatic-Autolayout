//
//  ViewController.swift
//  ProgrammaticAutolayoutExercises
//
//  Created by Jermaine Kelly on 12/13/16.
//  Copyright © 2016 Jermaine Kelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        exerciseThree()
    }
    
    
    func exerciseOne(){
        let redView = UIView()
        let greenView = UIView()
        
        self.view.addSubview(redView)
        self.view.addSubview(greenView)
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        redView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        // view1.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        redView.heightAnchor.constraint(equalToConstant: (view.frame.height / 2) - 5).isActive = true
        redView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        redView.backgroundColor = .red
        
        //greenView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 2).isActive = true
        greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        greenView.heightAnchor.constraint(equalTo: redView.heightAnchor).isActive = true
        greenView.widthAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
        greenView.backgroundColor = .green
        
    }
    
    func exerciseTwo(){
        let redView = UIView()
        let greenView = UIView()
        let blackView = UIView()
        let blueView = UIView()
        let padding: CGFloat = 20
        
        self.view.addSubview(redView)
        self.view.addSubview(greenView)
        self.view.addSubview(blackView)
        self.view.addSubview(blueView)
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        blackView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        greenView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        greenView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        greenView.widthAnchor.constraint(equalToConstant: view.frame.width/2).isActive = true
        greenView.heightAnchor.constraint(equalToConstant: (view.frame.height/3) - padding).isActive = true
        greenView.backgroundColor = .green
        
        redView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        redView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        redView.widthAnchor.constraint(equalToConstant: view.frame.width/2).isActive = true
        redView.backgroundColor = .red
        
        blackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        blackView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        blackView.widthAnchor.constraint(equalToConstant: view.frame.width/2).isActive = true
        blackView.heightAnchor.constraint(equalToConstant: (view.frame.height/3) - padding).isActive = true
        blackView.backgroundColor = .black
        
        blueView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        blueView.widthAnchor.constraint(equalToConstant: view.frame.width/2).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: (view.frame.height/3) - padding).isActive = true
        blueView.backgroundColor = .blue
        
       
    }
    
    func exerciseThree(){
        let redView = UIView()
        let greenView = UIView()
        
        self.view.addSubview(redView)
        redView.addSubview(greenView)
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        redView.heightAnchor.constraint(equalToConstant: view.frame.height / 2).isActive = true
        redView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        redView.backgroundColor = .blue
        
        greenView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        greenView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        greenView.heightAnchor.constraint(equalToConstant: redView.frame.height / 2).isActive = true
        print(redView.frame.height / 2)
        greenView.widthAnchor.constraint(equalToConstant: redView.frame.width / 2).isActive = true
        print(redView.frame.width / 2)
        greenView.backgroundColor = .green
        
    }
    
}

