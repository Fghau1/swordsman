# ============================================================
#             🩸 FISH — BERSERK
# ============================================================

if status is-interactive

    # No default greeting
    set -g fish_greeting ""

    # Berserk greeting
    echo ""
    echo "  ⚔  BLACK SWORDSMAN"
    echo "  🩸  Struggle."
    echo ""

    # Starship
    starship init fish | source

    # Modern tools
    alias ls="eza --icons --group-directories-first"
    alias ll="eza -la --icons --group-directories-first"
    alias tree="eza --tree --icons"
    alias cat="batcat --theme=ansi"
    alias g="git"

end

# ============================================================
# PROMPT
# ============================================================

function fish_prompt

    set -l last_status $status

    if test $last_status -ne 0

        set_color B30000
        echo -n "☠ "

    else

        set_color 8B0000
        echo -n "⚔ "

    end

    set_color normal

end

# ============================================================
# FISH COLORS
# ============================================================

# Normal text
set -U fish_color_normal D6D0C4

# Commands — iron
set -U fish_color_command 8A969B

# Keywords — blood
set -U fish_color_keyword B30000

# Strings — muted green
set -U fish_color_quote 59634F

# Redirection — bronze
set -U fish_color_redirection 8A6A32

# Block endings — crimson
set -U fish_color_end 762A34

# Errors — bright blood
set -U fish_color_error B30000

# Parameters — steel
set -U fish_color_param 7A8589

# Comments — faded grey
set -U fish_color_comment 66615B

# Selection
set -U fish_color_selection --background=5C0000

# Search
set -U fish_color_search_match --background=5C0000

# Operators
set -U fish_color_operator 8B0000

# Escape sequences
set -U fish_color_escape 762A34

# Autosuggestions
set -U fish_color_autosuggestion 55504B


# ============================================================
# ANTIGRAVITY CLI
# ============================================================

set -gx PATH "/home/fghau/.local/bin" $PATH
