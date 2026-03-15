cask "koko" do
  version "0.2.4"
  sha256 "fb2b737062228213a5f6e04aef19b1193a05493482526584287036de758118e2"

  url "https://github.com/edalee/koko/releases/download/v#{version}/Koko-v#{version}-macOS.zip"
  name "Koko"
  desc "Unified workspace for Claude Code sessions"
  homepage "https://github.com/edalee/koko"

  app "Koko.app"

  zap trash: [
    "~/Library/Application Support/koko",
    "~/Library/Preferences/com.koko.app.plist",
  ]
end
