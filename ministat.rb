require 'formula'

class Ministat < Formula
  version '0.1'
  homepage 'https://github.com/codahale/ministat'
  url 'https://github.com/codahale/ministat/tarball/5f1a5b59077c2a7837a37454a548ecd12532b7f8'
  sha256 'ad73993469df4a61c904cf22c7772bcfeb68bf0723aab2e162eaed48e1fbec61'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "ruby -e 'puts 1; puts 2; puts 3' | ministat"
  end
end
