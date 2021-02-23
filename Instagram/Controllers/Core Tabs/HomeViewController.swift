 //
//  ViewController.swift
//  Instagram
//
//  Created by mac on 14/2/2021.
//
import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // check auth status
        handleNotAuthenticated()
        
        
        
    }
    
    private func handleNotAuthenticated()
    {
        if Auth.auth().currentUser==nil {
            //show login
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }

}

