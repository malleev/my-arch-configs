if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /mnt/Storage_500/miniconda3/bin/conda
    eval /mnt/Storage_500/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/mnt/Storage_500/miniconda3/etc/fish/conf.d/conda.fish"
        . "/mnt/Storage_500/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/mnt/Storage_500/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

