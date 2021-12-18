cask "zotero-beta" do
  version "5.0.97-beta.58+44b6cd052"
  sha256 "1aff386c51e591260738372965f19fa0c2faa8e18a8173f404bd4fb13843fc75"

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
