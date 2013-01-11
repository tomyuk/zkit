# ~/.bash_logout

if [[ -n "$SSH_AGENT_PID" ]]; then
   kill $SSH_AGENT_PID
fi

if [[ -n $GPG_AGENT_INFO ]]; then
   ( IFS=: X=( $GPG_AGENT_INFO ) ; kill ${X[1]} )
fi
