class Jx < Formula
  desc "A tool to install and interact with Jenkins X on your Kubernetes cluster."
  homepage "https://jenkins-x.github.io/jenkins-x-website/"
  version "1.3.666"
   
  url "https://github.com/jenkins-x/jx/releases/download/v#{version}/jx-darwin-amd64.tar.gz"
  sha256 "758fb2a3380bd84ad7d16f843b774507b40801b306fd85baa84c9d73342ce4ef"

  def install
    bin.install name
  end

end