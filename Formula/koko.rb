class Koko < Formula
  desc "Unified workspace for Claude Code sessions"
  homepage "https://github.com/edalee/koko"
  url "https://github.com/edalee/koko/releases/download/v0.2.9/Koko-v0.2.9-macOS.tar.gz"
  sha256 "96eb47f0a2e08181600b21cac5cc12603042419b32a011802d456ecce20266ff"
  version "0.2.9"

  depends_on :macos

  def install
    prefix.install "Koko.app"
  end

  def post_install
    # Clear quarantine to prevent XProtect from stripping the unsigned binary
    system "xattr", "-cr", "#{prefix}/Koko.app"
    # Symlink to /Applications for Finder/Launchpad visibility
    ln_sf "#{prefix}/Koko.app", "/Applications/Koko.app"
  end

  def caveats
    <<~EOS
      Koko.app has been linked to /Applications.

      The app is not notarized. On first launch macOS may block it:
        1. Open Koko from /Applications or Launchpad
        2. Go to System Settings → Privacy & Security
        3. Click "Open Anyway"
    EOS
  end

  test do
    assert_predicate prefix/"Koko.app/Contents/MacOS/Koko", :exist?
  end
end
