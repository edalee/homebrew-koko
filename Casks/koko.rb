cask "koko" do
  version "0.2.1"
  sha256 "c92d9da885633e23cedd714b777d6df2bb62d476eaf239b0ef3b86168a0e2660"

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
