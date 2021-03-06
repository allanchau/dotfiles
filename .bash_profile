# load in the platform file
if [ ! -e $HOME/.platform ]; then
	echo "Create either a .mac or .linux file in the dotfiles location and run the install script again."
fi

PLATFORM=$(cat ~/.platform)

# keep our files modular and specific
# load them in as a standalone, and their platform specific counterparts too
for ref in ".bash_aliases" ".bash_colors" ".bash_prompt" "z.sh"; do

	# do the file itself
	if [ -e $HOME/$ref ] || [ -h $HOME/$ref ]; then
		source $HOME/$ref
	fi

	# source platform specific related
	for pf in "linux" "mac"; do

		if [ -e "${HOME}/${ref}_${pf}" ] && [ "${PLATFORM}" = "${pf}" ]; then
			source "${HOME}/${ref}_${pf}"
		fi

	done

done

if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  . /usr/local/share/bash-completion/bash_completion
fi

source "${HOME}/.bash_dotfiles"
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'
export GPG_TTY=$(tty)
export PATH="/usr/local/opt/node@8/bin:$PATH"
