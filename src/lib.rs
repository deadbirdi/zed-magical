use zed_extension_api as zed;

struct MagicalExtension;

impl zed::Extension for MagicalExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        _worktree: &zed::Worktree,
    ) -> zed::Result<zed::Command> {
        // No language server for now, just syntax highlighting
        Err("No language server configured".into())
    }
}

zed::register_extension!(MagicalExtension);
