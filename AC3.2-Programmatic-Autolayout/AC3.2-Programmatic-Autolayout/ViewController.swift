//
//  ViewController.swift
//  AC3.2-Programmatic-Autolayout
//
//  Created by Louis Tur on 12/12/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blueView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //usingNSLayoutContraints()
        //usingVisualFormatLanguage()

        
    }
    
    
    
    func usingNSLayoutContraints(){
        
        let blueWidthConstraint  = NSLayoutConstraint(item: blueView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200.0)
        
        let blueHeightConstraint = NSLayoutConstraint(item: blueView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200.0)
        
        let blueCenterXConstraint = NSLayoutConstraint(item: blueView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        
        let blueCenterYConstraint = NSLayoutConstraint(item: blueView, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addConstraints([blueCenterYConstraint, blueCenterXConstraint])
        self.blueView.addConstraints([blueWidthConstraint, blueHeightConstraint])
    }
    
    func usingVisualFormatLanguage(){
        /*V: Vertical, H: Horizontal, |: SuperView, -: Connection, -[blueView]-: View
         
         V:[view1(50)] sets height for view1
         H:[view1(100)] sets width for view1
         
         */
        
        // V = vertical axis
        // H = horizontal axis
        // (value) tells you the "constant" of the constraint
        // | is shorthand for superview
        
        // these will break because the super view is > 50.0pts
        // but the view1 is defined as only having 50pt height
        // so it cannot be both pinned to the top and bottom edge of
        // a view that is >50.0 in heigh AND also be 50pts
        let constraint = "V:|[view1(50.0)]|"
        let constraint2 = "H:|[view1(100.0)]|"
        
        // - is a connection of 8pt
        // V -> Top-to-bottom
        // H -> Left-to-Right
        // pins to top left corner
        let constraint3 = "V:|[view1(50.0)]"
        let constraint4 = "H:|[view1(100.0)]"
        
        // pins to bottom right corner
        let constraint5 = "V:[view1(50.0)]|"
        let constraint6 = "H:[view1(100.0)]|"
        
        // pins to top right corner
        let constraint7 = "V:|[view1(50.0)]"
        let constraint8 = "H:[view1(100.0)]|"
        
        // pins to bottom left corner
        let constraint9 = "V:[view1(50.0)]|"
        let constraint10 = "H:|[view1(100.0)]"
        
        
        let blueWidth = "H:[view]-(==0.0)-[tobias(200.0)]"
        let blueHight = "V:[view]-(==0.0)-[tobias(200.0)]"
        let views = ["tobias" : blueView,"view" : self.view]
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        let blueWidthConstraints = NSLayoutConstraint.constraints(withVisualFormat: blueWidth, options: .alignAllCenterY, metrics: nil, views: views)
        
        let blueHeightConstraints = NSLayoutConstraint.constraints(withVisualFormat: blueHight, options: .alignAllCenterX, metrics: nil, views: views)
        
        NSLayoutConstraint.activate(blueHeightConstraints)
        NSLayoutConstraint.activate(blueWidthConstraints)
        
    }
    
    func usingVisualLayoutRGBView(){
        
        let redContraints = "H:|-[red(viewWidth)]"
        let blueContraints = "H:|-[blue(50.0)]"
        let greenContraints = "H:|-[green(50.0)]"
        let verticalContraints = "V:|-[blue(viewHeight)]-20-[green(==blue)]-20-[red(==green)]"
        let views = ["blue": blueView,"red":redView,"green": greenView]
        let metric = ["viewHeight": 50,"viewWidth": 100]
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        redView.translatesAutoresizingMaskIntoConstraints  = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        
        let verts = NSLayoutConstraint.constraints(withVisualFormat: verticalContraints, options: [], metrics: metric, views: views)
        let blueHoz = NSLayoutConstraint.constraints(withVisualFormat: blueContraints, options: [], metrics: metric, views: views)
        let redHoz = NSLayoutConstraint.constraints(withVisualFormat: redContraints, options: [], metrics: metric, views: views)
        let greenHoz = NSLayoutConstraint.constraints(withVisualFormat: greenContraints, options: [], metrics: metric, views: views)
        
        NSLayoutConstraint.activate(verts)
        NSLayoutConstraint.activate(blueHoz)
        NSLayoutConstraint.activate(redHoz)
        NSLayoutConstraint.activate(greenHoz)
        
        
    }
    func layoutAnchor(){
        blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        blueView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        blueView.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        
        redView.bottomAnchor.constraint(equalTo: blueView.topAnchor, constant: -8.0).isActive = true
        redView.widthAnchor.constraint(equalTo: blueView.widthAnchor).isActive = true
        redView.heightAnchor.constraint(equalTo: blueView.heightAnchor).isActive = true
        redView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor).isActive = true
        redView.trailingAnchor.constraint(equalTo: blueView.trailingAnchor).isActive = true
        
        greenView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 8.0).isActive = true
        greenView.widthAnchor.constraint(equalTo: blueView.widthAnchor).isActive = true
        greenView.heightAnchor.constraint(equalTo: blueView.heightAnchor).isActive = true
        greenView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor).isActive = true
        greenView.trailingAnchor.constraint(equalTo: blueView.trailingAnchor).isActive = true
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        redView.translatesAutoresizingMaskIntoConstraints = false
    }
    
}

