cask "sakna-agents" do
  version "0.1.0"
  sha256 "ecb5b4cb13c9d4808b77e43435282e8440ccaa40473cd789bbed8eaf099e4689"

  url "https://sakna.dev/download/SaknaAgents-#{version}.dmg"
  name "Sakna Agents"
  desc "Lists every Claude Code session and tells you when one asks you something"
  homepage "https://sakna.dev/"

  depends_on macos: :tahoe

  app "Sakna Agents.app"

  zap trash: [
    "~/Library/Application Support/Sakna Agents",
    "~/Library/Preferences/dev.sakna.agents.plist",
  ]
end
