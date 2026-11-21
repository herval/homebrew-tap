cask "littleguys" do
  version "0.3.1"
  sha256 "320dce9d1150a1ecb8722718fa2c0fb979ea2eca82b6182b3373ce06b9c3abe7"

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
