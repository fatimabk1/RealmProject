//
//  TaskDetailView.swift
//  RealmProject
//
//  Created by Fatima Kahbi on 2/11/24.
//

import SwiftUI
import RealmSwift

struct TaskDetailView: View {
    @ObservedRealmObject var task: Task
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(task.title)
                .font(.largeTitle)
            TextField("Task Name", text: $task.title)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TaskDetailView(task: Task())
}
