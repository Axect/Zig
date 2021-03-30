const std = @import("std");

pub fn main() void {
    var array = [_]i32{ 1, 2, 3 };

    for (array) |value, index| {
        std.debug.print("index: {}, value: {}\n", .{ index, value });
    }
}
