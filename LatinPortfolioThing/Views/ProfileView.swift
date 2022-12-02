//
//  ContentView.swift
//  LatinPortfolioThing
//
//  Created by Trent Glimp on 12/2/22.
//

import SwiftUI

struct ProfileView: View {
    @StateObject private var workData = WorkData()
    
    var body: some View {
        let columns = [GridItem(), GridItem()]
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    ForEach(Work.Competency.allCases, id: \.self) {competency in
                        NavigationLink(destination: WorksListView(competency: competency).environmentObject(workData), label: {
                            CompetencyView(competency: competency)
                        })
                    }
                })
            }
            .navigationTitle("Welcome Student")
            .background(Color.orange.edgesIgnoringSafeArea(.all))
        }
    }
}

struct CompetencyView: View {
    let competency: Work.Competency
    
    var body: some View {
        ZStack {
            Image(competency.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.30)
            Text(competency.rawValue)
                .font(.title)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
