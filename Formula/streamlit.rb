class Streamlit < Formula
  desc "Streamlit"
  homepage "https://www.streamlit.io/"
  head "https://github.com/stremalit/streamlit.git"

  url "https://github.com/streamlit/streamlit/archive/0.73.1.tar.gz"

  version "0.73.1"
  sha256 "8474641142d5b07fc70a196de8fad927121827a39e82cc8dfdde3420fc5ffd44"
  bottle :unneeded

  depends_on "python@3.9"

  def install
    system Formula["python@3.9"].opt_bin/"python3", *Language::Python.setup_install_args(prefix)
  end

  test do
    system "#{bin}/streamlit --version"
    system Formula["python@3.9"].opt_bin/"python3", "-c", "import streamlit"
  end
end
