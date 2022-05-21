//
//  SafetyLists.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/22/21.
//

import Foundation

struct SafetyLists {
    var symptomList: [Symptom] = [
        Symptom(name: "Headache"),
        Symptom(name: "Cough"),
        Symptom(name: "Fever"),
        Symptom(name: "Sore Throat")
    ]
    
    var preventionList: [Prevention] = [
        Prevention(
            img: "Wear A Mask", method: "Wear s mask",
            info: "Masks may help prevent people who have COVID-19 from spreading the virus to others."),
        Prevention(
            img: "Wash Your Hands", method: "Wash your hands",
            info: "Wash your hands often with soap and water for at least 20 seconds."),
        Prevention(
            img: "Hand Sanitizer", method: "Use hand sanitizer",
            info: "If soap and water are not readily available, use a hand sanitizer that contains at least 60% alcohol."),
        Prevention(
            img: "Social Distance", method: "Social distancing",
            info: "Social distancing helps limit opportunities to come in contact with contaminated surfaces and infected people outside the home.")
    ]
    
    var ifSickList: [Prevention] = [
        Prevention(
            img: "Hospital", method: "Go to hospital",
            info: "If you're sick, seek medical care immediately as the virus can be lethal"),
        Prevention(
            img: "No Contact", method: "Avoid contact",
            info: "Avoiding conteact prevents passing on the virus to others "),
        Prevention(
            img: "No Crowd", method: "Avoid crowds",
            info: "Avoiding crowds prevents passing on the virus to multiplue people"),
        Prevention(
            img: "Stay at Home", method: "Stay at Home",
            info: "When you stay home, you help stop the spread to others.")
    ]
}
