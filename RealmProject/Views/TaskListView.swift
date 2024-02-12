//
//  TaskListView.swift
//  RealmProject
//
//  Created by Fatima Kahbi on 2/11/24.
//

import SwiftUI
import RealmSwift

struct TaskListView: View {
    @ObservedRealmObject var taskGroup: TaskGroup
    
    var body: some View {
        NavigationView {
            List {
                ForEach(taskGroup.tasks) { task in
                    TaskRow(task: task)
                }
                .onMove(perform: $taskGroup.tasks.move)
                .onDelete(perform: $taskGroup.tasks.remove)
            }
        }
        .padding()
        .navigationTitle("Tasks")
    }
}

struct TaskRow: View {
    let task: Task
    
    var body: some View {
        NavigationLink {
            TaskDetailView(task: task)
        } label: {
            HStack {
                Text(task.title)
                if task.isFavorite {
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

#Preview {
    TaskListView(taskGroup: TaskGroup())
}
