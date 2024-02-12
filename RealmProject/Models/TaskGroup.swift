//
//  TaskGroup.swift
//  RealmProject
//
//  Created by Fatima Kahbi on 2/11/24.
//

import Foundation
import RealmSwift

final class TaskGroup: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var title: String
    @Persisted var tasks: RealmSwift.List<Task>
}
