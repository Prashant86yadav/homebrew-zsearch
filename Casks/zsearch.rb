cask "zsearch" do
  version "2.29.1"
  sha256 "31e6e1dd1e6ed680d7fdf87f252897dc651af17f77383571bb39d431c601fc9c"

  url "https://stdocumindprodaue.blob.core.windows.net/desktop-updates/ZSearch-#{version}-arm64.dmg",
      verified: "stdocumindprodaue.blob.core.windows.net/desktop-updates/"
  name "ZSearch"
  desc "Data-sovereign AI search and document platform"
  homepage "https://zsearch.ai/"

  livecheck do
    url "https://stdocumindprodaue.blob.core.windows.net/desktop-updates/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura
  depends_on arch: :arm64

  app "ZSearch.app"

  uninstall quit: "com.documind.local"

  zap trash: [
    "~/Library/Application Support/ZSearch",
    "~/Library/Caches/com.documind.local",
    "~/Library/Caches/com.documind.local.ShipIt",
    "~/Library/Logs/ZSearch",
    "~/Library/Preferences/com.documind.local.plist",
    "~/Library/Saved Application State/com.documind.local.savedState",
  ]
end
