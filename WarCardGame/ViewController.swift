//
//  ViewController.swift
//  WarCardGame
//
//  Created by Sang Tran on 2022-09-10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LeftCardImageView: UIImageView!
    
    @IBOutlet weak var RightCardImageView: UIImageView!
    
    @IBOutlet weak var PlayerPoint: UILabel!
    @IBOutlet weak var CPUPoint: UILabel!
    
    var intPlayerPoint = 0
    var intCPUPoint = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      print("viewDidLoad")
    }

    @IBAction func dealButtonOnClic(_ sender: UIButton) {
        let randomLeft = Int.random(in: 2...14)
        let randomRight = Int.random(in: 2...14)
        
        LeftCardImageView.image = UIImage(named: "card\(randomLeft)")
        RightCardImageView.image = UIImage(named: "card\(randomRight)")
        
        if (randomLeft > randomRight)
        {
            intPlayerPoint += 1
            PlayerPoint.text = String(intPlayerPoint)
        } else if (randomRight > randomLeft) {
            intCPUPoint += 1
            CPUPoint.text = String(intCPUPoint)
        }
    }
    
}

