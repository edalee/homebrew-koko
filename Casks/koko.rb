cask "koko" do
  version "0.2.3"
  sha256 "290d02776b2ed15126cd83b3e3a34bd726eb29752f9938f674916425d82afb56"

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
