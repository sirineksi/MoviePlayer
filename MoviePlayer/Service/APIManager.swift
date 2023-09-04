//
//  APIManager.swift
//  MoviePlayer
//
//  Created by ceksi on 28.08.2023.
//

import Foundation

class APIManager {
    
    func fetchCategory(completion: @escaping ([Category]) -> Void) {
        guard let url = URL(string: "https://api.escuelajs.co/api/v1/categories") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                let categorys = try JSONDecoder().decode([Category].self, from:data)
                DispatchQueue.main.async {
                    print(categorys)
                    completion(categorys)
                }
            }catch {
                print("Error decoding data: \(error.localizedDescription)")
            }

        }.resume()
        
        
    }
    
    func fetchProducts(completion: @escaping([Product]) -> Void) {
        guard let url = URL(string: "https://api.escuelajs.co/api/v1/products") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                return
            }
            do {
                let products = try JSONDecoder().decode([Product].self, from: data)
                DispatchQueue.main.async {
                    completion(products)
                }
            }catch {
                print("Error decoding data: \(error.localizedDescription)")
            }

        }.resume()
        
    }
}
