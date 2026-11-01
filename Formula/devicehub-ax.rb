class DevicehubAx < Formula
  desc "Fold, rotate and tap the iPhone Duo simulator from the command line"
  homepage "https://github.com/hipporasy/devicehub-ax"
  url "https://github.com/hipporasy/devicehub-ax/releases/download/v0.4.0/ax-macos-universal.zip"
  version "0.4.0"
  sha256 "c954d38342b4b184983d020f9da01807a1d16184ce4ff450000228819e7cc3b0"
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
