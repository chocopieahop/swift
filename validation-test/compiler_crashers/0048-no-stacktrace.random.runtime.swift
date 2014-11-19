// RUN: rm -rf %t/clang-module-cache
// RUN: %swift %s -sdk %sdk -module-cache-path %t/clang-module-cache -emit-ir

// Distributed under the terms of the MIT license
// Test case submitted to project by https://github.com/practicalswift (practicalswift)
// https://twitter.com/nuoji/status/507991706294558721
// https://gist.github.com/lerno/4cb4568c53045aafb66e

import Foundation
class A : NSObject {
    var c: (()->Bool)?
    deinit {
        println("A")
    }
}
class B : NSObject {
    var d = A()
    override init() {
        super.init()
        d.c = {
            [unowned self] in
            println("\(self)")
            return true
        }
    }
}
var e: B? = B()
var f: A? = e!.d
e = nil
f = nil
