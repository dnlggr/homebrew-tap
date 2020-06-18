class DefaultBrowser < Formula
  desc "Manages the system's default web browser."
  homepage "https://github.com/dnlggr/DefaultBrowser"
  url "https://github.com/dnlggr/DefaultBrowser/archive/2.0.0.tar.gz"
  version "2.0.0"
  sha256 "c1cba19b2c8e9a715b39396a6aa3105da0944e53a1d733743295980b2403fd27"
  head "https://github.com/dnlggr/DefaultBrowser.git"
  
  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "safari", shell_output("#{bin}/default-browser list")
  end
end
