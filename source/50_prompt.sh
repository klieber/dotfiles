# Regular Colors
BLACK='\e[0;30m'        # Black
RED='\e[0;31m'          # Red
GREEN='\e[0;32m'        # Green
YELLOW='\e[0;33m'       # Yellow
BLUE='\e[0;34m'         # Blue
MAGENTA='\e[0;35m'       # Purple
CYAN='\e[0;36m'         # Cyan
WHITE='\e[0;37m'        # White 

BOLD_BLACK='\e[1;30m'   # Black
BOLD_RED='\e[1;31m'     # Red
BOLD_GREEN='\e[1;32m'   # Green
BOLD_YELLOW='\e[1;33m'  # Yellow
BOLD_BLUE='\e[1;34m'    # Blue
BOLD_MAGENTA='\e[1;35m' # Purple
BOLD_CYAN='\e[1;36m'    # Cyan
BOLD_WHITE='\e[1;37m'   # White

# High Intensity
IBlack='\e[0;90m'       # Black
IRed='\e[0;91m'         # Red
IGreen='\e[0;92m'       # Green
IYellow='\e[0;93m'      # Yellow
IBlue='\e[0;94m'        # Blue
IPurple='\e[0;95m'      # Purple
ICyan='\e[0;96m'        # Cyan
IWhite='\e[0;97m'       # White

# Bold High Intensity
BIBlack='\e[1;90m'      # Black
BIRed='\e[1;91m'        # Red
BIGreen='\e[1;92m'      # Green
BIYellow='\e[1;93m'     # Yellow
BIBlue='\e[1;94m'       # Blue
BIPurple='\e[1;95m'     # Purple
BICyan='\e[1;96m'       # Cyan
BIWhite='\e[1;97m'      # White

if [ -f "/usr/lib/git-core/git-sh-prompt" ]; then
  source /usr/lib/git-core/git-sh-prompt
  PS1="\[$GREEN\]\u@\h\[$RED\]:\[$YELLOW\]\[$YELLOW\]\w\[\033[m\]\[$BOLD_BLUE\]\$(__git_ps1)\n\[$WHITE\]\$ "
else
  PS1="\[$GREEN\]\u@\h\[$RED\]:\[$YELLOW\]\[$YELLOW\]\w\[\033[m\]\[$BOLD_BLUE\]\n\[$WHITE\]\$ "
fi

