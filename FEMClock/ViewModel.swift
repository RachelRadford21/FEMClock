//
//  ViewModel.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/8/22.
//

import Foundation

@MainActor
class ViewModel: ObservableObject {
    @Published var address: Address?
    @Published var time: Time?
    @Published var quote: Quote?
    @Published var quoteText = ""
    @Published var author = ""
    @Published var city = ""
    @Published var country = ""
    @Published var ip = ""
    @Published var timeZone = ""
    @Published var currentTime = ""
    @Published var weekofYear = 0
    @Published var isAM = false
    @Published var isPM = false
    @Published var isPresented = false
  
    
    func getAddress() async {
        let key = "YOUR-API-KEY"
        guard let url = URL(string: "https://api.ipgeolocation.io/ipgeo?apiKey=\(key)&ip=\(ip)") else { return }
        do {
            
            let(data, _) = try await URLSession.shared.data(from: url)
            if let data = String(data: data, encoding: .utf8){
                print(data)
                
            }
            let decodedResponse = try JSONDecoder().decode(Address.self, from: data)
            self.address = decodedResponse
            city = address?.city.description.uppercased() ?? ""
            country = address?.countryCode2.description.uppercased() ?? ""
            ip = address?.ip.description ?? ""
 
        }catch {
            print("Failed to reach end point: \(error)")
        }
    }
    
    
    func fetchTime() async {
      
        let key = "YOUR-API-KEY"
        guard let url = URL(string: "https://api.ipgeolocation.io/timezone?apiKey=\(key)&tz=\(timeZone)") else { return }
        do {
            let(data, _) = try await URLSession.shared.data(from: url)
            if let data = String(data: data, encoding: .utf8){
                print(data)
                
            }
            let decodedResponse = try JSONDecoder().decode(Time.self, from: data)
            self.time = decodedResponse
            
            timeZone = address?.timeZone.name ?? ""
            currentTime = time?.time12 ?? ""
            weekofYear = time?.week ?? 0
            print(currentTime)
        }catch {
            print("Failed to reach end point: \(error)")
        }
    }
    
    
    func getQuote() async {
        guard let url = URL(string: "https://programming-quotes-api.herokuapp.com/quotes/random") else { return }
        do {
            let(data, _) = try await URLSession.shared.data(from: url)
            if let data = String(data: data, encoding: .utf8){
                print(data)
                
            }
            let decodedResponse = try JSONDecoder().decode(Quote.self, from: data)
            self.quote = decodedResponse
            quoteText = quote?.en.description ?? ""
            author = quote?.author.description ?? ""
        }catch {
            print("Failed to reach end point: \(error)")
            
        }
    }
    
    
    func getAmPm() {
        if currentTime.contains("AM") {
         isAM = true
        }else if currentTime.contains("PM") {
         isPM = true
        }else {
         isPM = false
         isAM = false
        }
    }
}
