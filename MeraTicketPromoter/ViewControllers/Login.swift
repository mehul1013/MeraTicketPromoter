//
//  Login.swift
//  MeraTicketPromoter
//
//  Created by MehulS on 19/08/18.
//  Copyright © 2018 MeHuLa. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class Login: SuperViewController {

    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Call WS
        self.doLogin()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//MARK: - Web Services
extension Login {
    func doLogin() -> Void {
        
        let email = "sa@meraticket.com"
        let password = "Admin@2018"
        let countryCode = "UAE"
        
        let strURL = "https://uaestaging-admin.azurewebsites.net/api/login?Email=\(email)&Password=\(password)&CountryCode=\(countryCode)"
        
        let header = ["PromotorCode" : "UAE",
                      "CountryCode" : "UAE"]
        
        Alamofire.request(strURL, method: .post, parameters: nil, encoding: JSONEncoding.default, headers: header).responseJSON { (response:DataResponse<Any>) in
            
            if((response.result.value) != nil) {
                let swiftyJsonVar = JSON(response.result.value!)
                print(swiftyJsonVar)
                
                if swiftyJsonVar["Success"] == true {
                    print("Value : \(swiftyJsonVar["Value"])")
                }
            }
        }
    }
}
