//
//  FirstView.swift
//  ProtocolDelegate
//
//  Created by Bhushan Borse DXC on 06/10/24.
//

import UIKit

class FirstView: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func secondView(_ sender: UIButton) {
        let secondView = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondView") as? SecondView
        secondView?.delegate = self
        self.navigationController?.pushViewController(secondView!, animated: true)
    }
}

extension FirstView: messageProtocol {
    func sendMessage(message: String) {
        messageLabel.text = message
    }
}
