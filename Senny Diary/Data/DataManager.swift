////
////  DataManager.swift
////  Senny Diary
////
////  Created by 오세빈 on 4/18/24.
//
//
//import SwiftUI
//import Foundation
//import CoreData
//
//class DataManager: ObservableObject {
//    private let container: NSPersistentContainer
//    @Published var Title: [SennyDiary] = []
//    
//    init() {
//        container = NSPersistentContainer(name: "Model")
//        container.loadPersistentStores { storeDescription, error in
//            if let error = error {
//                print("Core Data stores failed to load with error: \(error.localizedDescription)")
//            }
//        }
//        fetchDiaryEntries() // fetch는 업로드 기능임 
//        
//    } // Todo: 이미지 인덱스 저장하기
//    func saveDiaryEntry(date: Date, time: String, text: String, image: Data?) {
//           let context = container.viewContext
//           let newDiaryEntry = SennyDiary(context: context)
//           newDiaryEntry.date = date
//           newDiaryEntry.time = time
//           newDiaryEntry.text = text
//           newDiaryEntry.image = image
//        
//    
//        do {
//            try context.save()
//            fetchDiaryEntries() // 업데이트된 다이어리 항목들을 다시 불러옴
//        } catch {
//            print("Error saving diary entry: \(error.localizedDescription)")
//        }
//    }
//    
//    func fetchDiaryEntries() {
//        let request: NSFetchRequest<SennyDiary> = SennyDiary.fetchRequest()
//        
//        do {
//            Title = try container.viewContext.fetch(request)
//        } catch {
//            print("Error fetching diary entries: \(error.localizedDescription)")
//        }
//    }
//    
//    
//    //여기까지 copy 했음
//    
//    func updateDiaryEntry(_ diaryEntry: SennyDiary, date: Date, time: String, text: String, image: Data?) {
//        let context = container.viewContext
//        let newDiaryEntry = SennyDiary(context: context)
//        newDiaryEntry.date = date
//        newDiaryEntry.time = time
//        newDiaryEntry.text = text
//        newDiaryEntry.image = image
//        
//        do {
//            try context.save()
//            fetchDiaryEntries() // 수정 후 다시 불러옴
//        } catch {
//            print("Error updating diary entry: \(error.localizedDescription)")
//        }
//    }
//
//    func deleteDiaryEntry(_ diaryEntry: SennyDiary) {
//        let context = container.viewContext
//        context.delete(diaryEntry) // diaryEntry 객체를 삭제합니다.
//        
//        do {
//            try context.save()
//            fetchDiaryEntries() // 삭제 후 다시 불러옴
//        } catch {
//            print("Error deleting diary entry: \(error.localizedDescription)")
//        }
//    }
//}
//
//
//
//
////import SwiftUI
////import Foundation
////import CoreData
////
////class DataManager: ObservableObject {
////    private let container: NSPersistentContainer
////    @Published var text: [SennyDiary] = []
////
////    init() {
////        container = NSPersistentContainer(name: "Model")
////        container.loadPersistentStores { storeDescription, error in
////            if let error = error {
////                print("Core Data store faild to load with error: \(error.localizedDescription)")
////            }
////        }
////    }
////    
////    // TODO: 이미지 인덱스를 저장하기
////    func saveDiaryEntry(date: Date, time: String, text: String, image: Data?) {
////        let context = container.viewContext
////        let newDiaryEntry = SennyDiary(context: context)
////        newDiaryEntry.date = date
////        newDiaryEntry.time = time
////        newDiaryEntry.text = text // 수정된 부분
////        newDiaryEntry.image = image
////
////        do {
////            try context.save()
////            print("Diary entry saved successfully!")
////        } catch {
////            print("Failed to save diary entry: \(error.localizedDescription)")
////        }
////    }
////}
////
