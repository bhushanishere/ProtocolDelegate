//
//  SecondView.swift
//  ProtocolDelegate
//
//  Created by Bhushan Borse DXC on 06/10/24.
//

import UIKit

protocol messageProtocol: AnyObject {
    func sendMessage(message: String)
}
class SecondView: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var messageTextView: UITextView!

    weak var delegate: messageProtocol? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        messageTextView.delegate = self
    }
    
    @IBAction func sendMessage(_ sender: UIButton) {
        self.delegate?.sendMessage(message: messageTextView.text)
        self.navigationController?.popViewController(animated: true)
    }
}
