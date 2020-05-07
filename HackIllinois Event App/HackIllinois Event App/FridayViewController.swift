//
//  FridayViewController.swift
//  HackIllinois Event App
//
//  Created by Rohan on 5/5/20.
//  Copyright © 2020 Rohan. All rights reserved.
//

import UIKit

class FridayViewController: UIViewController {
    
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Location: UILabel!
    @IBOutlet weak var Description: UILabel!
    
    @IBOutlet weak var Name1: UILabel!
    @IBOutlet weak var Location1: UILabel!
    @IBOutlet weak var Description1: UILabel!
    
    @IBOutlet weak var Name2: UILabel!
    @IBOutlet weak var Location2: UILabel!
    @IBOutlet weak var Description2: UILabel!
    
    @IBOutlet weak var Name3: UILabel!
    @IBOutlet weak var Location3: UILabel!
    @IBOutlet weak var Description3: UILabel!
    
    @IBOutlet weak var Name4: UILabel!
    @IBOutlet weak var Location4: UILabel!
    @IBOutlet weak var Description4: UILabel!
    
    @IBOutlet weak var Name5: UILabel!
    @IBOutlet weak var Location5: UILabel!
    @IBOutlet weak var Description5: UILabel!
    
    @IBOutlet weak var Name6: UILabel!
    @IBOutlet weak var Location6: UILabel!
    @IBOutlet weak var Description6: UILabel!
    
    @IBOutlet weak var Name7: UILabel!
    @IBOutlet weak var Location7: UILabel!
    @IBOutlet weak var Description7: UILabel!
    
    
    
    
    
    
    var eventData = [ActualEvents]()
    
    let dispatchGroup = DispatchGroup()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let tb = UIScrollView(frame: UIScreen.main.bounds)
        
        loadFromInternet()
        
        
        dispatchGroup.notify(queue: .main) { //you have access to data only in this method
            print("COMPLETED")
            //print(self.eventData[15].description!)
            
            self.sort()
            
            var data = [ActualEvents]()
            data.append(contentsOf: self.eventData)
            
            print(data[0].description!)
            
            
            //print(self.eventData[10].description!)
        
        self.Name.text = data[0].name!
        self.Location.text = data[0].locations[0].description!
        self.Description.text = data[0].description!
        
        self.Name1.text = data[1].name!
        self.Location1.text = data[1].locations[0].description!
        self.Description1.text = data[1].description!
        
        self.Name2.text = data[2].name!
        self.Location2.text = data[2].locations[0].description!
        self.Description2.text = data[2].description!
        
        self.Name3.text = data[3].name!
        self.Location3.text = data[3].locations[0].description!
        self.Description3.text = data[3].description!
        
        self.Name4.text = data[4].name!
        self.Location4.text = data[4].locations[0].description!
        self.Description4.text = data[4].description!
        
        self.Name5.text = data[5].name!
        self.Location5.text = data[5].locations[0].description!
        self.Description5.text = data[5].description!
        
        self.Name6.text = data[6].name!
        self.Location6.text = data[6].locations[0].description!
        self.Description6.text = data[6].description!
        
        self.Name7.text = data[7].name!
        self.Location7.text = data[7].locations[0].description!
        self.Description7.text = data[7].description!
        
      }
        

        // Do any additional setup after loading the view.
    }
    
    
    func loadFromInternet() {
        
        print("ENTERED")
        self.dispatchGroup.enter()
        let url:URL = URL(string: "https://api.hackillinois.org/event/")!
        
        URLSession.shared.dataTask(with: url) { (data, res, err) in
            if let err = err { print(err) }
            guard let data = data else { return }
            do {
                let dataFromJson = try JSONDecoder().decode(EventFeed.self, from: data)
                
                var i:Int = 0
                while(i != 30){
                    self.eventData.append(dataFromJson.events[i])
                    i = i+1
                }
                
                self.dispatchGroup.leave()
                print("LEFT")
                
                //print(self.eventData[0].description!)
                
                //print("HELLO")
            } catch let err {
                print(err)
            }
        }.resume()
        
    }
    
    func sort() {
        self.eventData = self.eventData.sorted(by: { $0.startTime < $1.startTime })
    }
    
    
    
    
    

    /*override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
*/
}
