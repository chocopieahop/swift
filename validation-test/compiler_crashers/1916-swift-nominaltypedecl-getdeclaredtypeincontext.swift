// RUN: rm -rf %t/clang-module-cache
// RUN: not --crash %swift %s -sdk %sdk -module-cache-path %t/clang-module-cache -parse

// Distributed under the terms of the MIT license
// Test case submitted to project by https://github.com/practicalswift (practicalswift)
// Test case found by fuzzing

import CoreData
func b.join() -> V {
}
func g<T>() {
}
extension NSSet {
class a<T : b
var b = a()
