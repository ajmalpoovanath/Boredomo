//
//  TaskManager.swift
//  Boredomo
//
//  Created by Ajmal Poovanath on 18/01/25.
//

import Foundation

class TaskManager{
    
    static let shared = TaskManager()
    
    func getTask() async throws -> String{
        guard let url = URL(string: "https://bored-api.appbrewery.com/random") else {
            throw URLError(.badURL)
        }
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        
        do {
            let taskResponse = try JSONDecoder().decode(TaskResponse.self, from: data)
            print(taskResponse)
            return taskResponse.activity
        } catch {
            print("failed to decode response: \(error)")
            throw error
        }
        
    }
    
 
        
    
    
    
}

struct TaskResponse: Codable{
    let activity: String
    let availability: Double
    let type: String
    let participants: Int
    let price: Double
    let accessibility: String
    let duration: String
    let kidFriendly: Bool
    let link: String
    let key: String
}
