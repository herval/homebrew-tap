cask "littleguys" do
  version "0.2.4"
  sha256 "fa666f345c23f8c834d5bb7d49de3ebf3619235e35b25c804ace87fbb33c3a1c"

  url "https://github.com/herval/littleguys/releases/download/v#{version}/littleguys_#{version}_universal.dmg"
  name "littleguys"
  desc "Menu bar home for OpenClaw, Hermes and ACP agents"
  homepage "https://github.com/herval/littleguys"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "littleguys.app"

  uninstall quit: "ai.littleguys.app"

  zap trash: [
    "~/Library/Application Support/ai.littleguys.app",
    "~/Library/Caches/ai.littleguys.app",
    "~/Library/LaunchAgents/littleguys.plist",
    "~/Library/Preferences/ai.littleguys.app.plist",
    "~/Library/Saved Application State/ai.littleguys.app.savedState",
    "~/Library/WebKit/ai.littleguys.app",
  ]
end
