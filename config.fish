if status is-login
    fish_add_path -g /home/sxu/.local/bin
    fish_add_path -g /home/sxu/.cargo/bin
    fish_add_path -g /home/sxu/.fzf/bin
end

if status is-interactive
    set -gx FZF_DEFAULT_COMMAND 'fd --type f'
    set -gx STARSHIP_CONFIG ~/dotfiles/starship.toml
    set -gx _ZO_MAXAGE 1000

    zoxide init --cmd cd fish | source
    starship init fish | source
end
