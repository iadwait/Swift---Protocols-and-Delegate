//
//  main.swift
//  Protocols and Delegate (Advance Life Support)
//
//  Created by Adwait Barkale on 24/08/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//
protocol AdvanceLifeSupport {
    func performCPR()
}
class EmergencyCallHandler{
    
    var delegate: AdvanceLifeSupport?
    
    func assessSituation()
    {
        print("Please tell me what has happened?")
    }
    
    func medicalEmergency()
    {
        delegate?.performCPR()
    }
}
struct Paramedic: AdvanceLifeSupport{
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    func performCPR() {
        print("Rahul Perform Chest Compression 30 Seconds")
    }
}
class Doctor:AdvanceLifeSupport{
    
    init(handler: EmergencyCallHandler) {
           handler.delegate = self
       }
    func performCPR() {
        print("Doctor Perform Chest Compression 30 Seconds")
    }
    func userStatisscope(){
        print("Doctor checks for heart beats")
    }
}
class Surgeon: Doctor{
 
    override func performCPR() {
        super.performCPR()
        print("Surgeon helps doctor.")
    }
}
let Rohit = EmergencyCallHandler()
Rohit.assessSituation()
let Raj = Doctor(handler: Rohit)
Rohit.medicalEmergency()
let mohit = Surgeon(handler: Rohit)
Rohit.medicalEmergency()


