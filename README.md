# mydotfiles
my settings for coding almost using keyboards under mac, including:
1. Neovim settingfile. Support lsp, tree-sitter, project manager, etc.
2. Change input method automatically. when you enter into Normal model, it will change to English model, and when you enter into Insert model, it will change to the iuput method what you use when you are in Insert model last time. Ensure your Chinese iuput method or any other language input method, not English, doesnot open English model, and English model is in American model, not ABC model, although they should be the same, but in fact, when in ABC model, it has bug, not know why. Put fcitx-remote-general as name fcitx-remote in your $PATH.
3. karabiner-elements settingfile.
4. Make it ok to use p to paste contents of local clipboard in neovim on remote machine, and use yy to copy contents to local clipboard in neovim on remote machine.
5. Use Automator with apple script to support open local iterm2, or you can do other workflow.
6. Set vim as external tools of idea or any other jetbrains' product. As you set to launch in idea, it will open vim in iterm2, or macvim with the cursor at the same line and      column as it is in idea.
7. Rime setting file use wubi86. Support when use default words db, it does not re-sort, but when your use the words db you dynamically generate, it will follow default words db by Frequency of use.
