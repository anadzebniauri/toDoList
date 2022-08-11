//
//  ViewController.swift
//  toDoList
//
//  Created by Ana Dzebniauri on 01.08.22.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.continueButton.layer.cornerRadius = 20
        
    }
    
}

//class TempViewController: UIViewController {
//    var redView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .red
//        return view
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.initUI()
//    }
//
//    private func initUI() {
//
//    }
//}
