// RUN: not --crash %swift %s -parse

// Distributed under the terms of the MIT license
// Test case submitted to project by https://github.com/practicalswift (practicalswift)
// Test case found by fuzzing

struct c<d : j, j: j where j.j == d.j> {i {
}
func d
