const std = @import("std");
const assert = std.debug.assert;

const mat4x4 = [4][4]f32 {
    [_]f64{ 1.0, 0.0, 0.0, 0.0 },
    [_]f64{ 0.0, 1.0, 0.0, 0.0 },
    [_]f64{ 0.0, 0.0, 1.0, 0.0 },
    [_]f64{ 0.0, 0.0, 0.0, 1.0 },
};

test "multidimensional arrays" {
    assert(mat4x4[1][1] == 1.0);

    for (mat4x4) |row, row_index| {
        for (row) |cell, col_index| {
            if (row_index == col_index) {
                assert(cell == 1.0);
            }
        }
    }
}