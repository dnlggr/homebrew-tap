class DefaultBrowser < Formula
  desc "Manages the system's default web browser."
  homepage "https://github.com/dnlggr/DefaultBrowser"
  url "https://github.com/dnlggr/DefaultBrowser/archive/2.0.0.tar.gz"
  version "2.0.0"
  sha256 "60777e53faeb73a566edfdd0761e7219e98200048bb677f922cb298bb7f92cb0"
  head "https://github.com/dnlggr/DefaultBrowser.git"
  
  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "safari", shell_output("#{bin}/default-browser list")
  end
end
