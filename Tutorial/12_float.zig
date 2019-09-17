const builtin = @import("builtin");
const big = f64(1 << 40);

export fn foo_strict(x: f64) f64 {
    return x + big - big;
}

export fn foo_optimized(x: f64) f64 {
    @setFloatMode(builtin.FloatMode.Optimized);
    return x + big - big;
}