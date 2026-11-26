cask "sakna-agents" do
  version "0.1.2"
  sha256 "0f687fb306b54bc4ac3277814846b4a0c4cfc40c3ad33af4c7a80e8eeabc1697"

  url "https://sakna.dev/download/SaknaAgents-#{version}.dmg"
  name "Sakna Agents"
  desc "Lists every Claude Code session and tells you when one asks you something"
  homepage "https://sakna.dev/"

  auto_updates true
  depends_on macos: :tahoe

  app "Sakna Agents.app"

  zap trash: [
    "~/Library/Application Support/Sakna Agents",
    "~/Library/Preferences/dev.sakna.agents.plist",
  ]
end
