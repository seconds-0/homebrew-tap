class GhSwitcher < Formula
  desc "Lightning-fast GitHub account switcher for developers with multiple identities"
  homepage "https://github.com/seconds-0/gh-switcher"
  url "https://github.com/seconds-0/gh-switcher/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "01658b926ff101a4116bed8138f236567a0ef75c0cf1534a97d58469138cd5c8"
  license "MIT"

  depends_on "gh"
  depends_on "git"

  def install
    bin.install "gh-switcher.sh" => "ghs"
  end

  def caveats
    <<~EOS
      Some features require shell integration:
      - auto-switch (automatic profile switching)
      - fish-setup (Fish shell configuration)
      
      For these features, see manual installation:
      https://github.com/seconds-0/gh-switcher#manual-installation
    EOS
  end

  test do
    assert_match "GitHub Project Switcher", shell_output("#{bin}/ghs help")
  end
end
