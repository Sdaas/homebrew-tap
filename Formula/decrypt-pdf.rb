class DecryptPdf < Formula
  desc "Decrypt password-protected PDFs using a cascading strategy (qpdf, mutool, ghostscript)"
  homepage "https://github.com/Sdaas/decrypt-pdf"
  url "https://github.com/Sdaas/decrypt-pdf/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "dc71376f4e2a81bed4fa989eedfefd3f6b89351a24a7cfa1c40e7a00551d9b07"
  license "MIT"

  depends_on "qpdf"
  depends_on "mupdf-tools"
  depends_on "ghostscript"

  def install
    bin.install "decrypt-pdf"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/decrypt-pdf --help")
  end
end
