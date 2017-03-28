//
//  ViewController.swift
//  LoopSwift
//
//  Created by nguyen van nhuong on 3/27/17.
//  Copyright © 2017 nguyen van nhuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblNumber: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func btnDraw(_ sender: Any) {
    
        for views in self.view.subviews{
            if views.isKind(of: UIImageView.self){
                views.removeFromSuperview()

            }
            
        }
        
        let n:Int = Int(lblNumber.text!)!
        let distances = Distance(numberBall: n)
        for x in 0..<n {
            for y in 0..<n {
                DrawBall(X: 30 + (distances[0] * CGFloat(x)) , Y: 90 + (distances[1] * CGFloat(y)))
            }
        }
        
        
    }
    
    func Distance(numberBall : Int)->[CGFloat]  {
        var distanceX:CGFloat!
        let distanceY:CGFloat!
        
        if numberBall == 1 {
            distanceX = 30
            distanceY = 30
        }else{
            distanceX = (self.view.bounds.size.width - 60 )/CGFloat(numberBall - 1)
            distanceY = (self.view.bounds.size.height - 120 )/CGFloat(numberBall - 1)
        }
        return [distanceX, distanceY]
    }
    
    
    func DrawBall(X : CGFloat,Y : CGFloat)  {
            let image = UIImage(named: "green@2x")
            let imageview = UIImageView(image: image)
            imageview.center = CGPoint(x: X, y: Y )
            view.addSubview(imageview)
            
        }
        
    }







