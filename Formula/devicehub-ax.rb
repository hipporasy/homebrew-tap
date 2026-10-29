class DevicehubAx < Formula
  desc "Fold, rotate and tap the iPhone Duo simulator from the command line"
  homepage "https://github.com/hipporasy/devicehub-ax"
  url "https://github.com/hipporasy/devicehub-ax/releases/download/v0.2.2/ax-macos-universal.zip"
  version "0.2.2"
  sha256 "18aede1b89a7f30958c8f1a95dbc92d63a0c5643f76098327bbdf146939f4ab6"
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
