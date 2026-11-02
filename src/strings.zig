//! UI strings (English / 简体中文).
const locale = @import("locale.zig");

pub fn searchPlaceholder() []const u8 {
    return if (locale.chinese()) "搜索应用、计算、问 Grok…" else "Search apps, do math, ask Grok…";
}

pub fn footerAppsSuffix() []const u8 {
    return if (locale.chinese()) " 个应用" else " apps";
}

pub fn settingsTitle() []const u8 {
    return if (locale.chinese()) "设置" else "Settings";
}

pub fn openLabel() []const u8 {
    return if (locale.chinese()) "打开" else "Open";
}

pub fn goLabel() []const u8 {
    return if (locale.chinese()) "前往" else "Go";
}

pub fn nanolightSettingsTitle() []const u8 {
    return if (locale.chinese()) "Nanolight 设置" else "Nanolight Settings";
}

pub fn nanolightSettingsSub() []const u8 {
    return if (locale.chinese()) "快捷键、同步、更新" else "Shortcut, sync, updates";
}

pub fn askGrokFor() []const u8 {
    return if (locale.chinese()) "问 Grok：" else "Ask Grok";
}

pub fn searchXFor() []const u8 {
    return if (locale.chinese()) "在 X 搜索：" else "Search X for";
}

pub fn searchGoogleFor() []const u8 {
    return if (locale.chinese()) "Google 搜索：" else "Search Google for";
}

pub fn openInBrowser() []const u8 {
    return if (locale.chinese()) "在浏览器中打开" else "Open in Browser";
}

pub fn sectionCalc() []const u8 {
    return if (locale.chinese()) "计算器" else "Calculator";
}

pub fn sectionApps(suggested: bool) []const u8 {
    if (locale.chinese()) return if (suggested) "建议" else "应用";
    return if (suggested) "Suggestions" else "Applications";
}

pub fn sectionGoogle() []const u8 {
    return if (locale.chinese()) "Google" else "Google";
}

pub fn sectionAskSearch() []const u8 {
    return if (locale.chinese()) "提问与搜索" else "Ask & Search";
}

pub fn sectionNanolight() []const u8 {
    return "Nanolight";
}

pub fn rowCalc() []const u8 {
    return sectionCalc();
}

pub fn rowApplication() []const u8 {
    return if (locale.chinese()) "应用" else "Application";
}

pub fn rowWeb() []const u8 {
    return if (locale.chinese()) "网页" else "Web";
}

pub fn actionCopyAnswer() []const u8 {
    return if (locale.chinese()) "复制结果" else "Copy Answer";
}

pub fn actionOpenApp() []const u8 {
    return if (locale.chinese()) "打开应用" else "Open Application";
}

pub fn actionOpenSettings() []const u8 {
    return if (locale.chinese()) "打开设置" else "Open Settings";
}

pub fn actionAskGrok() []const u8 {
    return if (locale.chinese()) "问 Grok" else "Ask Grok";
}

pub fn actionSearchX() []const u8 {
    return if (locale.chinese()) "搜索 X" else "Search X";
}

pub fn actionSearchGoogle() []const u8 {
    return if (locale.chinese()) "Google 搜索" else "Search Google";
}

pub fn settingsOpenWith() []const u8 {
    return if (locale.chinese()) "打开 Nanolight" else "Open Nanolight with";
}

pub fn settingsGoogleSuggest() []const u8 {
    return if (locale.chinese()) "Google 搜索建议" else "Google Suggestions";
}

pub fn settingsLogin() []const u8 {
    return if (locale.chinese()) "登录时打开" else "Open at Login";
}

pub fn settingsSyncSection() []const u8 {
    return if (locale.chinese()) "跨 Mac 同步" else "Sync Across Macs";
}

pub fn settingsThisMac() []const u8 {
    return if (locale.chinese()) "本机" else "This Mac";
}

pub fn settingsUpdates() []const u8 {
    return if (locale.chinese()) "更新" else "Updates";
}

pub fn settingsWelcomeAgain() []const u8 {
    return if (locale.chinese()) "再次显示欢迎页" else "Show Welcome Again";
}

pub fn settingsQuit() []const u8 {
    return if (locale.chinese()) "退出 Nanolight" else "Quit Nanolight";
}

pub fn settingsBack() []const u8 {
    return if (locale.chinese()) "返回" else "Back";
}

pub fn settingsSearchSection() []const u8 {
    return if (locale.chinese()) "搜索" else "Search";
}
