cask "zotero-beta" do
  version "5.0.97-beta.63+035aac30f"
  sha256 "32e7c70b52ccf1c6050523fba0fb19409e86d10173bfa65f1c9b1f646bbb180e"

  url "https://download.zotero.org/client/beta/#{version}/Zotero-#{version}.dmg".gsub("+", "%2B")
  name "Zotero"
  desc "Collect, organize, cite, and share research sources"
  homepage "https://www.zotero.org/"

  # livecheck do
  #   url "https://www.zotero.org/support/dev_builds"
  #   strategy :page_match
  #   regex(/standaloneVersions.*?"mac"\s*:\s*"(\d+(?:\.\d+)*)"/i)
  # end

  auto_updates true

  app "Zotero.app"

  zap trash: [
    "~/Library/Application Support/Zotero",
    "~/Library/Caches/Zotero",
    "~/Library/Preferences/org.zotero.zotero.plist",
    "~/Library/Saved Application State/org.zotero.zotero.savedState",
  ]
end
