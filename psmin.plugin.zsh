function psmin() {
	if [[ ! -z "$_PS1" ]]; then
		export PS1="$_PS1"
		export _PS1=
	else
		export _PS1="$PS1"

		if [[ ! -z "$PSMIN" ]]; then
			export PS1="$PSMIN"
		else
			export PS1="%(!.$.#)> "
		fi
	fi
}
