// RUN: %swift %s -parse -verify

// Distributed under the terms of the MIT license
// Test case submitted to project by https://github.com/tmu (Teemu Kurppa)
// rdar://18175202

func d<b: SequenceType, e where Optional<e> == b.Generator.Element>(c : b) -> e? {
    for (mx : e?) in c { // expected-error {{type of expression is ambiguous without more context}}
    }
}
