class Koko < Formula
  desc "Unified workspace for Claude Code sessions"
  homepage "https://github.com/edalee/koko"
  url "https://github.com/edalee/koko/releases/download/v0.3.0/Koko-v0.3.0-macOS.tar.gz"
  sha256 "38303c766c0dc4309075781ca6505266d72790924ebaa2cc1e4040573cdf262f"
  version "0.3.0"

  depends_on :macos

  def install
    prefix.install "Koko.app"
  end

  def post_install
    # Clear quarantine to prevent XProtect from stripping the unsigned binary
    system "xattr", "-cr", "#{prefix}/Koko.app"
    # Remove stale symlink or app, then link to /Applications
    rm_f "/Applications/Koko.app"
    ln_s "#{prefix}/Koko.app", "/Applications/Koko.app"
  end

  def caveats
    <<~EOS
      Koko.app has been linked to /Applications.

      The app is not code-signed. macOS XProtect will remove the binary
      after first launch. To restore, run: brew reinstall koko

      On first launch macOS may block it:
        1. Open Koko from /Applications or Launchpad
        2. Go to System Settings → Privacy & Security
        3. Click "Open Anyway"

      For a persistent install, build from source instead:
        git clone https://github.com/edalee/koko.git && cd koko
        make install-fe && make build
        cp -R build/bin/Koko.app /Applications/
    EOS
  end

  test do
    assert_predicate prefix/"Koko.app/Contents/MacOS/Koko", :exist?
  end
end
