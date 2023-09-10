//
//  MainViewController.swift
//  HomeWork 3.02
//
//  Created by Илья on 10.09.2023.
//

import UIKit

final class MainViewController: UIViewController {
    @IBAction func parseJSON() {
        // По нееизвестной мне причине, бывает то положительный, то противополжный результат.
        // Тобишь при нажатии на кнопку, срабатывает то do, то catch.
        // Предполагаю проблема в API.
        fetchPerson()
    }
    
    private func showAlert(withStatus status: Alert) {
        let alert = UIAlertController(title: status.title, message: status.message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        
        DispatchQueue.main.async { [unowned self] in
            present(alert, animated: true)
        }
    }
}

extension MainViewController {
    private func fetchPerson() {
        URLSession.shared.dataTask(with: DataStore.shared.url) { [weak self] data, response, error in
            guard let data, let response else {
                print(error?.localizedDescription ?? "No error description.")
                return
            }
            print("\(response)\n")
            
            let decoder = JSONDecoder()
            do {
                let person = try decoder.decode(Person.self, from: data)
                self?.showAlert(withStatus: .success)
                
                print("\n\(person)\n")
            } catch {
                self?.showAlert(withStatus: .failed)
                
                print("\n\(error)\n")
                print("\(error.localizedDescription)\n")
            }
        }.resume()
    }
}
