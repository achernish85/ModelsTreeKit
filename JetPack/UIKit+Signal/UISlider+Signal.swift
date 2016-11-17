//
//  UISlider+Signal.swift
//  ModelsTreeKit
//
//  Created by aleksey on 06.03.16.
//  Copyright © 2016 aleksey chernish. All rights reserved.
//

import UIKit

extension UISlider {
  
  public var valueSignal: Observable<Float> {
    get {
      let observable = Observable<Float>(value)
        signalForControlEvents(.valueChanged).map { [weak self] _ in self!.value }.bind(to: observable)
      
      return observable
    }
  }
  
  public var isAtMaximumSignal: Observable<Bool> {
    get {
      let observable = Observable<Bool>(value == maximumValue)
        valueSignal.filter { [weak self] in return self!.maximumValue == $0 }.map { _ in return true}.bind(to: observable)
      
      return observable
    }
  }
  
  public var isAtMinimumSignal: Observable<Bool> {
    get {
      let observable = Observable<Bool>(value == minimumValue)
        valueSignal.filter { [weak self] in return self!.minimumValue == $0 }.map { _ in return true}.bind(to: observable)
      
      return observable
    }
  }
  
}
