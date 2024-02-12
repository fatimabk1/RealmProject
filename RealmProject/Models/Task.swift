//
//  Task.swift
//  RealmProject
//
//  Created by Fatima Kahbi on 2/11/24.
//

import Foundation
import RealmSwift

final class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var title = "\(adjectives.randomElement()!) \(nouns.randomElement()!)"
    @Persisted var isFavorite = false
    @Persisted(originProperty: "tasks") var group: LinkingObjects<TaskGroup>
}


let adjectives = [ "fluffy", "cute", "interesting", "swirly", "sweet", "funky", "smiling", "scowling"]
let nouns = [ "dog", "cat", "carrot", "water bottle", "bookcase", "counter", "blanket", "image"]
