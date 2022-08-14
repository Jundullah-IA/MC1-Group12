//
//  Journey+CoreDataProperties.swift
//  HiKit
//
//  Created by Jundullah Ilhaq Aulia on 03/08/22.
//
//

import Foundation
import CoreData


extension Journey {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Journey> {
        return NSFetchRequest<Journey>(entityName: "Journey")
    }

    @NSManaged public var date: Date?
    @NSManaged public var isDone: Bool
    @NSManaged public var mountain: String?
    @NSManaged public var personalItems: Set<PersonalItemDB>?
    @NSManaged public var groupItems: Set<GroupItemDB>?
    @NSManaged public var members: Set<User>?

    public var wrapDate: Date {
        date ?? Date.now
    }
    
    public var wrapMountain: String {
        mountain ?? "Mountain in Indonesia"
    }
    
    public var wrapPersonalItems: [PersonalItemDB] {
        let setOfItem = personalItems
        return setOfItem!.sorted {
            $0.wrapName > $1.wrapName
        }
    }
    
    public var wrapGroupItems: [GroupItemDB]  {
        let setOfItem = groupItems
        return setOfItem!.sorted {
            $0.wrapName > $1.wrapName
        }
    }
    
    public var wrapMembers: [User] {
        let setOfUser = members
        return setOfUser!.sorted {
            $0.wrapName > $1.wrapName
        }
    }
}

// MARK: Generated accessors for personalItems
extension Journey {

    @objc(addPersonalItemsObject:)
    @NSManaged public func addToPersonalItems(_ value: PersonalItemDB)

    @objc(removePersonalItemsObject:)
    @NSManaged public func removeFromPersonalItems(_ value: PersonalItemDB)

    @objc(addPersonalItems:)
    @NSManaged public func addToPersonalItems(_ values: NSSet)

    @objc(removePersonalItems:)
    @NSManaged public func removeFromPersonalItems(_ values: NSSet)

}

// MARK: Generated accessors for groupItems
extension Journey {

    @objc(addGroupItemsObject:)
    @NSManaged public func addToGroupItems(_ value: GroupItemDB)

    @objc(removeGroupItemsObject:)
    @NSManaged public func removeFromGroupItems(_ value: GroupItemDB)

    @objc(addGroupItems:)
    @NSManaged public func addToGroupItems(_ values: NSSet)

    @objc(removeGroupItems:)
    @NSManaged public func removeFromGroupItems(_ values: NSSet)

}

// MARK: Generated accessors for members
extension Journey {

    @objc(addMembersObject:)
    @NSManaged public func addToMembers(_ value: User)

    @objc(removeMembersObject:)
    @NSManaged public func removeFromMembers(_ value: User)

    @objc(addMembers:)
    @NSManaged public func addToMembers(_ values: NSSet)

    @objc(removeMembers:)
    @NSManaged public func removeFromMembers(_ values: NSSet)

}

extension Journey : Identifiable {

}
