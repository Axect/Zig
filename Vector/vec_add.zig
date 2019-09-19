const std = @import("std");
const warn = std.debug.warn;

pub fn main() void {
    const x1 = [1]u32{1} ** 10000000;
    const x2 = [1]u32{1} ** 10000000;
    var v1: @Vector(10000000, u32) = x1;
    var v2: @Vector(10000000, u32) = x2; 
    v1 +%= v2;
    var result: [10000000]u32 = v1;
    warn("result[0] = {}\n", result[0]);
}
