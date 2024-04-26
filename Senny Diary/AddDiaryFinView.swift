//
//  AddDiaryFinView.swift
//  Senny Diary
//
//  Created by 오세빈 on 4/17/24.
//
import SwiftUI

struct AddDiaryFinView: View {
    @State private var showingAddGoalView = false // 토글 상태를 나타내는 속성 추가
    @State private var textInput: String = "" // 입력된 텍스트를 저장하는 속성
    @State private var selectedButtonIndex: Int? = nil // 선택된 버튼의 인덱스를 저장하는 속성
    @State private var showingDiaryView = false // 게시글 작성 완료시
    
    var body: some View {
        
        ZStack {
            Color(red: 0.99, green: 1, blue: 0.95)
                .ignoresSafeArea()
                
            VStack (alignment: .leading) {
//                Spacer()
                HStack {
                    Text("오늘의 감정을 \n기록해보세요")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.leading, 20)
                    Spacer()
                }
                .padding(.top, 60) // 타이틀 텍스트 기준 상단 여백
                
                VStack(alignment: .leading){
                    
                    HStack{
                        
                        ForEach(1..<6) { index in // 옆 정렬 맞출려면 Vstack을 활용해서 쌓아야함
                            Button(action: {
                                // 선택된 버튼의 인덱스를 갱신하고 다른 버튼들의 선택 상태를 초기화
                                selectedButtonIndex = index
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 99)
                                        .frame(width: 70, height: 70)
                                        .foregroundColor(selectedButtonIndex == index  ? Color(red: 0.67, green: 0.8, blue: 0.21)  : Color(red: 0.93, green: 0.97, blue: 0.82))
                                    Image("\(index)Stop")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                }
                            }
                        }
                    }
                }.padding()
                //                .padding()2
                
            
                ZStack {
                    VStack{
                        TextEditor(text: $textInput) // Placeholder 수정
                            .padding()
                            .font(.system(size: 18,weight: .regular))
                            .frame(maxHeight: 200)
//                            .frame(width: 200)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 14))
                            .padding()
                            .shadow(color: .black.opacity(0.1), radius: 30, x: 0, y: 10)
                    }
//                    .frame(maxWidth:.infinity, maxHeight: .infinity, alignment: .center)
//                    .background(.red)
                    
                }

//                    .background(.red) // 백그라운드 보는용
                

                Button(action: {
                    showingAddGoalView = true
                }, label: {
                HStack (alignment: .center, spacing: 10) {
                    Image(systemName: "plus")
                        .resizable()
                    //                    .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color(red: 0.67, green: 0.8, blue: 0.21))
                        .background(Color(red: 0.93, green: 0.94, blue: 0.89))
                        .cornerRadius(4)
                    
                    Spacer()

                    Text("목표 추가하기")
                        .font(.system(size: 17,weight: .regular))
                        .foregroundColor(.black)
                }
                .padding(.leading,40)
                .padding(.trailing,220)
                .padding(.vertical,20)
                })
                    Spacer()
                
                NavigationLink {
                    DiaryView()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .frame(maxHeight: 48)
                            .foregroundColor(Color(red: 0.67, green: 0.8, blue: 0.21))
                        Text("완료")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .bold))
                    }
                    .padding()
                }
                }
//                .background(.yellow) 백그라운드 보는 용
                
            

        }
        .sheet(isPresented: $showingAddGoalView) {
            VStack{}
                .presentationDetents([.medium])
           AddGoalView()
            
        }
    }
}


#Preview {
    AddDiaryFinView()
}
