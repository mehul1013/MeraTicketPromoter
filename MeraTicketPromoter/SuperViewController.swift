//
//  ViewController.swift
//  MeraTicketPromoter
//
//  Created by MehulS on 19/08/18.
//  Copyright © 2018 MeHuLa. All rights reserved.
//

import UIKit

class SuperViewController: UIViewController {

    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: - Back Button
    @IBAction func backButtonClicked() -> Void {
        _ = self.navigationController?.popViewController(animated: true)
    }
}

