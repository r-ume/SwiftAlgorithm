
// Delegate Practice

/*
 Recap 
 1. Create a delegate protocol
 2. Add a delegate property specifying the type as the protocol
 3. Assign any object that confirms to the protocol as delegate
 
 */

//「あるクラスは、他のクラスのインスタンスに、処理を任せることができる。」というようなこと。


//Protocol (yes, protocal! I have no idea why this is not called delegate so don't get confused)

protocol RaceDelegate{
    func raceDidStart()
    func raceStatus(lapNumber: Int, first: AnyObject)
    func raceDidEnd(winner: AnyObject)
}

// Participants

class Horse{
    func giddyUp(){}
}

class Car{
    func vroomVroom(){}
}

class RaceCar{
    func readySetGo(){}
}

// Races
// delegate is declared here!!!

class Race{
    var laps: Int = 0
    var delegate: RaceDelegate?
    
    func start(){
        // some get up
    }
    
    func updateProgress(){
        
    }
    
    func end(){
        // some tear down
    }
}

// Raceクラスから継承しているから、HorseRaceを継承しても、delegateは使える
class HorseRace: Race{
    
    let participants: [Horse]
    
    init(laps: Int, horses: [Horse]) {
        self.participants = horses
        super.init()
        self.laps = laps
    }
    
    override func start(){
        print("The race started")
        delegate?.raceDidStart()
    }
    
    override func updateProgress() {
        laps += 1
        delegate?.raceStatus(laps, first: Horse())
        
    }
    
    override func end() {
        delegate?.raceDidEnd(Horse())
    }
}


// Tracker　// inherits RaceDelegate class (PROTOCOL)

class Tracker: RaceDelegate{
    func raceDidStart() {
        print("Tracker notified that the race has started!")
    }
    
    func raceStatus(lapNumber: Int, first: AnyObject) {
        print("Tracker notified that race status has been updated! Current lap: \(lapNumber) with the first place \(first)")
    }
    
    func raceDidEnd(winner: AnyObject) {
        print("Tracker notified that the race ended! The winner is: \(winner)")
    }
    
}

// Usage

let participants: [Horse] = [Horse(), Horse(), Horse()]
// raceインスタンスはdelegateを使える
let race = HorseRace(laps: 4, horses: participants)

let tracker = Tracker()
race.delegate = tracker

//startメソッドに中には、raceDidStart()メソッドがある　-> print("Tracker notified that the race has started!")
race.start()


// Broadcast class
class Broadcast: RaceDelegate{
    
    func raceDidStart() {
        print("Hey, everyone! The race started")
    }
    
    func raceStatus(lapNumber: Int, first: AnyObject) {
        print("Woot woot! Another lap finished")
    }
    
    func raceDidEnd(winner: AnyObject) {
        print("Yayy the race ended! The winner is \(winner)")
    }
}

race.delegate = Broadcast()

//endメソッドに中には、raceDidEnd()メソッドがある　-> print("Tracker notified that the race ended! The winner is: \(winner)")
race.end()


















