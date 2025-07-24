if status is-interactive
    starship init fish | source
    set -Ux STARSHIP_CONFIG ~/dotfiles/starship.toml
    zoxide init --cmd cd fish | source
    set -Ux _ZO_MAXAGE 1000
end

if status is-login
    fish_add_path -g /home/sxu/.local/bin
    fish_add_path -g /home/sxu/.cargo/bin
    fish_add_path -g /home/sxu/.fzf/bin
end
