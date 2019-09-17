const std = @import("std");
const assert = std.debug.assert;

var foo: u8 align(4) = 100;

test "global variable alignment" {
    assert(@typeOf(&foo).alignment == 4);
    assert(@typeOf(&foo) == *align(4) u8);
    const slice = (*[1]u8)(&foo)[0..];
    assert(@typeOf(slice) == []align(4) u8);
}

fn derp() align(@sizeOf(usize) * 2) i32 { return 1234; }
fn noop1() align(1) void {}
fn noop4() align(4) void {}

test "function alignment" {
    assert(derp() == 1234);
    assert(@typeOf(noop1) == fn() align(1) void);
    assert(@typeOf(noop4) == fn() align(4) void);
    noop1();
    noop4();
}
