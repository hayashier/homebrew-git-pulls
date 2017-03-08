REPOSITORY_URL='https://github.com/hayashier/homebrew-git-pulls'
HOMEBREW_GITPULLS_VERSION='0.0.3'

class GitPulls < Formula
  desc "git-pulls command pulls all git repository under specified paths."
  homepage "#{REPOSITORY_URL}/README.md"
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_GITPULLS_VERSION}.tar.gz"
  sha256 "2b25ee7a707b7c6b7f935b3a37b265eb20c480eab3401a16867b3e8d6bb002ef"
  head "#{REPOSITORY_URL}.git", :tag => "#{HOMEBREW_GITPULLS_VERSION}"
  version "#{HOMEBREW_GITPULLS_VERSION}"

  def install
    bin.install "bin/git-pulls"
  end

  test do
    system "false"
  end
end
