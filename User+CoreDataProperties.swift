//
//  User+CoreDataProperties.swift
//  HiKit
//
//  Created by Jundullah Ilhaq Aulia on 03/08/22.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?
    @NSManaged public var groupItems: Set<GroupItemDB>?
    @NSManaged public var journeys: Set<Journey>?

    public var wrapName: String {
        name ?? "John Doe"
    }
    
    public var wrapGroupItems: [GroupItemDB] {
        let setOfItem = groupItems
        return setOfItem!.sorted {
            $0.wrapName > $1.wrapName
        }
    }
    
    public func getName() -> String {
        return wrapName
    }
}

// MARK: Generated accessors for groupItems
extension User {

    @objc(addGroupItemsObject:)
    @NSManaged public func addToGroupItems(_ value: GroupItemDB)

    @objc(removeGroupItemsObject:)
    @NSManaged public func removeFromGroupItems(_ value: GroupItemDB)

    @objc(addGroupItems:)
    @NSManaged public func addToGroupItems(_ values: NSSet)

    @objc(removeGroupItems:)
    @NSManaged public func removeFromGroupItems(_ values: NSSet)

}

// MARK: Generated accessors for journeys
extension User {

    @objc(addJourneysObject:)
    @NSManaged public func addToJourneys(_ value: Journey)

    @objc(removeJourneysObject:)
    @NSManaged public func removeFromJourneys(_ value: Journey)

    @objc(addJourneys:)
    @NSManaged public func addToJourneys(_ values: NSSet)

    @objc(removeJourneys:)
    @NSManaged public func removeFromJourneys(_ values: NSSet)

}

extension User : Identifiable {

}
