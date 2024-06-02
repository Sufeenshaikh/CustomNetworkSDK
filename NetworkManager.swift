//
//  NetworkManager.swift
//  CustomNetworkSDK
//
//  Created by Dr. Mac on 02/06/24.
//

import Foundation

public class NetworkManager {
    public static let shared = NetworkManager()
    
    private init() {}
    
    public func fetchData(from url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                let error = NSError(domain: "dataNilError", code: -100001, userInfo: nil)
                completion(.failure(error))
                return
            }
            
            completion(.success(data))
        }
        
        task.resume()
    }
}

