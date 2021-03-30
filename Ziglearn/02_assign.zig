const std = @import("std");

pub fn main() void {
    const constant: i32 = 5;
    var variable: u32 = 5000;

    const inferred_constant = @as(i32, 5);
    var inferred_variable = @as(u32, 5000);

    var a: u32 = undefined; // Arbitrary Value
    var b: i32 = undefined;
    std.debug.print("a: {d}\nb: {d}\n", .{ a, b });
}
