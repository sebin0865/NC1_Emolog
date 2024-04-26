//
//  TabView.swift
//  Senny Diary
//
//  Created by 오세빈 on 4/15/24.
//

import SwiftUI

struct TabBarView: View {


    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                TabView {
                    DiaryView()
                        .tabItem {
                            Image(systemName: "book.fill")
                            Text("일기")
                        }
                        
                    GoalView()
                        .tabItem {
                            Image(systemName: "quote.bubble.fill")
                            Text("목표")
                        }
                }
                
                NavigationLink(destination: {
                    AddDiaryView()
                }, label: { // label : 탭 가능한 영역
                    Image(systemName: "plus")
                        .font(.title.weight(.semibold))
                        .padding()
                        .background(Color(red: 0.81, green: 0.91, blue: 0.46))
                        .foregroundColor(.white)
                        .clipShape(Circle())
                })
                .padding()
        }
            
//        .navigationBarHidden(true)

        }
        
        
    }
}

#Preview {
    ContentView()
    
}
