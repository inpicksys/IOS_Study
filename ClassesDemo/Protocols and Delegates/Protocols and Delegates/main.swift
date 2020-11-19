protocol AdvancedLifeSupport {
    func performCPR()
}


class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSitutation() {
        print("Can you tell me what happening?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
      print("The paramedic does chest compression, 30 per second.")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compression, 30 per second.")
    }
    
    func useStethescope() {
        print("Listening to heart sounds")
    }
    
}

class Surgeon: Doctor {
    
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }
    
    func useElectricDrill() {
        print("whirr... ")
    }
}

let emilio = EmergencyCallHandler()
let angela = Surgeon(handler: emilio)


emilio.assessSitutation()
emilio.medicalEmergency()
