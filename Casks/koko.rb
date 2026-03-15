cask "koko" do
  version "0.2.2"
  sha256 "9f90de4b6efb46db064f8c82120dc91ffe932e5c14bc4cb872b0752233704347"

  url "https://github.com/edalee/koko/releases/download/v#{version}/Koko-v#{version}-macOS.dmg"
  name "Kõkõ"
  desc "Unified workspace for Claude Code sessions"
  homepage "https://github.com/edalee/koko"

  app "Koko.app"

  zap trash: [
    "~/Library/Application Support/koko",
    "~/Library/Preferences/com.koko.app.plist",
  ]
end
