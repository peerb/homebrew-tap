cask "usagebar" do
  version "1.0.0"
  sha256 "a803a46f5f1efeb5051ada60116573ac3a1e144bbc186ce09303e9f2e0f1b9c4"

  url "https://github.com/peerb/usage-bar/releases/download/v#{version}/UsageBar.zip"
  name "UsageBar"
  desc "macOS menu bar app that shows Anthropic API rate limit usage"
  homepage "https://github.com/peerb/usage-bar"

  app "UsageBar.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/UsageBar.app"]
  end

  zap trash: [
    "~/Library/LaunchAgents/com.usagebar.plist",
    "~/.claude/usagebar.log",
  ]
end
