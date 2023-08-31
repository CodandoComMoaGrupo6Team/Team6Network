//
//  ViewController.swift
//  Team6Network
//
//  Created by Marcela Goncalves on 30/08/23.
//

import UIKit

class ViewController: UIViewController {
    let manager = Manager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.getComponentById(id: 2, uIdFirebase: "CodandoComMoa") { result in
            switch result {
            case .success(let component):
                print(component)
            case .failure(let error):
                print(error)
            }
        }
        // Do any additional setup after loading the view.
    }


}

