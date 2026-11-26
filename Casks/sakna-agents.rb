cask "sakna-agents" do
  version "0.1.1"
  sha256 "0dfef24d32a43d63a7847e7ea90e40dfd5c8224fed43266eaf139d4eb5b696d7"

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
