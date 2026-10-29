class DevicehubAx < Formula
  desc "Fold, rotate and tap the iPhone Duo simulator from the command line"
  homepage "https://github.com/hipporasy/devicehub-ax"
  url "https://github.com/hipporasy/devicehub-ax/releases/download/v0.2.1/ax-macos-universal.zip"
  version "0.2.1"
  sha256 "ed2f88a216b9ec11f41aee625978a91ae06b07ee6c329c04baaca3274d904433"
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
