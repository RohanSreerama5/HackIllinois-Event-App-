//
//  DataLoader.swift
//  HackIllinois Event App
//
//  Created by Rohan on 5/5/20.
//  Copyright © 2020 Rohan. All rights reserved.
//

/*import Foundation

public class DataLoader {
    
    let dispatchGroup = DispatchGroup()
    
    
    var eventData = [ActualEvents]()
    
    init() {
        
        
        
        loadFromInternet()
        //sort()
        
        dispatchGroup.notify(queue: .main) {
            print("completed")
            
        }
    }
    
    func loadFromInternet() {
        
        print("ENTERED")
        dispatchGroup.enter()
        let urlString = "https://api.hackillinois.org/event/"
        
        let url = URL(string: urlString)
        
        guard url != nil else {
            return
        }
            
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
                
            if error == nil && data != nil {
                
                let jsonDecoder = JSONDecoder()
                
                    do {
                        let dataFromJson = try jsonDecoder.decode(EventFeed.self, from: data!)
                        
                        
                        //var arr = [ActualEvents]()
                        
                        var i:Int = 0
                        while( i != 30){
                            self.eventData.append(dataFromJson.events[i])
                            
                            i = i+1
                        }
                        
                        self.dispatchGroup.leave()
                        print("LEFT")
                        
                        //print(arr[27].description!)
                        
                        //self.eventData.append(contentsOf: arr)
                        
                        //self.eventData = arr
                        
                        //print(self.eventData[0].name!)
                        
                    }
                    catch {
                        print("Error in JSON parsing")
                        
                    }
                }
            }
        
            dataTask.resume()
        
        
    }
    
    
    func sort() {
        self.eventData = self.eventData.sorted(by: { $0.startTime < $1.startTime })
    }
    
    
    
}*/
