// RUN: not --crash %swift %s -parse

// Distributed under the terms of the MIT license
// Test case submitted to project by https://github.com/practicalswift (practicalswift)
// Test case found by fuzzing

if true {
protocol A {
func d<b: d = B
