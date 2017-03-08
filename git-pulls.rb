REPOSITORY_URL='https://github.com/hayashier/homebrew-git-pulls'
HOMEBREW_GITPULLS_VERSION='0.0.3'

class GitPulls < Formula
  desc "git-pulls command pulls all git repository under specified paths."
  homepage "#{REPOSITORY_URL}/README.md"
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_GITPULLS_VERSION}.tar.gz"
  sha256 "4d4a055dda4ed5776c7267908e8e8db0d63bfa7bd4e36c29df2cc711e7ab4c77"
  head "#{REPOSITORY_URL}.git", :tag => "#{HOMEBREW_GITPULLS_VERSION}"
  version "#{HOMEBREW_GITPULLS_VERSION}"

  def install
    bin.install "bin/git-pulls"
  end

  test do
    system "false"
  end
end
