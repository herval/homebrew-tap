cask "littleguys" do
  version "0.2.2"
  sha256 "fed3fae7daef8064292ec21c212495c00327cc8cc082852b8f55544772c50874"

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
