const std = @import("std");

pub fn main() void {
    _ = foo(); // Throw away (no-error)
    // foo();  // Error! (ignore value)
}

fn foo() i32 {
    return 47;
}
