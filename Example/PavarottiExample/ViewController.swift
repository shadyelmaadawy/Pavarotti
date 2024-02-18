//
//  ViewController.swift
//  pavarotitest
//
//  Created by Shady El-Maadawy on 18/02/2024.
//

import UIKit
import Pavarotti

class ViewController: PavarottiViewController {

    private let languages = Pavarotti.shared.getSupportedLanguages()
    
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let tableCell = tableView.dequeueReusableCell(withIdentifier: "LanguageCell") else {
            return UITableViewCell.init()
        }
        tableCell.textLabel?.text = languages[indexPath.row]
        return tableCell
    }
    

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let languageCode = languages[indexPath.row]
        Pavarotti.shared.setActiveLanguage(with: languageCode)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
