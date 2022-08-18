//
//  GoalListItem+CoreDataProperties.swift
//  BlossomApp
//
//  Created by Sophie on 2022-08-17.
//
//

import Foundation
import CoreData


extension GoalListItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<GoalListItem> {
        return NSFetchRequest<GoalListItem>(entityName: "GoalListItem")
    }

    @NSManaged public var createdAt: Date?
    @NSManaged public var name: String?

}

extension GoalListItem : Identifiable {

}
