const warn = @import("std").debug.warn;
const c = @cImport({
    @cInclude("/opt/OpenBLAS/include/cblas.h");
});

pub fn main() void {
    const n: usize = 10000000;
    var array: [n]f64 = [1]f64{0.} ** n;
    const array2: [n]f64 = [1]f64{1.} ** n;
    const x: [*]f64 = &array2;
    var y: [*]f64 = &array;
    c.cblas_daxpy(n, 1., x, 1, y, 1);
    warn("{}\n", array[0]);
}
