cask "koko" do
  version "0.2.5"
  sha256 "0d47db80fbb37766d99dc0e445ab5e35b58c6a265542067b7646d4518dc5cc4c"

  url "https://github.com/edalee/koko/releases/download/v#{version}/Koko-v#{version}-macOS.pkg"
  name "Koko"
  desc "Unified workspace for Claude Code sessions"
  homepage "https://github.com/edalee/koko"

  pkg "Koko-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.edalee.koko",
  delete:  "/Applications/Koko.app"

  zap trash: [
    "~/Library/Application Support/koko",
    "~/Library/Preferences/com.koko.app.plist",
  ]
end
