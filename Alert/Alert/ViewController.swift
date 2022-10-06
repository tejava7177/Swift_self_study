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
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 Telecaster입니다.", preferredStyle: UIAlertController.Style.alert)
            
            let OnAction = UIAlertAction(title: "네 알겠습니다", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(OnAction)
            present(lampOnAlert, animated: true, completion: nil)
        }
        else{
            guitar.image = tele
            //guitarTele = true
        }
    }
   
 
    @IBAction func btnLespaul(_ sender: UIButton) {
        if(guitar.image == lp){
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 lesspaul입니다.", preferredStyle: UIAlertController.Style.alert)
            
            let OnAction = UIAlertAction(title: "네 알겠습니다", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(OnAction)
            present(lampOnAlert, animated: true, completion: nil)
        }
        else{
            guitar.image = lp
            //guitarTele = true
        }
    }
    
    
    
    @IBAction func btnJazzmaster(_ sender: Any) {
        if(guitar.image == jm){
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 jazzmaster입니다.", preferredStyle: UIAlertController.Style.alert)
            
            let OnAction = UIAlertAction(title: "네 알겠습니다", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(OnAction)
            present(lampOnAlert, animated: true, completion: nil)
        }
        else{
            guitar.image = jm
            //guitarTele = true
        }
    }
    
    
    @IBAction func btnHome(_ sender: Any) {
        if(guitar.image == jm){
            let goHome = UIAlertController(title: "홈으로 가기", message: "홈으로 가시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            
            let homeAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default,handler: {
                ACTION in self.guitar.image = self.guitarshop
            })
            
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
            
            goHome.addAction(homeAction)
            goHome.addAction(cancelAction)
            
            present(goHome, animated: true, completion: nil)
        }
        
        if(guitar.image == lp){
            let goHome = UIAlertController(title: "램프끄기", message: "홈으로 가시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            
            let homeAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default,handler: {
                ACTION in self.guitar.image = self.guitarshop
            })
            
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
            
            goHome.addAction(homeAction)
            goHome.addAction(cancelAction)
            
            present(goHome, animated: true, completion: nil)
        }
        
        if(guitar.image == tele){
            let goHome = UIAlertController(title: "램프끄기", message: "홈으로 가시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            
            let homeAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default,handler: {
                ACTION in self.guitar.image = self.guitarshop
            })
            
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
            
            goHome.addAction(homeAction)
            goHome.addAction(cancelAction)
            
            present(goHome, animated: true, completion: nil)
        }
    }
    

}

