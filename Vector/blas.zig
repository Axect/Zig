// zig build-exe blas.zig --release-fast --output-dir bin -lc -lopenblas -L/opt/OpenBLAS/lib

const warn = @import("std").debug.warn;
const c = @cImport({
    @cInclude("/opt/OpenBLAS/include/cblas.h");
});

pub fn main() void {
    var array_y = [_]f64{ 0., 0., 0., 0. };
    const x: [*]f64 = &[_]f64{ 1., 2., 3., 4. };
    var y: [*]f64 = &array_y;
    c.cblas_daxpy(4, 1., x, 1, y, 1);
    for (array_y) |item, i| {
        warn("{}th: {}\n", i, item);
    }
}
