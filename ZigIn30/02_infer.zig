const std = @import("std");

pub fn main() void {
    var x: i32 = 47;
    var y: i32 = 74;
    var z = x + y; // Infer
    std.debug.print("z: {}\n", .{z});
}
