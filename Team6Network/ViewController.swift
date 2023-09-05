//
//  ViewController.swift
//  Team6Network
//
//  Created by Marcela Goncalves on 30/08/23.
//

import UIKit

class ViewController: UIViewController {
    var idDisponiveis: [Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        callNetwork()
        // Do any additional setup after loading the view.
    }
    
    func Network2(id: Int) {
        Manager.shared.getComponentById(id: id, uIdFirebase: "CodandoComMoa") { result in
            switch result {
            case .success(let component):
                print("+++++++\(component)+++++++")
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func callNetwork() {
        Manager.shared.getListaTheme(uIdFirebase: "CodandoComMoa") {[weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let component):
                for i in component {
                    guard let id = i.id else { return }
                    idDisponiveis.append(id)
                }
                for i in idDisponiveis {
                    Network2(id: i)
                }
            case .failure(let error):
                print(error)
            }
        }
    }


}

