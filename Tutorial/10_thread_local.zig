const std = @import("std");
const assert = std.debug.assert;

threadlocal var x: i32 = 1234;

test "thread local storage" {
    const thread1 = try std.Thread.spawn({}, testTls);
    const thread2 = try std.Thread.spawn({}, testTls);
    testTls({});
    thread1.wait();
    thread2.wait();
}

fn testTls(context: void) void {
    assert(x == 1234);
    x += 1;
    assert(x == 1235);
}