//
//  PersonalItemDB+CoreDataProperties.swift
//  HiKit
//
//  Created by Jundullah Ilhaq Aulia on 03/08/22.
//
//

import Foundation
import CoreData


extension PersonalItemDB {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PersonalItemDB> {
        return NSFetchRequest<PersonalItemDB>(entityName: "PersonalItemDB")
    }

    @NSManaged public var name: String?
    @NSManaged public var note: String?
    @NSManaged public var total: Int16
    @NSManaged public var isDone: Bool
    @NSManaged public var journey: Journey?
    
    public var wrapName: String {
        name ?? "personal item"
    }
    
    public var wrapNote: String {
        note ?? ""
    }
    
    public var wrapJourney: Journey {
        journey ?? Journey()
    }

}

extension PersonalItemDB : Identifiable {

}
