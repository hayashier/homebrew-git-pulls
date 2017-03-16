REPOSITORY_URL="https://github.com/hayashier/git-pulls".freeze
HOMEBREW_GITPULLS_VERSION="0.0.1".freeze

class GitPulls < Formula
  desc "Pulls all git repository under specified paths."
  homepage REPOSITORY_URL
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_GITPULLS_VERSION}.tar.gz"
  sha256 "ed3b6451a05567505bd718db8fdf343f47e97d70fc7d4d92e7f5cb3c9532b753"
  head "#{REPOSITORY_URL}.git", :tag => HOMEBREW_GITPULLS_VERSION

  def install
    bin.install "bin/git-pulls"
  end

  test do
    system "false"
  end
end
