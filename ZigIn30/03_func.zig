const std = @import("std");

pub fn main() void {
    foo();
}

fn foo() void {
    std.debug.print("foo!\n", .{});
    return; // Optional
}
