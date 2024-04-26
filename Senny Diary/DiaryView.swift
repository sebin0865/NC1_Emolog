//
//  DiaryView.swift
//  Senny Diary
//
//  Created by 오세빈 on 4/15/24.
//

import SwiftUI

struct DiaryView: View {
    
//    .environmentObject(DataManager()
//    @Environment var dataManager: DataManager
    
    var body: some View {
        
            ScrollView{
                
                HStack {
                    Text("당신의 일기")
                        .font(.system(size: 24,weight: .bold))
                        .foregroundColor(.black)
                    Spacer()
                    

                }
                .padding(.horizontal,20)
                .padding(.top, 50) // 타이틀 텍스트 기준 상단 여백
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("4월 10일")
                        .font(.system(size: 20,weight: .regular))
                        .foregroundColor(.black)
                        .padding(.horizontal,10)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack{
                            Image("1Stop")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Text("오후 8:05")
                                .font(.system(size: 14,weight: .regular))
                        }
                        Text("오늘은 러너들이랑 영일대 해변이 보이는 카페에서 NC1 프로젝트도 하고, 바다에서 사진도 찍었다ㅎㅎ 상쾌하다!")
                            .font(.system(size: 16,weight: .regular))
                    }
                    .padding(.horizontal,20)
                    .padding(.vertical,16)
                    .background(Color.white)
                    .cornerRadius(14)
                    .shadow(color: .black.opacity(0.1), radius: 30, x: 0, y: 10)
                } // 게시글 4
                .padding()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("4월 9일")
                        .font(.system(size: 20,weight: .regular))
                        .foregroundColor(.black)
                        .padding(.horizontal,10)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack{
                            Image("1Stop")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Text("오후 10:28")
                                .font(.system(size: 14,weight: .regular))
                        }
                        Text("오늘은 혼자서 도서관에 가서 커피를 마시며 여유롭게 개인작업을 했다. 그리고 잠깐 밖에 나와 햇살을 쬐며 10분 스트레칭 성공!🌤️")
                            .font(.system(size: 16,weight: .regular))
                    }
                    .padding(.horizontal,20)
                    .padding(.vertical,16)
                    .background(Color.white)
                    .cornerRadius(14)
                    .shadow(color: .black.opacity(0.1), radius: 30, x: 0, y: 10)
                } // 게시글 3
                .padding()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("4월 8일")
                        .font(.system(size: 20,weight: .regular))
                        .foregroundColor(.black)
                        .padding(.horizontal,10)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack{
                            Image("2Stop")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Text("오후 9:21")
                                .font(.system(size: 14,weight: .regular))
                        }
                        Text("조엘과 영어로 대화를 하고 싶었는데, 아직은 영어 실력이 부족하군! 하루에 한번씩 내가 하고 싶은 말이 있다면 영어문장으로 말해볼까?")
                            .font(.system(size: 16,weight: .regular))
                    }
                    .padding(.horizontal,20)
                    .padding(.vertical,16)
                    .background(Color.white)
                    .cornerRadius(14)
                    .shadow(color: .black.opacity(0.1), radius: 30, x: 0, y: 10)
                } // 게시글 2
                .padding()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("4월 7일")
                        .font(.system(size: 20,weight: .regular))
                        .foregroundColor(.black)
                        .padding(.horizontal,10)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack{
                            Image("1Stop")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Text("오후 7:54")
                                .font(.system(size: 14,weight: .regular))
                        }
                        Text("아침 일찍 일어나 펑키랑 라켓 볼을 처음 해봤는데 완전 신났다! 꾸준히 운동을 하고 싶은 마음이 생겼다💪🏻")
                            .font(.system(size: 16,weight: .regular))
                    }
                    .padding(.horizontal,20)
                    .padding(.vertical,16)
                    .background(Color.white)
                    .cornerRadius(14)
                    .shadow(color: .black.opacity(0.1), radius: 30, x: 0, y: 10)
                } // 게시글 1
                .padding()
                
            } //스크롤 뷰
            .background(Color(red: 0.99, green: 1, blue: 0.95))
        
        
        
        
    }
}

#Preview {
    ContentView()
}
