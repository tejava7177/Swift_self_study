//
//  ViewController.swift
//  ImgViewDemo
//
//  Created by 심주흔 on 2022/08/30.
//

import UIKit

class ViewController: UIViewController {
    var pic: UIImage?
    @IBOutlet var imgView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pic = UIImage(named: "picture.jpeg")
        
        imgView.image = pic
    }


}

