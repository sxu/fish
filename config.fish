if status is-interactive
    starship init fish | source
    set -Ux STARSHIP_CONFIG ~/dotfiles/starship.toml
end

if status is-login
    fish_add_path -g /home/sxu/.local/bin
    fish_add_path -g /home/sxu/.cargo/bin
    fish_add_path -g /home/sxu/.fzf/bin
end
