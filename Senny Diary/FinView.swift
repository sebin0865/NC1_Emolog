//
//  FinView.swift
//  Senny Diary
//
//  Created by 오세빈 on 4/17/24.
//

import SwiftUI

struct FinView: View {
    
    var body : some View{
       
            VStack {
                HStack {
                    Text("잘 해낼 거예요 \n 화이팅")
                        .frame(width: 320, alignment: .top)
                        .font(.system(size: 24,weight: .bold))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                }
//                .background(Color.red) // 백그라운드 컬러 보는 용
                
                Image("6")
                    .resizable()
                    .frame(width: 83, height: 83)
                
            }
        
            
//            .background(Color.green)
    }
    
}
    

#Preview {
    FinView()
}
