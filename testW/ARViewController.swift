//
//  ARViewController.swift
//  testW
//
//  Created by Abdulrahman Alzeer on 12/02/2018.
//  Copyright © 2018 Abdulrahman Alzeer. All rights reserved.
//

import UIKit
import ARCL
import CoreLocation

class ARViewController: UIViewController {

    var sceneLocationView = SceneLocationView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        sceneLocationView.run()
        view.insertSubview(sceneLocationView, at: 0)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func MakeItMove(_ sender: Any) {
        ///
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
