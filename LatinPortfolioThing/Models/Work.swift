//
//  Works.swift
//  LatinPortfolioThing
//
//  Created by Trent Glimp on 12/2/22.
//

import Foundation

struct Work: Identifiable {
    var id = UUID()
    var title: String
    var competency: Competency
    var description: String
    
    enum Competency: String, CaseIterable {
        case changeMaker = "Change Maker"
        case curiousExplorer = "Curious Explorer"
        case inclusiveCollaborator = "Inclusive Collaborator"
        case creativeCommunicator = "Creative Communicator"
        case criticalThinker = "Critical Thinker"
    }
    
    init(title: String, competency: Competency, description: String) {
        self.title = title
        self.competency = competency
        self.description = description
    }
}

extension Work {
    static let testWorks: [Work] = [
        Work(title: "Cured Cancer", competency: .changeMaker, description: "Developed a cure to cancer"),
        Work(title: "Reinvented the Wheel", competency: .changeMaker, description: "It's now ovular"),
        Work(title: "Thought So Hard That Brain Hurt", competency: .criticalThinker, description: "Went to hospital")]
}
