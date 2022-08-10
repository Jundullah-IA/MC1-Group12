//
//  GroupItemDB+CoreDataProperties.swift
//  HiKit
//
//  Created by Jundullah Ilhaq Aulia on 03/08/22.
//
//

import Foundation
import CoreData


extension GroupItemDB {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<GroupItemDB> {
        return NSFetchRequest<GroupItemDB>(entityName: "GroupItemDB")
    }

    @NSManaged public var name: String?
    @NSManaged public var note: String?
    @NSManaged public var total: Int16
    @NSManaged public var isDone: Bool
    @NSManaged public var journey: Journey?
    @NSManaged public var pic: Set<User>?
    
    public var wrapName: String {
        name ?? "personal item"
    }
    
    public var wrapNote: String {
        note ?? ""
    }
    
    public var wrapJourney: Journey {
        journey ?? Journey()
    }
    
    public var wrapPic: [User] {
        let setOfUser = pic
        return setOfUser!.sorted {
            $0.wrapName > $1.wrapName
        }
    }
}

// MARK: Generated accessors for pic
extension GroupItemDB {

    @objc(addPicObject:)
    @NSManaged public func addToPic(_ value: User)

    @objc(removePicObject:)
    @NSManaged public func removeFromPic(_ value: User)

    @objc(addPic:)
    @NSManaged public func addToPic(_ values: NSSet)

    @objc(removePic:)
    @NSManaged public func removeFromPic(_ values: NSSet)

}

extension GroupItemDB : Identifiable {

}
