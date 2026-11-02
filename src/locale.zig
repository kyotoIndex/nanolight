//! Whether to show Chinese UI copy (system language, overridable in tests).
const std = @import("std");
const builtin = @import("builtin");
const mac = builtin.os.tag == .macos;

pub var override: ?bool = null;

pub fn chinese() bool {
    if (override) |v| return v;
    if (builtin.is_test) return false;
    if (!mac) return false;
    return detectMac();
}

fn detectMac() bool {
    const nanoui = @import("nanoui");
    const objc = nanoui.objc;
    const pool = objc.Pool.push();
    defer pool.pop();
    const langs = objc.msg(objc.Object, objc.class("NSLocale"), "preferredLanguages", .{});
    const first = objc.msg(?objc.Object, langs, "firstObject", .{}) orelse return false;
    const utf8 = objc.msg(?[*]const u8, first, "UTF8String", .{}) orelse return false;
    const s: []const u8 = std.mem.sliceTo(utf8, 0);
    return std.mem.startsWith(u8, s, "zh");
}
