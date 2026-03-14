cask "koko" do
  version "0.2.0"
  sha256 "e49c401fa7609327ff583177795cdd1caa99c7ff5547c8abba35c2442b7227c1"

  url "https://github.com/edalee/koko/releases/download/v#{version}/Koko-v#{version}-macOS.dmg"
  name "Kõkõ"
  desc "Unified workspace for Claude Code sessions"
  homepage "https://github.com/edalee/koko"

  app "Kõkõ.app"

  zap trash: [
    "~/Library/Application Support/koko",
    "~/Library/Preferences/com.koko.app.plist",
  ]
end
