cask "usagebar" do
  version "1.0.2"
  sha256 "1c635a07c8cc32cb4d9200ae931feded4ebbcd02def2aceda4454d6ee6d0c576"

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
