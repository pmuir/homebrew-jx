class Jx < Formula
  desc "A tool to install and interact with Jenkins X on your Kubernetes cluster."
  homepage "https://jenkins-x.github.io/jenkins-x-website/"
  version "1.3.711"
   
  url "https://github.com/jenkins-x/jx/releases/download/v#{version}/jx-darwin-amd64.tar.gz"
  sha256 "7fd473eb58e5ebc36a6f74060c66cd9d5b1a54f195eae15fe9a846f5022fa743"

  def install
    bin.install name
  end

end