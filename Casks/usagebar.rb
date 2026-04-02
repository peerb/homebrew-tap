cask "usagebar" do
  version "1.0.3"
  sha256 "1ed7568aab631da8e0ca9d2d648142c29819e9edf86ede0e519b47c35a1454c9"

  url "https://github.com/peerb/usage-bar/releases/download/v#{version}/UsageBar.zip"
  name "UsageBar"
  desc "macOS menu bar app that shows Anthropic API rate limit usage"
  homepage "https://github.com/peerb/usage-bar"

  app "UsageBar.app"

  zap trash: [
    "~/Library/LaunchAgents/com.usagebar.plist",
    "~/.claude/usagebar.log",
  ]
end
