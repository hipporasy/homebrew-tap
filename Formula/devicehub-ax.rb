class DevicehubAx < Formula
  desc "Fold, rotate and tap the iPhone Duo simulator from the command line"
  homepage "https://github.com/hipporasy/devicehub-ax"
  url "https://github.com/hipporasy/devicehub-ax/releases/download/v0.5.0/ax-macos-universal.zip"
  version "0.5.0"
  sha256 "2f3d2c1b57ad2b20da9d3cac7e759590f9d60946b59d6e3506c09410e8247aeb"
  license "MIT"

  depends_on :macos

  def install
    bin.install "ax"
  end

  def caveats
    <<~EOS
      ax drives Xcode's Device Hub through the accessibility API. Give the terminal
      you run it from Accessibility access in System Settings > Privacy & Security >
      Accessibility, then run `ax doctor`.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
