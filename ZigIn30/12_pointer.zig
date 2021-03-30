const std = @import("std");

pub fn printer(value: *i32) void {
    std.debug.print("pointer: {}\n", .{value});
    std.debug.print("value: {}\n", .{value.*}); // Dereferenced
}

pub fn main() void {
    var value: i32 = 47;
    printer(&value);
}
