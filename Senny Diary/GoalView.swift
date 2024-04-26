//
//  GoalView.swift
//  Senny Diary
//
//  Created by 오세빈 on 4/15/24.
//

import SwiftUI

struct GoalView: View {
    @State private var showingAddGoalView = false // 토글 상태를 나타내는 속성 추가
    @State private var isButtonSelected = false // 색 바꾸기
    @State private var isButtonASelected = false // 체크박스 A의 상태
    @State private var isButtonBSelected = false // 체크박스 B의 상태
    
    var body : some View{
        
        ScrollView{
            VStack{
                Spacer()
                HStack{
                    Text("목표")
                        .font(.system(size: 24,weight: .bold))
                        .foregroundColor(.black)
                        .padding(.leading, 20)
                        .padding(.top, 50) // 타이틀 텍스트 기준 상단 여백
                    Spacer()
                }
                //   .background(Color.yellow) // 백그라운드 컬러 보는 용
                
                
                VStack (spacing: 18) {
                    Spacer()
                    VStack (alignment: .leading, spacing: 10) { // 목표 A
                        HStack{
                            Text("하루에 한 문장 영어로 말하기")
                                .font(.system(size: 16,weight: .regular))
                            Spacer()
                            
                            Button {
                                isButtonASelected.toggle() // 체크박스 A의 상태 토글
                            } label: {
                                if isButtonASelected{
                                    Image(systemName: "checkmark.square.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 24, height: 24)
                                        .foregroundColor(Color(red: 0.67, green: 0.8, blue: 0.21))  // 선택된 상태의 버튼 색상
                                } else {
                                    Image(systemName: "checkmark.square")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 24, height: 24)
                                        .foregroundColor(Color(red: 0.78, green: 0.78, blue: 0.8)) // 선택되지 않은 상태의 버튼 색상
                                }
                            }
                        }
                        Text("D-day")
                            .font(.system(size: 14,weight: .regular))
                            .foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.42))
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 16)
                    .frame(width: 352, alignment: .topLeading)
                    .background(Color.white)
                    .cornerRadius(14)
                    .shadow(color: .black.opacity(0.1), radius: 30, x: 0, y: 10)
                    
                    VStack (alignment: .leading, spacing: 10) { // 목표 A
                        HStack{
                            Text("매일 10분 스트레칭")
                                .font(.system(size: 16,weight: .regular))
                            Spacer()
                            
                            Button {
                                isButtonBSelected.toggle() // 체크박스 B의 상태 토글
                            } label: {
                                if isButtonBSelected{
                                    Image(systemName: "checkmark.square.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 24, height: 24)
                                        .foregroundColor(Color(red: 0.67, green: 0.8, blue: 0.21))  // 선택된 상태의 버튼 색상
                                } else {
                                    Image(systemName: "checkmark.square")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 24, height: 24)
                                        .foregroundColor(Color(red: 0.78, green: 0.78, blue: 0.8)) // 선택되지 않은 상태의 버튼 색상
                                }
                            }
                        }
                        Text("4월 30일까지")
                            .font(.system(size: 14,weight: .regular))
                            .foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.42))
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 16)
                    .frame(width: 352, alignment: .topLeading)
                    .background(Color.white)
                    .cornerRadius(14)
                    .shadow(color: .black.opacity(0.1), radius: 30, x: 0, y: 10)
                    
                        //버튼 추가
                        Button(action: {
                            showingAddGoalView = true
                        }, label: {
                            Image("Light") // 목표 추가 버튼
                                .resizable()
                                .frame(width: 320, height: 44)
                        })
                        
                        HStack{
                            Text("지난 목표")
                                .font(.system(size: 24,weight: .bold))
                                .foregroundColor(.black)
                                .padding(.leading, 20)
                                .padding(.top, 50) // 타이틀 텍스트 기준 상단 여백
                            Spacer()
                        }
                    }
                    HStack{
                        VStack(alignment: .leading, spacing: 10) {
                            Text("2024년 3월 28일")
                                .font(.system(size: 20,weight: .regular))
                                .foregroundColor(.black)
                                .padding(.horizontal,10)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                HStack{
                                    Image("2Stop")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    Text("2024년 3월 1일~4월 1일")
                                        .font(.system(size: 14,weight: .regular))
                                }
                                Text("매일 10분 독서하기")
                                    .font(.system(size: 16,weight: .regular))
                            }
                            .padding(.horizontal,20)
                            .padding(.vertical,16)
                            .frame(width: 352, alignment: .topLeading)
                            .background(Color.white)
                            .cornerRadius(14)
                            .shadow(color: .black.opacity(0.1), radius: 30, x: 0, y: 10)
                        }
                        Spacer()
                    }
                    .padding()
                }
                
                .sheet(isPresented: $showingAddGoalView) {
                    VStack{}
                        .presentationDetents([.medium])
                    AddGoalView()
                }
            }
            .background(Color(red: 0.99, green: 1, blue: 0.95))
        }
    }


#Preview {
   ContentView()
}
