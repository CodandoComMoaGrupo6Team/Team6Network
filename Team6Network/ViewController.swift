//
//  ViewController.swift
//  Team6Network
//
//  Created by Marcela Goncalves on 30/08/23.
//

import UIKit

class ViewController: UIViewController {
    var idDisponiveis: [Int] = []
    var theme: [ThemeModel] = []
    var themeCard: CardsModel? = nil
    
    lazy var firstLabel: UILabel = {
        let element = UILabel()
        element.tintColor = .black
        element.text = themeCard?.result?.name
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .white
        
        Task {
            guard let themes: [ThemeModel] = await callTheme(uIdFirebase: Constants.uIdFirebase) else { return }
            self.theme = themes
            
            for i in theme {
                guard let id = i.id else { return }
                Task {
                    guard let themeCard: CardsModel = await callTheme(id: id, uIdFirebase: Constants.uIdFirebase) else { return }
                    self.themeCard = themeCard
                    firstLabel.text = themeCard.result?.name
                }
            }
        }
        
        addElements()
    }
    
    func addElements() {
        view.addSubview(firstLabel)
        
        NSLayoutConstraint.activate([
            firstLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    func callTheme <T: Codable>(id: Int? = nil ,uIdFirebase: String) async -> T? {
        var url = ""
        if let id = id {
            url = "\(Constants.urlBase)\(Constants.endPointComponentById)?id=\(id)&uIdFirebase=\(uIdFirebase)"
        } else {
            url = "\(Constants.urlBase)\(Constants.endPointGetListaTheme)?uIdFirebase=\(uIdFirebase)"
        }
        do{
            guard let theme: T = try await Manager.shared.fetchTheme(url: url) else { return nil }
            print(theme)
            return theme
        } catch {
            print(error)
        }
        return nil
    }
}

