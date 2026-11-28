cask "sakna-agents" do
  version "0.1.5"
  sha256 "b217b1db8ad0854c0e355fd05b881977d57ba63e7041da673a3c07d1e015268e"

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
