//
//  SwiftDSL.swift
//  SwiftDSL
//
//  Created by 梁光辉 on 2023/7/25.
//

import UIKit

public class SwiftDSL: NSObject {
    
}

public extension SwiftDSL {
    @objc class var defaultConfig: SwiftDSL {
        // do some thing...
        return SwiftDSL()
    }
}

public extension SwiftDSL {
    @discardableResult
    func A() -> Self {
        // do some thing...
        print("A method called")
        return self
    }
    
    @discardableResult
    func B(param: String) -> Self {
        // do some thing...
        print("B method called, param: \(param)")
        return self
    }
    
    @discardableResult
    func C(param: String, param2: Int) -> Self {
        // do some thing...
        print("C method called, param: \(param), param2: \(param2)")
        return self
    }
}

// MARK: - For Objc
public extension SwiftDSL {
    @objc(A)
    var dsl_A: (() -> SwiftDSL) {
        return A
    }
    
    @objc(B)
    var dsl_B: ((_ string: String) -> SwiftDSL) {
        return B(param:)
    }
    
    @objc(C)
    var dsl_C: ((_ string: String, _ param2: Int) -> SwiftDSL) {
        return C(param:param2:)
    }
}
