//
//  ViewController.swift
//  Test05dice
//
//  Created by LongDengYu on 2021/3/21.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var UIImageView1: UIImageView!
    @IBOutlet weak var UIImageView2: UIImageView!
    @IBAction func UIButtonView(_ sender: Any) {
        updateImageView()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImageView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateImageView()
    }

    func updateImageView(){
        var index1: Int = 0
        var index2: Int = 0
        
        index1 = Int.random(in: 1...6)
        index2 = Int.random(in: 1...6)
        
        
        UIImageView1.image = UIImage(named: "dice\(index1)")
        UIImageView2.image = UIImage(named: "dice\(index2)")
    }
}

