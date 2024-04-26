import SwiftUI

struct AddDiaryView: View {
//    @EnvironmentObject var dataManager: DataManager // DataManager 인스턴스를 주입
    @State private var showingAddGoalView = false
    @State private var textInput: String = ""
    @State private var selectedButtonIndex: Int? = nil
    @State private var showingContentView = false
    
    var body: some View {
        
        ZStack {
            Color(red: 0.99, green: 1, blue: 0.95)
                .ignoresSafeArea()
            
            VStack (alignment: .leading) {
                HStack {
                    Text("오늘의 감정을 \n기록해보세요")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.leading, 20)
                    Spacer()
                }
                .padding(.top, 60)
                
                VStack(alignment: .leading){
                    HStack{
                        ForEach(1..<6) { index in
                            Button(action: {
                                selectedButtonIndex = index
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 99)
                                        .frame(width: 70, height: 70)
                                        .foregroundColor(selectedButtonIndex == index ? Color(red: 0.67, green: 0.8, blue: 0.21)  : Color(red: 0.93, green: 0.97, blue: 0.82))
                                    Image("\(index)Stop")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                }
                            }
                        }
                    }
                }.padding()
                
                ZStack {
                    VStack{
                        TextEditor(text: $textInput)
                            .cornerRadius(14)
                            .padding(.leading,25)
                            .padding(.trailing,25)
                            .font(.system(size: 18,weight: .regular))
                            .frame(maxHeight: 200)
                            .shadow(color: .black.opacity(0.1), radius: 30, x: 0, y: 10)
                    }
                }
                
                Button(action: {
                    showingAddGoalView = true
                }) {
                    HStack (alignment: .center, spacing: 10) {
                        Image(systemName: "plus")
                            .resizable()
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
                }
                Spacer()
                
                // 0. 아래 네비게이션 링크를 버튼으로 바꾼 후, 다이어리 뷰로 돌아갈 수 있게 -> Navigation back
                // 1. 완료를 눌렀을 때 데이터를 저장해야 함 -> DataManager.saveDiaryEntry()
                // 2. 버튼 idx, 텍스트 값, 날짜, 시간
                // 3. 완료를 눌렀을 때, 지금 날짜를 넘겨줄 수 있어야 함. ()
                // 4. 날짜는 time, date로 분리해서, String 값으로 변환 후 저장
                
                // 저장 버튼 액션 추가
                Button(action: {
                    // 여기에 저장 버튼 액션 추가
                    
//                    dataManager.saveDiaryEntry(date: Date(), time: String(), text: String(), image: Data?())

//                    saveDiaryEntry()
                }) {
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
        }
        .sheet(isPresented: $showingAddGoalView) {
            VStack{}
                .presentationDetents([.medium])
            AddGoalView()
        }
        .fullScreenCover(isPresented: $showingContentView) {
            ContentView()
        }
    }
//    private func saveDiaryEntry() {
//        dataManager.saveDiaryEntry(date: Date(), time: "", text: textInput, image: nil)
//    }

    
    // DataManager를 통해 다이어리 엔트리를 저장하는 메서드
    
//    func saveDiaryEntry() {
//        // 현재 날짜와 시간을 가져옵니다.
//        let currentDate = Date()
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
//        let dateString = dateFormatter.string(from: currentDate)
//        
//        // DataManager의 saveDiaryEntry 메서드를 호출하여 다이어리 엔트리를 저장합니다.
//        dataManager.saveDiaryEntry(date: currentDate, time: dateString, text: textInput, image: nil)
//        
//        // ContentView로 되돌아갑니다.
//        showingContentView = true
//    }
}



#Preview {
   ContentView()
//        .environmentObject(DataManager())
}
