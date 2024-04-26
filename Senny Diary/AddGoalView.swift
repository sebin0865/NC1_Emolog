//
//  TextField.swift
//  Senny Diary
//
//  Created by 오세빈 on 4/16/24.
//

import SwiftUI

struct AddGoalView: View {
    @State private var date = Date()
    @State private var endDate = Date() // End Date 추가
    @State private var title = ""

    

    var body: some View {
        
        
        VStack{
            HStack {
                Text("달성하고 싶은 \n목표가 있나요?")
                    .font(.system(size: 24,weight: .bold))
                    .foregroundColor(.black)
                    .padding(.leading, 20) 
                    .padding(.top, 40)
                Spacer()
            }
//           .background(Color.yellow) // 백그라운드 확인용
//                    Spacer()
            

            VStack (alignment: .leading) {

                HStack{
                    Text("목표")
                     .padding(.trailing, 60) // Title과 TextField 사이의 간격 조정
                    TextField("Title", text: $title)
                    
                }
                .padding()
                .background(Color.white)
                .cornerRadius(14)
                .shadow(color: .black.opacity(0.1), radius: 30, x: 0, y: 10)
                
                DatePicker(
                    "시작",
                    selection: $date,
                    displayedComponents: [.date]
                ) // 시작 날짜 선택
                .padding()
                .background(Color.white)
                .cornerRadius(14)
                .shadow(color: .black.opacity(0.1), radius: 30, x: 0, y: 10)
                
                DatePicker(
                    "종료", // End Date 추가
                    selection: $endDate,
                    displayedComponents: [.date]
                ) // 종료 날짜 선택
                .padding()
                .background(Color.white)
                .cornerRadius(14)
                .shadow(color: .black.opacity(0.1), radius: 30, x: 0, y: 10)
                
                VStack{
                    Spacer() // 버튼 위에 공간을 만듬
                    
                    HStack (alignment: .top, spacing: 15) {
                        Spacer() // 좌측 여백을 추가하여 버튼들을 우측으로 밀었음.
                        Button(action: {
                            // 코드 작성
                        }) {
                            Text("없어요")
                                .font(.system(size: 18,weight: .light))
                                .padding(.horizontal, 37)
                                .padding(.vertical, 13)
                                .frame(width: 150, alignment: .center)
                                .foregroundColor(Color(red: 0.52, green: 0.52, blue: 0.52))
                                .background(Color(red: 0.96, green: 0.97, blue: 0.96))
                                .cornerRadius(12)
                        }
                        
                        Button(action: {
                            // 코드 작성
                        }) {
                            Text("추가하기")
                                .font(.system(size: 18,weight: .semibold))
                                .padding(.horizontal, 37)
                                .padding(.vertical, 13)
                                .frame(width: 150, alignment: .center)
                                .foregroundColor(.white)
                                .background(Color(red: 0.67, green: 0.8, blue: 0.21))
                                .cornerRadius(12)
                        }
                        Spacer() // 우측 여백을 추가하여 버튼들을 좌측으로 밀었름.
                    }
                }
                
            }
            .padding()
        }
    }
    
}

#Preview {
    AddGoalView()
}
