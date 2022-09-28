//
//  ViewController.swift
//  Alert
//
//  Created by 심주흔 on 2022/09/28.
//

import UIKit

class ViewController: UIViewController {
    
    let guitarshop = UIImage(named: "guitarshop.jpeg")
    let tele = UIImage(named: "telecaster.jpeg")
    let lp = UIImage(named: "lespaul.jpeg")
    let jm = UIImage(named: "jazzmaster.jpeg")
    
    
    //var guitarTele = true
    
    @IBOutlet var guitar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //맨 처음에는 텔레캐스터 기타 이미지를 보여준다.
        guitar.image = guitarshop
    }
    @IBAction func btnTelecaster(_ sender: Any) {
        if(guitar.image == tele){
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 Telecaster 상태입니다.", preferredStyle: UIAlertController.Style.alert)
            
            let OnAction = UIAlertAction(title: "네 알겠습니다", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(OnAction)
            present(lampOnAlert, animated: true, completion: nil)
        }
        else{
            guitar.image = tele
            //guitarTele = true
        }
    }
    @IBAction func btnLespaul(_ sender: Any) {
    }
    @IBAction func btnJazzmaster(_ sender: Any) {
    }
    

}

