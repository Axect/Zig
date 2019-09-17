const warn = @import("std").debug.warn;

extern fn foo_strict(x: f64) f64;
extern fn foo_optimized(x: f64) f64;

pub fn main() void {
    const x = 0.001;
    warn("optimized = {}\n", foo_optimized(x));
    warn("strict = {}\n", foo_strict(x));
}