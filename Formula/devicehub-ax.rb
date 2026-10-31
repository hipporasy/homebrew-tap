class DevicehubAx < Formula
  desc "Fold, rotate and tap the iPhone Duo simulator from the command line"
  homepage "https://github.com/hipporasy/devicehub-ax"
  url "https://github.com/hipporasy/devicehub-ax/releases/download/v0.3.0/ax-macos-universal.zip"
  version "0.3.0"
  sha256 "3cdd3b1bb056ff85340137b29bbb208b1e98534d9fd8d0ba83e478f5a7cfcced"
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
