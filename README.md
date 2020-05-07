# HackIllinois-Event-App-
HackIllinois Events Browser Landing Page 

This application makes an API call to the HackIllinois API and presents appropriate data onto iPhone screen. 

Important items used: 
 - Codable protocol
 - JSONParser() 
 - DispatchGroup() 
 
Technical Approach: 
API call is made and then JSON data is read into structs using the Codable protocol. JSON is parsed first using JSONParser(). Each event object is then copied into an array of event objects. DispatchGroup() is used to wait for the network call to complete fetching data. Each piece of neccesary data (ie. Event, Location, Description) is mapped onto the iPhone screen. This is mainly done using seperate View Controllers, one for each day of the hackathon. All events are sorted by startTime. The tabbed application includes 3 tabs - Friday, Saturday, and Sunday.  

Thank you for taking the time to review this application! 
