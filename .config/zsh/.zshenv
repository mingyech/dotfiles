export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export EDITOR=nvim
export VISUAL=nvim
export PATH="$PATH:$HOME/go/bin"
export _JAVA_AWT_WM_NONREPARENTING=1
[ -f ~/.config/lf/icons ] && {
	LF_ICONS="$(tr '\n' ':' <~/.config/lf/icons)" \
		&& export LF_ICONS
}
