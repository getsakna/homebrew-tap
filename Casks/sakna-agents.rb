cask "sakna-agents" do
  version "0.1.4"
  sha256 "6c1cc98728b9052532c2f11ecfc10ac30d91ad7318ec584268508266829cf441"

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
