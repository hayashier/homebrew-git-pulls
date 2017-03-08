REPOSITORY_URL='https://github.com/hayashier/homebrew-git-pulls'
HOMEBREW_GITPULLS_VERSION='0.0.3'

class GitPulls < Formula
  desc "git-pulls command pulls all git repository under specified paths."
  homepage "#{REPOSITORY_URL}/README.md"
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_GITPULLS_VERSION}.tar.gz"
  sha256 "b9897275782a118410fd93255746e63e009781479b1522e6c5db1768cbb965d1"
  head "#{REPOSITORY_URL}.git", :tag => "#{HOMEBREW_GITPULLS_VERSION}"
  version "#{HOMEBREW_GITPULLS_VERSION}"

  def install
    bin.install "bin/git-pulls"
  end

  test do
    system "false"
  end
end
