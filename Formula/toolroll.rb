class Toolroll < Formula
  desc "Control plane for unattended coding agents"
  homepage "https://github.com/ap9000/toolroll"
  url "https://registry.npmjs.org/toolroll/-/toolroll-0.9.73.tgz"
  sha256 "13bdb49c15a5c189b4f3edf57eaac203f1df63b81e77fc9bd2722b68e54af655"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/toolroll --version")
  end
end
