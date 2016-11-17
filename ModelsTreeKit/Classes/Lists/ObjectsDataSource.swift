//
// Created by aleksey on 05.11.15.
// Copyright (c) 2015 aleksey chernish. All rights reserved.
//

import Foundation

public class ObjectsDataSource<ObjectType> {
  
  let beginUpdatesSignal = Pipe<Void>()
  let endUpdatesSignal = Pipe<Void>()
  let didChangeObjectSignal = Pipe<(object: ObjectType, changeType: ListChangeType, fromIndexPath: IndexPath?, toIndexPath: IndexPath?)>()
  let didChangeSectionSignal = Pipe<(changeType: ListChangeType, fromIndex: Int?, toIndex: Int?)>()
  let reloadDataSignal = Pipe<Void>()
  
  func numberOfSections() -> Int {
    return 0
  }
  
  func numberOfObjectsInSection(_ section: Int) -> Int {
    return 0
  }
  
  func objectAtIndexPath(_ indexPath: IndexPath) -> ObjectType? {
    return nil
  }
  
  func titleForSection(atIndex sectionIndex: Int) -> String? {
    return nil
  }
  
}
