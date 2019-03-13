function psmin() {
	if [[ -v _PS1$$ ]]; then
		export PS1="${(P)$(<<<_PS1$$)}"
		unset _PS1$$
	else
		export _PS1$$="$PS1"

		if [[ -v PSMIN ]]; then
			export PS1="$PSMIN"
		else
			export PS1="%(!.$.#)> "
		fi
	fi
}
