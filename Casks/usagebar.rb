cask "usagebar" do
  version "1.0.1"
  sha256 "4d4958ef1c9b86aeac3b049fee282f7ac7e7143699dd059940985fb86e34802a"

  url "https://github.com/peerb/usage-bar/releases/download/v#{version}/UsageBar.zip"
  name "UsageBar"
  desc "macOS menu bar app that shows Anthropic API rate limit usage"
  homepage "https://github.com/peerb/usage-bar"

  app "UsageBar.app"

  caveat <<~EOS
    UsageBar is not code-signed. If macOS shows a "damaged" warning, run:
      xattr -dr com.apple.quarantine /Applications/UsageBar.app
    Then open the app again.
  EOS

  zap trash: [
    "~/Library/LaunchAgents/com.usagebar.plist",
    "~/.claude/usagebar.log",
  ]
end
