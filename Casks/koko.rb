cask "koko" do
  version "0.2.6"
  sha256 "6e493ee878559794a7a79235577c2ce3d440893d6daf2278048ae14179253594"

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
