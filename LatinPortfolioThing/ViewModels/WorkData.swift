//
//  WorksData.swift
//  LatinPortfolioThing
//
//  Created by Trent Glimp on 12/2/22.
//

import Foundation

class WorkData: ObservableObject {
    @Published var works = Work.testWorks
    
    func works(for competency: Work.Competency) -> [Work] {
        var filteredWorks = [Work]()
        for work in works {
            if work.competency == competency {
                filteredWorks.append(work)
            }
        }
        return filteredWorks
    }
}
