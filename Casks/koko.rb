cask "koko" do
  version "0.2.7"
  sha256 "574360dc9968b25b12d9a269d10721d11ec5535e63d94af6200c76d0399a3981"

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
