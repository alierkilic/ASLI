//
//  Movement+CoreDataProperties.swift
//  ASLI
//
//  Created by Ali Can Erkilic on 10/26/17.
//  Copyright © 2017 Ali Can Erkilic. All rights reserved.
//
//

import Foundation
import CoreData


extension Movement {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movement> {
        return NSFetchRequest<Movement>(entityName: "Movement")
    }

    @NSManaged public var name: String?
    @NSManaged public var imageName: String?
    @NSManaged public var targetName: String?
    @NSManaged public var minutes: Int16

}
